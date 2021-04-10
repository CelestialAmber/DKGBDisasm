; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank 0 Main", ROM0[$150]

Start:
    di
    ld sp, $fffe
    ld a, $01
    rst $10
    call Init
    call GetOAMDmaCodeAddress
    ld a, $03
    call Call_000_1e38
    call CheckIfOnSGB
    call Call_000_018e
    ld a, $07
    ld [wIERegisterTemp], a
    ldh [rIE], a
    ei

MainLoop:
    call PollInput
    call CheckIfResetCombinationPressed
    call GotoSceneLoop
    ld hl, $c72f
    res 0, [hl]
    ld hl, $c0a0
    halt
    ;Keep looping until bit 0 of c0a0 is 1
.loop:
    bit 0, [hl]
    jr z, .loop
    res 0, [hl] ;Reset bit 0 of c0a0
    ld hl, $ff95
    inc [hl]
    jr MainLoop



Call_000_018e:
    ld a, $40
    ldh [rSTAT], a
    xor a
    ld [$defb], a
    ldh [rTIMA], a
    ld a, $bb
    ldh [rTMA], a
    xor a
    ldh [rTAC], a
    ld a, $04
    ldh [rTAC], a
    ret

;Jump to function in below table based on the current scene
GotoSceneLoop:
    ldh a, [hCurrentScene]
    rst $08

;function/other data pointer table used by the above function
SceneFunctionTable::
dw GotoNextScene
dw GotoNextScene
dw IntroTitleSceneLoop ;address used for intro/title scene
dw FileSelectJump
dw Call_288e
dw GotoNextScene
dw GotoNextScene
dw GotoNextScene
dw Call_3638
dw GotoNextScene
dw GotoNextScene
dw GotoNextScene
dw $c1fc
dw GotoNextScene
dw GotoNextScene
dw GotoNextScene
dw $06ba
dw $34c0
dw $068f
dw GotoNextScene
dw $2655
dw $3563
dw $3644
dw GotoNextScene
dw $4000
dw GotoNextScene
dw $365a
dw GotoNextScene
dw Call_3452
dw GotoNextScene
dw $28f0
dw GotoNextScene

;this function is used for resetting the game if the below button combination is pressed
CheckIfResetCombinationPressed:
    ldh a, [hJoypad]
    and $0f ;only keep the right 4 bits
    cp $0f ;is the player pressing select,start,a,and b?
    ret nz ;no, return
    ldh a, [hCurrentScene]
    cp SceneFileSelect
    ret c
    cp SceneCredits ;is the player at the credits?
    ret z ;return if so
Reset:    ;reset the game
    ;Send Packet_80
    ld a, $5f
    call SendSGBPacketFromTable
    call DisableLCD
    ld a, $03
    call Call_000_1e38
    call Call_000_1094
    ldh a, [rIE]
    and $fa
    ldh [rIE], a
    ei
    call Init
    ld a, $07
    ld [wIERegisterTemp], a
    ldh [rIE], a
    xor a
    ldh [hFunctionTableIndex], a
    ld a, SceneIntroTitle
    ldh [hCurrentScene], a
    jp UpdateLCDCIERegisters


Init:
    ld a, [wIsOnSGB]
    push af
    ld a, [wHUDTextType]
    push af
    ;Clear RAM from C000 to DEF7
    ld hl, $c000
    ld bc, $1ef7 ;number of bytes to fill starting from 0xc000
    xor a
    call FillMemory16
    ;Clear RAM from DF00 to DFFF
    ld hl, $df00
    ld bc, $100
    xor a
    call FillMemory16
    ;Clear HRAM from FF8A to FFA9
    ld hl, $ff8a
    ld c, $20
    xor a
    call FillMemory
    pop af
    ld [wHUDTextType], a
    pop af
    and $cd ;and isOnSGB with cd, and store as the new value
    ld [wIsOnSGB], a
    ;Switch to bank 3
    ld a, $3
    rst $10
    call InitSound
    call Call_000_1cfa
    ld a, $e7
    ld [wLCDCRegisterTemp], a
    ld a, $01
    ld [$c851], a
    ld a, $04 ;set lives to 4
    ld [wLives], a
    ld hl, $c859
    xor a
    ld [hl-], a
    dec a
    ld [hl], a
    ret


VBlankInterruptFunction:
    push af
    push bc
    push de
    push hl
    ldh a, [rIE]
    and $fb
    ldh [rIE], a
    ei
    ld a, [$c701]
    or a
    jr nz, .skipOAMDMA
    call hOAMDMAFunction ;call oam dma function
.skipOAMDMA:
    call Call_000_16e2
    ;Switch to the bank in hCurrentBank
    ldh a, [hCurrentBank]
    ld [$2000], a
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_029e
    call Call_000_164c
    ld hl, $c707
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl]
    ldh [rSCX], a
jr_000_029e:
    ld a, [wIERegisterTemp]
    ldh [rIE], a
    ld hl, $c0a0
    set 0, [hl]
    pop hl
    pop de
    pop bc
    pop af
    reti

LCDCInterruptFunction:
    push af
    push bc
    push de
    push hl
    ldh a, [rIE]
    push af
    and $f9
    ldh [rIE], a
    ei
    call Call_000_02e9
    pop af
    ldh [rIE], a
    pop hl
    pop de
    pop bc
    pop af
    reti


TimerOverflowInterruptFunction:
    push af
    push bc
    push de
    push hl
    ldh a, [rIE]
    push af
    and $fb
    ldh [rIE], a
    ei
    ldh a, [hCurrentBank]
    push af
    ld a, $2
    rst $10
    call Call_02_4003
    ld a, $3
    rst $10
    call Call_03_4003
    pop af
    rst $10
    pop af
    ldh [rIE], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_02e9:
    ldh a, [$ff8f]
    rst $08

FunctionTable_02ec::
dw Jump_000_0376.end
dw Call_0364
dw Call_037b
dw Call_0364
dw Call_03b6
dw Call_03c8
dw Call_03d8
dw Call_042c
dw Call_0432
dw Call_043d
dw Call_0444
dw Call_03e9
dw Call_040b
dw Call_043d
dw Call_0420
dw Call_03e9
dw Call_041a
dw Call_0471
dw Call_0425
dw Call_047c
dw Call_0490
dw Call_0364
dw Call_049a
dw Call_04ad
dw Call_04cf
dw Call_04d7
dw Call_04f1
dw Call_0504
dw Call_04d7
dw Call_04f1
dw Call_0514
dw Call_0514
dw Call_051f
dw Call_052e
dw Call_05b2
dw Call_053a
dw Call_0551
dw Call_0559
dw Call_05b2
dw Call_0563
dw Call_0576
dw Call_058c
dw Call_059b
dw Call_05bb
dw Call_05c6
dw Call_05d0
dw Call_05e3
dw Call_05fe
dw Call_0611
dw Call_061d
dw Call_0627
dw Call_0637
dw Call_0648
dw Call_0364
dw Call_065d
dw Call_04ad
dw Call_0670
dw Call_0394
dw Call_039f
dw Call_03aa

Call_0364:
    ld a, $07
    ldh [rWX], a
    ld hl, $ff40
    res 1, [hl]
    ld a, [wHUDTextType]
    ldh [rBGP], a
    ld a, $07
    ldh [rLYC], a
Jump_000_0376:
    ld hl, $ff8f
    inc [hl]
.end
    ret

Call_037b:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    ld a, $4f
    ldh [rLYC], a
    call Call_000_067d
    ld a, $39
    jr Jump_000_03e6
Jump_000_038f:
    ld hl, $ff8f
    dec [hl]
    ret

Call_0394:
    ld a, $a7
    ldh [rWX], a
    ld a, $67
    ldh [rLYC], a
    jp Jump_000_0376

Call_039f:
    ld a, $a7
    ldh [rWX], a
    ld a, $8f
    ldh [rLYC], a
    jp Jump_000_0376

Call_03aa:
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    ld a, $01
    jp Jump_000_03e6

Call_03b6:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    call Call_000_067d
    ld a, $4f
    ldh [rLYC], a
    jr Jump_000_0376
Call_03c8:
    ld hl, $ff40
    res 1, [hl]
    ld a, $07
    ldh [rWX], a
    ld a, $57
    ldh [rLYC], a
    jp Jump_000_0376

Call_03d8:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    ld a, $03
Jump_000_03e6:
    ldh [$ff8f], a
    ret

Call_03e9:
    xor a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld hl, $c813
    inc [hl]
    ld a, [hl]
    and $03
    ld [hl+], a
    jr nz, jr_000_0401
    ld a, [hl]
    and $03
    inc a
    or $e4
    ld [hl], a
jr_000_0401:
    ld a, [hl]
    ldh [rBGP], a
jr_000_0404:
    ld a, $17
    ldh [rLYC], a
    jp Jump_000_0376

Call_040b:
    ld a, $57
    ldh [rLYC], a
jr_000_040f:
    ld a, $a7
    ldh [rWX], a
    ld a, $e4
    ldh [rBGP], a
    jp Jump_000_0376

Call_041a:
    ld a, $57
    ldh [rLYC], a
    jr jr_000_040f
Call_0420:
    call Call_000_0456
    jr Call_0444
Call_0425:
    call Call_000_044f
    ld a, $0f
    jr Jump_000_03e6
Call_042c:
    ld a, $e4
    ldh [rBGP], a
    jr jr_000_0404
Call_0432:
    ld a, $e4
    ldh [rBGP], a
    ld a, $57
    ldh [rLYC], a
    jp Jump_000_0376

Call_043d:
    ld a, $80
    ldh [rLYC], a
    jp Jump_000_0376


Call_0444:
    xor a
    ldh [rLYC], a
    ld hl, $ff8f
    ld a, [hl]
    sub $03
    ld [hl], a
    ret


Call_000_044f:
    xor a
    ldh [rLYC], a
    ld a, $a7
    ldh [rWX], a
Call_000_0456:
    ld hl, $c812
    inc [hl]
    dec hl
    ld a, [hl+]
    or a
    jr z, jr_000_046a
    ld a, $e0
    ldh [rSCX], a
    ld a, [hl]
    and $07
    ld [hl-], a
    ret nz
    dec [hl]
    ret
jr_000_046a:
    ld a, [hl]
    and $0f
    ld [hl-], a
    ret nz
    inc [hl]
    ret

Call_0471:
    ld a, $07
    ldh [rWX], a
    ld a, $80
    ldh [rLYC], a
    jp Jump_000_0376

Call_047c:
    ld a, $07
    ldh [rWX], a
    ld hl, $068a
    ld a, [$ce1c]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [rLYC], a
    jp Jump_000_0376

Call_0490:
    ld a, $a7
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    jp Jump_000_038f

Call_049a:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    call Call_000_067d
    ld a, $67
    ldh [rLYC], a
    jp Jump_000_0376

Call_04ad:
    ld a, $07
    ldh [rWX], a
    ld hl, $ff40
    res 1, [hl]
    call Call_000_04c0
    ld a, $8f
    ldh [rLYC], a
    jp Jump_000_0376


Call_000_04c0:
    ld a, [wHUDTextType]
    ld hl, wIsOnSGB
    bit 7, [hl] ;check if the game is running on sgb, and reset bit 7 of wHudTextType if not
    jr nz, .onSGB
    res 7, a
.onSGB:
    ldh [rBGP], a
    ret

Call_04cf:
    xor a
    ldh [rLYC], a
    ld a, $15
    jp Jump_000_03e6

Call_04d7:
    ld hl, $ff40
    res 1, [hl]
    ldh a, [$ff95]
    and $08
    jr z, jr_000_04e4
    ld a, $90
jr_000_04e4:
    ldh [rSCY], a
    call Call_000_04c0
    ld a, [$def5]
    ldh [rLYC], a
    jp Jump_000_0376

Call_04f1:
    ld hl, $ff40
    set 1, [hl]
    xor a
    ldh [rSCY], a
    call Call_000_0678
    ld a, [$def6]
    ldh [rLYC], a
    jp Jump_000_0376

Call_0504:
    ld hl, $ff40
    res 1, [hl]
    call Call_000_04c0
    xor a
    ldh [rLYC], a
    ld a, $19
    jp Jump_000_03e6

Call_0514:
    ld a, $07
    ldh [rWX], a
    ld a, $48
    ldh [rLYC], a
    jp Jump_000_0376

Call_051f:
    ld a, $50
    ldh [rSCY], a
    ld a, $97
    ldh [rWX], a
    ld a, $68
    ldh [rLYC], a
    jp Jump_000_0376

Call_052e:
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    ld a, $1f
    jp Jump_000_03e6

Call_053a:
    ld a, $a7
    ldh [rWX], a
    ld a, [$c817]
    or a
    jr nz, jr_000_054a
    xor a
    ldh [rLYC], a
    jp Jump_000_038f
jr_000_054a:
    ld a, $28
jr_000_054c:
    ldh [rLYC], a
    jp Jump_000_0376

Call_0551:
    ld a, $68
    ldh [rSCY], a
    ld a, $5a
    jr jr_000_054c
Call_0559:
    xor a
    ldh [rSCY], a
    ldh [rLYC], a
    ld a, $22
    jp Jump_000_03e6

Call_0563:
    ld hl, $ff40
    res 1, [hl]
    xor a
    ldh [rSCY], a
    ld a, $a7
    ldh [rWX], a
    ld a, $20
    ldh [rLYC], a
    jp Jump_000_0376

Call_0576:
    ld hl, $ff40
    set 1, [hl]
    ld a, $3f
    ldh [rLYC], a
    ld a, [$c817]
    or a
    jr z, jr_000_0589
    ld a, $70
    ldh [rSCY], a
jr_000_0589:
    jp Jump_000_0376

Call_058c:
    ld hl, $ff40
    res 1, [hl]
    ld a, $58
    ldh [rLYC], a
    xor a
    ldh [rSCY], a
    jp Jump_000_0376

Call_059b:
    ld hl, $ff40
    set 1, [hl]
    xor a
    ldh [rLYC], a
    ld a, [$c818]
    or a
    jr z, jr_000_05ad
    ld a, $58
    ldh [rSCY], a
jr_000_05ad:
    ld a, $26
    jp Jump_000_03e6

Call_05b2:
    ld a, $07
    ldh [rWX], a
    ldh [rLYC], a
    jp Jump_000_0376

Call_05bb:
    ld a, $0f
    ldh [rBGP], a
    ld a, $07
    ldh [rLYC], a
    jp Jump_000_0376

Call_05c6:
    ld a, $9c
    ldh [rBGP], a
    xor a
    ldh [rLYC], a
    jp Jump_000_038f

Call_05d0:
    ld hl, $ff40
    res 0, [hl]
    res 1, [hl]
    ld a, $07
    ldh [rWX], a
    ld a, [$c811]
    ldh [rLYC], a
    jp Jump_000_0376

Call_05e3:
    ld a, [$c816]
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $ff40
    set 0, [hl]
    set 1, [hl]
    ld a, [$c813]
    ldh [rWX], a
    ld a, [$c812]
    ldh [rLYC], a
    jp Jump_000_0376

Call_05fe:
    ld hl, $ff40
    res 0, [hl]
    res 1, [hl]
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    ld a, $2d
    jp Jump_000_03e6

Call_0611:
    ld a, [$c811]
    ldh [rWX], a
    ld a, $0f
    ldh [rLYC], a
    jp Jump_000_0376

Call_061d:
    ld a, $a0
    ldh [rWX], a
    xor a
    ldh [rLYC], a
    jp Jump_000_038f

Call_0627:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    ld a, $4f
    ldh [rLYC], a
    jp Jump_000_0376

Call_0637:
    ld hl, $c867
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rSCX], a
    ld a, $7f
    add [hl]
    ldh [rLYC], a
    jp Jump_000_0376

Call_0648:
    ld hl, $ff40
    res 1, [hl]
    xor a
    ldh [rLYC], a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $07
    ldh [rWX], a
    ld a, $32
    jp Jump_000_03e6

Call_065d:
    ld hl, $ff40
    set 1, [hl]
    ld a, $a7
    ldh [rWX], a
    call Call_000_067d
    ld a, $4f
    ldh [rLYC], a
    jp Jump_000_0376

Call_0670:
    xor a
    ldh [rLYC], a
    ld a, $35
    jp Jump_000_03e6


Call_000_0678:
    ld hl, $ce1d
    jr jr_000_0680
Call_000_067d:
    ld hl, $da3d
jr_000_0680:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl]
    ldh [rOBP1], a
    ret

;68a
    db $10
    ld c, c
    ld h, h
    add d
    adc a
    ldh a, [hJoypad]
    or a
    jr nz, Jump_000_06a2
    ld a, $c
    rst $10
    call Call_0c_4d05
    ldh [$ff8b], a
    ldh [hJoypad], a
    cp $ff
    jr nz, jr_000_06ba
Jump_000_06a2:
    ld hl, $defb
    inc [hl]
    ld a, [hl]
    cp $05
    jr nz, jr_000_06ac
    xor a
jr_000_06ac:
    ld [hl-], a
    xor a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ld hl, wIsOnSGB
    res 5, [hl]
    jp Reset
jr_000_06ba:
    ldh a, [hFunctionTableIndex]
    rst $08


FunctionTable_06bd:
dw Call_0719
dw Call_0734
dw Call_07dd
dw jr_000_0833
dw Call_083c
dw jr_000_0833
dw Call_084e
dw jr_000_0833
dw Call_083c
dw jr_000_0833
dw Call_0848
dw Call_097e.end
dw Call_08ec
dw Call_095a
dw Call_097e.end
dw Call_097e.end
dw Call_08c1
dw Call_08d3
dw Call_08da
dw Call_08dd
dw Call_09fe
dw Call_0a32
dw Call_097e
dw Call_0989
dw jr_000_09ab
dw Call_09b8
dw Call_09c7
dw Call_0a73
dw Call_0a81
dw Call_0a9e
dw Call_0aa5
dw Call_0a7e
dw Call_0aad
dw Call_0ac0
dw Call_0ac7
dw Call_0ad9
dw Call_0ae6
dw Call_0aeb
dw Call_0afe
dw Call_0b05
dw Call_0b0a
dw Call_0b11
dw Call_0b2e
dw Call_0b53
dw Call_0b7e
dw Call_0bc7


Call_0719:
    call CheckForBonusGame
    call Call_000_0cd5
    call Call_000_1cfa
    ld hl, $c853
    xor a
    ld [hl+], a
    ld [hl], a
    call IncrementFunctionTableIndex
    ld a, $07
    rst $10
    call Call_07_7157
    ld a, $01
    rst $10
Call_0734:
    call SendSGBPacket7
    call Call_000_2c48
    call Call_000_1094
    call Call_000_0e4d
    call Call_000_10ab
    call Call_000_2f25
    ld a, $40
    ld [$c70e], a
    call Call_000_2fac
    call Call_000_0f5d
    ld hl, $da75
    ld bc, $0380
    xor a
    call FillMemory16
    ld a, $01
    rst $10
    call Call_000_1c12
    call Call_000_3048
    ld a, $0c
    rst $10
    call Call_0c_432c
    call Call_0c_46a9
    call Call_0c_47a7
    call Call_000_0c97
    call Call_000_31e8
    xor a
    ldh [$ff95], a
    dec a
    ld [$ddb3], a
    ld a, $02
    ldh [hFunctionTableIndex], a
    ld a, [$c85b]
    cp $03
    jr nz, jr_000_079a
    call Call_000_0dc3
    ld a, b
    cp $04
    ld a, $2c
    jr nz, jr_000_079d
    call Call_000_1de6
    call Call_000_10be
    jr jr_000_079d
jr_000_079a:
    call Call_000_12e2
jr_000_079d:
    ld a, [$da4b]
    cp $21
    jr nz, jr_000_07ce
    ld hl, $9940
    ld bc, $01c0
    ld a, $4b
    call FillMemory16
    ld a, $0c
    call LoadGraphicsDataHeader
    ld a, $0e
    call Call_000_1d6b
    ld hl, $c867
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $32
    ldh [$ff8f], a
    call UpdateLCDCIERegisters
    ld a, $30
    call SendSGBPacketFromTable
    jr jr_000_07d7
jr_000_07ce:
    call UpdateLCDCIERegisters
    ld hl, $d88c
    call SendSGBPacketCheckSGB
jr_000_07d7:
    ld a, $01
    rst $10
    call $494d
Call_07dd:
    ld a, [$da4b]
    cp $21
    jr z, jr_000_07f5
    call Call_000_12e2
    ld hl, $0f97
    ld a, [$c85b]
    ld d, $00
    ld e, a
    add hl, de
    ldh a, [$ff95]
    cp [hl]
    ret nz
jr_000_07f5:
    call IncrementFunctionTableIndex
    xor a
    ld [$da46], a
    ld [$da4a], a
    ld [$da49], a
    ld hl, $c865
    ld [hl+], a
    ld [hl], a
    ld a, $07
    rst $10
    call Call_07_7158
    ld a, $01
    rst $10
    ld hl, wIsOnSGB
    res 3, [hl]
    ld a, [$c85b]
    cp $03
    jr nz, jr_000_0821
    ld a, $1b
    ldh [hFunctionTableIndex], a
    ret
jr_000_0821:
    cp $05
    jr c, jr_000_082d
    cp $0f
    jr c, jr_000_0833
    cp $11
    jr nc, jr_000_0833
jr_000_082d:
    ld a, [$da45]
    ld [$c836], a
jr_000_0833:
    call IncrementFunctionTableIndex
    call Call_000_0857
    jp Jump_000_1511

Call_083c:
    call IncrementFunctionTableIndex
    call Call_000_085d
    call Call_000_150b
    jp Jump_000_0c18

Call_0848:
    ld a, $03
    ldh [hFunctionTableIndex], a
    jr jr_000_0851
Call_084e:
    call IncrementFunctionTableIndex
jr_000_0851:
    call Call_000_085d
    jp Call_000_150b


Call_000_0857:
    ld a, $09
    rst $10
    call Call_000_0be8
Call_000_085d:
    call Call_000_1c7a
    ld a, $08
    rst $10
    call Call_000_29f0
    call Call_000_0ef2
    ld a, $10
    rst $10
    call Call_10_5194
    ld a, $08
    rst $10
    call Call_10_4000
    ld a, $10
    rst $10
    call Call_10_4abc
    call Call_000_17ee
    ldh a, [$ff8b]
    and $0c
    ret z
    ld b, a
    ld a, [$da4b]
    cp $21
    ret z
    ld hl, $c712
    ld a, [hl-]
    or a
    jr nz, jr_000_0894
    ld a, [hl]
    dec a
    ret z
jr_000_0894:
    ld a, $80
    ld [$c838], a
    bit 3, b
    jr nz, jr_000_08b9
    ld a, $03
    ld [$c82e], a
    ld a, $09
    ld [$c82d], a
    ld [$c835], a
Call_000_08aa:
    xor a
    ld [$c809], a
    ld hl, hFunctionTableIndex
    ld a, [hl]
    ld [$c70b], a
    ld a, $29
    ld [hl], a
    ret
jr_000_08b9:
    ldh a, [hFunctionTableIndex]
    ld [$c70b], a
    jp GotoNextScene

Call_08c1:
    call Call_000_1c7a
    ld a, $08
    rst $10
    call $7588
    call Call_000_12e2
    call Call_000_17ee
    jp Call_000_0f7e

Call_08d3:
    xor a
    ld [$ddb4], a
    call IncrementFunctionTableIndex
Call_08da:
    call Call_000_1754
Call_08dd:
    call Call_000_1c7a
    ld a, $07
    rst $10
    call $6f60
    call Call_000_12e2
    jp Call_000_0f7e

Call_08ec:
    call Call_000_1c7a
    ld a, $10
    rst $10
    call Call_10_59d8
    ld a, $08
    rst $10
    call $4000
    ld a, $10
    rst $10
    call Call_10_4e55
    call Call_000_12e2
    call Call_000_17ee
    call Call_000_0f7e
    ldh a, [hFunctionTableIndex]
    cp $0c
    ret z
    ld hl, wIsOnSGB
    bit 3, [hl]
    ret nz
    set 3, [hl]
    set 4, [hl]
    call Call_000_0db0
    call Call_000_0dc3
    ld a, c
    cp $02
    jr z, jr_000_093f
    cp $15
    jr z, jr_000_093f
    call Call_000_0db0
    call Call_000_0dc3
    ld a, c
    cp $02
    jr z, jr_000_093f
    cp $15
    jr z, jr_000_093f
    call Call_000_0da3
    call Call_000_0da3
    jr jr_000_0942
jr_000_093f:
    xor a
    ldh [hFunctionTableIndex], a
jr_000_0942:
    ld hl, $c858
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, wLives
    dec [hl] ;decrease lives by 1
    ld a, [hl]
    cp $ff ;check if the player has no lives left
    ret nz
    ld a, SceneGameOverScreen ;go to the game over screen
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
    ret

Call_095a:
    call Call_000_1c7a
    ld a, $08
    rst $10
    call Call_000_29f0
    ld a, $10
    rst $10
    call Call_10_59d8
    ld a, $08
    rst $10
    call $4000
    ld a, $10
    rst $10
    call Call_10_4e55
    call Call_000_10c6
    call Call_000_17ee
    jp Call_000_0f7e

Call_097e:
    ld a, $01
    rst $10
    ld a, ScenePlaceObject
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
.end
    ret

Call_0989:
    call IncrementFunctionTableIndex
    xor a
    ldh [$ff95], a
    ld a, $03
    ldh [$ff8f], a
    ld hl, wIsOnSGB
    res 4, [hl]
    call Call_000_0efe
    call Call_000_0da3
    call Call_000_0dc3
    ld a, c
    cp $04
    jr nz, jr_000_09ab
    ld a, $21
    ldh [hFunctionTableIndex], a
    ret
jr_000_09ab:
    call Call_000_17ee
    ldh a, [$ff95]
    cp $5a
    ret nz
    ld a, $2a
    ldh [hFunctionTableIndex], a
    ret

Call_09b8:
    call Call_000_17ee
    ld a, $10
    rst $10
    call Call_10_6143
    call Call_000_0f7e
    jp Jump_000_10be

Call_09c7:
    ld a, $2a
    ldh [hFunctionTableIndex], a
    ld hl, wIsOnSGB
    res 4, [hl]
    call Call_000_0efe
    call Call_000_0da3
    call Call_000_0dc3
    ld a, c
    cp $04
    ret nz
    ld a, $21
    ldh [hFunctionTableIndex], a
    ret



CheckForBonusGame:
    ld a, [$c858]
    or a
    ret nz
    ld a, [$c860]
    or a
    ret z
    pop af
    ;Set FF90 to 0
    xor a
    ldh [hFunctionTableIndex], a
    ;Set the scene to the circle bonus game by default (0x15)
    ld hl, hCurrentScene
    ld a, SceneBonusGameCircle
    ld [hl], a
    ld a, [$c711]
    bit 0, a ;Is the bonus game the slots minigame?
    ret z ;no
    inc [hl] ;Increment the scene value to the one for the slots bonus game (0x16)
    ret


Call_09fe:
    call IncrementFunctionTableIndex
    call Call_000_0a38
jr_000_0a04:
    call Call_000_1c7a
    call Call_000_12e2
    call Call_000_17ee
    call Call_000_0f7e
    ld a, [$da4a]
    or a
    ret nz
    ldh a, [$ff95]
    cp $3c
    ret c
    xor a
    ld [$c838], a
    ld a, [$c70b]
    ldh [hFunctionTableIndex], a
    ld a, [$c837]
    cp $03
    ret z
    cp $24
    ret z
    ld a, $02
    ld [$c836], a
    ret

Call_0a32:
    ld hl, hFunctionTableIndex
    dec [hl]
    jr jr_000_0a04
Call_000_0a38:
    ldh a, [hCurrentBank]
    push af
    ld a, $09
    rst $10
    ld hl, $db15
Jump_000_0a41:
    ld c, $00
jr_000_0a43:
    ld a, [hl+]
Jump_000_0a44:
    or a
    jr z, jr_000_0a66
    push hl
    push bc
    ld a, c
    ld [$c70d], a
    ld a, [hl+]
    cp $30
    jr c, jr_000_0a64
    cp $34
    jr c, jr_000_0a5e
    cp $3c
    jr c, jr_000_0a64
    cp $40
    jr nc, jr_000_0a64
jr_000_0a5e:
    inc [hl]
    sub $30
    call nc, $4000
jr_000_0a64:
    pop bc
    pop hl
jr_000_0a66:
    ld de, $000f
    add hl, de
    inc c
    ld a, c
    cp $20
    jr nz, jr_000_0a43
    pop af
    rst $10
    ret

Call_0a73:
    ld a, $01
    rst $10
    call Call_001_48fd
    call IncrementFunctionTableIndex
    jr Call_0a81
Call_0a7e:
    call Call_000_17d4
Call_0a81:
    call Call_000_1c7a
jr_000_0a84:
    ld a, $10
    rst $10
    call Call_000_0dc3
    ld a, [wIsOnSGB]
    bit 4, a
    jr z, jr_000_0a97
    ld a, b
    cp $01
    jr nz, jr_000_0a97
    inc b
jr_000_0a97:
    ld a, b
    call $6af9
    jp Jump_000_10be

Call_0a9e:
    xor a
    ld [$ddb4], a
    call IncrementFunctionTableIndex
Call_0aa5:
    call Call_000_1c7a
    call Call_000_1754
    jr jr_000_0a84
Call_0aad:
    ld a, $01
    rst $10
    call $4929
    ld a, [$da45]
    ld [$c836], a
    ld a, $03
    ldh [hFunctionTableIndex], a
    jp Call_000_0da3

Call_0ac0:
    xor a
    ld [$ddb4], a
    call IncrementFunctionTableIndex
Call_0ac7:
    call Call_000_1c7a
    call Call_000_10be
    call Call_000_3223
    ld a, [$ddb4]
    cp $20
    ret c
    jp IncrementFunctionTableIndex

Call_0ad9:
    call Call_000_0dc3
    ld a, $10
    rst $10
    ld a, b
    call Call_10_6465
    call IncrementFunctionTableIndex
Call_0ae6:
    call Call_000_3223
    jr jr_000_0aee
Call_0aeb:
    call Call_000_3277
jr_000_0aee:
    call Call_000_1c7a
    ld a, $10
    rst $10
    call Call_000_0dc3
    ld a, b
    call Call_10_6b4c
    jp Jump_000_10be

Call_0afe:
    xor a
    ld [$ddb4], a
    call IncrementFunctionTableIndex
Call_0b05:
    call Call_000_32e2
    jr jr_000_0aee
Call_0b0a:
    ld a, $2a
    ldh [hFunctionTableIndex], a
    jp Call_000_0da3


Call_0b11:
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld a, [$c860]
    or a
    jr z, jr_000_0b28
    ld a, [$c858]
    inc a
    jr z, jr_000_0b28
    call $5a61
    jr jr_000_0b2b
jr_000_0b28:
    call $5b51
jr_000_0b2b:
    pop af
    rst $10
    ret

Call_0b2e:
    ld hl, $c860
    ld c, $09
    ld a, [hl+]
    cp c
    jr nz, jr_000_0b3f
    ld a, [hl]
    cp c
    jr nz, jr_000_0b3f
    xor a
    ldh [hFunctionTableIndex], a
    ret
jr_000_0b3f:
    ld a, $03
    ld [$c82e], a
    ld a, $06
    ld [$c82d], a
    ld [$c835], a
    call Call_000_08aa
    ld a, $2b
    ldh [hFunctionTableIndex], a
Call_0b53:
    call Call_0b11
    ld a, [$c860]
    or a
    jr z, jr_000_0b6a
    ld a, [$c858]
    inc a
    jr z, jr_000_0b6a
    ld a, [$c809]
    cp $12
    ret c
    jr jr_000_0b70
jr_000_0b6a:
    ld a, [$c809]
    cp $0c
    ret c
jr_000_0b70:
    ld hl, $c711
    ld de, $c811
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call IncrementFunctionTableIndex
Call_0b7e:
    call Call_000_10be
    ldh a, [$ff95]
    and $03
    ret nz
    ld hl, $c711
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    push hl
    call z, IncrementFunctionTableIndex
    pop hl
    ld a, $06
    ld [$c82e], a
    ld [$c835], a
    call Call_000_2006
    call Call_000_0ba3
    jp Jump_000_0c8b


Call_000_0ba3:
    ld hl, wTimerOnesDigit
    ld b, $01
    ld a, [hl-]
    or a
    jr nz, jr_000_0bb9
    ld b, $0a
    ld a, [hl-]
    or a
    jr nz, jr_000_0bb9
    ld b, $64
    ld a, [hl]
    or a
    jp z, Jump_000_0e12
jr_000_0bb9:
    ld hl, $c711
    ld a, [hl]
    sub b
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld a, b
    jp Jump_000_0e12

Call_0bc7:
    call Call_000_10be
    ldh a, [$ff8b]
    or a
    ret z
    ld a, $08
    ld [$c82d], a
    ld [$c835], a
    ld hl, $c811
    ld de, $c711
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    ldh [hFunctionTableIndex], a
    ld [$c838], a
    ret


Call_000_0be8:
    ld hl, $da47
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    ld hl, $db15
    ld c, $00
jr_000_0bf7:
    ld a, [hl+]
    or a
    jr z, jr_000_0c0a
    push hl
    push bc
    ld a, c
    ld [$c70d], a
    ld a, [hl+]
    inc [hl]
    sub $30
    call nc, $4000
    pop bc
    pop hl
jr_000_0c0a:
    ld de, $000f
    add hl, de
    inc c
    ld a, c
    cp $20
    jr nz, jr_000_0bf7
    ret


Call_0c15:
    jp Call_000_1cfa


Jump_000_0c18:
    ldh a, [$ff91]
    bit 0, a
    ret nz
    ldh a, [$ff93]
    bit 5, a
    ret nz
    ld hl, $c710
    inc [hl]
    ld a, [hl]
    cp $0f
    ret nz
    ld a, [$da4b]
    cp $21
    ret z
    xor a
    ld [hl+], a
    ld a, [hl]
    sub $01
    ld [hl+], a
    ld c, a
    ld a, [hl]
    sbc $00
    ld [hl], a
    or a
    jr nz, jr_000_0c6a
    ld a, c
    cp $1e
    jr z, jr_000_0c5d
    cp $0f
    jr z, jr_000_0c59
    dec a
    jr nz, jr_000_0c6a
    ld a, $80
    ld [$c836], a
    ld a, $02
    ld [$c82d], a
    ld [$c835], a
    jr jr_000_0c6a
jr_000_0c59:
    ld a, $24
    jr jr_000_0c5f
jr_000_0c5d:
    ld a, $03
jr_000_0c5f:
    ld [$c836], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
jr_000_0c6a:
    ld a, [hl-]
    or [hl]
    jr nz, jr_000_0c8b
    ld a, $0c
    ldh [hFunctionTableIndex], a
    ld a, $10
    rst $10
    call Call_10_5354
    ld a, $01
    rst $10
    ld hl, $ff8f
jr_000_0c7e:
    ld a, [hl]
    cp $3b
    jr nz, jr_000_0c7e
    ld [hl], $03
    ld de, UnknownData_0f8a
    call Call_000_1685
Jump_000_0c8b:
jr_000_0c8b:
    ld de, $9c02
    ld hl, $c711
    ld bc, $c826
    jp Jump_000_206b


Call_000_0c97:
    call Call_000_20b2
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, [$c705]
    push af
    cp $04
    jr c, jr_000_0cac
    ld a, $01
    ld [$c705], a
jr_000_0cac:
    ld hl, $c203
    ld c, [hl]
    xor a
    ld [hl], a
jr_000_0cb2:
    inc [hl]
    call Call_000_0f7e
    dec c
    jr nz, jr_000_0cb2
    ld hl, $c207
    ld c, [hl]
    xor a
    ld [hl], a
jr_000_0cbf:
    inc [hl]
    call Call_000_0f7e
    dec c
    jr nz, jr_000_0cbf
    pop af
    ld [$c705], a
    cp $04
    ret c
    ld hl, $c708
    ld a, [hl]
    add $20
    ld [hl], a
    ret


Call_000_0cd5:
    call Call_000_0dc3
    ld a, $30
    ld [$c856], a
    ld a, $b4
    ld [$c857], a
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    call $495c
    pop af
    rst $10
Call_000_0ced:
    jp Jump_000_0d73

;0cf0
GoBackToLastScene:
    ld hl, hCurrentScene
    dec [hl]
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    call Call_00c_4b71
    call Call_000_309e
    pop af
    rst $10
    ret

Call_000_0d03:
    ld a, b
    ld [$c829], a
jr_000_0d07:
    call LoadStage
    jr GoBackToLastScene


GoToMapScreen:
    ld a, SceneStageMapScreen
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
    pop af
.end:
    ;Removed debug code?
    ret

Call_000_0d15:
    call Call_000_0dc3
    ld a, b
    or a
    jr nz, jr_000_0d25
    ld a, SceneDKArcadeIntro
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
    pop af
    ret
jr_000_0d25:
    cp $04
    jr nz, jr_000_0d39
    ld a, [wIsOnSGB]
    bit 4, a
    jr z, jr_000_0d39
    call Call_000_0da3
    call Call_000_0dc3
    jp Call_000_0ced
jr_000_0d39:
    call Call_000_0da3
    call Call_000_0dc3
    call Call_000_0ced
    jp Call_000_0db0


Call_000_0d45:
    jr GoBackToLastScene
Call_000_0d47:
    ld hl, $0003
    push bc
    call Call_000_1d1b
    pop bc
    add b
    ld [$c829], a
    jr jr_000_0d07
Call_000_0d55:
    jp Reset

Call_000_0d58:
    call Call_000_0dc3
    ld a, b
    ld [$ca66], a
    ld a, SceneCutscene
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
    pop af
    jp Call_000_0da3

Call_000_0d6a:
    ld a, SceneCredits
    ldh [hCurrentScene], a
    xor a
    ldh [hFunctionTableIndex], a
    pop af
    ret


Jump_000_0d73:
    ld a, c
    rst $08


;function table used by above function
;offset: 0d73
FunctionTable_00_0d73:
dw GoBackToLastScene
dw Call_000_0d03
dw GoToMapScreen
dw Call_000_0d15
dw GoToMapScreen.end
dw GoBackToLastScene
dw Call_000_0d03
dw GoBackToLastScene
dw Call_000_0d03
dw GoBackToLastScene
dw Call_000_0d03
dw Call_000_0d45
dw Call_000_0d47
dw Call_000_0d45
dw Call_000_0d47
dw Call_000_0d45
dw Call_000_0d47
dw GoBackToLastScene
dw Call_000_0d03
dw Call_000_0d55
dw Call_000_0d58
dw GoToMapScreen
dw Call_000_0d6a

Call_000_0da3:
    call Call_000_0dbf
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de
    ld a, d
    or e
    ret z
    jr jr_000_0dba

Call_000_0db0:
    call Call_000_0dbf
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    or e
    ret z
    dec de
jr_000_0dba:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    ret


Call_000_0dbf:
    ld hl, $c85c
    ret


Call_000_0dc3:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    ld hl, $c85c
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, ArcadeLevelPalette
    add hl, de
    add hl, de
    ld a, [hl+]
    ld c, a
    ld [$c85b], a
    ld b, [hl]
    pop af
    rst $10
    ret


    ld hl, wLives
    add [hl]
    cp $64
    jr c, jr_000_0de7
    ld a, $63
jr_000_0de7:
    ld [hl], a
    ld a, [wLives]
    ld l, a
    ld h, $00
    call Call_000_2006
    call Call_000_205e
    ld c, $02
    ld de, wTimerOnesDigit
jr_000_0df9:
    push bc
    call Call_000_1635
    pop bc
    ld a, $11
    add c
    ld [hl+], a
    ld a, $9c
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    dec de
    ld [hl+], a
    xor a
    ld [hl], a
    dec c
    jr nz, jr_000_0df9
    ret


Jump_000_0e12:
    ld hl, $da41
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, [$da41]
    ld l, a
    ld a, [$da42]
    ld h, a
    call Call_000_2006
    call Call_000_205e
    ld hl, $d841
    push hl
    ld a, $08
    ld [hl+], a
    ld a, $9c
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $47
    ld [hl+], a
    ld a, $d8
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $c81b
    ld c, $05
    call CopyData
    pop de
    jp Call_000_1685


Call_000_0e4d:
    call Call_000_162c
    xor a
    ldh [rWY], a
    inc a
    ldh [$ff8f], a
    ld a, $06
    call LoadGraphicsDataHeader
    call Call_000_2ca7
    xor a
    call Call_000_1d6b
    call Call_000_0eb6
    ld hl, $d88c
    push hl
    ld c, $10
    xor a
    call FillMemory
    pop hl
    ld a, $51
    ld [hl+], a
    ld a, [$c862]
    add $80
    ld [hl+], a
    ld a, $01
    adc $00
    ld [hl+], a
    ld a, $e4
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $e5
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $e6
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $c1
    ld a, $01
    call Call_000_1e38
    ld a, [wIsOnSGB]
    bit 7, a
    ret z
    ld a, [$da4b]
    cp $20
    jr z, jr_000_0eb1
    and $0f
    cp $02
    jr z, jr_000_0eb1
    cp $0c
    jr z, jr_000_0eb1
    cp $0e
    ret nz
jr_000_0eb1:
    ld a, $0f
    jp Jump_000_1e38


Call_000_0eb6:
    ld a, [$da41]
    ld l, a
    ld a, [$da42]
    ld h, a
    call Call_000_2006
    ld hl, $c81b
    ld de, $9c08
    ld b, $05
jr_000_0ec9:
    ld a, [hl+]
    add $01
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0ec9
    ld a, [wLives]
    ld h, $00
    ld l, a
    call Call_000_2006
    ld hl, $9c12
    ld a, [wTimerTensDigit]
    add $01
    ld [hl+], a
    ld a, [wTimerOnesDigit]
    add $01
    ld [hl], a
    ld a, [$da4b]
    cp $21
    ret z
    jp Jump_000_0c8b


Call_000_0ef2:
    ld a, $07
    rst $10
    call $4000
    ld a, $10
    rst $10
    jp Call_10_4000


Call_000_0efe:
    call Call_000_0f22
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $a190
    add hl, de
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld de, $c711
    ld a, [de]
    inc de
    ld [hl+], a
    swap a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    swap a
    ld [hl], a
    jp Jump_000_1eb2


Call_000_0f22:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10 ;switch to bank C
    ld hl, $c85c
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, ArcadeLevelPalette
    ld b, $02
    ld c, $00
jr_000_0f35:
    ld a, [hl+]
    inc hl
    cp b
    jr nz, jr_000_0f3b
    inc c
jr_000_0f3b:
    cp $15
    jr nz, jr_000_0f40
    inc c
jr_000_0f40:
    dec de
    ld a, d
    or e
    jr nz, jr_000_0f35
    pop af
    rst $10
    ld a, c
    dec a
    ret


    ldh a, [hCurrentBank]
    push af
    ld a, $01 ;switch to bank 1
    rst $10
    ld hl, $c85c
    inc [hl]
    push hl
    call $4cb3
    pop hl
    dec [hl]
    pop af
    rst $10
    ret


Call_000_0f5d:
    ld hl, $2987
    ld de, $c7f1
    ld c, $06
    call CopyData
    ld hl, $2987
    ld de, $c7f7
    ld c, $06
    call CopyData
    ld hl, $298d
    ld de, $c7fd
    ld c, $06
    jp CopyData


Call_000_0f7e:
    push hl
    push bc
    xor a
    ld [$c706], a
    call Call_000_1517
    pop bc
    pop hl
    ret


UnknownData_0f8a:
db $27,$9C,$01,$07,$90,$0F,$0B,$0C,$0D,$0E,$00,$0F,$10,$00,$00,$00,$00,$00,$78,$78,$78,$78,$00,$00,$78,$78,$00,$00,$00,$00,$B4,$B4


GetOAMDmaCodeAddress:
    ;Set bc to 0xa80
    ld c, $80
    ld b, $0a
    ld hl, OAMDMACode
.loop:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, .loop
    ret

;ff80 oam dma code, offset: 0xfb8
OAMDMACode:
    ld a, $c0
    ldh [rDMA], a
    ld a, $28
.loop:
    dec a
    jr nz, .loop
    ret

;address to jump to:
;lower byte offset: 0x(2a + hl)
;upper byte offset: 0x(2a + hl + 1)
;hl is the address for the function table
;after the function, using the stack value
;from calling this function instead of
;directly setting hl to it
JumpFunctionTable:
    pop hl
    push de
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    pop de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl

Bankswitch:
    ldh [hCurrentBank], a
    ld [$2000], a
    ret


SendSGBPacket7:
    ld a, $07
    call SendSGBPacketFromTable

DisableLCD:
    di
    ldh a, [rIE]
    ld [wIERegisterTemp], a
    and $fe
    ldh [rIE], a
    ei
    jr DisableLCD1


UpdateLCDCIERegisters:
    ld a, [wIERegisterTemp]
    ldh [rIE], a
    ld a, [wLCDCRegisterTemp]
    ldh [rLCDC], a
    ret

;0xff1
SendSGBPacket0B:
    call UpdateLCDCIERegisters
    ld a, $0b
    jp SendSGBPacketFromTable


DisableLCD1:
.loop
    ldh a, [rLY]
    cp $91 ;is the current scanline 0x91?
    jr c, .loop ;no, go back the start
    ldh a, [rLCDC]
    and $7f ;Set the 7th bit of rLCDC to 0 (disable lcd)
    ldh [rLCDC], a
    ld a, [wIERegisterTemp]
    ldh [rIE], a
    ret

;0x100b
PollInput:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [hJoypad]
    xor c
    and c
    ldh [$ff8b], a
    ld a, c
    ldh [hJoypad], a
    ld a, $30
    ldh [rP1], a
    ret


INCLUDE "src/home/copy_data.asm"


Call_105e:
    xor a
    ld e, a
    ld d, a
    inc b
    dec b
    jr z, jr_000_1078
    ld c, $10
jr_000_1067:
    sla l
    rl h
    rla
    sub b
    jr nc, jr_000_1070
    add b
jr_000_1070:
    ccf
    rl e
    rl d
    dec c
    jr nz, jr_000_1067
jr_000_1078:
    ld l, e
    ld h, d
    ret


    add l
    ld l, a
    ret nc
    inc h
    ret

Call_1080:
    ld hl, $c220
    ld de, $0020
    ld b, $01
    ld c, $1f
jr_000_108a:
    ld a, [hl]
    and a
    ret z
    add hl, de
    inc b
    dec c
    jr nz, jr_000_108a
    scf
    ret


Call_000_1094:
    ld hl, $9800
    ld bc, $0800
    jr jr_000_10a7
    ld hl, $9800
    jr jr_000_10a4
    ld hl, $9c00
jr_000_10a4:
    ld bc, $0400
jr_000_10a7:
    xor a
    jp FillMemory16


Call_000_10ab:
    ld hl, $c000
    ld c, $a0
    xor a
    call FillMemory
    ld hl, $c200
    ld bc, $0400
    xor a
    jp FillMemory16


Call_000_10be:
Jump_000_10be:
    ldh a, [hCurrentBank]
    push af
    ld a, $1d
    rst $10
    jr jr_000_10d0
Call_000_10c6:
    ldh a, [hCurrentBank]
    push af
    ld a, $0b
    rst $10
    xor a
    ld [$c701], a
jr_000_10d0:
    ld de, $c000
    ld hl, $c200
    ld b, $20
jr_000_10d8:
    ld a, [hl+]
    or a
    call nz, Call_000_1115
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_000_10d8
    xor a
    ld [$c701], a
    ld h, d
    ld l, e
    ld b, $a0
jr_000_10f0:
    ld a, l
    cp b
    jr z, jr_000_10fb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_10f0
jr_000_10fb:
    pop af
    rst $10
    ret


jr_000_10fe:
    ld a, [hl+]
    or a
    call nz, Call_000_1115
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_000_10fe
    xor a
    ld [$c701], a
    pop af
    rst $10
    ret


Call_000_1115:
    push bc
    push hl
    ld a, [hl+]
    ld [$c700], a
    ld c, a
    ld a, [hl+]
    add a
    ld b, a
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    inc hl
    ld a, [hl-]
    add e
    ld e, a
    ld a, d
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c702], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push hl
    inc hl
    ld a, [hl+]
    inc [hl]
    add e
    ld e, a
    ld a, d
    pop hl
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c703], a
    ld [hl], e
jr_000_1147:
    ld hl, $4000
    ld d, $00
    ld e, c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    cp $f0
    jr z, jr_000_1168
    cp $f1
    jr nz, jr_000_1173
    ld a, e
    pop de
    push de
    inc de
    ld [de], a
    add a
    ld b, a
    jr jr_000_1147
jr_000_1168:
    ld a, e
    pop de
    push de
    ld [de], a
    inc de
    ld c, a
    xor a
    ld b, a
    ld [de], a
    jr jr_000_1147
jr_000_1173:
    ld d, a
    push de
    ld hl, $c600
    ld d, $00
    ld a, [$c700]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c700], a
    pop hl
    ld d, $c0
    ld a, [$c701]
    ld e, a
    ld a, [hl+]
    ld b, a
jr_000_118c:
    ld a, b
    or a
    jr z, jr_000_11ca
    dec b
    ld a, e
    cp $a0
    jr nz, jr_000_11a6
    ldh a, [$ff95]
    rrca
    jr nc, jr_000_11ca
    push hl
    ld hl, sp+$06
    ld a, $03
    ld [hl+], a
    ld [hl], $11
    pop hl
    ld e, $50
jr_000_11a6:
    ld a, [$c707]
    ld c, a
    ld a, [$c702]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c708]
    ld c, a
    ld a, [$c703]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c700]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_118c
jr_000_11ca:
    ld a, e
    ld [$c701], a
    pop hl
    pop bc
    ret


    ldh a, [hCurrentBank]
    push af
    ld a, $0b
    rst $10
    xor a
    ld [$c701], a
    ld de, $c000
    ld hl, $c201
    call Call_000_1115
    ld hl, $c5e0
    ld b, $1f
jr_000_11e9:
    ld a, [hl+]
    or a
    call nz, Call_000_1226
    ld a, l
    sub $21
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, jr_000_11e9
    xor a
    ld [$c701], a
    ld h, d
    ld l, e
    ld b, $a0
jr_000_1201:
    ld a, l
    cp b
    jr z, jr_000_120c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_1201
jr_000_120c:
    pop af
    rst $10
    ret
jr_000_120f:
    ld a, [hl+]
    or a
    call nz, Call_000_1226
    ld a, l
    sub $21
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, jr_000_120f
    xor a
    ld [$c701], a
    pop af
    rst $10
    ret


Call_000_1226:
    push bc
    push hl
    ld a, [hl+]
    ld [$c700], a
    ld c, a
    ld a, [hl+]
    add a
    ld b, a
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    inc hl
    ld a, [hl-]
    add e
    ld e, a
    ld a, d
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c702], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push hl
    inc hl
    ld a, [hl+]
    inc [hl]
    add e
    ld e, a
    ld a, d
    pop hl
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c703], a
    ld [hl], e
jr_000_1258:
    ld hl, $4000
    ld d, $00
    ld e, c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    cp $f0
    jr z, jr_000_1279
    cp $f1
    jr nz, jr_000_1284
    ld a, e
    pop de
    push de
    inc de
    ld [de], a
    add a
    ld b, a
    jr jr_000_1258
jr_000_1279:
    ld a, e
    pop de
    push de
    ld [de], a
    inc de
    ld c, a
    xor a
    ld b, a
    ld [de], a
    jr jr_000_1258
jr_000_1284:
    ld d, a
    push de
    ld hl, $c600
    ld d, $00
    ld a, [$c700]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c700], a
    pop hl
    ld d, $c0
    ld a, [$c701]
    ld e, a
    ld a, [hl+]
    ld b, a
jr_000_129d:
    ld a, b
    or a
    jr z, jr_000_12db
    dec b
    ld a, e
    cp $a0
    jr nz, jr_000_12b7
    ldh a, [$ff95]
    rrca
    jr nc, jr_000_12db
    push hl
    ld hl, sp+$06
    ld a, $14
    ld [hl+], a
    ld [hl], $12
    pop hl
    ld e, $50
jr_000_12b7:
    ld a, [$c707]
    ld c, a
    ld a, [$c702]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c708]
    ld c, a
    ld a, [$c703]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c700]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_129d
jr_000_12db:
    ld a, e
    ld [$c701], a
    pop hl
    pop bc
    ret


Call_000_12e2:
    ldh a, [hCurrentBank]
    push af
    ld a, $0b
    rst $10
    xor a
    ld [$c701], a
    ld de, $c000
    ld hl, $c200
    ld b, $20
jr_000_12f4:
    ld a, [hl+]
    or a
    call nz, Call_000_1331
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_000_12f4
    xor a
    ld [$c701], a
    ld h, d
    ld l, e
    ld b, $a0
jr_000_130c:
    ld a, l
    cp b
    jr z, jr_000_1317
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_130c
jr_000_1317:
    pop af
    rst $10
    ret
jr_000_131a:
    ld a, [hl+]
    or a
    call nz, Call_000_1331
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_000_131a
    xor a
    ld [$c701], a
    pop af
    rst $10
    ret


Call_000_1331:
    push bc
    push hl
    ld a, [hl+]
    ld [$c700], a
    ld c, a
    ld a, [hl+]
    add a
    ld b, a
    ld a, [hl+]
    ld [$c702], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$c703], a
jr_000_1346:
    ld hl, $4000
    ld d, $00
    ld e, c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    cp $f0
    jr z, jr_000_1367
    cp $f1
    jr nz, jr_000_1372
    ld a, e
    pop de
    push de
    inc de
    ld [de], a
    add a
    ld b, a
    jr jr_000_1346
jr_000_1367:
    ld a, e
    pop de
    push de
    ld [de], a
    inc de
    ld c, a
    xor a
    ld b, a
    ld [de], a
    jr jr_000_1346
jr_000_1372:
    ld d, a
    push de
    ld hl, $c600
    ld d, $00
    ld a, [$c700]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c700], a
    pop hl
    ld d, $c0
    ld a, [$c701]
    ld e, a
    ld a, [hl+]
    ld b, a
jr_000_138b:
    ld a, b
    or a
    jr z, jr_000_13c9
    dec b
    ld a, e
    cp $a0
    jr nz, jr_000_13a5
    ldh a, [$ff95]
    rrca
    jr nc, jr_000_13c9
    push hl
    ld hl, sp+$06
    ld a, $1f
    ld [hl+], a
    ld [hl], $13
    pop hl
    ld e, $50
jr_000_13a5:
    ld a, [$c707]
    ld c, a
    ld a, [$c702]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c708]
    ld c, a
    ld a, [$c703]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c700]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_138b
jr_000_13c9:
    ld a, e
    ld [$c701], a
    pop hl
    pop bc
    ret

Call_13d0:
    ldh a, [hCurrentBank]
    push af
    ld a, $1c
    rst $10
    xor a
    ld [$c701], a
    ld de, $c000
    ld hl, $ce21
    inc [hl]
    bit 0, [hl]
    jr z, jr_000_13fc
    ld hl, $c5e0
    ld b, $20
jr_000_13ea:
    ld a, [hl+]
    or a
    call nz, Call_000_1427
    ld a, l
    sub $21
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, jr_000_13ea
    jr jr_000_1411
jr_000_13fc:
    ld hl, $c200
    ld b, $20
jr_000_1401:
    ld a, [hl+]
    or a
    call nz, Call_000_1427
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_000_1401
jr_000_1411:
    xor a
    ld [$c701], a
    ld h, d
    ld l, e
    ld b, $a0
jr_000_1419:
    ld a, l
    cp b
    jr z, jr_000_1424
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_1419
jr_000_1424:
    pop af
    rst $10
    ret


Call_000_1427:
    push bc
    push hl
    ld a, [hl+]
    ld [$c704], a
    and $7f
    ld [$c700], a
    ld c, a
    ld a, [hl+]
    add a
    ld b, a
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    inc hl
    ld a, [hl-]
    add e
    ld e, a
    ld a, d
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c702], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push hl
    inc hl
    ld a, [hl+]
    inc [hl]
    add e
    ld e, a
    ld a, d
    pop hl
    adc [hl]
    pop hl
    ld [hl+], a
    ld [$c703], a
    ld [hl], e
jr_000_145e:
    ld hl, $4000
    ld d, $00
    ld e, c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    cp $f0
    jr z, jr_000_147f
    cp $f1
    jr nz, jr_000_148a
    ld a, e
    pop de
    push de
    inc de
    ld [de], a
    add a
    ld b, a
    jr jr_000_145e
jr_000_147f:
    ld a, e
    pop de
    push de
    ld [de], a
    inc de
    ld c, a
    xor a
    ld b, a
    ld [de], a
    jr jr_000_145e
jr_000_148a:
    ld d, a
    push de
    ld hl, $c600
    ld d, $00
    ld a, [$c700]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c700], a
    pop hl
    ld d, $c0
    ld a, [$c701]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [$c704]
    bit 7, a
    jr z, jr_000_14db
jr_000_14aa:
    ld a, b
    or a
    jr z, jr_000_1504
    dec b
    ld a, [$c707]
    ld c, a
    ld a, [$c702]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c708]
    ld c, a
    push bc
    ld a, [hl]
    cpl
    inc a
    ld c, a
    ld a, [$c703]
    add c
    pop bc
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c700]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    xor $20
    ld [de], a
    inc de
    jr jr_000_14aa
jr_000_14db:
    ld a, b
    or a
    jr z, jr_000_1504
    dec b
    ld a, [$c707]
    ld c, a
    ld a, [$c702]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c708]
    ld c, a
    ld a, [$c703]
    add [hl]
    sub c
    ld [de], a
    inc hl
    inc de
    ld a, [$c700]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_14db
jr_000_1504:
    ld a, e
    ld [$c701], a
    pop hl
    pop bc
    ret


Call_000_150b:
    ld a, $0c
    rst $10
    jp Call_00c_4bcd


Jump_000_1511:
    ld a, $0c
    rst $10
    jp Call_00c_4bf1


Call_000_1517:
    ld a, [$c705]
    or a
    ret z
    dec a
    jr z, jr_000_1586
    dec a
    jr z, jr_000_1558
    dec a
    jr z, jr_000_152a
    dec a
    ret z
    dec a
    jr z, jr_000_1558
jr_000_152a:
    ld hl, $c207
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    ld de, $ff43
    ld a, [de]
    add $38
    sub b
    jr c, jr_000_1549
    ld c, a
    ld a, [de]
    sub c
    jr c, jr_000_1549
    ld [$c708], a
jr_000_1549:
    ld a, [de]
    add $68
    sub b
    ret nc
    ld c, a
    ld a, [de]
    sub c
    cp $51
    ret nc
    ld [$c708], a
    ret
jr_000_1558:
    ld hl, $c203
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    ld de, $ff42
    ld a, [de]
    add $38
    sub b
    jr c, jr_000_1577
    ld c, a
    ld a, [de]
    sub c
    jr c, jr_000_1577
    ld [$c707], a
jr_000_1577:
    ld a, [de]
    add $68
    sub b
    ret nc
    ld c, a
    ld a, [de]
    sub c
    cp $51
    ret nc
    ld [$c707], a
    ret
jr_000_1586:
    ld hl, $c203
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    ld de, $ff42
    ld a, [de]
    add $38
    sub b
    jr c, jr_000_15a5
    ld c, a
    ld a, [de]
    sub c
    jr c, jr_000_15a5
    ld [$c707], a
jr_000_15a5:
    ld a, [de]
    add $68
    sub b
    jr nc, jr_000_15b5
    ld c, a
    ld a, [de]
    sub c
    cp $51
    jr nc, jr_000_15b5
    ld [$c707], a
jr_000_15b5:
    ld hl, $c207
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    inc de
    ld a, [de]
    add $38
    sub b
    jr c, jr_000_15d2
    ld c, a
    ld a, [de]
    sub c
    jr c, jr_000_15d2
    ld [$c708], a
jr_000_15d2:
    ld a, [de]
    add $68
    sub b
    ret nc
    ld c, a
    ld a, [de]
    sub c
    cp $51
    ret nc
    ld [$c708], a
    ret



    ld a, [$c705]
    or a
    ret z
    ld hl, $c223
    ld de, $ff42
    ld a, [de]
    add $38
    sub [hl]
    jr c, jr_000_15fa
    ld b, a
    ld a, [de]
    sub b
    jr c, jr_000_15fa
    ld [$c707], a
jr_000_15fa:
    ld a, [de]
    add $68
    sub [hl]
    jr nc, jr_000_160a
    ld b, a
    ld a, [de]
    sub b
    cp $58
    jr nc, jr_000_160a
    ld [$c707], a
jr_000_160a:
    inc hl
    inc hl
    inc hl
    inc hl
    inc de
    ld a, [de]
    add $38
    sub [hl]
    jr c, jr_000_161d
    ld b, a
    ld a, [de]
    sub b
    jr c, jr_000_161d
    ld [$c708], a
jr_000_161d:
    ld a, [de]
    add $68
    sub [hl]
    ret nc
    ld b, a
    ld a, [de]
    sub b
    cp $58
    ret nc
    ld [$c708], a
    ret


Call_000_162c:
    ld hl, $c72e
    ld c, $c3
    xor a
    jp FillMemory


Call_000_1635:
    ld hl, $c72f
    ld a, $01
    ld [hl-], a
    ld a, [hl]
    ld c, a
    inc a
    and $1f
    ld [hl+], a
    ld a, c
    add a
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    inc hl
    inc hl
    ret


Call_000_164c:
    ldh a, [rSTAT]
    bit 1, a
    ret nz
    ld hl, $c72f
    ld a, [hl+]
    or a
    ret nz
    ld a, [hl+]
    add a
    ld d, $00
    ld e, a
    add hl, de
    add hl, de
    add hl, de
    inc hl
    ld d, h
    ld e, l
    ld a, [hl-]
    or a
    ret z
    inc de
    ld a, [de]
    or a
    jr z, jr_000_1684
    inc de
    ld a, [de]
    or a
    jr z, jr_000_1684
    push hl
    call Call_000_16ab
    ld hl, $c730
    ld a, [hl]
    inc a
    and $1f
    ld [hl], a
    pop hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret
jr_000_1684:
    ret


Call_000_1685:
    ld hl, $c72f
    ld a, $01
    ld [hl-], a
    ld a, [hl]
    ld c, a
    inc a
    and $1f
    ld [hl+], a
    ld a, c
    add a
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0007
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $06
jr_000_16a4:
    ld a, [de]
    dec de
    ld [hl-], a
    dec b
    jr nz, jr_000_16a4
    ret


Call_000_16ab:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    pop hl
    ld a, d
    or a
    jr z, jr_000_16d0
jr_000_16bd:
    push bc
    push hl
jr_000_16bf:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_16bf
    pop hl
    ld b, $00
    ld c, $20
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_16bd
    ret
jr_000_16d0:
    ld a, e
jr_000_16d1:
    push bc
    push hl
jr_000_16d3:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_000_16d3
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_16d1
    ret


Call_000_16e2:
    ld hl, $da5f ;start at offset 0xda5f
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a

    REPT 15
    ld a, [hl+]
    ld [de], a
    inc de
    ENDR

    ld a, [hl+]
    ld [de], a
    
    ;Switch to bank 4
    ld a, $04
    ld [$2000], a

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    
    REPT 15
    ld a, [hl+]
    ld [de], a
    inc de
    ENDR

    ld a, [hl]
    ld [de], a
Call_000_1753:
    ret


Call_000_1754:
    ld hl, $ddb4
    ld a, [hl]
    inc [hl]
    cp $04
    jr c, jr_000_177a
    cp $30
    jr c, jr_000_17a6
Call_000_1761:
    ld hl, $da71
    ld a, $00
    ld [hl+], a
    ld a, $83
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], $83
    xor a
    ld [$ddb4], a
    dec a
    ld [$ddb3], a
    jp IncrementFunctionTableIndex
jr_000_177a:
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld de, $82c0
    add hl, de
    ld a, l
    ld [$da71], a
    ld a, h
    ld [$da72], a
    pop hl
    ld de, $46f0
    ld a, [$dd17]
    bit 7, a
    jr nz, jr_000_179c
    ld de, $67b0
jr_000_179c:
    add hl, de
    ld a, l
    ld [$da73], a
    ld a, h
    ld [$da74], a
    ret
jr_000_17a6:
    sub $04
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld de, $8000
    add hl, de
    ld a, l
    ld [$da71], a
    ld a, h
    ld [$da72], a
    pop hl
    ld de, $46f0
    ld a, [$dd17]
jr_000_17c3:
    bit 7, a
    jr z, jr_000_17ca
    ld de, $67b0
jr_000_17ca:
    add hl, de
    ld a, l
    ld [$da73], a
    ld a, h
    ld [$da74], a
    ret


Call_000_17d4:
    ld hl, $c200
    ld a, [hl+]
    or a
    ret z
    ld a, [hl]
    srl a
    ld hl, $ddb3
    cp [hl]
    call nz, Call_000_181b
    ld hl, $ddb4
    ld a, [hl]
    inc [hl]
jr_000_17e9:
    inc hl
    and $0f
    jr jr_000_1802

Call_000_17ee:
    ld a, [$c201]
    srl a
    ld hl, $ddb3
    cp [hl]
jr_000_17f7:
    call nz, Call_000_181b
    ld hl, $ddb4
    ld a, [hl]
    inc [hl]
    inc hl
    and $1f
jr_000_1802:
    ld d, $00
    add a
jr_000_1805:
    ld e, a
    add hl, de
    ld de, $da71
    add a
    add a
    add a
    ld [de], a
    inc de
    ld a, $83
    adc $00
jr_000_1813:
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_000_181b:
    rst $08

;the starting data is read whenver mario moves
;(functions related to mario sfx?)
FunctionTable_181c::
dw Call_187d
dw Call_18a4
dw Call_18c8
dw Call_18d4
dw Call_18e0
dw Call_18ec
dw Call_18f9
dw Call_1910
dw Call_191d
dw Call_192a
dw Call_1937
dw Call_1960
dw Call_1989
dw Call_1991
dw Call_1999
dw GotoNextScene.end
dw Call_19a1
dw Call_19ae
dw Call_19c1
dw Call_19d4
dw Call_1a03
dw Call_1a32
dw Call_1a49
dw Call_1beb
dw GotoNextScene.end
dw Call_1a72
dw Call_1a7f
dw Call_1a9a
dw Call_1abd
dw Call_1b7a
dw Call_1aff
dw Call_1b16
dw Call_1b2d
dw Call_1b44
dw Call_1b6d
dw Call_1b8f
dw Call_1ad8
dw Call_1ae5
dw Call_1af2
dw Call_1ba6
dw Call_1bbd
dw Call_1bd4
dw Call_1bf8
dw Call_1c05


Call_000_1874:
    ld hl, $ddb3
    ld [hl+], a
    xor a
    ld [hl+], a
    ld d, h
    ld e, l
    ret

Call_187d:
    xor a
    call Call_000_1874
    ld hl, $4bf0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_188e
    ld hl, $6b70
jr_000_188e:
    ld c, $18
    call Call_000_18b8
    ld hl, $5f30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_18a0
    ld hl, $7230
jr_000_18a0:
    ld c, $08
    jr Call_000_18b8
Call_18a4:
    ld a, $01
    call Call_000_1874
    ld hl, $4bf0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_18b6
    ld hl, $6b70
jr_000_18b6:
    jr jr_000_188e


Call_000_18b8:
.start:
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    push de
    ld de, $0010
    add hl, de
    pop de
    dec c
    jr nz, .start
    ret

Call_18c8:
    ld a, $02
    call Call_000_1874
    ld hl, $5970
    ld c, $08
    jr Call_000_18b8

Call_18d4:
    ld a, $03
    call Call_000_1874
    ld hl, $59f0
    ld c, $18
    jr Call_000_18b8

Call_18e0:
    ld a, $04
    call Call_000_1874
    ld hl, $49b0
    ld c, $08
    jr Call_000_18b8

Call_18ec:
    ld a, $05
    call Call_000_1874
    ld hl, $49b0
    ld c, $08
    jp Call_000_18b8

Call_18f9:
    ld a, $06
    call Call_000_1874
    ld hl, $4a30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_190b
    ld hl, $6a70
jr_000_190b:
    ld c, $0c
    jp Call_000_18b8

Call_1910:
    ld a, $07
    call Call_000_1874
    ld hl, $5170
    ld c, $0a
    jp Call_000_18b8

Call_191d:
    ld a, $08
    call Call_000_1874
    ld hl, $5210
    ld c, $1c
    jp Call_000_18b8

Call_192a:
    ld a, $09
    call Call_000_1874
    ld hl, $5210
    ld c, $1c
    jp Call_000_18b8

Call_1937:
    ld a, $0a
    call Call_000_1874
    ld hl, $4af0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1949
    ld hl, $6b30
jr_000_1949:
    ld c, $18
    call Call_000_18b8
    ld hl, $5f30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_195b
    ld hl, $7230
jr_000_195b:
    ld c, $08
    jp Call_000_18b8

Call_1960:
    ld a, $0b
    call Call_000_1874
    ld hl, $4af0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1972
    ld hl, $6b30
jr_000_1972:
    ld c, $18
    call Call_000_18b8
    ld hl, $5f30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1984
    ld hl, $7230
jr_000_1984:
    ld c, $08
    jp Call_000_18b8

Call_1989:
    ld hl, $ddb3
    ld a, $0c
    jp Jump_000_1a9c

Call_1991:
    ld hl, $ddb3
    ld a, $0d
    jp Jump_000_1a9c

Call_1999:
    ld hl, $ddb3
    ld a, $0e
    jp Jump_000_1a9c

Call_19a1:
    ld a, $10
    call Call_000_1874
    ld hl, $4b30
    ld c, $0c
    jp Call_000_18b8

Call_19ae:
    ld hl, $ddb3
    ld a, $11
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $4b30
    ld c, $0c
    jp Call_000_18b8

Call_19c1:
    ld hl, $ddb3
    ld a, $12
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $4b30
    ld c, $0c
    jp Call_000_18b8

Call_19d4:
    ld hl, $ddb3
    ld a, $13
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $4d70
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_19ec
    ld hl, $6d30
jr_000_19ec:
    ld c, $08
    call Call_000_18b8
    ld hl, $4c70
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_19fe
    ld hl, $6bf0
jr_000_19fe:
    ld c, $0c
    jp Call_000_18b8

Call_1a03:
    ld hl, $ddb3
    ld a, $14
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $4db0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1a1b
    ld hl, $6d30
jr_000_1a1b:
    ld c, $04
    call Call_000_18b8
    ld hl, $4d30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1a2d
    ld hl, $6cb0
jr_000_1a2d:
    ld c, $08
    jp Call_000_18b8

Call_1a32:
    ld a, $15
    call Call_000_1874
    ld hl, $4db0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1a44
    ld hl, $6d30
jr_000_1a44:
    ld c, $0e
    jp Call_000_18b8

Call_1a49:
    ld a, $16
    call Call_000_1874
    ld hl, $4e90
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1a5b
    ld hl, $6e10
jr_000_1a5b:
    ld c, $06
    call Call_000_18b8
    ld hl, $4ab0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1a6d
    ld hl, $6af0
jr_000_1a6d:
    ld c, $04
    jp Call_000_18b8

Call_1a72:
    ld a, $19
    call Call_000_1874
    ld hl, $4ef0
    ld c, $1c
    jp Call_000_18b8

Call_1a7f:
    ld hl, $ddb3
    ld a, $1a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $53d0
    ld c, $08
    call Call_000_18b8
    ld hl, $4f70
    ld c, $14
    jp Call_000_18b8

Call_1a9a:
    ld a, $1b
Jump_000_1a9c:
    ld hl, $ddb3
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $4c70
    ld c, $04
    call Call_000_18b8
    ld hl, $53f8
    ld c, $04
    call Call_000_18b8
    ld hl, $4f70
    ld c, $14
    jp Call_000_18b8

Call_1abd:
    ld hl, $ddb3
    ld a, $1c
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld d, h
    ld e, l
    ld hl, $53d0
    ld c, $08
    call Call_000_18b8
    ld hl, $4f70
    ld c, $14
    jp Call_000_18b8

Call_1ad8:
    ld a, $24
    call Call_000_1874
    ld hl, $50b0
    ld c, $0c
    jp Call_000_18b8

Call_1ae5:
    ld a, $25
    call Call_000_1874
    ld hl, $55f0
    ld c, $0c
    jp Call_000_18b8

Call_1af2:
    ld a, $26
    call Call_000_1874
    ld hl, $56b0
    ld c, $0c
    jp Call_000_18b8

Call_1aff:
    ld a, $1e
    call Call_000_1874
    ld hl, $5b70
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1b11
    ld hl, $6e70
jr_000_1b11:
    ld c, $18
    jp Call_000_18b8

Call_1b16:
    ld a, $1f
    call Call_000_1874
    ld hl, $5cf0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1b28
    ld hl, $6ff0
jr_000_1b28:
    ld c, $10
    jp Call_000_18b8

Call_1b2d:
    ld a, $20
    call Call_000_1874
    ld hl, $5df0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1b3f
    ld hl, $70f0
jr_000_1b3f:
    ld c, $14
    jp Call_000_18b8

Call_1b44:
    ld a, $21
    call Call_000_1874
    ld hl, $4a30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1b56
    ld hl, $6a70
jr_000_1b56:
    ld c, $18
    call Call_000_18b8
    ld hl, $5f30
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1b68
    ld hl, $7230
jr_000_1b68:
    ld c, $08
    jp Call_000_18b8

Call_1b6d:
    ld a, $22
    call Call_000_1874
    ld hl, $53d0
    ld c, $1e
    jp Call_000_18b8

Call_1b7a:
    ld a, $1d
    call Call_000_1874
    ld hl, $4bf0
    ld c, $08
    call Call_000_18b8
    ld hl, $55b0
    ld c, $04
    jp Call_000_18b8

Call_1b8f:
    ld a, $23
    call Call_000_1874
    ld hl, $5fb0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1ba1
    ld hl, $72b0
jr_000_1ba1:
    ld c, $16
    jp Call_000_18b8

Call_1ba6:
    ld a, $27
    call Call_000_1874
    ld hl, $60f0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1bb8
    ld hl, $7410
jr_000_1bb8:
    ld c, $0a
    jp Call_000_18b8

Call_1bbd:
    ld a, $28
    call Call_000_1874
    ld hl, $6190
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1bcf
    ld hl, $74b0
jr_000_1bcf:
    ld c, $14
    jp Call_000_18b8

Call_1bd4:
    ld a, $29
    call Call_000_1874
    ld hl, $62d0
    ld a, [$dd17]
    bit 7, a
    jr z, jr_000_1be6
    ld hl, $75f0
jr_000_1be6:
    ld c, $0c
    jp Call_000_18b8

Call_1beb:
    ld a, $17
    call Call_000_1874
    ld hl, $5770
    ld c, $18
    jp Call_000_18b8

Call_1bf8:
    ld a, $2a
    call Call_000_1874
    ld hl, $58f0
    ld c, $08
    jp Call_000_18b8

Call_1c05:
    ld a, $2b
    call Call_000_1874
    ld hl, $6390
    ld c, $14
    jp Call_000_18b8


Call_000_1c12:
    ld hl, $da4d
    ld c, $12
    xor a
    call FillMemory
    ld hl, $1c66
    ld bc, $0000
jr_000_1c21:
    ld a, [hl+]
    push hl
    ld hl, $ddf5
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_000_1c5c
    ld hl, $d93d
    add hl, de
    ld a, [hl]
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $9000
    add hl, de
    push hl
    ld hl, $daf5
    add hl, bc
    add hl, bc
    pop de
    ld a, c
    cp $03
    jr z, jr_000_1c4e
    cp $0c
    jr nz, jr_000_1c52
jr_000_1c4e:
    ld a, e
    add $10
    ld e, a
jr_000_1c52:
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $da4f
    add hl, bc
    ld a, c
    inc a
    ld [hl], a
jr_000_1c5c:
    pop hl
    inc c
    ld a, c
    cp $0d
    jr nz, jr_000_1c21
    jp $5cf2

;1c66
    add hl, bc
    ld a, [bc]
    ld sp, $3231
    inc sp
    xor l
    dec [hl]
    scf
    inc [hl]
    rst $38
    ld b, d
    ld b, d

Call_1c73:
    call Call_000_1c7a
    ld a, $17
    rst $10
    ret


Call_000_1c7a:
    ld a, $1e
    rst $10
    call Call_000_1ce0
    push hl
    inc hl
    ld d, $00
    add hl, de
    ld a, [hl]
    pop hl
    or a
    jr z, Call_000_1cf0
    dec a
    ld d, a
    ld e, [hl]
    swap e
    push de
    or a
    jr nz, jr_000_1ca2
    ld a, [$c853]
    or a
    jr z, jr_000_1ca2
    dec a
    jr nz, jr_000_1c9f
jr_000_1c9c:
    pop de
    jr Call_000_1cf0
jr_000_1c9f:
    inc d
    jr jr_000_1cc2
jr_000_1ca2:
    ld a, d
    dec a
    jr nz, jr_000_1cb2
    ld a, [$c854]
    or a
    jr z, jr_000_1cb2
    dec a
    jr z, jr_000_1c9c
    dec d
    jr jr_000_1cc2
jr_000_1cb2:
    ld a, d
    cp $09
    jr nz, jr_000_1cc2
    ld a, [$c855]
    or a
    jr z, jr_000_1cc2
    dec a
    jr z, jr_000_1c9c
    ld d, $00
jr_000_1cc2:
    ld hl, UnknownData_1e_64c5
    add hl, de
    ld de, $da61
    ld c, $10
    call CopyData
    pop de
    ld l, d
    ld h, $00
    add hl, hl
    ld de, $daf5
    add hl, de
    ld a, [hl+]
    ld [$da5f], a
    ld a, [hl]
    ld [$da60], a
    ret


Call_000_1ce0:
    ld hl, $da4d
    ld a, [hl]
    inc a
    and $0f
    ld [hl+], a
    ld e, a
    ret nz
    ld a, [hl]
    inc a
    and $0f
    ld [hl], a
    ret


Call_000_1cf0:
    ld hl, $da5f
    ld de, $da61
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_000_1cfa:
    call Call_000_1cf0
    ld hl, $da71
    ld de, $da61
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


GotoNextScene:
    ld hl, hCurrentScene
    inc [hl]
    xor a
    ldh [hFunctionTableIndex], a
.end
    ret


IncrementFunctionTableIndex:
    ld hl, hFunctionTableIndex
    inc [hl]
    ret

Call_1d18:
    ld h, $00
    ld l, a
Call_000_1d1b:
    push bc
    push de
    ld d, h
    ld e, l
    ld a, [$defe]
    ld c, a
    ld l, a
    ld a, [$deff]
    ld b, a
    ld h, a
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, l
    sub $01
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, l
    ld [$defe], a
    ld a, h
    ld [$deff], a
    ld b, h
    ld c, l
    ld hl, $0000
    ld a, $10
jr_000_1d53:
    push af
    add hl, hl
    ld a, e
    adc a
    ld e, a
    ld a, d
    adc a
    ld d, a
    jr nc, jr_000_1d61
    add hl, bc
    jr nc, jr_000_1d61
    inc de
jr_000_1d61:
    pop af
    dec a
    jr nz, jr_000_1d53
    ld h, d
    ld l, e
    ld a, e
    pop de
    pop bc
    ret


Call_000_1d6b:
    ld hl, $4000
    ld d, $00
    add a
    ld e, a
    add hl, de
    ldh a, [hCurrentBank]
    push af
    ld a, $0f
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
jr_000_1d7e:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    call Call_000_16ab
    pop bc
    pop hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_1d7e
    pop af
    rst $10
    ret

;this is also used for graphics loading
;a: lower nybble of hl (table offset)
LoadGraphicsDataHeader:
    ld b, a
    ldh a, [hCurrentBank] ;save the current bank
    push af
    ld a, $1e
    rst $10 ;switch to bank 1e
    ld h, $00
    ld l, b
    add hl, hl
    ld de, GraphicsDataHeaderTable
    add hl, de ;add hl to de to get the right entry
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
.loop
    push bc
    ld a, $1e
    rst $10
    push hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de ;store the compressed graphics data offset into de, and save it
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+] ;store the 7th byte into a, and save it temporarily
    push af
    ld a, b
    rst $10 ;switch to the bank in b
    pop af
    ld b, a
    pop hl
    bit 7, b ;is the leftmost bit of the 7th bit 0? (data isn't compressed?)
    jr z, .notCompressed
    ld a, b
    and $7f ;and b with $7f
    ld b, a
    or c ;is the 6th byte 0 and the lowest 7 bits of the 7th byte 0? (data starts with the 2 byte length header)
    jr z, .hasLengthHeader ;yes
    call DecompressNoHeader ;the file doesn't start with the 2 bytes for uncompressed length, so skip the first part of the function
    jr .done
.hasLengthHeader
    call Decompress
    jr .done
.notCompressed
    call CopyData16
.done
    pop hl
    ld de, $7
    add hl, de ;go to the next entry
    pop bc
    dec c ;are we past the last entry?
    jr nz, .loop ;keep going
    pop af
    rst $10 ;go back to the starting bank
    ret


Call_000_1de1:
    push af
    call Call_000_10ab
    pop af
Call_000_1de6:
    ld hl, Table_1b_7918
    ld d, $00
    add a
    ld e, a
    add hl, de
    ldh a, [hCurrentBank]
    push af
    ld a, $1b
    rst $10 ;do bankswitch to bank 1b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
jr_000_1df9:
    ld a, [hl+]
    push hl
    ld h, $00
    add a
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c200
    add hl, de
    pop de
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, e
    ld h, d
    dec c
    jr nz, jr_000_1df9
    pop af
    rst $10
    ret


Call_000_1e27:
    xor a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ret


Call_000_1e2f:
    ld a, $90
    ldh [rWY], a
    ld a, $a6
    ldh [rWX], a
    ret


Call_000_1e38:
Jump_000_1e38:
    ld b, a
    add a
    add b
    ld b, $00
    ld c, a
    ld hl, $1e6f
    add hl, bc
    ld bc, $da3d
    ld a, [hl+]
    ldh [rBGP], a
    ld [bc], a
    inc bc
    ld a, [hl+]
    ldh [rOBP0], a
    ld [bc], a
    inc bc
    ld a, [hl]
    ldh [rOBP1], a
    ld [bc], a
    ret


    ld hl, $c819
    ld c, $14
    ldh a, [$ff8b]
    or a
    jr nz, jr_000_1e65

    dec [hl]
    jr nz, jr_000_1e6a

    ldh a, [hJoypad]
    ld c, $04

jr_000_1e65:
    ld [hl], c
    ld [$c81a], a
    ret


jr_000_1e6a:
    xor a
    ld [$c81a], a
    ret


    sbc h
    ld e, $9c
    sbc h
    ld e, $9c
    ld h, e
    pop hl
    ld h, e
    rst $38
    rst $38
    rst $38
    sbc h
    ld [hl], $9c
    db $e4
    ld e, $9c
    nop
    nop
    nop
    db $e4
    db $e4
    db $e4
    db $e4
    rst $38
    rst $38
    sbc h
    ld e, $e4
    db $e4
    db $e4
    db $e4
    call z, $cccc
    sub e
    db $e4
    ldh [$ff9c], a
    call z, $8ccc
    call z, $6ccc
    ld e, $9c
    db $e4
    db $e4
    db $e4
    nop
    nop
    db $e4
    rst $38
    rst $38
    dec de

Call_000_1ea8:
    ret


Call_000_1ea9:
    ld a, $0a
    ld [$c86a], a
    ld [$0000], a
    ret


Call_000_1eb2:
Jump_000_1eb2:
    ld a, $00
    ld [$c86a], a
    ld [$0000], a
    ret


Call_000_1ebb:
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $2000
    ld de, $bffa
    ld c, $06

jr_000_1eca:
    ld a, [de]
    and $0f
    cp [hl]
    jr nz, jr_000_1f07

    inc de
    inc hl
    dec c
    jr nz, jr_000_1eca

    ld hl, $bfd8
    ld a, [hl+]
    and $0f
    cp $02
    jr nz, jr_000_1f07

    ld a, [hl]
    and $0f
    cp $07
    jr nz, jr_000_1f07

    ld hl, $bfc0
    call Call_000_1f5b
    jr nz, jr_000_1f07

    ld hl, $a000
    call Call_000_1f73
    ld hl, $be2a
    ld a, [hl+]
    and $0f
    ld d, a
    ld a, [hl]
    and $0f
    swap a
    or d
    cp e
    jr nz, jr_000_1f07

    jp Jump_000_1eb2


jr_000_1f07:
    ld hl, $bff6
    ld a, [hl+]
    and $0f
    cp $02
    jr nz, jr_000_1f59

    ld a, [hl]
    and $0f
    cp $07
    jr nz, jr_000_1f59

    ld hl, $bfde
    call Call_000_1f5b
    jr nz, jr_000_1f59

    ld hl, $be2c
    call Call_000_1f73
    ld a, [hl+]
    and $0f
    ld d, a
    ld a, [hl]
    and $0f
    swap a
    or d
    cp e
    jr nz, jr_000_1f59

    ld hl, $bfbe
    xor a
    ld [hl+], a
    ld hl, $bfdd
    ld de, $bfbf
    ld c, $1d
    call CopyData
    ld hl, $be2c
    ld de, $a000
    ld bc, $0190

Call_000_1f4c:
    call CopyData16
    ld de, $be2a
    ld c, $02
    call CopyData
    jr jr_000_1fcd

jr_000_1f59:
    jr jr_000_1f83

Call_000_1f5b:
    ld bc, $001a

Call_000_1f5e:
jr_000_1f5e:
    ld a, [hl+]
    and $0f
    add b
    ld b, a
    dec c
    jr nz, jr_000_1f5e

    ld e, b
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl]
    and $0f
    swap a
    or b
    cp e
    ret


Call_000_1f73:
    ld bc, $0190
    ld e, $00

jr_000_1f78:
    ld a, [hl+]
    and $0f
    add e
    ld e, a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_1f78

    ret


jr_000_1f83:
    ld hl, $bfbe
    ld c, $42
    xor a
    call FillMemory
    ld hl, $a000
    ld bc, $04b0
    xor a
    call FillMemory16
    ld a, $01
    call Call_000_1fa7
    ld a, $02
    call Call_000_1fa7
    ld a, $03
    call Call_000_1fa7
    jr jr_000_1fcd

Call_000_1fa7:
    call Call_000_1ea8
    ld hl, $bffa
    ld c, $06
    xor a
    jp FillMemory


    call Call_000_1ea9
    ld e, $04

jr_000_1fb8:
    ld hl, $a000
    ld bc, $2000
    ld a, e
    dec a
    call Call_000_1ea8

jr_000_1fc3:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1fc3

    dec e
    jr nz, jr_000_1fb8

jr_000_1fcd:
    xor a
    call Call_000_1ea8
    ld hl, $2000
    ld de, $bffa
    ld c, $06
    call CopyData

jr_000_1fdc:
    jp Jump_000_1eb2


Call_000_1fdf:
    call Call_000_1ebb
    xor a
    ld [$c82c], a
    call Call_000_1ea9
    ld a, $03
    call Call_000_1ea8
    ld hl, $bffa
    ld c, $06

jr_000_1ff3:
    ld a, [hl+]
    or a
    jr nz, jr_000_1fdc

    dec c
    jr nz, jr_000_1ff3

    xor a
    ld [$c82c], a
    jr jr_000_1fdc

    add hl, bc
    inc b
    nop
    ld [bc], a
    nop
    db $08

Call_000_2006:
    push hl
    xor a
    ld hl, $c81b
    push hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop bc
    pop hl
    ld de, $d8f0

jr_000_2016:
    add hl, de
    bit 7, h
    jr nz, jr_000_2020

    ld a, [bc]
    inc a
    ld [bc], a
    jr jr_000_2016

jr_000_2020:
    inc bc
    ld de, $2710
    add hl, de
    ld de, $fc18

jr_000_2028:
    add hl, de
    bit 7, h
    jr nz, jr_000_2032

    ld a, [bc]
    inc a
    ld [bc], a
    jr jr_000_2028

jr_000_2032:
    inc bc
    ld de, $03e8
    add hl, de
    ld de, $ff9c

jr_000_203a:
    add hl, de
    bit 7, h
    jr nz, jr_000_2044

    ld a, [bc]
    inc a
    ld [bc], a
    jr jr_000_203a

jr_000_2044:
    inc bc
    ld de, $0064
    add hl, de
    ld de, $fff6

jr_000_204c:
    add hl, de
    bit 7, h
    jr nz, jr_000_2056

    ld a, [bc]
    inc a
    ld [bc], a
    jr jr_000_204c

jr_000_2056:
    inc bc
    ld de, $000a
    add hl, de
    ld a, l
    ld [bc], a
    ret


Call_000_205e:
    ld hl, $c81b
    ld bc, $0501

jr_000_2064:
    ld a, [hl]
    add c
    ld [hl+], a
    dec b
    jr nz, jr_000_2064

    ret


Jump_000_206b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    push de
    call Call_000_2006
    pop de
    pop bc
    ld hl, wTimerHundredsDigit
    ld a, [hl+]
    add $01
    ld [bc], a
    inc bc
    ld a, [hl+]
    add $01
    ld [bc], a
    inc bc
    ld a, [hl]
    add $01
    ld [bc], a
    ld hl, $fff8
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    ld d, h
    ld e, l
    jp Call_000_1685


Call_000_2093:
    ld hl, $d44d
    jr jr_000_209b

Call_000_2098:
    ld hl, $da75

jr_000_209b:
    ld a, $ff
    ld bc, $0380
    jp FillMemory16


Call_000_20a3:
    ld hl, $ddf5
    jr jr_000_20ab

Call_000_20a8:
    ld hl, $c600

jr_000_20ab:
    ld bc, $0100
    xor a
    jp FillMemory16


Call_000_20b2:
    ld hl, $c706
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_20bc:
    xor a
    call Call_000_30d9
    cp $01
    jp z, Jump_000_21da
    cp $03
    jp z, Jump_000_2300
    cp $04
    jp z, Jump_000_2368
    cp $07
    jp z, Jump_000_23af
    cp $0b
    jr z, jr_000_20f2
    cp $11
    jp z, $217f
    cp $13
    jp z, Jump_000_21a1
    push bc
    push de
jr_000_20e4:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_20e4
    pop de
    pop bc
    ret


jr_000_20f2:
    push bc
    push de
    ld a, [$da4b]
    cp $0a
    jr z, jr_000_2137

    cp $0f
    jr z, jr_000_2111

    cp $1a
    jr z, jr_000_2140

    cp $15
    jr z, jr_000_2149

    cp $1f
    jr z, jr_000_2124

    cp $21
    jr z, jr_000_2163

    jr jr_000_2155

jr_000_2111:
    ld a, [$c80d]
    cp $f4
    jr c, jr_000_2155

    ld hl, $2177
    cp $f4
    jr z, jr_000_2155

    ld hl, $217d
    jr jr_000_2155

jr_000_2124:
    ld a, [$c80d]
    cp $e2
    jr c, jr_000_2155

    ld hl, $2177
    cp $e2
    jr z, jr_000_2155

    ld hl, $217d
    jr jr_000_2155

jr_000_2137:
    ld a, [$c80d]
    cp $e5
    jr c, jr_000_2155

    jr jr_000_2152

jr_000_2140:
    ld a, [$c80d]
    cp $ed
    jr c, jr_000_2155

    jr jr_000_2152

jr_000_2149:
    ld a, [$c80d]
    cp $f1
    jr c, jr_000_2155

    jr jr_000_2152

jr_000_2152:
    ld hl, $2175

jr_000_2155:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_2149

    pop de
    pop bc
    ret


jr_000_2163:
    ld a, [$c80d]
    cp $de
    jr z, jr_000_219c

    cp $e0
    jr z, jr_000_2170

    jr jr_000_2155

jr_000_2170:
    ld hl, $2179
    jr jr_000_2155

    ld bc, $0600
    inc b
    add d
    ld [bc], a
    ld b, d
    inc a
    nop
    ld hl, $d5c5
    ld a, [$da4b]
    cp $21
    jr z, jr_000_2155

    and $0f
    cp $01
    jr z, jr_000_219c

    cp $05
    jr z, jr_000_219c

    cp $09
    jr z, jr_000_219c

    cp $0d
    jr z, jr_000_219c

    jr jr_000_2155

jr_000_219c:
    ld hl, $217b
    jr jr_000_2155

Jump_000_21a1:
    push bc
    push de
    ld a, [$da4b]
    and $0f
    or a
    jr z, jr_000_21cd

    cp $01
    jr z, jr_000_21cd

    cp $03
    jr z, jr_000_21cd

    cp $05
    jr z, jr_000_21cd

    cp $07
    jr z, jr_000_21cd

    cp $0b
    jr z, jr_000_21cd

    cp $0c
    jr z, jr_000_21cd

    cp $0d
    jr z, jr_000_21cd

    cp $0f
    jr z, jr_000_21cd

    jr jr_000_2155

jr_000_21cd:
    ld hl, $21d2
    jr jr_000_2155

    nop
    ld bc, $0100
    nop
    ld bc, $0100

Jump_000_21da:
    ld a, e
    ld [$c815], a
    ld a, d
    ld [$c816], a
    push bc
    push de
    push hl
    call Call_000_2609
    ld a, c
    ld [$c80d], a
    push bc
    call Call_000_3348
    call Call_000_22e8
    push de
    push hl
    ld hl, $77d3
    sub $0c
    and $0f
    cp $0c
    jr c, jr_000_2201

    xor a

jr_000_2201:
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    ld hl, $77eb
    add hl, de
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld [$c80f], a
    pop hl
    pop de
    ld a, [hl]
    add c
    ld [hl+], a
    ld [$c813], a
    inc hl
    inc hl
    inc hl
    ld a, [$c80f]
    add [hl]
    ld [hl+], a
    ld [$c814], a
    inc hl
    inc hl
    inc hl
    ld a, [$c70e]
    and $03
    add $09
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    push hl
    ld hl, $77df
    ld d, $00
    ld e, b
    add hl, de
    ld a, [hl]
    ld [$c810], a
    pop hl
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, [$c815]
    ld [hl+], a
    ld a, [$c816]
    ld [hl+], a
    ld a, [$c80d]
    add $3f
    ld [hl+], a
    ld a, b
    ld [$c817], a
    ld a, l
    ld [$c815], a
    ld a, h
    ld [$c816], a
    ld bc, $000b
    add hl, bc
    ld a, [$c813]
    and $f8
    ld [hl+], a
    ld a, [$c814]
    and $f8
    ld [hl], a
    pop bc
    ld hl, $c0a6
    ld a, c
    dec a
    ld [$c811], a
    ld d, $00
    ld e, a
    add hl, de
    ld [hl], $07
    ld hl, $c70e
    inc [hl]
    pop hl
    pop de
    pop bc
    push bc
    push de
    push hl

jr_000_2286:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [$c811]
    add $40
    inc hl
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_2286

    pop hl
    pop de
    pop bc
    push bc
    push de
    push hl
    call $5cbc
    ld a, $0a
    rst $10
    ld a, [$c811]
    ld b, a
    call $7caa
    ld hl, $c70e
    inc [hl]
    ld a, $01
    rst $10
    ld a, [$c815]
    ld l, a
    ld a, [$c816]
    ld h, a
    ld a, [$c817]
    ld [hl-], a
    dec hl
    ld a, [hl-]
    ld d, a
    ld a, [hl-]
    ld e, a
    dec de
    dec hl
    ld a, [$c810]
    or [hl]
    ld [hl], a
    ld a, [$c80d]
    cp $54
    jr z, jr_000_22d5

    dec hl
    dec hl
    ld a, [hl]
    add a
    ld [hl+], a
    inc hl

jr_000_22d5:
    ld bc, $0007
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl], a
    ld c, $09
    add hl, bc
    ld [hl], $20
    pop hl
    pop de
    pop bc
    ret


Call_000_22e8:
    push hl
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $2bb3
    add hl, de
    add hl, hl
    ld de, $b4c0
    add hl, de
    ld e, [hl]
    call Call_000_1eb2
    ld a, e
    pop hl
    ret


Jump_000_2300:
    push hl
    push de
    push bc
    push de
    call Call_000_2609
    dec hl
    dec hl
    ld a, [$c80d]
    sub $23
    push hl
    ld hl, $7803
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl], a
    ld hl, $c0a6
    dec c
    ld a, c
    ld [$c811], a
    ld e, a
    add hl, de
    ld a, [$c80d]
    sub $23
    add $40
    ld [hl], a
    ld a, $0a
    rst $10
    pop de
    ld b, c
    ld a, [$c80d]
    call $7caa
    ld hl, $c70e
    inc [hl]
    ld a, $01
    rst $10
    pop bc
    pop de
    pop hl
    push hl
    push de
    push bc

jr_000_2343:
    push bc
    push de

jr_000_2345:
    ld a, [hl+]
    inc hl
    ld [de], a
    inc de
    ld a, [$c811]
    add $40
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_2345

    pop de
    pop bc
    push hl
    ld hl, $0080
    add hl, de
    ld d, h
    ld e, l
    pop hl
    dec c
    jr nz, jr_000_2343

    pop bc
    pop de
    pop hl
    ld c, $01
    ret


Jump_000_2368:
    ld a, c
    cp $02
    ret nz

    push hl
    push de
    push bc
    ld h, d
    ld l, e
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld de, $0080
    add hl, de
    ld [hl-], a
    ld [hl-], a
    dec hl
    dec hl
    ld [hl-], a
    ld [hl], a
    ld hl, $c200
    ld c, $20

jr_000_2387:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_000_23a3

    ld a, [hl-]
    or a
    jr nz, jr_000_23a3

    xor a
    ld [hl+], a
    inc a
    ld [$c200], a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c203], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$c207], a

jr_000_23a3:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_000_2387

    pop bc
    pop de
    pop hl
    ret


Jump_000_23af:
    ld a, c
    cp $02
    ret nz

    push hl
    push de
    push bc
    call Call_000_2609
    dec hl
    dec hl
    ld a, [$c80d]
    sub $23
    call Call_000_2400
    ld hl, $c0a6
    dec c
    ld a, c
    ld [$c811], a
    ld e, a
    add hl, de
    ld a, [$c80d]
    sub $23
    add $40
    ld [hl], a
    ld hl, $c70e
    inc [hl]
    pop bc
    pop de
    pop hl
    push hl
    push de
    push bc

jr_000_23df:
    push bc

jr_000_23e0:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [$c811]
    add $40
    inc hl
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_23e0

    pop bc
    push hl
    ld hl, $007c
    add hl, de
    ld d, h
    ld e, l
    pop hl
    dec c
    jr nz, jr_000_23df

    pop bc
    pop de
    pop hl
    ret


Call_000_2400:
    push hl
    ld hl, $7803
    ld d, $00
    ld e, a
    add hl, de
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld b, [hl]
    pop af
    rst $10
    pop hl
    ld [hl], b
    ret


Call_000_2414:
    ld a, b
    cp $9a
    jr z, jr_000_243f

    cp $8a
    jr z, jr_000_243f

    cp $9d
    jr z, jr_000_243f

    cp $9e
    jr z, jr_000_243f

    cp $54
    jr z, jr_000_243f

    cp $43
    jr z, jr_000_243f

    cp $79
    jr z, jr_000_243f

    cp $af
    jr z, jr_000_243f

    cp $53
    jr z, jr_000_243f

    cp $65
    jr z, jr_000_243f

    jr jr_000_2459

jr_000_243f:
    push bc
    push hl
    call Call_000_24bf
    ld a, c
    sub [hl]
    ld c, a
    pop hl
    call Call_000_2459
    ld a, b
    call Call_000_24bf
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2459
    pop bc
    ret


Call_000_2459:
jr_000_2459:
    ld a, d
    cp $98
    ret nc
    ldh a, [hCurrentBank]
    push af
    ld a, $0e
    rst $10
    ld a, h
    cp $7e
    jr c, jr_000_2486
    ld a, [hl+]
    ld [$c810], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    push de
    ld a, $0c
    rst $10
    call Call_0c_4a3e
    ld a, [$c810]
    rst $10
    push hl
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    add hl, de
    pop de
    pop bc
    jr jr_000_2496
jr_000_2486:
    ld a, $80
    cp b
    jr nc, jr_000_2496
    ld a, $0d
    rst $10
    ld a, $af
    cp b
    jr nc, jr_000_2496
    ld a, $1c
    rst $10
jr_000_2496:
    push bc
    swap c
    ld a, c
    and $0f
    ld b, a
    ld a, c
    and $f0
    ld c, a
    and $c0
    or b
    jr z, jr_000_24b8
    call DecompressNoHeader
    ld hl, $c809
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    jr jr_000_24bb
jr_000_24b8:
    call CopyData
jr_000_24bb:
    pop bc
    pop af
    rst $10
    ret


Call_000_24bf:
    push de
    ld hl, TileIndexTable
    ld d, $00
    ld e, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $0d
    add hl, de
    pop de
    ret


LoadStage:
    ;switch to level data bank (this potentially gets changed later 
    ;depending on the level to either bank 6 or 12)
    ld a, $05
    rst $10
    call Call_000_20a3
    call Call_000_2093
    call Call_000_2098
    ld hl, $d89c
    ld c, $a1
    xor a
    call FillMemory
    ld hl, $d84c
    ld c, $40
    xor a
    call FillMemory
    ld hl, LevelDataTable
    ld d, $00
    ld a, [$c829] ;variable that stores lower byte to for level offset?
    ld e, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call SwitchLevelRombank
    ld a, [hl+] ;load the tilemap size
    ld [$c705], a
    ld a, [hl+] ;load the music id
    ld [$da45], a
    ld a, [hl+] ;load the tileset id
    ld [$da4b], a
    ld a, [hl+] ;load the level time amount
    ld [$c711], a
    ld a, [hl+]
    ld [$c712], a
    ld a, [hl+] ;load the switch data flag
    or a
    jr z, .noSwitchData
    dec hl
    ld de, $d89c
    ld c, $11
    call CopyData
    ld b, $90
    ld de, $d8ad
    call Call_000_25dd
.noSwitchData:
    ld a, [hl+] ;load the flag byte for whether the level has additional sprite data or not
    or a
    jr z, .noAdditionalSpriteData
    dec hl
    ld b, $40
    ld de, $d84c
    call Call_000_25dd
.noAdditionalSpriteData:
    ld de, $d44d
    ld bc, $0240
    ld a, [$c705] ;if the tilemap size value isn't 0, then set the size to 0x380
    or a
    jr z, .skip
    ld bc, $0380
.skip:
    call DecompressNoHeader ;decompress the tilemap
    ld c, $1b
jr_000_2549:
    ld a, [hl+]
    or a
    jr z, jr_000_2557
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop af
    ld [de], a
    dec c
    jr nz, jr_000_2549
jr_000_2557:
    ld a, $1d
    ldh [hFunctionTableIndex], a
    ld a, $01
    rst $10
    call Call_000_30ed
    jp Jump_000_30f2

;used for decompressing graphics and other compressed data(such as level data)
Decompress:
    ld a, [hl+] ;read the 2 header bytes for the uncompressed length if it's included in the data
    ld c, a
    ld a, [hl+]
    ld b, a
DecompressNoHeader:
    push hl
    ;Save the uncompressed length in wUncompressedLength
    ld hl, wUncompressedLength
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ;Save the base destination address in wDecompressDestinationAddress 
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld de, $0000 ;Set the destination offset to 0
    pop hl
.newByte:
    ld a, [hl+] ;Get the next byte
    ld b, a
    ld c, $08 ;Set c to the number of bits left
.loop:
    push bc ;Save the values of the number of bits left/current byte for later
    ;Check if the bit is 0/1
    bit 0, b
    jr z, .zeroBit
    ;If the bit is 1, then copy the next byte directly to the destination
    ld a, [hl+]
    call CopyTileByte
    ;If the current offset isn't the same as the length, continue
    ld a, [wUncompressedLength]
    cp e
    jr nz, .continue
    ld a, [wUncompressedLength + 1]
    cp d
    jr nz, .continue
    jr .done
.zeroBit:
    ;Copy the next two bytes into bc (the top byte is copied to b after the
    ;push hl instruction for some reason)
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ;Save the current offset
    push hl
    ld b, a
    ;Set a to the upper nybble of the top byte
    and $f0
    swap a
    ld h, a
    ld a, e
    sub c
    ld l, a
    ld a, d
    sbc h
    ld h, a
    ld a, b
    and $0f
    add $03
    ld c, a
    ;Add the offset in hl to the base destination address
    ld a, [wDecompressDestinationAddress]
    add l
    ld l, a
    ld a, [wDecompressDestinationAddress + 1]
    adc h
    ld h, a
.copyTileLoop:
    ld a, [hl+]
    call CopyTileByte
    dec c
    jr nz, .copyTileLoop
    pop hl
    ;If the current offset isn't the same as the length, continue
    ld a, [wUncompressedLength]
    cp e
    jr nz, .continue
    ld a, [wUncompressedLength + 1]
    cp d
    jr z, .done
.continue:
    pop bc ;Get back the current byte/number of bits left in bc
    srl b ;Go to the next bit in the byte
    dec c ;If there are still bits left the current value byte, keep going
    jr nz, .loop
    jr .newByte ;Go to the next byte
.done:
    pop bc
    ret

;this is used to load 1 byte from the tile data to the current target address (starting destination address(de) + current offset(hl))
CopyTileByte:
    ld b, a
    push hl
    ld hl, wDecompressDestinationAddress
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld [hl], b
    inc de
    pop hl
    ret


Call_000_25dd:
.start
    ld a, b
    or a
    ret z
    ld a, [hl+]
    push af
    and $7f
    ld c, a
    ld a, b
    sub c
    ld b, a
    pop af
    bit 7, a
    jr z, .loop
    call CopyData
    jr .start ;go back to the start
.loop
    xor a
    ld [de], a
    inc de
    dec c
    jr nz, .loop
    jr .start ;go back to the start


;Switch to the correct rombank for the level to load. Levels 1-45 are in
;bank 5, levels 46-80 are in bank 6, and the rest are in bank 12.
;e: level id (starts at 0)
SwitchLevelRombank:
    ld a, e
    cp $2d ;If the level id is between 45 and 80, the level data is in bank 6
    ret c
    ld a, $06
    rst $10
    ld a, e
    cp $50 ;If the level id is 80 and above, the level data is in bank 12
    ret c
    ld a, $12
    rst $10
    ret


Call_000_2609:
    ld hl, $c5e3
    ld de, $ffe0
    ld c, $20
jr_000_2611:
    ld a, [$c809]
    cp [hl]
    jr nz, jr_000_2622
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c80a]
    cp [hl]
    pop hl
    ret z
jr_000_2622:
    add hl, de
    dec c
    jr nz, jr_000_2611
    ret

Call_2629:
    ldh a, [hCurrentBank]
    push af
    ld a, $09
    rst $10 ;switch to bank 9
    call Call_000_2633
    pop af
    rst $10 ;switch back to the original bank
    ret


Call_000_2633:
    ld a, [$c725] ;check the value of c725, and jump to the respective function
    cp $07
    jp z, Call_09_62cd
    cp $18
    jp z, Call_09_6308
    cp $27
    jp z, Call_09_636f
    cp $00
    jp z, Call_09_6182
    cp $0c
    jp z, Call_09_61f4
    cp $23
    jp z, Call_09_6266
    ret


    ld a, [wIsOnSGB]
    bit 5, a
    jr z, jr_000_2662
    ldh a, [hJoypad]
    or a
    jp nz, Jump_000_06a2
jr_000_2662:
    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08

;function table used by the above function
FunctionTable_00_2668:
dw Call_000_269e
dw $43F9
dw $4586
dw $45BB
dw $4748
dw $4757
dw $476C
dw $47AD
dw $47D5 
dw $464C 
dw $4673 
dw $46A2 
dw Call_000_269e
dw $46F5 
dw $470E 
dw $4807 
dw $483A 
dw $43F9 
dw $448E 
dw $4748 
dw $4757 
dw $476C 
dw $47AD 
dw $47D5 
dw $4807 
dw $483A 
dw $43F9

;269e
Call_000_269e:
    call SendSGBPacket7
    call Call_000_1cfa
    call Call_000_162c
    call Call_000_0f5d
    ld hl, $9800
    ld bc, $0800
    ld a, $47
    call FillMemory16
    call Call_000_10ab
    ld a, $c0
    ld [$c200], a
    ld [$c203], a
    call Call_000_1e2f
    ld a, $36
    ld [$da3e], a
    xor a
    ldh [$ff8f], a
    ld [$c860], a
    ld [$c861], a
    ld [$c600], a
    call IncrementFunctionTableIndex
    ld a, $04
    call LoadGraphicsDataHeader
    ld a, $18
    rst $10
    call Call_000_0dc3
    ld a, b
    cp $c8
    jr c, jr_000_2704
    sub $af
    push af
    call Call_000_1d6b
    pop af
    sub $19
    ld [$c862], a
    inc a
    ld [$c861], a
    ld a, $05
    call LoadGraphicsDataHeader
    ld a, $07
    call Call_000_1e38
    jp Jump_000_27f5
jr_000_2704:
    ld de, LevelPalettesTable
    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    push hl
    ld a, [hl]
    cp $01
    jr z, jr_000_2720
    ld de, $fff8
    add hl, de
    cp [hl]
    jr z, jr_000_2720
    ld hl, $c70f
    set 1, [hl]
jr_000_2720:
    pop hl
    call Call_000_2874
    jr nz, jr_000_272a
    ld de, $fff8
    add hl, de
jr_000_272a:
    ld a, [hl+]
    ld [$c860], a
    push af
    push hl
    push af
    ld de, $0005
    add hl, de
    ld a, [hl]
    ld [$c861], a
    dec a
    and $03
    jr nz, jr_000_2743
    ld hl, $c70f
    set 2, [hl]
jr_000_2743:
    pop af
    add $0f
    call Call_000_1d6b
    pop hl
    push hl
    ld de, $c809
    ld c, $06
    call CopyData
    ld a, $01
    rst $10
    call $44b4
    ld a, $18
    rst $10
    pop hl
    ld de, $0005
    add hl, de
    ld a, [hl+]
    ld c, a
    dec c
    ld de, $fff3
    call Call_000_2874
    jr nz, jr_000_2770
    inc c
    ld de, $fffb
jr_000_2770:
    ld a, [hl-]
    ld [$c862], a
    add hl, de
    ld de, $c240
jr_000_2778:
    ld a, c
    or a
    jr z, jr_000_27d7
    dec c
    push bc
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    pop hl
    jr nz, jr_000_27b9
    push de
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    sub $10
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, d
    inc de
    sub $08
    srl a
    srl a
    srl a
    ld b, $98
    ld c, a
    add hl, bc
    ld a, $2c
    ld [hl+], a
    inc a
    ld [hl], a
    ld de, $001f
    add hl, de
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    pop hl
    ld de, $fff8
    add hl, de
    pop de
    jr jr_000_27d4
jr_000_27b9:
    ld a, $6c
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ld a, [hl]
    ld [de], a
    ld bc, $fff7
    add hl, bc
    push hl
    ld hl, $0019
    add hl, de
    ld d, h
    ld e, l
    pop hl
jr_000_27d4:
    pop bc
    jr jr_000_2778
jr_000_27d7:
    ld a, $0c
    call Call_000_1e38
    pop af
    dec a
    ld de, $50f6
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    ld a, [hl+]
    push af
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $10
    ld de, $8800
    call Decompress

Jump_000_27f5:
    call Call_000_20b2
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    call Call_000_2874
    ld a, $1d
    call Call_000_1d6b
    ldh a, [hFunctionTableIndex]
    cp $0d
    jr nz, jr_000_280f
    ld a, $2d
    ldh [$ff8f], a
jr_000_280f:
    ldh a, [hFunctionTableIndex]
    cp $02
    jr nc, jr_000_282f
    ld a, [wIsOnSGB]
    bit 4, a
    jr nz, jr_000_282f
    ld a, [$c70f]
    bit 0, a
    jr z, jr_000_2827
    ld a, $13
    jr jr_000_282d
jr_000_2827:
    bit 2, a
    jr z, jr_000_282f
    ld a, $0f
jr_000_282d:
    ldh [hFunctionTableIndex], a
jr_000_282f:
    ld c, $09
    ld hl, $c860
    ld a, [hl+]
    cp c
    jr nz, jr_000_2840
    ld a, [hl]
    cp c
    jr nz, jr_000_2840
    ld a, $01
    ldh [hFunctionTableIndex], a
jr_000_2840:
    call Call_000_10c6
    xor a
    ld [$c20b], a
    call UpdateLCDCIERegisters
    ld hl, $299c
    ld a, [$c860]
    ld d, $00
    ld e, a
    add hl, de
    or a
    ld a, [hl]
    jr nz, jr_000_2860
    ld [$c82d], a
    ld [$c835], a
    ld a, $80
jr_000_2860:
    ld [$c836], a
    ld a, [$c862]
    cp $04
    jr c, jr_000_286f
    ld a, [$c860]
    add $03
jr_000_286f:
    add $12
    jp SendSGBPacketFromTable


Call_000_2874:
    ld a, [$c70f]
    and $03
    cp $03
    ret


Call_287c:
    ld a, [$c70f]
jr_000_287f:
    and $04
    cp $04
    ret

Call_2884:
    ld a, $18
    rst $10
    ld a, [hl+]
    ld b, a
    ld a, $01
    rst $10
    ld a, b
    ret

Call_288e:
    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08

;function table
FunctionTable_00_288e:
    dw Call_289c
    dw Call_28e6
    dw Call_28e6
    dw $58c9

Call_289c:
    call Call_000_1cfa
    call SendSGBPacket7
    call Call_000_162c
    xor a
    call Call_000_1e38
    ld a, $03
    call LoadGraphicsDataHeader
    ld hl, $9800
    ld bc, $0800
    ld a, $80
    call FillMemory16
    ld a, $0c
    call Call_000_1d6b
    ld a, $13
    ldh [$ff8f], a
    ld a, $08
    call Call_000_1de1
    ld a, $10
    rst $10
    xor a
    call Call_10_6179
    ld a, $01
    rst $10
    call Call_000_20b2
    xor a
    ld [$ce1c], a
    call Call_000_1e27
    call IncrementFunctionTableIndex
    call UpdateLCDCIERegisters
    ld a, $2f
    call SendSGBPacketFromTable
Call_28e6:
    ld a, $10
    rst $10
    xor a
    call Call_10_6af9
    jp Jump_000_10be


Call_28f0:
    ld a, $17
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08


FunctionTable_28f6:
dw Call_17_731f
dw Call_17_7684
dw Jump_000_06a2
dw Call_17_7533
dw Call_17_756c
dw Call_17_7620
dw Call_17_762f
dw Call_17_7676


Call_2902:
    push af
    ld a, $0f
    call LoadGraphicsDataHeader
    pop af
    push af
    add $10
    call LoadGraphicsDataHeader
    pop af
    push af
    ld a, $3f
    call Call_000_1d6b
    pop af
    add $24
    call Call_000_1d6b
    ld a, $17
    rst $10
    ret


    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    push hl
    ld c, $ff
    ld hl, $c85c
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc de
    ld hl, $5e6a

jr_000_293a:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    add hl, de
    push af
    ld a, h
    or l
    jr z, jr_000_294c

    pop af
    jr c, jr_000_294e

    pop hl
    inc hl
    inc c
    jr jr_000_293a

jr_000_294c:
    pop af
    inc c

jr_000_294e:
    pop hl
    pop hl
    pop af
    rst $10
    ld a, c
    ret


    xor a
    ld e, a
    ld d, a
    ld [$defc], a
    ld [$defd], a
    ld c, $10

jr_000_295f:
    sla l
    rl h
    push hl
    ld hl, $defc
    rl [hl]
    inc hl
    rl [hl]
    dec hl
    ld a, [hl]
    sub b
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    jr nc, jr_000_297d

    ld a, [hl]
    add b

jr_000_2978:
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a

jr_000_297d:
    ccf
    rl e
    rl d
    pop hl
    dec c
    jr nz, jr_000_295f

    ret


    nop
    sbc h
    ld bc, $9301
    add hl, hl
    nop
    sbc h
    ld [bc], a
    ld [bc], a
    sub e
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rlca
    ld [$0a09], sp
    dec bc
    dec c
    ld c, $0f
    db $10
    ld a, $0c
    rst $10
    ld hl, $c85c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    ld hl, $4f97 ;ArcadeLevelPalette?
    add hl, de
    add hl, de
jr_000_29b5:
    ld a, [hl+]
    cp $02
    jr z, jr_000_29c2
    cp $15
    jr z, jr_000_29c2
    inc hl
    inc de
    jr jr_000_29b5
jr_000_29c2:
    ld hl, $c85c
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, wIsOnSGB
    res 4, [hl]
    xor a
    ldh [hFunctionTableIndex], a
    ld [$c70f], a
    ret


    ld a, $0c
    rst $10
    ld hl, $c85c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    ld hl, ArcadeLevelPalette
    add hl, de
    add hl, de
jr_000_29e3:
    ld a, [hl-]
    cp $02
    jr z, jr_000_29c2
    cp $15
    jr z, jr_000_29c2
    dec hl
    dec de
    jr jr_000_29e3
Call_000_29f0:
    ld hl, $dd7b
    ld a, [hl]
    add a
    add a
    add [hl]
    add [hl]
    ld c, a
    ld b, $00
    ld hl, $c0c7
    add hl, bc
    ld a, [hl+]
    and a
    jp z, Jump_000_2a7f
    ld [$c811], a
Jump_000_2a07:
jr_000_2a07:
    ld a, [hl+]
    and a
    jr z, jr_000_2a07
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    push hl
    ld de, $c0f7
    ld c, $20
jr_000_2a1e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2a1e
    ld a, [$c103]
    bit 3, a
    jr nz, jr_000_2a3f
    ld a, $08
    rst $10
    ld a, [$c105]
    ld c, a
    ld b, $00
    ld hl, $5efe
    add hl, bc
    ld b, [hl]
    ld a, $0a
    rst $10
    jp $772a
jr_000_2a3f:
    ld hl, $2a58
    push hl
    ld a, [$c105]
    ld l, a
    ld e, a
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, de
    ld de, $2b2e
    add hl, de
    ld a, [hl+]
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$c0f7]
    and a
    jr z, jr_000_2a6b
    ld a, [$c103]
    bit 5, a
    jr nz, jr_000_2a6b
    ld a, $08
    rst $10
    jp $7311
jr_000_2a6b:
    pop de
    ld hl, $c0f7
    ld c, $20
jr_000_2a71:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2a71
    ld hl, $c811
    dec [hl]
    pop hl
    jp nz, Jump_000_2a07
Jump_000_2a7f:
    ld hl, $dd7b
    ld a, [hl]
    inc a
    and $07
    ld [hl], a
    ld a, [$ddad]
    and a
    jr z, jr_000_2a93
    ld a, $1f
    rst $10
    call $7dda
jr_000_2a93:
    ld a, $08
    rst $10
    jp $7526


;infinite loop (used in case of an error?)
jr_000_2a99:
    jr jr_000_2a99

;2a9b
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5a5e

;2aa7
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5ab4

;2ab3
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5905

;2abf
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5962

;2acb
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $59cb

;2ad7
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5a32

;2ae3
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    bit 0, b
    jp nz, $5c51
;2af1
    jp $5d07

;2af4
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $5e37

;2b00
    ldh a, [hCurrentBank]
    ldh [$ff8d], a
    ld a, $0a
    rst $10
    jp $7b66

;2b0a
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $08
    rst $10
    jp $4a04

;2b16
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $0a
    rst $10
    jp $7810

Call_2b22:
    ld hl, hCurrentBank
    ld a, [hl]
    ldh [$ff8d], a
    ld a, $07
    rst $10
    jp $4789

UnknownData_2b2e::
db $0A,$A3,$47,$08,$5C,$5F,$08,$10,$61,$08,$10,$73,$08,$74,$62,$1F
db $00,$40,$08,$43,$64,$1F,$E1,$40,$08,$68,$66,$08,$BD,$67,$0A,$36
db $4E,$0A,$92,$51,$1F,$92,$64,$0A,$2B,$52,$0A,$2B,$53,$1F,$4E,$41
db $0A,$12,$54,$0A,$8C,$56,$1F,$EC,$41,$1F,$2F,$44,$1F,$67,$45,$0A
db $CE,$41,$0A,$03,$42,$0A,$2C,$42,$0A,$52,$42,$0A,$7B,$42,$09,$74
db $65,$08,$25,$6A,$1F,$B1,$46,$08,$BB,$6A,$1F,$4B,$48,$0A,$DB,$56
db $1F,$E3,$48,$0A,$BB,$57,$08,$8A,$6D,$1F,$32,$49,$0A,$09,$59,$08
db $56,$6F,$08,$AF,$69,$0A,$A0,$42,$0A,$45,$43,$0A,$F6,$43,$0A,$C3
db $44,$0A,$8A,$45,$0A,$3E,$46,$1F,$B0,$49,$1F,$95,$4A,$1F,$D4,$4C
db $1F,$A5,$4D,$0A,$71,$6D,$1F,$30,$4E,$1F,$3B,$50,$1F,$82,$79,$0A
db $D8,$5C,$0A,$98,$5E,$0A,$9D,$63,$09,$CE,$6C,$0A,$EE,$63,$0A,$7C
db $65,$1F,$00,$52,$1F,$CA,$53,$0A,$DD,$40,$0A,$86,$67,$0A,$59,$70
db $0A,$00,$40,$0A,$C2,$41,$0A,$C9,$33,$0A,$D5,$33,$1F,$54,$54,$08
db $10,$73,$1F,$6D,$55,$1F,$5A,$56,$1F,$40,$58,$1F,$86,$58,$1F,$E0
db $59,$1F,$E6,$5A,$1F,$B8,$4F,$1F,$17,$5E,$1F,$CD,$5E,$1F,$12,$61
db $1F,$49,$61,$1F,$93,$65,$1F,$4D,$67,$1F,$66,$68,$0A,$B8,$69,$0A
db $F3,$6A,$0A,$3C,$6E,$0A,$37,$6F,$1F,$86,$69,$09,$8B,$6D,$1F,$95
db $69,$1F,$33,$6B,$1F,$AE,$73,$1F,$8C,$7B

Call_000_2c48:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    call Call_0c_4afa
    pop af
    rst $10
    ret


    call Call_000_1ea9
    ld c, $1b

jr_000_2c59:
    call Call_000_2c72
    jr z, jr_000_2c6c

    push af
    call Call_000_2c72
    ld e, a
    call Call_000_2c72
    ld d, a
    pop af
    ld [de], a
    dec c
    jr nz, jr_000_2c59

jr_000_2c6c:
    call Call_000_1eb2
    jp Jump_000_30f2


Call_000_2c72:
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    ret


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $b4c0
    ld de, $d44d
    ld bc, $0380
    call Call_000_2c93
    jp Jump_000_1eb2


Call_000_2c93:
jr_000_2c93:
    push de
    ld a, [hl+]
    and $0f
    ld e, a
    ld a, [hl+]
    and $0f
    swap a
    or e
    pop de
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2c93
    ret


Call_000_2ca7:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    ld hl, $4e8b
    ld de, $c71f
    ld c, $04
    call CopyData
    ld hl, $4e8f
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_000_20a8
    ld a, $01
    rst $10
    call Call_000_2d29
    ld a, [$c720]
    cp $88
    jr nc, jr_000_2cdd
    ld hl, $c71f
    ld a, $00
    ld [hl+], a
    ld [hl], $88
    ld a, $80
    ld [$c723], a
jr_000_2cdd:
    call Call_000_2de9
    call Call_000_2e2c
    xor a
    ld [$c818], a
    ld c, $08
jr_000_2ce9:
    push bc
    call Call_000_2e78
    pop bc
    ld a, [$c818]
    or a
    jr nz, jr_000_2d04
    dec c
    jr nz, jr_000_2ce9
    ld hl, $c71f
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [hl+]
    ld [hl], a
jr_000_2d04:
    call Call_000_2e78
    ld hl, $ddf5
    ld c, $00
jr_000_2d0c:
    ld a, [hl]
    and $01
    ld [hl+], a
    dec c
    jr nz, jr_000_2d0c
    ld a, $04
    rst $10
    ld hl, $5f30
    ld de, $8480
    ld bc, $0080
    call CopyData
    xor a
    ld [$d9e9], a
    pop af
    rst $10
    ret


Call_000_2d29:
    ld hl, TileIndexTable
    ld de, $ddf5
    ld b, $00
jr_000_2d31:
    ld a, [de]
    or a
    jr z, jr_000_2d69
    push hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    ld a, b
    cp $7f
    jr z, jr_000_2d67
    ld a, [hl+]
    or a
    jr z, jr_000_2d67
    push hl
    ld c, a
    inc hl
    inc hl
    call Call_000_2d73
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c71f]
    ld e, a
    ld a, [$c720]
    ld d, a
    call Call_000_2414
    ld a, e
    ld [$c71f], a
    ld a, d
    ld [$c720], a
    pop hl
    call Call_000_2db0
jr_000_2d67:
    pop de
    pop hl
jr_000_2d69:
    inc hl
    inc hl
    inc de
    inc b
    ld a, b
    cp $00
    jr nz, jr_000_2d31
    ret


Call_000_2d73:
    push hl
    ld de, $0004
    add hl, de
    ld a, [hl+]
    cp $05
    jr z, jr_000_2d87
    cp $06
    jr z, jr_000_2d87
    cp $08
    jr z, jr_000_2d89
    pop hl
    ret
jr_000_2d87:
    pop de
    ret
jr_000_2d89:
    pop de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c71f]
    ld e, a
    ld a, [$c720]
    ld d, a
    call Call_000_2414
    ld a, e
    ld [$c71f], a
    ld a, d
    ld [$c720], a
    pop hl
    push hl
    ld de, $fff9
    add hl, de
    call Call_000_2db0
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ret


Call_000_2db0:
    ld de, $0006
    add hl, de
    ld a, [hl+]
    cp $02
    jr z, jr_000_2dc3
    cp $03
    jr z, jr_000_2dc3
    cp $0a
    jr z, jr_000_2dc3
    jr jr_000_2dd3
jr_000_2dc3:
    push bc
    ld a, [hl+]
    ld c, a
    ld e, [hl]
    ld hl, $c600
    add hl, de
    ld a, [$c723]
jr_000_2dce:
    ld [hl+], a
    dec c
    jr nz, jr_000_2dce
    pop bc
jr_000_2dd3:
    ld hl, $d93d
    ld e, b
    add hl, de
    ld a, [$c723]
    ld [hl], a
    ld hl, $c600
    add hl, de
    ld e, $30
    add hl, de
    ld [hl], a
    add c
    ld [$c723], a
    ret


Call_000_2de9:
    ld hl, TileIndexTable
    ld de, $ddf5
    ld b, $00
jr_000_2df1:
    ld a, [de]
    or a
    jr z, jr_000_2e22
    push hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    jr z, jr_000_2e20
    push hl
    inc hl
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c71f]
    ld e, a
    ld a, [$c720]
    ld d, a
    call Call_000_2414
    ld a, e
    ld [$c71f], a
    ld a, d
    ld [$c720], a
    pop hl
    dec hl
    call Call_000_2db0
jr_000_2e20:
    pop de
    pop hl
jr_000_2e22:
    inc hl
    inc hl
    inc de
    inc b
    ld a, b
    cp $00
    jr nz, jr_000_2df1
    ret


Call_000_2e2c:
    ld hl, TileIndexTable
    ld de, $ddf5
    ld b, $00

jr_000_2e34:
    ld a, [de]
    or a
    jr z, jr_000_2e6e

    push hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    jr z, jr_000_2e6c

    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c721]
    ld e, a
    ld a, [$c722]
    ld d, a
    call Call_000_2414
    ld a, e
    ld [$c721], a
    ld a, d
    ld [$c722], a
    ld hl, $d93d
    ld d, $00
    ld e, b
    add hl, de
    ld a, [$c724]
    ld [hl], a
    add c
    ld [$c724], a

jr_000_2e6c:
    pop de
    pop hl

jr_000_2e6e:
    inc hl
    inc hl
    inc de
    inc b
    ld a, b
    cp $00
    jr nz, jr_000_2e34

    ret


Call_000_2e78:
    ld hl, TileIndexTable
    ld de, $ddf5
    ld b, $00

Jump_000_2e80:
    ld a, [de]
    dec a
    jp nz, Jump_000_2f1b

    push hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl]
    or a
    jp z, Jump_000_2f19

    ld c, a
    push hl
    push de
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c721]
    ld e, a
    ld a, [$c722]
    ld d, a
    add hl, de
    ld a, h
    cp $98
    jr c, jr_000_2ee7

    jr nz, jr_000_2f17

    ld a, l
    or a
    jr nz, jr_000_2f17

    pop de
    pop hl
    ld a, $01
    ld [$c818], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c721]
    ld e, a
    ld a, [$c722]
    ld d, a
    call Call_000_2414
    ld a, [$c71f]
    ld [$c721], a
    ld a, [$c720]
    ld [$c722], a
    ld hl, $d93d
    ld d, $00
    ld e, b
    add hl, de
    ld a, [$c724]
    ld [hl], a
    ld a, [$c723]
    ld [$c724], a
    jr jr_000_2f19

jr_000_2ee7:
    pop de
    pop hl
    ld a, $81
    ld [de], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c721]
    ld e, a
    ld a, [$c722]
    ld d, a
    call Call_000_2414
    ld a, e
    ld [$c721], a
    ld a, d
    ld [$c722], a
    ld hl, $d93d
    ld d, $00
    ld e, b
    add hl, de
    ld a, [$c724]
    ld [hl], a
    add c
    ld [$c724], a
    jr jr_000_2f19

jr_000_2f17:
    pop de
    pop hl

Jump_000_2f19:
jr_000_2f19:
    pop de
    pop hl

Jump_000_2f1b:
    inc hl
    inc hl
    inc de
    inc b
    ld a, b
    or a
    jp nz, Jump_000_2e80

    ret


Call_000_2f25:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    ld a, [$c725]
    push af
    ld hl, $d7cc
    call Call_000_2f42
    ld hl, $ddf4
    call Call_000_2f42
    pop af
    ld [$c725], a
    pop af
    rst $10
    ret


Call_000_2f42:
    ld bc, $0380
jr_000_2f45:
    ld a, [hl-]
    cp $ff
    jr z, jr_000_2f55
    cp $fe
    jr z, jr_000_2f55
    push hl
    push bc
    call Call_000_2f5b
    pop bc
    pop hl
jr_000_2f55:
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2f45
    ret


Call_000_2f5b:
    push bc
    ld [$c725], a
    call Call_000_2f86
    ld [$c80d], a
    ld hl, $0008
    add hl, de
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop af
    rst $10
    pop bc
    ld hl, $97ff
    add hl, bc
    ld a, [$c80d]
    or a
    jp nz, $4000

    jp $4028


    ld a, [$c725]

Call_000_2f86:
    call Call_000_31b6
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld d, h
    ld e, l
    ld bc, $d44d
    inc hl
    inc hl
    ld a, [hl+]
    or a
    jr nz, jr_000_2fa7

    inc hl
    ld a, [hl+]
    or a
    jr nz, jr_000_2fa7

    ld a, [hl]
    or a
    jr nz, jr_000_2fa7

    xor a
    ld bc, $da75

jr_000_2fa7:
    ld l, a
    pop af
    rst $10
    ld a, l
    ret


Call_000_2fac:
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10 ;switch to bank 1
    ld hl, $c0a6
    ld c, $60
    xor a
    call FillMemory
    call Call_000_2fd6
    call Call_000_2fca
    ld a, $0c
    rst $10 ;switch to bank c
    call Call_0c_4b11
    pop af
    rst $10 ;return to original bank
    ret

Call_000_2fca:
    ld hl, $da75
    ld de, $c8f3
    xor a
    ld [$c818], a
    jr jr_000_2fe1

Call_000_2fd6:
    ld hl, $d44d
    ld de, $c8f1
    ld a, $01
    ld [$c818], a
jr_000_2fe1:
    ld b, $1c
jr_000_2fe3:
    ld c, $20
jr_000_2fe5:
    ld a, [hl]
    cp $fe
    jr z, jr_000_303c
    cp $ff
    jr nz, jr_000_2ff4
    xor a
    ld [de], a
    inc de
    ld [de], a
    jr jr_000_303d
jr_000_2ff4:
    ld [$c80d], a
    push bc
    push hl
    push de
    ld a, [$c818]
    or a
    jr nz, jr_000_3005
    call Call_000_3138
    jr jr_000_3008
jr_000_3005:
    call Call_000_3133
jr_000_3008:
    ld a, d
    ld [$c809], a
    ld a, e
    ld [$c80a], a
    ld a, [$c80d]
    call Call_000_31b6
    ld de, $0008
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$c80b], a
    ld a, h
    ld [$c80c], a
    ld e, $06
    add hl, de
    pop de
    push de
jr_000_302b:
    call Call_000_20bc
    push hl
    ld hl, $0080
    add hl, de
    ld d, h
    ld e, l
    pop hl
    dec c
    jr nz, jr_000_302b
    pop de
    pop hl
    pop bc
jr_000_303c:
    inc de
jr_000_303d:
    inc de
    inc de
    inc de
    inc hl
    dec c
    jr nz, jr_000_2fe5

    dec b
    jr nz, jr_000_2fe3

    ret


Call_000_3048:
    ldh a, [hCurrentBank]
    push af
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $b4c0
    ld de, $c8f1
    ld bc, $0380
    call Call_000_3063
    pop af
    rst $10
    jp Jump_000_1eb2


Call_000_3063:
jr_000_3063:
    push de
    ld a, [hl+]
    and $0f
    ld e, a
    ld a, [hl+]
    and $0f
    swap a
    or e
    pop de
    cp $ff
    jr z, jr_000_3094

    cp $fe
    jr z, jr_000_3094

    ld [$c80d], a
    push hl
    push de
    call Call_000_31b6
    ld de, $000a
    add hl, de
    ld d, h
    ld e, l
    ld a, $01
    rst $10
    ld a, [hl]
    pop de
    pop hl
    push bc
    ld c, a
    ld a, $0c
    rst $10
    call $404b
    pop bc

jr_000_3094:
    inc de
    inc de
    inc de
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3063

    ret


Call_000_309e:
    call $42c8
    jp GotoNextScene


    ld hl, $ddf5
    ld a, [$c725]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    ret nz

    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld hl, $c726
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $78af
    ld c, $ff
    ld d, $00

jr_000_30c5:
    inc c
    ld a, [hl+]
    push hl
    ld hl, $ddf5
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    or a
    jr z, jr_000_30c5

    ld a, c
    ld [$c725], a
    pop af
    rst $10
    ret


Call_000_30d9:
    push hl
    push de
    push af
    ld a, [$c80b]
    ld l, a
    ld a, [$c80c]
    ld h, a
    pop af
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


Call_000_30ed:
    ld hl, $d44d
    jr jr_000_30f5

Jump_000_30f2:
    ld hl, $da75

jr_000_30f5:
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld bc, $0380

jr_000_30fe:
    ld a, [hl]
    cp $ff
    push af
    push bc
    jr z, jr_000_3128

    cp $fe
    jr z, jr_000_3128

    push hl
    push hl
    call Call_000_31b6
    ld de, $0008
    add hl, de
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    ld de, $0020
    ld a, $fe

jr_000_311b:
    push hl
    push bc

jr_000_311d:
    ld [hl+], a
    dec c
    jr nz, jr_000_311d

    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_311b

    pop hl

jr_000_3128:
    pop bc
    pop af
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_30fe

    pop af
    rst $10
    ret


Call_000_3133:
    ld bc, $2bb3
    jr jr_000_3140

Call_000_3138:
    ld bc, $258b
    jr jr_000_3140

    ld bc, $6800

jr_000_3140:
    add hl, bc
    ld a, l
    and $1f
    add a
    add a
    add a
    add $08
    ld e, a
    ld a, l
    and $e0
    srl a
    srl a
    ld d, a
    ld a, h
    swap a
    add a
    add a
    add d
    add $10
    ld d, a
    ret


    ld c, $98
    ld a, [$c705]
    or a
    jr z, jr_000_3166

    ld c, $e8

jr_000_3166:
    ld hl, $c223
    ld de, $0020
    ld a, [hl]
    cp c
    jr z, jr_000_3175

    bit 7, b
    call nz, Call_000_319c

jr_000_3175:
    ld a, [hl]
    cp $10
    jr z, jr_000_317f

    bit 6, b
    call nz, Call_000_31a9

jr_000_317f:
    ld hl, $c227
    ld a, [hl]
    cp $08
    jr z, jr_000_318c

    bit 5, b
    call nz, Call_000_31a9

jr_000_318c:
    ld c, $a0
    ld a, [$c705]
    or a
    jr z, jr_000_3196

    ld c, $f0

jr_000_3196:
    ld a, [hl]
    cp c
    ret z

    bit 4, b
    ret z

Call_000_319c:
    push hl
    ld c, $04

jr_000_319f:
    ld a, [hl]
    add $08
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_000_319f

    pop hl
    ret


Call_000_31a9:
    push hl
    ld c, $04

jr_000_31ac:
    ld a, [hl]
    sub $08
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_000_31ac

    pop hl
    ret


Call_000_31b6:
    ld hl, TileIndexTable
    ld d, $00
    ld e, a
    add hl, de
    add hl, de
    ldh a, [hCurrentBank]
    push af
    ld a, $01
    rst $10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $10
    ret


    ld hl, $c5e3
    ld bc, $ffe0

jr_000_31d0:
    push hl
    ld a, [hl+]
    cp d
    jr nz, jr_000_31dc

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp e
    jr z, jr_000_31e3

jr_000_31dc:
    pop hl
    add hl, bc
    ld a, h
    or a
    jr nz, jr_000_31d0

    ret


jr_000_31e3:
    pop hl
    dec hl
    dec hl
    dec hl
    ret


Call_000_31e8:
    call Call_000_0dc3
    ld a, c
    cp $03
    ret nz
    ldh a, [hCurrentBank]
    push af
    ld a, [wIsOnSGB]
    bit 4, a
    jr z, jr_000_31ff
    ld a, b
    cp $01
    jr nz, jr_000_31ff
    inc b
jr_000_31ff:
    ld a, b
    push af
    ld a, $10
    rst $10
    ld a, b
    call Call_10_6179
    ld a, $11
    rst $10
    pop af
    ld hl, $4000
    ld d, $00
    add a
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8040
    ld bc, $04c0
    call CopyData16
    pop af
    rst $10
    ret


Call_000_3223:
    ld hl, $ddb4
    ld a, [hl]
    cp $4c
    jp nc, Call_000_1761
    inc [hl]
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ldh a, [hCurrentBank]
    push af
    push hl
    ld de, $8040
    add hl, de
    ld a, l
    ld [$da71], a
    ld a, h
    ld [$da72], a
    call Call_000_0dc3
    ld a, b
    ld hl, $4010
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, $11
    rst $10
    ld a, [hl+]
    inc hl
    or a
    jr z, jr_000_3271
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    add hl, de
    ld de, $c809
    ld c, $10
    call CopyData
    ld hl, $da73
    ld a, $09
    ld [hl+], a
    ld [hl], $c8
jr_000_326e:
    pop af
    rst $10
    ret
jr_000_3271:
    call Call_000_1761
    pop hl
    jr jr_000_326e

Call_000_3277:
    ld de, $4030
jr_000_327a:
    ld hl, $c809
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ddb4
    ld a, [hl]
    cp $b0
    ret nc
    inc [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ldh a, [hCurrentBank]
    push af
    push hl
    ld de, $8500
    add hl, de
    ld a, l
    ld [$da71], a
    ld a, h
    ld [$da72], a
    call Call_000_0dc3
    ld a, b
    or a
    jr nz, jr_000_32ae
    ld a, [$ddb4]
    cp $30
    jr z, jr_000_32da
    ld a, b
jr_000_32ae:
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $c809
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, $11
    rst $10
    ld a, [hl+]
    inc hl
    or a
    jr z, jr_000_32da
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    add hl, de
    ld de, $c809
    ld c, $10
    call CopyData
    ld hl, $da73
    ld a, $09
    ld [hl+], a
    ld [hl], $c8
jr_000_32d7:
    pop af
    rst $10
    ret
jr_000_32da:
    pop hl
    ld a, $b0
    ld [$ddb4], a
    jr jr_000_32d7

Call_000_32e2:
    ld de, $4050
    jr jr_000_327a
    ld b, a
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    ld a, b
    call Call_00c_52d5
    pop af
    rst $10
    ret

Call_32f5:
    ldh a, [hCurrentBank]
    push af
    ld a, $0a
    rst $10
    call $7c51
    pop af
    rst $10
    ret

Call_3301:
    ld b, a
    ldh a, [hCurrentBank]
    push af
    ld a, $07
    rst $10
    ld a, b
    call $78a1
    pop af
    rst $10
    ret

Call_330f:
    ld b, a
    ldh a, [hCurrentBank]
    push af
    ld a, $07
    rst $10
    ld a, b
    call $7790
    pop af
    rst $10
    ret

Call_331d:
    ld hl, $dd05
    ld de, $fff0
    ld c, $20

jr_000_3325:
    ld a, [hl]
    or a
    ret z

    add hl, de
    dec c
    jr nz, jr_000_3325

    ret


    ld hl, $c5e0
    ld de, $ffe0
    ld c, $1f

jr_000_3335:
    ld a, [hl]
    or a
    jr z, jr_000_333d

    add hl, de
    dec c
    jr nz, jr_000_3335

jr_000_333d:
    push hl
    push bc
    ld c, $20
    xor a
    call FillMemory
    pop bc
    pop hl
    ret


Call_000_3348:
    push hl
    ld a, [hl+]
    sub $10
    srl a
    srl a
    srl a
    adc $00
    inc hl
    inc hl
    inc hl
    ld c, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, c
    sub $08
    srl a
    srl a
    srl a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d44d
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret

Call_000_3375:
    ld de, $370f
    add hl, de
    ld a, l
    and $7f
    sla l
    rl h
    add a
    ld e, $08
    add e
    ld e, a
    ld a, h
    add a
    add a
    add a
    add $10
    ld d, a
    ret

Call_000_338d:
    ld de, $370f
    add hl, de
    ld a, l
    and $7f
    sla l
    rl h
    ld l, h
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    srl a
    srl a
    ld d, $98
    ld e, a
    add hl, de
    ret

Call_000_33a9:
    ld hl, $370f
    add hl, de
    ld a, l
    and $7f
    sla l
    rl h
    ld l, h
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    srl a
    srl a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d44d
    add hl, de
    ret

Call_000_33c9:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    call $4e15
    pop af
    rst $10
    ret

Call_000_33d5:
    ldh a, [hCurrentBank]
    push af
    ld a, $0c
    rst $10
    call $4e35 ;label this later
    pop af
    rst $10
    ret

Call_000_33e1:
    ldh a, [hCurrentBank]
    push af
    ld a, $0a
    rst $10 ;switch to bank a
    call $7adf
    call $7c82
    pop af
    rst $10
    ret

;4 bytes of unused space
ds 4

IntroTitleSceneLoop:
    ld a, $01 ;switch to bank 1
    rst $10
    ;Jump to the function in the below table at the index based on hFunctionTableIndex
    ldh a, [hFunctionTableIndex]
    rst $08

;function table at offset 33fa
FunctionTable_33fa::
    dw InitIntroTitleScreen
    dw Call_01_4998 ;points to function in bank 1 used for loading the intro graphics
    dw Call_01_49bf
    dw Call_01_49ef
    dw Call_01_4a2e
    dw Call_01_4a75
    dw Call_01_4aa4
    dw Call_01_4b14
    dw Call_01_4b21
    dw Call_01_4a7f
    dw Call_01_4b2a

InitIntroTitleScreen:
    call DisableLCD
    call Call_000_1e27
    call Call_000_342c
    call UpdateLCDCIERegisters
    ld a, [wIsOnSGB]
    bit 7, a
    ret z
    ld a, $04
    call SendSGBPacketFromTable
    ld a, $21
    jp SendSGBPacketFromTable

;this leads to the intro tile graphics loading function (1d90)
Call_000_342c:
    call Call_000_162c
    ld a, $0b ;load the intro/title graphics (the corresponding entry is at index 11/0xB)
    call LoadGraphicsDataHeader
    ld a, $0d
    call Call_000_1de1
    ld a, $10
    call Call_000_1e38
    ld a, $23
    call Call_000_1d6b
    xor a
    ld hl, $defe
    ld a, [hl]
    and $0f
    ld [hl+], a
    ld [hl], $00
    ldh [$ff95], a
    jp IncrementFunctionTableIndex

Call_3452:
    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08


FunctionTable_3458:
dw Call_3464
dw $4c1b
dw $4c9f
dw $4cab
dw $4c9f
dw Reset


Call_3464:
    call Call_000_349a
    call Call_000_34b0
    ld a, $0a
    call Call_000_1e38
    ld a, $08
    call LoadGraphicsDataHeader
    ld a, $09
    call Call_000_1de1
    call Call_000_20b2
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $09
    call Call_000_1d6b
    ld a, $3a
    ld [$c836], a
    xor a
    ld [$c809], a
    call Call_000_10c6
    call UpdateLCDCIERegisters
    ld a, $08
    jp SendSGBPacketFromTable


Call_000_349a:
    call SendSGBPacket7
    call Call_000_1cfa
    call Call_000_162c
    xor a
    ldh [$ff8f], a
    call Call_000_1e27
    call IncrementFunctionTableIndex
    ld a, $01
    rst $10
    ret


Call_000_34b0:
    ld hl, $c707
    ld de, $c80d
    ld a, [hl]
    ld [de], a
    xor a
    ld [hl+], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    ld [hl], a
    ret


    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08

    sub $34
    ld e, e
    ld c, l
    ld d, e
    ld c, [hl]
    ei
    ld c, l
    ld h, d
    ld c, [hl]
    or $01
    call c, $5d34
    ld c, [hl]

    call $4e6d
    call Call_000_34b0
    call Call_000_349a
    ld a, $2b
    ldh [$ff8f], a
    ld a, $09
    call Call_000_1e38
    ld a, $0d
    call LoadGraphicsDataHeader
    ld a, $0a
    call Call_000_1d6b
    ld a, [$c860]
    ld h, $00
    ld l, a
    call Call_000_2006
    ld de, $9c8d
    ld a, [wTimerOnesDigit]
    call Call_000_3537
    ld a, [$c861]
    ld h, $00
    ld l, a
    call Call_000_2006
    ld de, $9c8f
    ld a, [wTimerTensDigit]
    or a
    jr z, jr_000_351a

    call Call_000_3537
    inc de

jr_000_351a:
    ld a, [wTimerOnesDigit]
    call Call_000_3537
    ld a, $05
    call Call_000_1de6
    xor a
    ld [$c809], a
    call Call_000_0eb6
    call Call_000_10c6
    call UpdateLCDCIERegisters
    ld a, $06
    jp SendSGBPacketFromTable


Call_000_3537:
    push de
    ld hl, $3704
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [de], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld c, $0a
    add hl, bc
    ld a, [hl]
    ld [de], a
    pop de
    ret


    ld a, $04
    rst $10
    ld hl, $67b0
    ld de, $8000
    ld bc, $0300
    call CopyData16
    ld a, $01
    rst $10
    ret


    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08

    rla
    ld c, a
    and e
    ld c, a
    or l
    ld c, a
    cp b
    ld c, a
    ld [$fe4f], a
    ld c, a
    inc bc
    ld d, b
    ld l, $50
    scf
    ld d, b

FileSelectJump:
    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08


;offset 3581
FileSelectFunctionTable:
dw Call_35cb
dw $5117
dw $52B2
dw $5302
dw $534F
dw $5352
dw $5377
dw $538D
dw $53CD
dw $5117
dw $52B2
dw $5302
dw $53CD
dw $53D0
dw $5352
dw $5377
dw $53CD
dw $53F9
dw $5405
dw $5538
dw $5597
dw $5667
dw $55F9
dw $5597
dw $5667
dw $5674
dw $56B7
dw $56D1
dw $53CD
dw Call_360b
dw $5675
dw $56AC
dw $5675
dw $56A3
dw $522D
dw $524F
dw $5259


Call_35cb:
    call Call_000_1cfa
    call SendSGBPacket7
    call Call_000_162c
    call Call_000_1ebb
    call Call_000_1fdf
    ld a, $0a
    call LoadGraphicsDataHeader
    ld a, $07
    call Call_000_1de1
    ld a, $0b
    call Call_000_1d6b
    call $5742
    ld hl, $c817
    xor a
    ld [hl+], a
    ld [hl], a
    ldh [rWY], a
    ld a, $a7
    ldh [rWX], a
    ld a, $2b
    ld [$c836], a
    call IncrementFunctionTableIndex
    call Call_000_10c6
    call UpdateLCDCIERegisters
    ld a, $0c
    jp SendSGBPacketFromTable

Call_360b:
    call SendSGBPacket7
    ld a, [$c202]
    push af
    ld a, [$c207]
    push af
    ld a, $07
    call Call_000_1de1
    ld a, $0b
    call Call_000_1d6b
    call $5723
    pop af
    ld [$c207], a
    pop af
    sub $25
    ld [$c202], a
    call Call_000_10c6
    call UpdateLCDCIERegisters
    ld a, $0c
    jp SendSGBPacketFromTable


Call_3638::
    ld a, $01
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08

FunctionTable_363e::
dw $58D3
dw $591C
dw $5957


Call_3644::
    ld a, $0c
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08


FunctionTable_364a::
dw $553D
dw $561C
dw $5651
dw $5651
dw $5651
dw $569B
dw $562C
dw $5680


Call_365a::
    ld a, $0c
    rst $10
    ldh a, [hFunctionTableIndex]
    rst $08


FunctionTable_3663::
dw $57CA
dw $5827
dw $5862
dw $58ED
dw $5430
dw $3132
dw $3355
dw $5432
dw $3332
dw $3355
dw $5432
dw $333A
dw $3B55
dw $5434
dw $3532
dw $3355
dw $5434
dw $353A
dw $3B55
dw $5434
dw $3542
dw $4355
dw $5436
dw $3732
dw $3355
dw $5436
dw $373A
dw $3B55
dw $5438
dw $3932
dw $3355
dw $5438
dw $393A
dw $3B55
dw $5438
dw $3942
dw $4355
dw $543A
dw $3B32
dw $3355
dw $543A
dw $3B3A
dw $3B55
dw $543A
dw $3B42
dw $4355
dw $543C
dw $3D32
dw $3355
dw $543C
dw $3D3A
dw $3B55
dw $543E
dw $3F32
dw $3355
dw $543E
dw $3F3A
dw $3B55
dw $543E
dw $3F42
dw $4355
dw $5440
dw $4132
dw $3355
dw $5440
dw $413A
dw $3B55
dw $5440
dw $4142
dw $4355
dw $5640
dw $414A
dw $4B57
dw $5442
dw $4332
dw $3355
dw $5442
dw $433A
dw $3B55
dw $2F2F
dw $2F2F
dw $2F2F
dw $3230
dw $3634
dw $3A38
dw $3E3C
dw $4240
dw $3331
dw $3735
dw $3B39
dw $3F3D
dw $4341