#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

uint8_t *compressed = NULL;
int skipLengthBytes = 0;

int compress(uint8_t *src,int filesize) {
    uint8_t flagByte, flagBit, byte;
    int srcPos, flagBytePos, matchLength, matchRelativePos, currentMatchLength, j, matchEnd;
    int index = 0;
    flagByte = 0x1;
    flagBytePos = 0;
    flagBit = 0x2;
    srcPos = 0;
    if(!skipLengthBytes){
        compressed[index] = (uint8_t)(filesize & 0xFF); //the bytes are stored in little endian
        index++;
        compressed[index] = (uint8_t)(filesize >> 8);
        index++;
        flagBytePos = 2;
    }
    // add first flag byte (place holder) and add first raw data byte
    compressed[index] = flagByte;
    index++;
    compressed[index] = src[srcPos++];
    index++;
     while (srcPos < filesize)
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
                if ((j >= 18) || (i + j >= filesize) || (srcPos + j >= filesize))
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

        // check if it is long enough
        if (matchLength < 3) // too short
        {
            flagByte |= flagBit; // raw data - not compressed
            compressed[index] = src[srcPos++]; // add raw data byte
            index++;
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
                byte = matchRelativePos % 0x100;
                compressed[index] = byte;
                index++;
                byte = matchLength + (0x10 * (matchRelativePos / 0x100));
                compressed[index] = byte;
                index++;
            }
            else
            {
                compressed[index] = ((uint8_t)matchRelativePos);
                index++;
                compressed[index] =  ((uint8_t)matchLength);
                index++;
            }
        }

        if (flagBit == 0x80) // flag byte fully populated
        {
            compressed[flagBytePos] = flagByte; // write correct flag byte back to original position

            // reset flag byte and counter bit
            flagByte = 0;
            flagBit = 0x1;

            // save new flag byte position
            flagBytePos = index;

            if (srcPos < filesize){ // make sure there is more data
                compressed[index] = 0x1D; // place holder for flag byte
                index++;
            }
        }
        else // shift flag bit
            flagBit <<= 1;
    }

    // write back last incomplete flag byte
    if (flagBit != 1) compressed[flagBytePos] = flagByte;

    return index;
}


int main(int argc, char *argv[]) {
    if (argc < 3)
	{
		fputs("Usage: dkcompress [--noheader] infile.bin outfile.bin.lz\n", stderr);
		return EXIT_FAILURE;
	} 
    int argOffset = 0;
    if(!strcmp(argv[1], "--noheader")){
    skipLengthBytes = 1;
    argOffset = 1;
    }

	char *infile = argv[1 + argOffset];
	char *outfile = argv[2 + argOffset];

	FILE *f = fopen(infile, "rb");
	if (!f) {
		fprintf(stderr, "failed to open for reading: '%s'\n", infile);
		return EXIT_FAILURE;
	}
	fseek(f, 0, SEEK_END);
	int filesize = ftell(f);

	uint8_t *data = (uint8_t *)calloc(filesize, 1);
	fseek(f, 0, SEEK_SET);
	int size = fread(data, 1, filesize, f);
	fclose(f);
	if (size != filesize) {
		fprintf(stderr, "failed to read: '%s'\n", infile);
		return EXIT_FAILURE;
	}
    compressed = (uint8_t *)calloc(filesize, 1);
	int compressed_size = compress(data,filesize);

	free(data);

	f = fopen(outfile, "wb");
	if (!f) {
		fprintf(stderr, "failed to open for writing: '%s'\n", outfile);
		return EXIT_FAILURE;
	}
	fwrite(compressed, 1, compressed_size, f);
	fclose(f);

	free(compressed);

	return EXIT_SUCCESS;
}
