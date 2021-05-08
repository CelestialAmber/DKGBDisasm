SECTION "Home", ROM0[$0]

SECTION "rst0", ROM0[$0000]
RST_00::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst8", ROM0[$0008]
;calls JumpFunctionTable, which is used to jump to a specific address
RST_08::
    jp JumpFunctionTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst10", ROM0[$0010]
;switches the current bank to the bank number given by a
BankswitchRST::
    ldh [hCurrentBank], a
    ld [$2000], a
    ret
    rst $38
    rst $38

SECTION "rst18", ROM0[$0018]
RST_18::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst20", ROM0[$0020]
RST_20::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst28", ROM0[$0028]
RST_28::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst30", ROM0[$0030]
RST_30::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst38", ROM0[$0038]
RST_38::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "vblank", ROM0[$0040]
VBlankInterrupt::
    jp VBlankInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "lcdc", ROM0[$0048]
LCDCInterrupt::
    jp LCDCInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "timer", ROM0[$0050]
TimerOverflowInterrupt::
    jp TimerOverflowInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "serial", ROM0[$0058]
SerialTransferCompleteInterrupt::
    reti
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "joypad", ROM0[$0060]
JoypadTransitionInterrupt::
    reti


SECTION "Header", ROM0[$0100]

Boot::
    nop
    jp Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @