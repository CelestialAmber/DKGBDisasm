using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace DKDecompressTool
{
    public class Program
    {
        /*
        Compression format:
        offset 0x00-0x02:uncompressed data size (little endian)
        the algorithm first reads the next byte, and then loops over the main section 8 times
        once finished looping, it reads a new byte, and the process continues
        the first byte has a zero at a specific bit, which is used as a variable
        it gets shifted until the zero is the rightmost bit
        then, it interprets the next 2 bytes as a pointer for a byte in vram to start copying from and how many bytes to copy
        the compression format often uses a trick where it first stores an uncompressed byte then references that byte
        for the next compressed group for when a byte is repeated enough times
        the pointer is (vramDestAddress + (vramIndex - (swapNybbles(2nd byte & F0)<<8 + 1st byte)))
        the number of times to copy is (2nd byte & 0xF) + 3; (1st byte = ab and 2nd byte = cd; times to copy = d,relative offset = cab)
        it then copies it that many times after the previous data
        */

        public static int inputLength, baseOffset, mode = -1;
        public static bool skipHeader = false, debug = false;

        public static void Main(string[] args)
        {   
            if(args.Length < 2)
            {
                Console.WriteLine("Usage: DKDecompressTool -[d/c] <file path> -size -noheader");
                Console.WriteLine("Optional Arguments:");
                Console.WriteLine("-size: Uncompressed size of the file. Only needed for headerless compressed files. (decimal or hex number)");
                Console.WriteLine("-noheader: Option to exclude header when compressing.");
                return;
            }
            switch(args[0]){
                case "-d":
                    mode = 0;
                    break;
                case "-c":
                    mode = 1;
                    break;
                default:
                    throw new Exception("Invalid syntax");
            }
            if (args.Length > 2)
            {
                try
                {
                    for (int i = 2; i < args.Length; i++)
                    {
                        if (args[i].Contains("-size") && mode == 0) //only needed for decompressing
                        {
                            string lengthString = args[i + 1];
                            inputLength = lengthString.Contains("0x") ? Convert.ToInt32(lengthString, 16) : int.Parse(lengthString);
                            skipHeader = true;
                            i++;
                        }
                        if (args[i].Contains("-noheader") && mode == 1) //this is only needed for compressing, so it shouldn't be checked when decompressing
                        {
                            skipHeader = true;
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {
                    throw new Exception("Invalid syntax");
                }

            }

            string path = args[1];
            byte[] data = File.ReadAllBytes(path);
            byte[] outputData = mode == 0 ? LZSSDecompress(data) : LZSSCompress(data);
            string extension = Path.GetExtension(path);
            string newPath = path.Replace(extension,"") + (mode == 0 ? "_result.bin" : ".lz");
            File.WriteAllBytes(newPath, outputData);
        }
        public static byte[] LZSSDecompress(byte[] data)
        {
            int offset = 0;
            int currentByte = 0;
            byte groupByte;
            int length;
            //de = vramStartAddress
            //bc = uncompressed length
            //not all graphics data has the first 2 length bytes, so this isn't always executed
            if (!skipHeader)
            {
                byte lengthBottomByte = data[offset];
                offset++;
                byte lengthTopByte = data[offset];
                offset++;
                //
               length = (lengthTopByte << 8) + lengthBottomByte;
            } else length = inputLength; //set the length to the inputted length if given

            byte[] outputData = new byte[length];
            while (currentByte < length)
            {
                groupByte = data[offset];
                if (debug) Console.WriteLine("Compressed offset: " + "0x" + offset.ToString("X") + ", group bits: " + Convert.ToString(groupByte, 2).PadLeft(8, '0') + "\n");
                offset++;
                for (int i = 0; i < 8; i++)
                {
                    if ((groupByte & 0x01) == 0)
                    {
                        int byte1 = data[offset];
                        offset++;
                        int byte2 = data[offset];
                        offset++;
                        int offsetTemp = offset;
                        //this somehow happens to equal the same thing that the assembly code does
                        int repeatByteOffset = currentByte - (byte1 + ((byte2 & 0xF0) << 4));
                        int repeatAmount = (byte2 & 0xF) + 3;
                        offset = repeatByteOffset;
                        string debugString = "";
                        if (debug) debugString = "Compressed offset: " + "0x" + offsetTemp.ToString("X") + ", uncompressed offset: " + "0x" + offset.ToString("X") + 
                        ", uncompressed bytes: ";
                        for (int j = 0; j < repeatAmount; j++)
                        {
                            byte value = outputData[offset];
                            offset++;
                            outputData[currentByte] = value;
                            currentByte++;
                            if(debug) debugString += value.ToString("X") + " ";
                        }
                        if(debug) Console.WriteLine(debugString);
                        offset = offsetTemp;
                        if (currentByte == length) break;
                    }
                    else
                    {
                        byte value = data[offset];
                        if(debug) Console.WriteLine("Compressed offset: " + "0x" + offset.ToString("X") + ", uncompressed offset: " + "0x" + currentByte.ToString("X") + ", value: " + value.ToString("X"));
                        offset++;
                        outputData[currentByte] = value;
                        currentByte++;
                        if (currentByte == length) break;
                    }
                    groupByte >>= 1;
                }
                if (debug) Console.WriteLine("");
            }
            Console.WriteLine("End offset: " + (offset - 1).ToString("X")); //decrease by 1 to match the ending index instead of the one after the end
            Console.WriteLine("Compressed Size: " + offset.ToString("X"));
            return outputData;
        }
        public static byte[] LZSSCompress(byte[] src)
        {
            List<byte> compressed = new List<byte>();
            byte flagByte, flagBit, byte0;
            int srcPos, flagBytePos, matchLength = 0, matchRelativePos = 0, currentMatchLength = 0, j, matchEnd = 0;
            flagByte = 0x1;
            flagBytePos = 0;
            flagBit = 0x2;
            srcPos = 0;

            if(!skipHeader){
                compressed.Add((byte)(src.Length & 0xFF)); //the bytes are stored in little endian
                compressed.Add((byte)(src.Length >> 8)); 
                flagBytePos = 2;
            }

            // add first flag byte (place holder) and add first raw data byte
            compressed.Add(flagByte);
            compressed.Add(src[srcPos++]);
            int lastMatchLength = 0;
            while (srcPos < src.Length)
            {
                // find match in previous data

                // start max 4096 bytes back from current pos
                if (srcPos <= 4096)
                    matchEnd = 0;
                else
                    matchEnd = srcPos - 4096;

                matchLength = 0;
    
                // try from current position
                //for (int i = matchEnd; i < srcPos; i++)
                for (int i = srcPos - 1; i >= matchEnd; i--)
                {
                    // start compare for every i
                    j = 0;
                    while (src[i + j] == src[srcPos + j])
                    {
                        j++;
                        // make sure to stay inside 4 bits (+3) and inside byte array
                        if ((j >= 18) || (i + j >= src.Length) || (srcPos + j >= src.Length))
                            break;
                    }

                    // remember best match
                    currentMatchLength = j;
                    if (matchLength < currentMatchLength)
                    {
                        matchLength = currentMatchLength;
                        matchRelativePos = (srcPos - i);
                    }

                    // no point in looking further if this is max length
                    if (currentMatchLength == 18)
                        break;
                }

                /*
                //this allowed the bank 1a graphics at offset 0x4ca9 to match the original, but doesn't work on other files
                if (lastMatchLength >= 3 && matchLength >= 3 && matchLength < 18 - lastMatchLength - 1){
                    //j = 0;
                    int startPos = srcPos - matchRelativePos - (lastMatchLength - 1);

                    for(j = 0; j < lastMatchLength; j++)
                    {
                        if (src[startPos + j] != src[srcPos - (lastMatchLength - 1) + j]) break;
                        if(j == lastMatchLength - 1)
                        {
                            matchLength += lastMatchLength - 1;
                            compressed.RemoveRange(compressed.Count - 2, 2);
                            srcPos -= lastMatchLength - 1;
                            compressed.Add(src[srcPos - matchRelativePos]);
                            flagByte ^= (byte)(flagBit >> 1);
                            flagByte |= (byte)(flagBit >> 1); // raw data - not compressed
                        }
                    }
                }
                lastMatchLength = matchLength;
                */

                // check if it is long enough
                if (matchLength < 3) // too short
                {
                    flagByte |= flagBit; // raw data - not compressed
                    compressed.Add(src[srcPos++]); // add raw data byte
                }
                else
                {

                    // nothing to do with the flag byte

                    // move srcPos after length
                    srcPos += matchLength;

                    // adjust length
                    matchLength -= 3;

                    // add relative start and length to copy
                    if (matchRelativePos > 255)
                    {
                        byte0 = (byte)(matchRelativePos % 0x100);
                        compressed.Add(byte0);
                        byte0 = (byte)(matchLength + (0x10 * (matchRelativePos / 0x100)));
                        compressed.Add(byte0);
                    }
                    else
                    {
                        compressed.Add((byte)matchRelativePos);
                        compressed.Add((byte)matchLength);
                    }
                }

                if (flagBit == 0x80) // flag byte fully populated
                {
                    compressed[flagBytePos] = flagByte; // write correct flag byte back to original position

                    // reset flag byte and counter bit
                    flagByte = 0;
                    flagBit = 0x1;

                    // save new flag byte position
                    flagBytePos = compressed.Count;

                    if (srcPos < src.Length) // make sure there is more data
                        compressed.Add(0x1D); // place holder for flag byte
                }
                else // shift flag bit
                    flagBit <<= 1;
            }

            // write back last incomplete flag byte
            if (flagBit != 1)
                compressed[flagBytePos] = flagByte;

            return compressed.ToArray();
        }
    }
}
