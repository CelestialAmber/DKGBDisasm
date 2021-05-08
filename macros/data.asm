dbw: MACRO
ENDM
    
dwb: MACRO
ENDM
 
;Level data header macro
;Format:
;1:tilemap size (0: 0x240 bytes, 0x380 bytes otherwise)
;2: music id
;3: tileset id
;4: time
levelheader: MACRO
    db \1
    db \2
    db \3
    dw \4
ENDM
    