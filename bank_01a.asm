; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

;the top two files aren't recompressed correctly, but match in 2bpp format
GameOverScreenGraphics::
    INCBIN "gfx/bank1a/gameover_screen.bin"
;46c1
;uses special tile format
DKMenuFingerGraphics::
    INCBIN "gfx/bank1a/dk_menu_finger.bin"
;47a2    
BonusGameGraphics::
    INCBIN "gfx/bank1a/bonus_game_graphics.bin"   

UIGraphics1::
    INCBIN "gfx/bank1a/ui1.bin"   

IntroLevelScreenGraphics::
    INCBIN "gfx/bank1a/intro_level_screen_graphics.bin"   

FileSelectScreenGraphics::
    INCBIN "gfx/bank1a/file_select_screen_graphics.bin"  

DeleteFileBombGraphics::
    INCBIN "gfx/bank1a/delete_file_bomb.bin"    

IntroCutsceneGraphics::
    INCBIN "gfx/bank1a/introCutsceneGraphics.2bpp.lz"

TitleScreenGraphics::
    INCBIN "gfx/bank1a/title_screen_graphics.bin"   

;palette: 0123
;the portrait uses the special tile format
CreditsGraphics::
    INCBIN "gfx/bank1a/credits_graphics.bin"   

;palette: 0213?
;uses special tile format
;the other mario/dk sprites also use the same palette?
MarioCircusDemoSprites::
    INCBIN "gfx/bank1a/mario_circus_demo_sprites.bin"   

REPT 4003
    db $FF
ENDR
