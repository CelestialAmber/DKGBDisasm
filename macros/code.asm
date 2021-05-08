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

;1:function to call
switchcall: MACRO
    ld a, BANK(\1)
    rst BankswitchRST
    call \1
ENDM