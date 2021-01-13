;Level data format:
;0x00: tilemap size (0: 0x240 bytes for tilemap else 0x380 bytes)
;0x01: music id
;0x02: tileset id
;0x03-0x04: time
;0x05: switch data flag (0: no, otherwise yes)
;
;Switch data format (0xA1 bytes total):
;The switch data flag byte is the first byte of data
;The data starts with 16 raw bytes
;At the start of each loop, it first reads a byte, except the first time, which instead uses the last of the first 16 raw bytes
;If the value is more than 0x7f, it gets anded with 0x7f, and it copies the next n bytes directly, where n is the result
;otherwise, it copies n 00 bytes, where n is the value
;
;The next byte tells whether level has additional sprite data or not (0: no, otherwise yes)
;Additional sprite data is stored in the same way as for switch data (0x40 bytes total),
;except on the first loop it uses the flag byte as the first byte in the loop, and it doesn't start
;with raw bytes
;
;Compressed tilemap (no header, uses the size determined by the 1st byte)
;Sprite data (27 sprites max):
;Format: 0x00: sprite id, 0x01: ram position
;levelPos = ram position - 0xDA75;
;It keeps going until it hits a 00 byte
;Palette data format:
;0x00: id
;0x01: value

;the level data is split between 3 banks (banks 5, 6, 12)
LevelDataTable::
dw Level1Data
dw Level2Data
dw Level3Data
dw Level4Data
dw Level5Data
dw Level6Data
dw Level7Data
dw Level8Data
dw Level9Data
dw Level10Data
dw Level11Data
dw Level12Data
dw Level13Data
dw Level14Data
dw Level15Data
dw Level16Data
dw Level17Data
dw Level18Data
dw Level19Data
dw Level20Data
dw Level21Data
dw Level22Data
dw Level23Data
dw Level24Data
dw Level25Data
dw Level26Data
dw Level27Data
dw Level28Data
dw Level29Data
dw Level30Data
dw Level31Data
dw Level32Data
dw Level33Data
dw Level34Data
dw Level35Data
dw Level36Data
dw Level37Data
dw Level38Data
dw Level39Data
dw Level40Data
dw Level41Data
dw Level42Data
dw Level43Data
dw Level44Data
dw Level45Data
;Bank 6 levels (starts at id 45)
dw Level46Data
dw Level47Data
dw Level48Data
dw Level49Data
dw Level50Data
dw Level51Data
dw Level52Data
dw Level53Data
dw Level54Data
dw Level55Data
dw Level56Data
dw Level57Data
dw Level58Data
dw Level59Data
dw Level60Data
dw Level61Data
dw Level62Data
dw Level63Data
dw Level64Data
dw Level65Data
dw Level66Data
dw Level67Data
dw Level68Data
dw Level69Data
dw Level70Data
dw Level71Data
dw Level72Data
dw Level73Data
dw Level74Data
dw Level75Data
dw Level76Data
dw Level77Data
dw Level78Data
dw Level79Data
dw Level80Data
;Bank 12 levels (starts at id 80)
dw Level81Data
dw Level82Data
dw Level83Data
dw Level84Data
dw Level85Data
dw Level86Data
dw Level87Data
dw Level88Data
dw Level89Data
dw Level90Data
dw Level91Data
dw Level92Data
dw Level93Data
dw Level94Data
dw Level95Data
dw Level96Data
dw Level97Data
dw Level98Data
dw Level99Data
dw Level100Data
dw Level101Data
dw Level102Data
dw Level103Data
dw Level104Data
dw Level105Data
;151 unused level entries
REPT 151
dw Level106Data
ENDR