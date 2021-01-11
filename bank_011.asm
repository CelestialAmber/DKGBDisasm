; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]
dw $4070
dw $4070
dw $4530
dw $4870
dw $4d30
dw $4070
dw $4070
dw $4070
db $01,$00,$10,$51,$01,$00,$70,$59,$01,$00,$10,$51,$01,$00,$70,$59
db $01,$00,$70,$59,$01,$00,$30,$65,$00,$00,$10,$51,$00,$00,$10,$51
db $01,$00,$D0,$55,$01,$00,$30,$5E,$01,$00,$D0,$55,$01,$00,$30,$5E
db $01,$00,$30,$5E,$01,$00,$D0,$55,$00,$00,$10,$51,$00,$00,$10,$51
db $01,$00,$D0,$55,$01,$00,$30,$5E,$01,$00,$D0,$55,$01,$00,$30,$5E
db $01,$00,$30,$5E,$01,$00,$D0,$55,$00,$00,$10,$51,$00,$00,$10,$51
;offset 44070
INCBIN "gfx/bank11graphics.2bpp"
;offset 469f0, the rest of the bank is filled with ff
rept $1610
db $FF
endr
    
