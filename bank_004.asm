; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

FontGraphics::
INCBIN "gfx/font.2bpp"
ds 16
;offset 46f0 (106f0)
;palette: 5500AAFF
Bank4MarioGraphics::
INCBIN "gfx/bank4mariosprites.2bpp"

;offset 76b0
;0x950 ff bytes
REPT $950
db $FF
ENDR
