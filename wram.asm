SECTION "WRAM Bank 0", WRAM0
wRAMStart::
ds $82b

;c82b
;bit 7: set to 1 if the game is running on sgb, otherwise 0
wIsOnSGB::
ds 1

ds $5f4

;ce20
;currently selected save file slot number
wSelectedFileSlot::
ds 1


ds $1df

SECTION "WRAM Bank 1", WRAMX
ds $a40
;da40
;set to 9c if running on super gameboy, otherwise cc
;this changes the hud text in-game to have a shadow if on sgb, otherwise it isn't modified
wHUDTextType::
ds 1
