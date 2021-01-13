SECTION "ROM Bank $05", ROMX[$4000], BANK[$05]


;Level data format:
;0x00: tilemap size (0: 0x240 bytes for tilemap else 0x380 bytes)
;0x01: music id
;0x02: tileset id
;0x03-0x04: time
;0x05: switch data flag (0: no switch data, 1: switch data)
;switch data (0xA1 bytes total):
;the data starts with 16 raw bytes
;at the start of each loop, a byte is first read, except the first time, where it uses the flag byte instead
;then, another byte is read for how many bytes to copy after
;if the value is more than 0x7f, it gets anded with 0x7f
;the next byte tells whether level has additional sprite data or not (0: no data)
;additional sprite data is stored in the same way as for switch data (0x40 bytes total)
;compressed tilemap (no header, uses the size determined by the 1st byte)
;sprite data (27 sprites max)
;format: 0x00: sprite id, 0x01: ram position
;levelPos = ram position - 0xDA75;
;it keeps going until it hits a 00 byte
;palette data (format (offsets): 0x00: id, 0x01: value)

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
dw $4000
dw $4181
dw $43AC
dw $44AC
dw $4589 ;level 50
dw $4741
dw $48C5
dw $4A19
dw $4C25
dw $4D54
dw $4EC8
dw $4FCE
dw $50D9
dw $5235
dw $53E5 ;level 60
dw $5504
dw $565F
dw $579B
dw $59B7
dw $5A8C
dw $5C42
dw $5D9A
dw $5F33
dw $60AD
dw $61FC ;level 70
dw $638D
dw $6555
dw $66D8
dw $68C8
dw $6A4E
dw $6BDA
dw $6CBF
dw $6E78
dw $6FFB
dw $71A1 ;level 80
;Bank 12 levels (starts at id 80)
dw $4000
dw $4188
dw $43A1
dw $4575
dw $4694
dw $4862
dw $49B7
dw $4B18
dw $4C83
dw $4E21 ;level 90
dw $508F
dw $5294
dw $53B6
dw $5506
dw $566F
dw $585A
dw $598A
dw $5ACA
dw $5C5A
dw $5D84;level 100
dw $5E32
dw $5ED6
dw $5F7D
dw $602C
dw $60DF

;151 unused level entries
REPT 151
    dw $61B2
ENDR

INCLUDE "data/level_data_1.asm"

;7c57
;empty space
REPT $3a9
    db $FF
ENDR

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

INCLUDE "data/level_data_2.asm"