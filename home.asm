SECTION "Home", ROM0[$0]
RST_00::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

;calls JumpFunctionTable, which is used to jump to a specific address
RST_08::
    jp JumpFunctionTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

;switches the current bank to the bank number given by a
RST_10::
    ldh [hCurrentBank], a
    ld [$2000], a
    ret
    rst $38
    rst $38

RST_18::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp VBlankInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp LCDCInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp TimerOverflowInterruptFunction
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    reti
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti

SECTION "Header", ROM0[$0100]

Boot::
    nop
    jp Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @