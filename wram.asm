SECTION "WRAM Bank 0", WRAM0
ds $a0

;c0a0
;bit 0: set to 1 at the end of the vblank interrupt function
wVBlankInterruptFinished::
ds 1

;c0a1
wc0a1:
ds 1

;c0a2
wLCDCRegisterTemp::
ds 1

;c0a3
wIERegisterTemp::
ds 1

ds $765

;c809
wUncompressedLength::
ds 2

;c80b
wDecompressDestinationAddress::
ds 2

ds $10

;c81d
wTimerHundredsDigit::
ds 1

;c81e
wTimerTensDigit::
ds 1

;c81f
wTimerOnesDigit::
ds 1

ds $0b

;c82b
;bit 7: set to 1 if the game is running on sgb, otherwise 0
wIsOnSGB::
ds 1

ds $5f4

;ce20
;currently selected save file slot number
wSelectedFileSlot::
ds 1


SECTION "WRAM Bank 1", WRAMX
ds $a40

;da40
;set to 9c if running on super gameboy, otherwise cc
;this changes the hud text in-game to have a shadow if on sgb, otherwise it isn't modified
wHUDTextType::
ds 1

wda41::
ds 1

wda42::
ds 1

;da43
wLives::
ds 1
