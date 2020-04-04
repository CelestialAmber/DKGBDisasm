; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

;the top two files aren't recompressed correctly, but match in 2bpp format
Bank1A_Graphics_4000::
    INCBIN "gfx/bank1a/bank1a_4000.bin"
;46c1
Bank1A_Graphics_46c1::
    INCBIN "gfx/bank1a/bank1a_46c1.bin"    
;47a2    
Bank1A_Graphics_47a2::
    INCBIN "gfx/bank1a/bank1a_47a2.bin"   

Bank1A_Graphics_4ca9::
    INCBIN "gfx/bank1a/bank1a_4ca9.bin"   

Bank1A_Graphics_4dc1::
    INCBIN "gfx/bank1a/bank1a_4dc1.bin"   

Bank1A_Graphics_4ff5::
    INCBIN "gfx/bank1a/bank1a_4ff5.bin"  

Bank1A_Graphics_5869::
    INCBIN "gfx/bank1a/bank1a_5869.bin"    

IntroCutsceneGraphics::
    INCBIN "gfx/bank1a/introCutsceneGraphics.2bpp.lz"

Bank1A_Graphics_5a54::
    INCBIN "gfx/bank1a/bank1a_5a54.bin"   

Bank1A_Graphics_6361::
    INCBIN "gfx/bank1a/bank1a_6361.bin"   

Bank1A_Graphics_698a::
    INCBIN "gfx/bank1a/bank1a_698a.bin"   

REPT 4003
    db $FF
ENDR
