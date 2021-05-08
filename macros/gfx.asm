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