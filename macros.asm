ld_long: MACRO
    IF STRLWR("\1") == "a" 
        ; ld a, [$40]
        db $FA
        dw \2
    ELSE 
        IF STRLWR("\2") == "a" 
            ; ld [$40], a
            db $EA
            dw \1
        ENDC
    ENDC
ENDM

homecall: MACRO
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, BANK(\1)
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call \1
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
ENDM

;1:function to call
switchcall: MACRO
    ld a, BANK(\1)
    rst $10
    call \1
ENDM


dbw: MACRO
ENDM

dwb: MACRO
ENDM



assert_valid_rgb: MACRO
rept _NARG
	assert 0 <= (\1) && (\1) <= 31, "RGB channel must be 0-31"
	shift
endr
ENDM

RGB: MACRO
rept _NARG / 3
	assert_valid_rgb \1, \2, \3
	dw palred (\1) + palgreen (\2) + palblue (\3)
	shift 3
endr
ENDM

palred   EQUS "(1 << 0) *"
palgreen EQUS "(1 << 5) *"
palblue  EQUS "(1 << 10) *"



;Graphics data header macro
;Format:
;1:bank number
;2:bank data offset
;3:start vram address
;4:type(0: uncompressed, 1: compressed w/ header, 2: compressed no header)
;5:length (not needed if type is 1)
gfxheader: MACRO
db \1
dw \2
dw \3
IF \4 == 1
    db 0
ELSE 
    db (\5 & $FF)
ENDC
IF \4 == 1
    db $80
ELIF \4 == 2
    db $80 | (\5 >> 8)
ELSE
    db (\5 >> 8)
ENDC
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
