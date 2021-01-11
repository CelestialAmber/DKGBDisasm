; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ldh a, [$90]
    rst $08
    dec c
    ld b, b
    ld l, h
    ld b, b
    rst $08
    ld b, c
    dec de
    ld b, c
    ld b, d
    ld b, c
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bbc0
    push hl
    ld c, $0c
    xor a
    ld [$c706], a
    call FillMemory
    ld hl, $c220
    pop de
    ld c, $06

jr_001_4027:
    push bc
    push de
    ld a, [hl]
    or a
    jr z, jr_001_4050

    push hl
    push de
    ld hl, $c2e0
    ld de, $0020
    ld b, $07

jr_001_4037:
    ld a, [hl]
    or a
    jr z, jr_001_403f

    add hl, de
    inc b
    jr jr_001_4037

jr_001_403f:
    pop de
    ld a, b
    ld [de], a
    inc de
    swap a
    ld [de], a
    ld d, h
    ld e, l
    pop hl
    push hl
    ld c, $20
    call $1057
    pop hl

jr_001_4050:
    ld bc, $0020
    add hl, bc
    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_001_4027

    call Call_000_1eb2
    ld hl, $c707
    ld de, $c709
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call IncrementFF90
    ld a, $48
    ld [$da3d], a
    ld [$da3e], a
    xor a
    ldh [$ff95], a
    ld a, $20
    ld [$c6fe], a
    ld a, $03
    call $1de6
    ld a, [$c70c]
    add a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $db18
    add hl, de
    add hl, de
    ld e, [hl]
    push hl
    push hl
    ld hl, TileIndexTable
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0008
    add hl, de
    ld a, [hl+]
    dec a
    swap a
    srl a
    ld c, a
    ld b, [hl]
    dec b
    swap b
    srl b
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3375
    ld a, d
    ld [$c2c3], a
    ld a, e
    ld [$c2c7], a
    pop hl
    dec hl
    dec hl
    ld a, [hl]
    cp $f4
    jr nz, jr_001_40c5

    ld c, $08

jr_001_40c5:
    cp $a8
    jr nz, jr_001_40ce

    ld de, $000e
    add hl, de
    ld a, [hl]

jr_001_40ce:
    ld [$c2a1], a
    ld [$c2c1], a
    xor a
    ld [$c2a2], a
    inc a
    ld [$c2a0], a
    ld [$c2c0], a
    ld [$c2c2], a
    ldh a, [rSCY]
    add $50
    and $f8
    ld [$c2a3], a
    ld [$c223], a
    ld [$c243], a
    add c
    ld [$c263], a
    ld [$c283], a
    ldh a, [rSCX]
    add $50
    and $f8
    ld [$c2a7], a
    ld [$c227], a
    ld [$c267], a
    add b
    ld [$c247], a
    ld [$c287], a
    call Call_001_4370
    call Call_001_43a6
    xor a
    ld [$c22b], a
    jp IncrementFF90


    call $0a38
    call $1e54
    call $12e2
    ld a, [$c81a]
    and $f0
    jr z, jr_001_4137

    ld b, a
    call Call_001_4315
    ld a, $07
    ld [$c82e], a
    ld [$c835], a

jr_001_4137:
    ldh a, [$8b]
    bit 0, a
    ret z

    xor a
    ldh [$ff95], a
    jp Jump_001_429a


    call $0e92
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $c220
    ld de, $bbc0
    ld c, $06

jr_001_4154:
    ld [hl], $00
    push bc
    ld a, [de]
    inc de
    and $0f
    ld b, a
    ld a, [de]
    inc de
    and $0f
    swap a
    or b
    jr z, jr_001_4180

    push de
    push hl
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c200
    add hl, de
    xor a
    ld [hl], a
    pop de
    ld c, $20
    call $1057
    pop hl
    pop de
    ld [hl], $01

jr_001_4180:
    ld bc, $0020
    add hl, bc
    pop bc
    dec c
    jr nz, jr_001_4154

    call Call_000_1eb2
    xor a
    ld [$c6fe], a
    ld hl, $ff8f

jr_001_4192:
    ld a, [hl]
    cp $3b
    jr nz, jr_001_4192

    ld [hl], $01
    ld a, SceneStage
    ldh [hCurrentScene], a
    ld a, SceneStageMapScreen
    ldh [$ff90], a
    ld hl, $c707
    ld de, $c709
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld a, [$c837]
    cp $03
    ret z

    cp $24
    ret z

    ld a, [$c201]
    cp $1a
    ret c

    cp $1e
    ret nc

    ld a, $29
    ld [$c82e], a
    ld [$c835], a
    ret


    call $0a38
    call Call_001_426c
    call Call_001_422d
    call $12e2
    ldh a, [$95]
    cp $41
    jr nc, jr_001_420e

    ld hl, $c22b
    ld a, [hl]
    inc [hl]
    cp $0a
    ret nz

    xor a
    ld [hl], a
    ld a, [$c220]
    xor $01
    ld [$c220], a
    ld [$c240], a
    ld [$c260], a
    ld [$c280], a
    ld [$c2a0], a
    xor $01
    ld [$c2c0], a
    ret z

    ld a, $27
    ld [$c82d], a
    ld [$c835], a
    ret


jr_001_420e:
    xor a
    ld [$c2c0], a
    inc a
    ld [$c220], a
    ld [$c240], a
    ld [$c260], a
    ld [$c280], a
    ld [$c2a0], a
    ld a, $4c
    ld [$c82e], a
    ld [$c835], a
    jp IncrementFF90


Call_001_422d:
    ldh a, [$95]
    cp $21
    jr c, jr_001_4254

    ld hl, $c2a1
    ld de, $fe02
    ld a, [hl+]
    inc hl
    cp $a7
    jr z, jr_001_4246

    cp $ed
    jr z, jr_001_4246

    ld de, $fafe

jr_001_4246:
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    add d
    ld [$c2c3], a
    ld a, [hl]
    add e
    ld [$c2c7], a
    ret


jr_001_4254:
    ld hl, $c2ca
    ld a, [hl-]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl-], a
    ld a, [hl-]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl], a
    ret


Call_001_426c:
    ldh a, [$95]
    cp $29
    ret nc

    ld hl, $c227
    inc [hl]
    inc [hl]
    ld hl, $c223
    inc [hl]
    inc [hl]
    ld hl, $c247
    dec [hl]
    dec [hl]
    ld hl, $c243
    inc [hl]
    inc [hl]
    ld hl, $c267
    inc [hl]
    inc [hl]
    ld hl, $c263
    dec [hl]
    dec [hl]
    ld hl, $c287
    dec [hl]
    dec [hl]
    ld hl, $c283
    dec [hl]
    dec [hl]
    ret


Jump_001_429a:
    ld a, [$c70c]
    add a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $db18
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$c725], a
    ld e, a
    ld hl, TileIndexTable
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0008
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_001_42f9
    push hl
    xor a

jr_001_42c2:
    push hl
    push bc

jr_001_42c4:
    or [hl]
    inc hl
    ld b, a
    ld a, [hl+]
    cp $20
    jr nc, jr_001_42ce

    or b
    ld b, a

jr_001_42ce:
    ld a, b
    inc hl
    inc hl
    dec c
    jr nz, jr_001_42c4

    pop bc
    pop hl
    ld de, $0080
    add hl, de
    dec b
    jr nz, jr_001_42c2

    pop hl
    or a
    jr z, jr_001_42ea

    ld a, $02
    ld [$c82f], a
    ld [$c835], a
    ret


jr_001_42ea:
    ld a, $65
    ld [$c82d], a
    ld [$c835], a
    ld a, $04
    ldh [$ff90], a
    jp $2627


Call_001_42f9:
    ld a, [$c223]
    sub $10
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c227]
    sub $08
    srl a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $c8f1
    add hl, de
    ret


Call_001_4315:
    ld hl, $c223
    ld de, $0020
    ldh a, [rSCY]
    and $f8
    add $98
    cp [hl]
    jr z, jr_001_4329

    bit 7, b
    call nz, Call_001_4356

jr_001_4329:
    ldh a, [rSCY]
    and $f8
    add $18
    cp [hl]
    jr z, jr_001_4337

    bit 6, b
    call nz, Call_001_4363

jr_001_4337:
    ld hl, $c227
    ldh a, [rSCX]
    and $f8
    add $08
    cp [hl]
    jr z, jr_001_4348

    bit 5, b
    call nz, Call_001_4363

jr_001_4348:
    bit 4, b
    ret z

    ldh a, [rSCX]
    and $f8
    add $a0
    cp [hl]
    jp nz, Jump_001_4356

    ret


Call_001_4356:
Jump_001_4356:
    push hl
    ld c, $05

jr_001_4359:
    ld a, [hl]
    add $08
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_001_4359

    pop hl
    ret


Call_001_4363:
    push hl
    ld c, $05

jr_001_4366:
    ld a, [hl]
    sub $08
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_001_4366

    pop hl
    ret


Call_001_4370:
    ld de, $001c
    ld hl, $c223
    ld a, [hl]
    sub $50
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    sub $50
    ld [hl], a
    add hl, de
    ld a, [hl]
    sub $50
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $50
    ld [hl], a
    add hl, de
    ld a, [hl]
    add $50
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    sub $50
    ld [hl], a
    add hl, de
    ld a, [hl]
    add $50
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $50
    ld [hl], a
    ret


Call_001_43a6:
    ld b, $00
    ld de, $c707
    ld a, [de]
    inc de
    ld c, a
    ld hl, $c2c3
    ld a, [hl]
    push af
    sub $06
    ld [hl+], a
    pop af
    inc hl
    sub c
    sub $50
    cpl
    inc a
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld b, $00
    ld a, [de]
    ld c, a
    ld a, [hl]
    dec [hl]
    dec [hl]
    inc hl
    inc hl
    sub c
    sub $50
    cpl
    inc a
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    sra a
    rr b
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [wIsOnSGB]
    bit 5, a
    jr nz, jr_001_4416

    ld a, [$c860]
    or a
    jr z, jr_001_4416

    ldh a, [$8b]
    bit 0, a
    jr nz, jr_001_4434

    bit 3, a
    jr nz, jr_001_4434

    ld a, [$c20b]
    dec a
    jr jr_001_441e

jr_001_4416:
    ld a, [$c20b]
    dec a
    cp $81
    jr z, jr_001_4434

jr_001_441e:
    ld b, a
    and $0f
    jr nz, jr_001_4431

    ld de, $c7f1
    ld a, b
    and $10
    jr z, jr_001_442e

    ld de, $c7f7

jr_001_442e:
    call Call_000_1685

jr_001_4431:
    jp Call_000_10c6


jr_001_4434:
    ld b, $6e
    ld hl, $c860
    ld a, [hl+]
    or a
    jr z, jr_001_445a

    cp $09
    jr z, jr_001_4448

    ld a, [hl]
    and $03
    jr z, jr_001_4448

    ld b, $6f

jr_001_4448:
    ld a, b
    ld [$c80d], a
    ld [$c82d], a
    ld [$c835], a
    ld a, $80
    ld [$c836], a
    call Call_001_446d

jr_001_445a:
    ld de, $c7f1
    call Call_000_1685
    xor a
    ldh [$ff95], a
    ld [$c70f], a
    ld a, $12
    ldh [$ff90], a
    jp $0da3


Call_001_446d:
    ld hl, $c860
    ld c, $09
    ld a, [hl+]
    cp c
    ret nz

    ld a, [hl]
    cp c
    ret nz

    ld hl, $4488
    ld de, $c8d1
    push de
    ld c, $06
    call $1057
    pop de
    jp Call_000_1685


    ld l, c
    sbc b
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop

    ld a, [$c860]
    or a
    jr z, jr_001_44a3

    ld b, $60
    ld a, [$c80d]
    cp $6f
    jr z, jr_001_449f

    ld b, $a0

jr_001_449f:
    ldh a, [$95]
    cp b
    ret nz

jr_001_44a3:
    xor a
    ldh [$ff90], a
    ld a, [wIsOnSGB]
    bit 5, a
    ld a, $10
    jr z, jr_001_44b1

    ld a, $12

jr_001_44b1:
    ldh [hCurrentScene], a
    ret


    ld a, $0f
    call Call_000_1de1
    ld hl, $48cb
    push hl
    ld de, $c7f3
    ld c, $04
    call $1057
    pop hl
    ld de, $c7f9
    ld c, $04
    call $1057
    ld de, $c809
    call Call_001_455b
    ld a, l
    ld [$c7f1], a
    ld [$c7f7], a
    ld a, h
    ld [$c7f2], a
    ld [$c7f8], a
    call Call_001_455b
    push de
    call $2874
    jr z, jr_001_4506

    ld a, [wIsOnSGB]
    bit 4, a
    jr nz, jr_001_44f7

    call $287c
    jr z, jr_001_4509

jr_001_44f7:
    ld a, $7c
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ld de, $001f
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    jr jr_001_4509

jr_001_4506:
    call IncrementFF90

jr_001_4509:
    pop hl
    ld bc, $9a08
    ld a, [hl+]
    add a
    call Call_001_4573
    ld a, [hl]
    push af
    ld h, $00
    ld l, a
    call Call_000_2006
    ld bc, $9a0a
    ld hl, wTimerTensDigit
    ld a, [hl+]
    add a
    call nz, Call_001_4573
    ld a, [hl]
    add a
    call Call_001_4573
    ld a, $08
    ld [$c66c], a
    ld a, $10
    ld [$c6e8], a
    pop af
    dec a
    and $03
    ld hl, $48db
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c7fb], a
    ld a, [wLives]
    ld h, $00
    ld l, a
    call Call_000_2006
    ld bc, $9a10
    ld hl, wTimerTensDigit
    ld a, [hl+]
    add a
    call nz, Call_001_4573
    ld a, [hl]
    add a
    jr jr_001_4573

Call_001_455b:
    ld a, [de]
    inc de
    sub $10
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, [de]
    inc de
    sub $08
    srl a
    srl a
    srl a
    ld b, $98
    ld c, a
    add hl, bc
    ret


Call_001_4573:
jr_001_4573:
    push hl
    ld hl, $48df
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [bc], a
    ld a, [hl]
    ld hl, $0020
    add hl, bc
    ld [hl], a
    inc bc
    pop hl
    ret


    ld hl, $48cf
    ld de, $c7f3
    ld c, $04
    call $1057
    call IncrementFF90
    call $0dc3
    ld de, $4932
    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    call $2884
    ld [$c809], a
    dec a
    add a
    add a
    add a
    add $06
    cpl
    inc a
    ld d, $ff
    ld e, a
    add hl, de
    ld de, $c80b
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    call Call_000_10c6
    ld hl, $c20b
    ld a, [hl]
    cp $0a
    ret nz

    xor a
    ld [hl], a
    ld hl, $c809
    ld a, [hl]
    or a
    jr nz, jr_001_45d9

    ld a, $13
    ld [$c82f], a
    ld [$c835], a
    jp IncrementFF90


jr_001_45d9:
    ld a, $0f
    ld [$c82f], a
    ld [$c835], a
    dec [hl]
    ld hl, $c80b
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2884
    ld e, a
    call $2884
    ld d, a
    call Call_001_4620
    ld bc, $0006
    add hl, bc
    pop bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, e
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
    ld de, $c7f1
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    jp Call_000_1685


Call_001_4620:
    push hl
    push de
    ld hl, $c243
    ld c, $1d

jr_001_4627:
    push hl
    ld a, [hl+]
    cp e
    jr nz, jr_001_463d

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp d
    jr nz, jr_001_463d

    ld a, l
    sub $07
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld [hl], $00

jr_001_463d:
    pop hl
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_001_4627

    pop de
    pop hl
    ret


    xor a
    ldh [$ff95], a
    ldh [rWY], a
    ld a, $70
    ld [$c82d], a
    ld [$c835], a
    ld hl, $c811
    ld a, $01
    ld [hl+], a
    ld a, $8f
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, $2d
    ldh [$ff8f], a
    call IncrementFF90
    ld hl, $c815
    ld a, [hl-]
    cp $1e
    jr nz, jr_001_4681

    inc hl
    xor a
    ld [hl], a
    jp IncrementFF90


jr_001_4681:
    ldh a, [$95]
    cp [hl]
    ret nz

    xor a
    ldh [$ff95], a
    dec [hl]
    jr nz, jr_001_4690

    inc [hl]
    inc [hl]
    inc hl
    inc [hl]
    dec hl

jr_001_4690:
    ld a, [hl-]
    bit 0, a
    ld a, $e4
    ld b, $a7
    jr z, jr_001_469d

    ld a, $ff
    ld b, $07

jr_001_469d:
    ld [hl], b
    ld [$c816], a
    ret


    ld hl, $c815
    ld a, [hl-]
    cp $10
    jr nz, jr_001_46ce

    inc hl
    xor a
    ld [hl], a
    ldh [$ff8f], a
    ld [$c70f], a
    dec a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld [$c816], a
    ld a, $47
    ld [$c811], a
    inc a
    inc a
    ld [$c812], a
    ld b, $04
    call $3841
    jp IncrementFF90


jr_001_46ce:
    ldh a, [$95]
    cp [hl]
    ret nz

    xor a
    ldh [$ff95], a
    dec [hl]
    jr nz, jr_001_46dd

    inc [hl]
    inc [hl]
    inc hl
    inc [hl]
    dec hl

jr_001_46dd:
    ld a, [hl-]
    bit 0, a
    ld a, $e4
    ld b, $a7
    jr z, jr_001_46ea

    ld a, $ff
    ld b, $07

jr_001_46ea:
    ld [$c816], a
    ld a, b
    ld [hl-], a
    dec [hl]
    dec [hl]
    dec hl
    inc [hl]
    inc [hl]
    ret


    xor a
    ldh [$ff95], a
    ld hl, $c815
    ld [hl+], a
    ld a, $e4
    ld [hl], a
    ld a, $71
    ld [$c82d], a
    ld [$c835], a
    ld a, $2d
    ldh [$ff8f], a
    call IncrementFF90
    ld hl, $c815
    ld a, [hl-]
    cp $23
    jr nz, jr_001_472a

    inc hl
    xor a
    ld [hl], a
    ldh [$ff8f], a
    ldh [rOBP1], a
    call Call_000_1e2f
    ld hl, $ff40
    set 0, [hl]
    set 1, [hl]
    jp IncrementFF90


jr_001_472a:
    ldh a, [$95]
    cp [hl]
    ret nz

    xor a
    ldh [$ff95], a
    dec [hl]
    jr nz, jr_001_4739

    inc [hl]
    inc [hl]
    inc hl
    inc [hl]
    dec hl

jr_001_4739:
    ld a, [hl-]
    bit 0, a
    ld b, $a8
    jr z, jr_001_4742

    ld b, $07

jr_001_4742:
    ld a, b
    ld [hl-], a
    inc [hl]
    dec hl
    dec [hl]
    ret


    xor a
    ldh [rWY], a
    ld a, $30
    ldh [$ff8f], a
    ld a, $a3
    ld [$c811], a
    call IncrementFF90
    ld hl, $c811
    ld a, [hl]
    cp $07
    jp z, IncrementFF90

    ld a, [hl]
    sub $04
    ld [hl], a
    add $49
    ld [$c207], a
    jp Call_000_10c6


    call Call_000_10c6
    ld hl, $c207
    ldh a, [$8b]
    and $39
    ret z

    ld b, a
    and $09
    jr z, jr_001_4791

    ld a, [hl]
    cp $50
    ld a, $6b
    jr nz, jr_001_4788

    call $0f4a
    ld a, $4a

jr_001_4788:
    ld [$c82f], a
    ld [$c835], a
    jp IncrementFF90


jr_001_4791:
    ld a, b
    ld b, [hl]
    push bc
    bit 4, a
    jr z, jr_001_479a

    ld [hl], $78

jr_001_479a:
    bit 5, a
    jr z, jr_001_47a0

    ld [hl], $50

jr_001_47a0:
    pop bc
    ld a, [hl]
    cp b
    ret z

    ld a, $06
    ld [$c82f], a
    ld [$c835], a
    ret


    call Call_000_10c6
    xor a
    ld [$c20b], a
    ld hl, $c811
    ld a, [hl]
    cp $a0
    jp nc, Jump_001_47cf

    ld a, [hl]
    add $08
    ld [hl], a
    add $48
    cp $b0
    jr c, jr_001_47c9

    ld a, $b0

jr_001_47c9:
    ld [$c207], a
    jp Call_000_10c6


Jump_001_47cf:
    xor a
    ldh [$ff95], a
    call IncrementFF90
    ldh a, [$95]
    cp $04
    jp z, IncrementFF90

    ld hl, $4803
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld hl, $c86d
    push hl
    ld [hl+], a
    ld a, $9c
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ld a, $73
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld c, $07
    ld a, $47
    call FillMemory
    pop de
    jp Call_000_1685


    inc bc
    ld a, [bc]
    inc hl
    ld a, [hl+]

    ld hl, $48d3
    ld de, $c7ff
    ld c, $04
    call $1057
    ld hl, $48d7
    ld de, $c805
    ld c, $04
    call $1057
    call IncrementFF90
    call $0dc3
    ld de, $4935
    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, l
    ld [$c80b], a
    ld a, h
    ld [$c80c], a
    ld a, $04
    ld [$c809], a
    call Call_000_10c6
    ld hl, $c20b
    ld a, [hl]
    cp $1e
    ret nz

    xor a
    ld [hl], a
    ld hl, $c809
    ld a, [hl]
    or a
    jp z, IncrementFF90

    dec [hl]
    ld a, $12
    ld [$c82d], a
    ld [$c835], a
    ld hl, $c80b
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c809]
    cp $03
    call nz, Call_001_489a
    call $2884
    ld e, a
    call $2884
    ld d, a
    ld bc, $0006
    add hl, bc
    pop bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, e
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
    ld de, $c7fd
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    jp Call_000_1685


Call_001_489a:
    push hl
    ld bc, $fff8
    add hl, bc
    call $2884
    ld e, a
    call $2884
    ld d, a
    ld a, e
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
    ld de, $c803
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    call Call_000_1685
    pop hl
    ret


    ld [bc], a
    ld [bc], a
    ld a, b
    nop
    ld [bc], a
    ld [bc], a
    inc l
    nop
    ld [bc], a
    ld [bc], a
    ld a, h
    nop
    ld [bc], a
    ld [bc], a
    ld [hl], h
    nop
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, h
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    sbc l
    ld bc, $0001
    ld c, $00
    jr z, jr_001_48fb

jr_001_48fb:
    ld c, a
    nop

    ld hl, $c201
    ld c, $20

jr_001_4902:
    ld a, [hl+]
    cp $a4
    jr nz, jr_001_4921

    push hl
    push bc
    inc hl
    inc hl
    inc hl
    ld d, h
    ld a, l
    add $0e
    ld e, a
    ld c, $06
    push hl
    call $1057
    pop hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    pop bc
    pop hl

jr_001_4921:
    ld de, $001f
    add hl, de
    dec c
    jr nz, jr_001_4902

    ret


    ld hl, $c201
    ld c, $20

jr_001_492e:
    ld a, [hl+]
    cp $a4
    jr nz, jr_001_4945

    push hl
    push bc
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    ld bc, $000e
    add hl, bc
    ld c, $06
    call $1057
    pop bc
    pop hl

jr_001_4945:
    ld de, $001f
    add hl, de
    dec c
    jr nz, jr_001_492e

    ret


    ld a, [$c85b]
    ld hl, $5d19
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c836], a
    ret


    push bc
    ld d, $00
    ld e, c
    ld hl, $5d2f
    add hl, de
    ld a, [hl]
    ld [$c856], a
    ld hl, $5d45
    add hl, de
    ld a, [hl]
    ld [$c857], a
    call $0da3
    call $0dc3
    ld a, c
    cp $04
    jr nz, jr_001_4980

    ld a, $5b
    ld [$c857], a

jr_001_4980:
    ld a, [$c860]
    cp $09
    jr nz, jr_001_4993

    ld a, [$c861]
    cp $08
    jr nz, jr_001_4993

    ld a, $3b
    ld [$c856], a

jr_001_4993:
    call $0db0
    pop bc
    ret

Call_01_4998:
    call Call_001_4a1e
    ld hl, $ff95
    ld a, [hl]
    cp $3c
    ret nz
    ld a, $29
    ld [$c836], a
    xor a
    ld [hl], a
    ld [$c809], a
    ld [$c80b], a
    ld a, $1f
    ldh [$ff8f], a
    ld [$c200], a
    call Call_000_10c6
    call Call_001_4c12
    jp IncrementFF90

Call_01_49bf:
    call Call_001_4a1e
    call Call_000_10c6
    call Call_001_4b2f
    ld a, [$c809]
    cp $14
    ret nz
    ld hl, $49e7
    ld de, $c7f1
    ld c, $08
    push de
    call $1057
    pop de
    call Call_000_1685
    ld hl, $c20b
    xor a
    ld [hl+], a
    ld [hl], a
    jp IncrementFF90


    adc b
    sbc d
    ld bc, $f702
    rst $00
    add b
    add b

Call_01_49ef:
    call Call_001_4a1e
    call Call_000_10c6
    call Call_001_4b2f
    ld hl, $c20c
    ld a, [hl-]
    push hl
    ld hl, $6096
    ld d, $00
    add a
    ld e, a
    add hl, de
    ld a, [hl+]
    ld d, h
    ld e, l
    pop hl
    cp [hl]
    ret nz
    xor a
    ld [$c80a], a
    ld [hl+], a

Jump_001_4a10:
    inc [hl]
    ld a, [hl]
    cp $1b
    call z, IncrementFF90
    inc de
    inc de
    ld a, [de]
    ld [$c202], a
    ret


Call_001_4a1e:
    ldh a, [hJoypad]
    or a
    ret z
    xor a
    ld [$c80a], a
    ldh [$ff95], a
    ld a, $04
    ldh [$ff90], a
    pop af
    ret

Call_01_4a2e:
    call Call_000_10c6
    ld a, [$c80a]
    cp $07
    jp z, IncrementFF90
    ld a, [wIsOnSGB]
    bit 7, a
    jr z, jr_001_4a5a
    ld de, $d89c
    push de
    ld hl, $60ce
    ld c, $10
    call $1057
    ld hl, $c80a
    ld a, [hl]
    inc [hl]
    add $2c
    ld [$d89d], a
    pop hl
    jp $3894


jr_001_4a5a:
    ld hl, $ff95
    ld a, [hl]
    cp $04
    ret nz
    xor a
    ld [hl], a
    ld hl, $c80a
    ld a, [hl]
    inc [hl]
    ld hl, $60de
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [rBGP], a
    ldh [rOBP0], a
    ret

Call_01_4a75:
    ld a, $07
    call Call_000_3872
    ld a, $2a
    ld [$c836], a
Call_01_4a7f:
    call Call_000_1e2f
    call Call_000_10ab
    call Call_000_10c6
    ld hl, $def7
    ld a, $fc
    ld [hl+], a
    ld [hl], $03
    xor a
    ldh [$ff95], a
    ldh [$ff8f], a
    ld a, $e4
    ldh [rBGP], a
    ld a, $22
    call Call_000_3872
    call Call_001_4c12
    jp IncrementFF90

Call_01_4aa4:
    ld hl, $def7
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    or e
    jr nz, jr_001_4ade
    ld hl, wIsOnSGB
    set 5, [hl]
    xor a
    ldh [$ff90], a
    ld a, SceneStage
    ldh [hCurrentScene], a
    ld hl, $48f3
    ld a, [$defb]
    cp $05
    jr nz, jr_001_4ac8
    xor a
jr_001_4ac8:
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $c85c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $def7
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


jr_001_4ade:
    ld hl, $ff95
    ld c, $3c
    ld a, [hl]
    cp c
    jr c, jr_001_4ae8
    ld [hl], c
jr_001_4ae8:
    call Call_000_10c6
    ldh a, [$8b]
    bit 3, a
    jr nz, jr_001_4af8
    bit 2, a
    ret z
    xor a
    jp Jump_001_4dc0
jr_001_4af8:
    xor a
    ldh [$ff95], a
    ld a, $80
    ld [$c836], a
    ld a, $60
    ld [$c82d], a
    ld [$c835], a
    call IncrementFF90
    ld hl, wIsOnSGB
    set 1, [hl]
    set 2, [hl]
    ret

;unused?
    ret

Call_01_4b14:
    ldh a, [$95]
    cp $5a
    ret c
    ld a, SceneFileSelect
    ldh [hCurrentScene], a
    xor a
    ldh [$ff90], a
    ret

Call_01_4b21:
    call $0fd4
    call $342c
    jp $0fe6

Call_01_4b2a:
    ld a, $06
    ldh [$ff90], a
    ret


Call_001_4b2f:
    ld a, [$c809]
    cp $32
    jr z, jr_001_4b44
    ld hl, $c80b
    ld a, [hl]
    inc [hl]
    cp $08
    jr nz, jr_001_4b44
    xor a
    ld [hl], a
    call Call_001_4c12
jr_001_4b44:
    ld hl, $ff95
    ld a, [hl]
    cp $01
    jr nz, jr_001_4bae
    xor a
    ld [hl], a
    ld a, [$c809]
    cp $32
    jr z, jr_001_4bae
    ld hl, $c220
    ld de, $0020
    ld c, $19
jr_001_4b5d:
    ld a, [hl]
    or a
    jr z, jr_001_4b67
    add hl, de
    dec c
    jr nz, jr_001_4b5d
    jr jr_001_4bae
jr_001_4b67:
    push hl
    ld a, $14
    call Call_1d18
    ld hl, $606e
    ld d, $00
    add a
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld a, [$deff]
    and $03
    add $0c
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $15
    push hl
    call Call_1d18
    pop hl
    sub $14
    ld [hl+], a
    ldh a, [rDIV]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [rDIV]
    and $07
    bit 0, c
    jr nz, jr_001_4ba4
    cpl
    inc a
jr_001_4ba4:
    ld [hl+], a
    ldh a, [rDIV]
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $c809
    inc [hl]
jr_001_4bae:
    ld hl, $c220
    ld c, $19
jr_001_4bb3:
    ld a, [hl]
    or a
    jr z, jr_001_4bc6
    push hl
    call Call_001_4bfa
    ld de, $000b
    add hl, de
    ld a, [hl]
    cp $02
    call z, Call_001_4bce
    pop hl
jr_001_4bc6:
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_001_4bb3
    ret

Call_001_4bce:
    xor a
    ld [hl], a
    ld de, $fffa
    add hl, de
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    bit 7, d
    jr z, jr_001_4bed
    sra d
    rr e
    ld a, e
    ld [hl-], a
    ld a, d
    ld [hl], a
    inc de
    ld a, d
    or e
    ret nz
    xor a
    ld [hl+], a
    ld a, $10
    ld [hl], a
    ret
jr_001_4bed:
    ld a, e
    add a
    ld [hl-], a
    ld a, $00
    adc $00
    ld b, a
    ld a, [hl]
    add a
    add b
    ld [hl], a
    ret


Call_001_4bfa:
    push hl
    ld de, $0003
    add hl, de
    ld a, [hl+]
    cp $90
    jr nc, jr_001_4c0e
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp $a0
    jr nc, jr_001_4c0e
    pop hl
    ret
jr_001_4c0e:
    pop hl
    xor a
    ld [hl], a
    ret


Call_001_4c12:
    ld a, $13
    ld [$c82d], a
    ld [$c835], a
    ret


    call Call_000_10c6
    ld hl, $c809
    ldh a, [$8b]
    ld b, a
    and $c4
    jr z, jr_001_4c4c
    bit 6, b
    jr z, jr_001_4c35
    ld a, [hl]
    or a
    jr nz, jr_001_4c32
    ld [hl], $03
jr_001_4c32:
    dec [hl]
    jr jr_001_4c3d
jr_001_4c35:
    ld a, [hl]
    cp $02
    jr nz, jr_001_4c3c
    ld [hl], $ff
jr_001_4c3c:
    inc [hl]
jr_001_4c3d:
    ld a, $06
    ld [$c82e], a
    ld [$c835], a
    ld a, $0a
    add [hl]
    ld [$c342], a
    ret
jr_001_4c4c:
    ld a, b
    and $09
    ret z
    ld a, $30
    ld [$c82d], a
    ld [$c835], a
    ld a, $04
    ld [wLives], a
    xor a
    ld [$da41], a
    ld [$da42], a
    push hl
    call $2924
    ld hl, $5e6a
    ld d, $00
    ld e, a
    add hl, de
    add hl, de
    ld de, $c85c
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc de
    ld a, [hl]
    ld [de], a
    or b
    jr nz, jr_001_4c80
    dec de
    ld a, $01
    ld [de], a
jr_001_4c80:
    pop hl
    ld a, [hl]
    or a
    jp z, IncrementFF90
    dec a
    jr nz, jr_001_4c9b
    ld a, $4a
    ld [$c82d], a
    ld [$c835], a
    call Call_001_4cb3
    ld hl, $ff90
    inc [hl]
    inc [hl]
    inc [hl]
    ret
jr_001_4c9b:
    xor a
    jp Jump_001_4dc0


    ld a, $80
    ld [$c836], a
    xor a
    ld [$c340], a
    jp IncrementFF90


    ld a, SceneStage
    ldh [hCurrentScene], a
    xor a
    ldh [$ff90], a
    ret


Call_001_4cb3:
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfbe
    ld a, [hl+]
    add a
    ld c, a
    jr nz, jr_001_4cc3

    inc a

jr_001_4cc3:
    or [hl]
    ld [hl+], a
    ld a, c
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [wLives]
    ld [hl+], a
    swap a
    ld [hl+], a
    call $2924
    ld e, a
    ld [hl+], a
    swap a
    ld [hl+], a
    ld a, [hl+]
    and $0f
    ld c, a
    ld a, [hl-]
    and $0f
    swap a
    or c
    cp e
    jr nc, jr_001_4ced

    ld a, e
    ld [hl+], a
    swap a
    ld [hl], a

jr_001_4ced:
    ld hl, $bfd8
    ld a, $02
    ld [hl+], a
    ld [hl], $07
    ld hl, $bfc0
    ld bc, $001a

jr_001_4cfb:
    ld a, [hl+]
    and $0f
    add b
    ld b, a
    dec c
    jr nz, jr_001_4cfb

    ld a, b
    ld [hl+], a
    swap a
    ld [hl], a
    ld hl, $bfbe
    ld de, $bfdc
    ld c, $1e
    call $1057
    jp Call_000_1eb2


Call_001_4d16:
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfbe
    ld a, [hl+]
    add a
    ld b, a
    jr nz, jr_001_4d26

    inc a

jr_001_4d26:
    and [hl]
    jr z, jr_001_4d58

    inc hl
    ld a, b
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    ld [wLives], a
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    ld e, a
    ld d, $00
    ld hl, $5e6a
    add hl, de
    add hl, de
    ld de, $c85c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a

jr_001_4d58:
    jp Call_000_1eb2


    call Call_000_10c6
    ld hl, $c809
    ldh a, [$8b]
    ld b, a
    and $c4
    jr z, jr_001_4d8e

    bit 6, b
    jr z, jr_001_4d75

    ld a, [hl]
    or a
    jr nz, jr_001_4d72

    ld [hl], $03

jr_001_4d72:
    dec [hl]
    jr jr_001_4d7d

jr_001_4d75:
    ld a, [hl]
    cp $02
    jr nz, jr_001_4d7c

    ld [hl], $ff

jr_001_4d7c:
    inc [hl]

jr_001_4d7d:
    ld a, $06
    ld [$c82e], a
    ld [$c835], a
    ld a, [hl]
    swap a
    add $60
    ld [$c203], a
    ret


jr_001_4d8e:
    ld a, b
    and $09
    ret z

    ld a, $30
    ld [$c82d], a
    ld [$c835], a
    ld a, [hl]
    or a
    jr nz, jr_001_4da6

jr_001_4d9e:
    ld a, $01
    ld [$c835], a
    jp IncrementFF90


jr_001_4da6:
    dec a
    jr nz, jr_001_4dbe

    ld a, $4a
    ld [$c82d], a
    ld [$c835], a
    call Call_001_4cb3
    xor a
    ldh [$ff95], a
    ld hl, $ff90
    inc [hl]
    inc [hl]
    jr jr_001_4d9e

jr_001_4dbe:
    ld a, $06

Jump_001_4dc0:
    ld d, a
    ld a, $30
    ld [$c82d], a
    ld [$c835], a
    ld hl, $c80f
    ld a, d
    ld [hl+], a
    ldh a, [hCurrentScene]
    ld [hl], a
    ld a, [$c860]
    ld [$c818], a
    xor a
    ldh [$ff90], a
    ld a, SceneRecordMenu
    ldh [hCurrentScene], a
    ret


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $a000
    ld bc, $0190
    ld e, $00

jr_001_4dee:
    ld a, [hl+]
    and $0f
    or e
    ld e, a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_4dee

    jp Call_000_1eb2


    call $0fd4
    call $10a1
    call $0e4d
    ld a, [$c70b]
    ldh [$ff90], a
    ld hl, hCurrentScene
    dec [hl]
    call Call_001_4ec2
    ld a, [$dd17]
    bit 7, a
    call nz, $3550
    ld a, [$c837]
    cp $03
    jr z, jr_001_4e3a

    cp $24
    jr z, jr_001_4e3a

    cp $02
    jr z, jr_001_4e3a

    ld a, [$c201]
    cp $1a
    jr c, jr_001_4e3a

    cp $1e
    jr nc, jr_001_4e3a

    ld a, $29
    ld [$c82e], a
    ld [$c835], a

jr_001_4e3a:
    ld hl, $c707
    ld de, $c80d
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    call $0fe6
    ld hl, $d88c
    call $3894
    xor a
    ld [$c838], a
    ret


    xor a
    ld [$c200], a
    call Call_000_10c6
    jp IncrementFF90


    ld a, $01
    ldh [$ff90], a
    ret


    call Call_000_10c6
    ldh a, [$95]
    cp $2b
    ret nz

    jp IncrementFF90


    ld a, $01
    ld [$c82d], a
    ld [$c835], a
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $c200
    ld de, $bbc0
    ld c, $40

jr_001_4e84:
    ld a, [hl+]
    ld [de], a
    inc de
    swap a
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_4e84

    ld c, $1e

jr_001_4e90:
    ld a, [hl]
    ld [hl], $00
    ld b, a
    swap a
    or b
    ld [de], a
    inc de
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_001_4e90

    ld hl, $c6ee
    call Call_001_4eb7
    ld hl, $c6da
    call Call_001_4eb7
    ld hl, $c6fc
    call Call_001_4eb7
    jp Call_000_1eb2


Call_001_4eb7:
    call Call_001_4eba

Call_001_4eba:
    ld a, [hl+]
    ld [de], a
    inc de
    swap a
    ld [de], a
    inc de
    ret


Call_001_4ec2:
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $c200
    ld de, $bbc0
    ld c, $40

jr_001_4ed1:
    ld a, [de]
    inc de
    and $0f
    ld b, a
    ld a, [de]
    inc de
    and $0f
    swap a
    or b
    ld [hl+], a
    dec c
    jr nz, jr_001_4ed1

    ld c, $1e

jr_001_4ee3:
    ld a, [de]
    inc de
    and $0f
    ld [hl], a
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_001_4ee3

    ld hl, $c6ee
    call Call_001_4f06
    ld hl, $c6da
    call Call_001_4f06
    ld hl, $c6fc
    call Call_001_4f06
    jp Call_000_1eb2


Call_001_4f06:
    call Call_001_4f09

Call_001_4f09:
    ld a, [de]
    inc de
    and $0f
    ld c, a
    ld a, [de]
    inc de
    and $0f
    swap a
    or c
    ld [hl+], a
    ret


    call $0fd4
    call $1cfa
    call Call_000_162c
    xor a
    ldh [$ff95], a
    ld a, $22
    ldh [$ff8f], a
    call Call_000_1e27
    ld a, $06
    call Call_000_1de1
    ld a, $0a
    call Call_1d18
    ld hl, $c22c
    ld [hl-], a
    call Call_001_5087
    ld a, $08
    call Call_000_1e38
    call $20b2
    ld a, $09
    call LoadGraphicsDataHeader
    ld hl, $9800
    ld bc, $0400
    ld a, $bc
    call FillMemory1
    ld a, $20
    call $1d6b
    call Call_001_50e0
    ld hl, $5d85
    push af
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0a
jr_001_4f69:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld b, $04
jr_001_4f74:
    ld c, $04
jr_001_4f76:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_4f76
    ld a, e
    add $1c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_001_4f74
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_001_4f69
    ld a, $21
    call $1d6b
    call IncrementFF90
    ld a, $35
    ld [$c836], a
    call $0fe6
    pop af
    add $24
    jp Call_000_3872


    call Call_000_10c6
    call Call_001_5080
    ldh a, [$95]
    cp $b5
    ret nz
    xor a
    ld [$c817], a
    jp IncrementFF90


    call IncrementFF90
    call Call_000_10c6
    call Call_001_508c
    ldh a, [rDIV]
    call Call_1d18
    ldh a, [$8b]
    bit 0, a
    ret z

    ld a, $4b
    ld [$c82f], a
    ld [$c835], a
    ld a, [$c711]
    call Call_1d18
    ld a, $09
    call Call_1d18
    sub $06
    ld b, a
    ld a, $0c
    sub b
    ld [$c22f], a
    xor a
    ldh [$ff95], a
    jp IncrementFF90


    call Call_000_10c6
    call Call_001_508c
    ld hl, $c22f
    ldh a, [$95]
    cp [hl]
    ret nz

    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    jp IncrementFF90


    call Call_000_10c6
    jr jr_001_5050

    call Call_000_10c6
    call Call_001_50a0
    ld a, [$c22b]
    cp $3d
    ret nz

    xor a
    ldh [$ff95], a
    call Call_001_50e0
    ld hl, $5d7f
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c22c]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c809], a
    jp IncrementFF90


    call Call_000_10c6
    call Call_001_50c3
    jp Jump_001_50a0


    call Call_000_10c6
    call Call_001_50a0
    ld a, b
    cp $3d
    ret nz

    ld a, SceneStage
    ldh [hCurrentScene], a
    ld hl, $c858
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl], a
    ldh [$ff90], a
    ret


jr_001_5050:
    ld hl, $c22d
    ld a, [hl-]
    push hl
    ld hl, $5d6f
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    dec hl
    cp [hl]
    ret nz

    ld a, $06
    ld [$c831], a
    ld [$c835], a
    push hl
    inc hl
    inc hl
    inc [hl]
    ld a, [hl]
    cp $10
    jr nz, jr_001_507a

    ld a, $37
    ld [$c836], a
    call IncrementFF90

jr_001_507a:
    pop hl
    ld de, $5d5b
    jr jr_001_50ab

Call_001_5080:
    ld hl, $c22b
    ld a, [hl]
    cp $04
    ret nz

Call_001_5087:
    ld de, $5d5b
    jr jr_001_50ab

Call_001_508c:
    ld hl, $c22b
    ld a, [hl]
    cp $04
    ret nz

    ld a, $06
    ld [$c831], a
    ld [$c835], a
    ld de, $5d5b
    jr jr_001_50ab

Call_001_50a0:
Jump_001_50a0:
    ldh a, [$95]
    ld b, a
    and $08
    xor $08
    ld [$c220], a
    ret


jr_001_50ab:
    xor a
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $0a
    jr nz, jr_001_50b5

    xor a
    ld [hl], a

jr_001_50b5:
    add a
    ld h, $00
    ld l, a
    add hl, de
    ld a, [hl+]
    ld [$c223], a
    ld a, [hl]
    ld [$c227], a
    ret


Call_001_50c3:
    ldh a, [$95]
    cp $32
    ret nz

    xor a
    ldh [$ff95], a
    ld a, $37
    ld [$c82f], a
    ld [$c835], a
    ld a, $01
    call $0ddd
    ld hl, $c809
    dec [hl]
    ret nz

    jp IncrementFF90


Call_001_50e0:
    ld hl, wLives
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2006
    ld a, [wTimerOnesDigit]
    ld c, a
    push bc
    ld hl, $da41
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2006
    pop bc
    ld hl, wTimerOnesDigit
    ld a, [hl-]
    cp c
    jr z, jr_001_5114

    ld a, [hl-]
    cp c
    jr z, jr_001_5111

    ld a, [hl-]
    cp c
    jr z, jr_001_5111

    ld a, [hl-]
    cp c
    jr z, jr_001_5111

    ld a, [hl]
    cp c
    jr z, jr_001_5111

    xor a
    ret


jr_001_5111:
    ld a, $01
    ret


jr_001_5114:
    ld a, $02
    ret


    ldh a, [hJoypad]
    and $2e
    cp $2e
    jr nz, jr_001_512e

    ld hl, $ff90
    ld a, [hl]
    cp $01
    jr nz, jr_001_512e

    ld a, $22
    ld [hl], a
    ld [$c817], a
    ret


jr_001_512e:
    call $1e54
    call Call_000_10c6
    call Call_001_5885
    ld hl, wSelectedFileSlot
    ld de, $c202
    ld a, [$c81a]
    ld b, a
    bit 4, b
    jr z, jr_001_5158

    ld a, [hl]
    cp $03
    jr z, jr_001_5158

    ldh a, [$90]
    cp $01
    ld a, $30
    jr nz, jr_001_5154

    ld a, $10

jr_001_5154:
    ld [de], a
    inc [hl]
    jr jr_001_516f

jr_001_5158:
    bit 5, b
    jr z, jr_001_5176
    ld a, [hl]
    or a
    jr z, jr_001_5176
    ldh a, [$90]
    cp $01
    ld a, $38
    jr nz, jr_001_516a
    ld a, $18
jr_001_516a:
    ld [de], a
    dec [hl]
    call IncrementFF90
jr_001_516f:
    xor a
    ld [$c20b], a
    jp IncrementFF90


jr_001_5176:
    bit 0, b
    jr nz, jr_001_519f
    ldh a, [$90]
    cp $01
    ret nz
    bit 7, b
    jr z, jr_001_518f
    ld a, $16
    ldh [$ff90], a
    ld a, $07
    ld [$c82f], a
    ld [$c835], a
jr_001_518f:
    bit 6, b
    ret z
    ld a, $13
    ldh [$ff90], a
    ld a, $07
    ld [$c82f], a
    ld [$c835], a
    ret


jr_001_519f:
    ld a, $49
    ld [$c82f], a
    ld [$c835], a
    xor a
    ld [$c20b], a
    ld a, [hl]
    cp $03
    jr z, jr_001_51f6
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld a, [hl]
    ld [$bfbe], a
    call Call_000_1eb2
    ld a, [hl]
    ld c, a
    swap a
    ld b, a
    add a
    add b
    add $10
    call Call_001_532f
    ld a, [hl]
    swap a
    ld b, a
    add a
    add b
    add $18
    ld [$c267], a
    push hl
    ld hl, $ff90
    ld a, $04
    add [hl]
    ld [hl], a
    pop hl
    cp $0d
    jr nz, jr_001_51eb
    ld a, $0d
    ldh [$ff90], a
    xor a
    ld [$c28b], a
    ret


jr_001_51eb:
    ld a, [de]
    and $f8
    add $03
    ld [de], a
    ld b, $b5
    jp Jump_001_5500


jr_001_51f6:
    ld hl, $ff90
    ld a, [hl]
    add $07
    ld [hl], a
    ldh a, [$8f]
    cp $0b
    jr c, jr_001_521e
    ld a, $35
    ld [de], a
    ld a, $1e
    ldh [$ff90], a
jr_001_520a:
    xor a
    ld [$c28b], a
    ld a, $a7
    ldh [rWX], a
    ld hl, $ff8f
    ld a, [hl]
    sub $04
    ld [hl], a
    ld a, $0c
    jp Call_000_3872


jr_001_521e:
    ld a, $30
    ld [de], a
    ld hl, $ff8f
    ld a, [hl]
    add $04
    ld [hl], a
    ld a, $0d
    jp Call_000_3872


    ld hl, $c818
    ld a, [hl]
    inc [hl]
    ld d, $00
    add a
    ld e, a
    cp $02
    call z, IncrementFF90

jr_001_523b:
    ld hl, $5272
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c86d
    ld c, $0e
    push de
    call $1057
    pop de
    jp Call_000_1685


    ld hl, $ff8f
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_001_53e3


    ld hl, $c818
    ld a, [hl]
    cp $01
    jr nz, jr_001_5269

    push af
    ld [hl], $ff
    ld a, $01
    ldh [$ff90], a
    pop af

jr_001_5269:
    add $02
    inc [hl]
    ld d, $00
    add a
    ld e, a
    jr jr_001_523b

    ld a, d
    ld d, d
    adc b
    ld d, d
    sub [hl]
    ld d, d
    and h
    ld d, d
    add c
    sbc h
    ld bc, $7308
    ret z

    call nz, $c528
    jr z, jr_001_520a

    jr z, jr_001_52ad

    ld h, $89
    sbc h
    ld bc, $7308
    ret z

    add l
    dec h
    ld h, $27
    jr z, @+$2b

    add l
    cpl
    add c
    sbc h
    ld bc, $7308
    ret z

    add l
    add l
    dec h
    ld h, $27
    jr z, jr_001_52cc

    add l
    adc c
    sbc h
    ld bc, $7308
    ret z

    dec hl
    inc l
    cpl

jr_001_52ad:
    add l
    add l
    add l
    add l
    add l

    call Call_000_10c6
    call Call_001_5877
    call Call_001_5885
    ld hl, $5e63
    ld a, [wSelectedFileSlot]
    ld d, $00
    ld e, a
    add hl, de
    ld c, [hl]
    ld hl, $c20a
    ld a, $c0
    ld [hl-], a

jr_001_52cc:
    xor a
    ld [hl-], a
    dec hl
    ld a, [hl+]
    cp c
    ret nz

    call Call_001_52ed
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

Call_001_52d9:
jr_001_52d9:
    ld hl, $c202
    res 0, [hl]
    res 1, [hl]
    ld hl, $ff90
    dec [hl]
    ld a, $06
    ld [$c831], a
    ld [$c835], a
    ret


Call_001_52ed:
    swap e
    ld a, e
    cp $30
    jr nz, jr_001_52fc

    xor a
    ld [$c220], a
    ld [$c340], a
    ret


jr_001_52fc:
    add a
    add e
    add $10
    jr jr_001_532f

    call Call_000_10c6
    call Call_001_5877
    call Call_001_5885
    ld hl, $5e67
    ld a, [wSelectedFileSlot]
    ld d, $00
    ld e, a
    add hl, de
    ld c, [hl]
    ld hl, $c20a
    ld a, $40
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    dec hl
    ld a, [hl+]
    cp c
    ret nz

    call Call_001_52ed
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_001_52d9
    jr jr_001_52d9

Call_001_532f:
jr_001_532f:
    ld bc, $4171
    cp $10
    jr z, jr_001_5340

    ld bc, $1171
    cp $40
    jr z, jr_001_5340

    ld bc, $1141

jr_001_5340:
    ld a, b
    ld [$c220], a
    ld [$c227], a
    ld a, c
    ld [$c340], a
    ld [$c347], a
    ret


    jp Call_000_10c6


    call Call_000_10c6
    ld a, $fd
    ld [$c260], a
    ld [$c265], a
    ld hl, $c263
    ld c, $60
    ld a, [hl]
    cp c
    ret nc

    ld a, c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld a, $45
    ld [$c82e], a
    ld [$c835], a
    jp IncrementFF90


    call Call_000_10c6
    ld hl, $c263
    ld c, $80
    ld a, [hl]
    cp c
    ret c

    ld a, c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c20b], a
    jp IncrementFF90


    call Call_000_10c6
    ld a, [$c20b]
    cp $3c
    ret nz

    xor a
    ldh [$ff90], a
    ld a, SceneStage
    ldh [hCurrentScene], a
    call Call_001_4d16
    ld hl, $c85c
    ld a, [hl+]
    or [hl]
    ret z

    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfbe
    ld a, [hl+]
    inc hl
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    and $0f
    ld e, a
    ld a, [hl]
    and $0f
    swap a
    or e
    ld e, a
    ld hl, $5e6a
    add hl, de
    jp Call_000_1eb2


    jp IncrementFF90


    call Call_000_10c6
    call Call_001_5888
    ld a, [$c20b]
    cp $1e
    ret nz

    ld hl, $ff8f
    ld a, [hl]
    add $04
    ld [hl], a

Jump_001_53e3:
    xor a
    ld [$c200], a
    ld [$c280], a
    ld hl, $c202
    ld a, [hl]
    add $05
    ld [hl], a
    ld a, $12
    ldh [$ff90], a
    ld [$c240], a
    ret


    call Call_000_10c6
    ld a, $01
    ldh [$ff90], a
    ld a, $a7
    ldh [rWX], a
    ret


    call Call_000_10c6
    ld hl, $c247
    ldh a, [$8b]
    ld b, a
    bit 4, b
    jr z, jr_001_541c

    ld [hl], $58
    ld a, $06
    ld [$c82f], a
    ld [$c835], a

jr_001_541c:
    bit 5, b
    jr z, jr_001_542a

    ld [hl], $38
    ld a, $06
    ld [$c82f], a
    ld [$c835], a

jr_001_542a:
    bit 0, b
    ret z

    xor a
    ld [$c240], a
    ld a, $a7
    ldh [rWX], a
    ld [$c200], a
    ld a, [hl]
    cp $58
    jr z, jr_001_5474

    ld a, $01
    ldh [$ff90], a
    ld hl, $c817
    ld a, [hl]
    or a
    jr z, jr_001_5456

    ld a, $24
    ldh [$ff90], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c202
    ld a, [hl]
    add $20
    ld [hl], a

jr_001_5456:
    ld a, $08
    ld [$c82f], a
    ld [$c835], a
    ld hl, $ff8f
    ld a, [hl]
    sub $08
    ld [hl], a
    ld hl, $c202
    ld a, [hl]
    sub $25
    ld [hl], a
    ld [$c280], a
    ld a, $0c
    jp Call_000_3872


jr_001_5474:
    ld a, [$c817]
    or a
    jr z, jr_001_5491

    ld a, $13
    ld [$c82d], a
    ld a, $4e
    ld [$c82e], a
    ld [$c835], a
    call $1fb3
    call Call_000_1fdf
    xor a
    ldh [$ff90], a
    ret


jr_001_5491:
    ld a, $05
    ld [$c82f], a
    ld [$c835], a
    ld [hl], $38
    ld hl, $ff8f
    ld a, [hl]
    sub $04
    ld [hl], a
    ld a, $20
    ldh [$ff90], a
    ld [$c280], a
    call Call_000_1ea9
    xor a
    ld [$c28b], a
    call Call_000_1ea8
    ld a, [wSelectedFileSlot]
    add a
    push af
    ld hl, $bfc0
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop af
    jr nz, jr_001_54d0

    inc a

jr_001_54d0:
    xor $ff
    ld hl, $bfbf
    and [hl]
    ld [hl], a
    ld hl, $bfd8
    ld a, $02
    ld [hl+], a
    ld [hl], $07
    ld hl, $bfc0
    ld bc, $001a

jr_001_54e5:
    ld a, [hl+]
    and $0f
    add b
    ld b, a
    dec c
    jr nz, jr_001_54e5

    ld a, b
    ld [hl+], a
    swap a
    ld [hl], a
    ld hl, $bfbe
    ld de, $bfdc
    ld c, $1e
    call $1057
    jp Call_000_1eb2


Jump_001_5500:
    push bc
    ld a, [hl]
    add a
    ld b, a
    add a
    add b
    ld hl, $99e2
    ld d, $00
    ld e, a
    add hl, de
    push hl
    call Call_000_1635
    pop de
    pop bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, b
    ld [hl+], a
    xor a
    ld [hl], a
    inc de
    inc de
    push de
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $b4
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfbf
    ld a, [wSelectedFileSlot]
    cp $03
    jp z, Jump_001_5590

    add a
    ld b, a
    jr nz, jr_001_554f

    inc a

jr_001_554f:
    and [hl]
    jp z, Jump_001_5590

    inc hl
    ld a, b
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl-]
    and $0f
    swap a
    or b
    jr z, jr_001_5590

    push af
    dec hl
    ld a, [hl-]
    and $0f
    swap a
    ld b, a
    ld a, [hl]
    and $0f
    or b
    inc a
    ld c, a
    ld [hl+], a
    swap a
    ld [hl-], a
    pop af
    cp c
    jr nc, jr_001_5586

    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_001_5586

jr_001_5586:
    xor a
    ld [$c20b], a
    call IncrementFF90
    jp Call_000_1eb2


Jump_001_5590:
jr_001_5590:
    ld a, $01
    ldh [$ff90], a
    jp Call_000_1eb2


    call Call_000_10c6
    ld a, [$c20b]
    cp $01
    ret nz

    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfc2
    ld a, [wSelectedFileSlot]
    add a
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl]
    and $0f
    swap a
    or b
    push af
    call Call_000_1eb2
    ld a, [wSelectedFileSlot]
    add a
    ld c, a
    add a
    add c
    ld hl, $9902
    ld d, $00
    ld e, a
    add hl, de
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    pop af
    push hl
    add a
    ld b, a
    add a
    add b
    ld hl, $3668
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$c20b], a
    jp IncrementFF90


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $bfbf
    ld a, [wSelectedFileSlot]
    cp $03
    jp z, Jump_001_564e

    add a
    ld b, a
    jr nz, jr_001_5610

    inc a

jr_001_5610:
    and [hl]
    jp z, Jump_001_564e

    inc hl
    ld a, b
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl-]
    and $0f
    swap a
    or b
    jr z, jr_001_564e

    ld c, a
    dec hl
    ld a, [hl-]
    and $0f
    swap a
    ld b, a
    ld a, [hl]
    and $0f
    or b
    jr nz, jr_001_5641

    ld a, c
    ld [hl+], a
    swap a
    ld [hl], a
    jr jr_001_5644

jr_001_5641:
    call Call_001_5655

jr_001_5644:
    xor a
    ld [$c20b], a
    call IncrementFF90
    jp Call_000_1eb2


Jump_001_564e:
jr_001_564e:
    ld a, $01
    ldh [$ff90], a
    jp Call_000_1eb2


Call_001_5655:
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl-]
    and $0f
    swap a
    or b
    dec a
    ld [hl+], a
    swap a
    ld [hl-], a
    swap a
    ret


    call Call_000_10c6
    ld a, [$c20b]
    cp $01
    ret nz

    ld a, $01
    ldh [$ff90], a
    ret


    call Call_000_10c6
    call Call_001_5888
    ld a, [$c28b]
    cp $21
    jp z, IncrementFF90

    ld hl, $5e9c
    ld d, $00
    add a
    ld e, a
    add hl, de
    ld a, [$c283]
    add [hl]
    ld [$c283], a
    inc hl
    ld a, [$c202]
    cp $38
    ld a, [hl]
    jr c, jr_001_569d

    cpl
    inc a

jr_001_569d:
    ld hl, $c287
    add [hl]
    ld [hl], a
    ret


    ld a, $1a
    ldh [$ff90], a

jr_001_56a7:
    xor a
    ld [$c20b], a
    ret


    ld a, $10
    ld [$c202], a
    ld a, $10
    ldh [$ff90], a
    jr jr_001_56a7

    ld hl, $c360
    ld c, $80
    xor a
    ld [$c280], a
    call FillMemory
    ld a, [wSelectedFileSlot]
    add $0a
    call $1de6
    call Call_001_571a
    call IncrementFF90
    call Call_000_10c6
    ld de, $0020
    ld hl, $c36b
    ld a, [hl]
    cp $30
    jp z, IncrementFF90

    and $07
    jr nz, jr_001_56f9

    call Call_001_571a
    push hl
    ld hl, $c380
    ld c, $03

jr_001_56ed:
    ld a, [hl]
    or a
    jr nz, jr_001_56f4

    inc [hl]
    jr jr_001_56f8

jr_001_56f4:
    add hl, de
    dec c
    jr nz, jr_001_56ed

jr_001_56f8:
    pop hl

jr_001_56f9:
    ld hl, $c360
    ld c, $04

jr_001_56fe:
    ld a, [hl]
    push hl
    or a
    jr z, jr_001_5714

    ld a, l
    add $0c
    ld l, a
    ld a, [hl]
    inc [hl]
    cp $06
    jr nz, jr_001_5714

    xor a
    ld [hl], a
    ld a, l
    sub $0a
    ld l, a
    inc [hl]

jr_001_5714:
    pop hl
    add hl, de
    dec c
    jr nz, jr_001_56fe

    ret


Call_001_571a:
    ld a, $13
    ld [$c82d], a
    ld [$c835], a
    ret


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld a, [wSelectedFileSlot]
    ld [$bfbe], a
    call Call_000_1eb2
    call Call_001_5742
    xor a
    ldh [rWY], a
    ld a, $a7
    ldh [rWX], a
    ld a, $01
    ldh [$ff90], a
    ret


Call_001_5742:
    ld a, $07
    ldh [$ff8f], a
    call Call_000_1e2f
    call Call_001_5839
    ld hl, $c811
    xor a
    ld c, $08
    call FillMemory
    ld a, $05
    call Call_000_1e38
    ld a, $e4
    ld [$c814], a
    call $20b2
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld a, [$bfbe]
    and $0f
    ld [wSelectedFileSlot], a
    swap a
    ld b, a
    add a
    add b
    add $08
    ld [$c207], a
    add $08
    call Call_001_532f
    ld a, [$bfbf]
    bit 0, a
    jr z, jr_001_5790

    ld de, $bfc0
    ld hl, $98a3
    call Call_001_57b3

jr_001_5790:
    ld a, [$bfbf]
    bit 1, a
    jr z, jr_001_57a0

    ld de, $bfc8
    ld hl, $98a9
    call Call_001_57b3

jr_001_57a0:
    ld a, [$bfbf]
    bit 2, a
    jr z, jr_001_57b0

    ld de, $bfd0
    ld hl, $98af
    call Call_001_57b3

jr_001_57b0:
    jp Call_000_1eb2


Call_001_57b3:
    call Call_001_5815
    ld a, [de]
    inc de
    and $0f
    ld b, a
    ld a, [de]
    inc de
    and $0f
    swap a
    or b
    push de
    push hl
    ld h, $00
    ld l, a
    call Call_000_2006
    pop hl
    ld de, wTimerTensDigit
    ld bc, $0020
    ld a, [de]
    inc de
    or a
    jr z, jr_001_57df

    add a
    add $30
    ld [hl], a
    push hl
    add hl, bc
    inc a
    ld [hl], a
    pop hl

jr_001_57df:
    inc hl
    ld a, [de]
    add a
    add $30
    ld [hl], a
    add hl, bc
    inc a
    ld [hl], a
    pop de
    push bc
    ld bc, $003e
    add hl, bc
    ld a, [de]
    inc de
    and $0f
    ld c, a
    ld a, [de]
    inc de
    and $0f
    swap a
    or c
    pop bc
    call Call_001_584d
    push bc
    ld a, [de]
    inc de
    and $0f
    ld c, a
    ld a, [de]
    and $0f
    swap a
    or c
    pop bc
    or a
    ret z

    dec hl
    ld a, $52
    ld [hl], a
    inc a
    add hl, bc
    ld [hl], a
    ret


Call_001_5815:
    push hl
    push de
    dec hl
    dec hl
    dec hl
    ld d, h
    ld e, l
    ld hl, $5e51
    call Call_001_582b
    call Call_001_582b
    call Call_001_582b
    pop de
    pop hl
    ret


Call_001_582b:
    ld c, $06
    call $1057
    push hl
    ld hl, $001a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


Call_001_5839:
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $a190
    ld bc, $0190
    xor a
    call FillMemory1
    jp Call_000_1eb2


Call_001_584d:
    push de
    push hl
    push hl
    add a
    ld e, a
    add a
    add e
    ld hl, $3668
    ld d, $00
    ld e, a
    add hl, de
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    push hl
    ld hl, $001e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop hl
    pop de
    ret


Call_001_5877:
    ld hl, $c20b
    ld a, [hl]
    cp $08
    ret nz

    xor a
    ld [hl], a
    ld hl, $c202
    inc [hl]
    ret


Call_001_5885:
    call Call_001_5893

Call_001_5888:
    ld a, [$c28b]
    and $07
    ret nz

    ld hl, $c282
    inc [hl]
    ret


Call_001_5893:
    ld hl, $c207
    ld de, $c287
    push de
    ld c, $04
    call $1057
    pop hl
    ld de, $c283
    ld a, [$c202]
    cp $30
    jr c, jr_001_58b9

    ld a, [$c203]
    sub $0d
    ld [de], a
    ld hl, $c282
    ld a, $2b
    cp [hl]
    ret c

    ld [hl], a
    ret


jr_001_58b9:
    ld a, $29
    ld [$c282], a
    ld a, $80
    ld [de], a
    ld a, $98
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, SceneStage
    ldh [hCurrentScene], a
    xor a
    ldh [$ff90], a
    jp $0da3


    call $1cfa
    ld a, $01
    call Call_000_3872
    call $0fd9
    call Call_000_162c
    ld a, $0e
    call LoadGraphicsDataHeader
    call $10a1
    ld a, $1e
    call $1d6b
    ld a, [$c818]
    add $40
    call $1d6b
    call Call_001_5966
    ld a, $0d
    call Call_000_1e38
    ld a, $5a
    call Call_000_3872
    ld a, [$c818]
    add $50
    call Call_000_3872
    xor a
    ldh [$ff8f], a
    call Call_000_1e27
    call IncrementFF90
    call $0fe6
    ld a, $0b
    jp Call_000_3872


    ldh a, [$8b]
    and $cf
    ret z

    ld b, a
    and $0f
    jr z, jr_001_5931

    ld a, $05
    ld [$c82f], a
    ld [$c835], a
    jp IncrementFF90


jr_001_5931:
    ld a, $30
    ld [$c82f], a
    ld [$c835], a
    ld c, $09
    ld hl, $c818
    ld a, [hl]
    bit 7, b
    jr z, jr_001_594a

    dec [hl]
    or a
    jr nz, jr_001_5950

    ld [hl], c
    jr jr_001_5950

jr_001_594a:
    inc [hl]
    cp c
    jr nz, jr_001_5950

    xor a
    ld [hl], a

jr_001_5950:
    ld a, c
    or a
    ret z

    xor a
    ldh [$ff90], a
    ret


    ld hl, $c80f
    ld a, [hl+]
    ldh [$ff90], a
    ld a, [hl]
    ldh [hCurrentScene], a
    ld hl, $c0a2
    set 1, [hl]
    ret


Call_001_5966:
    ld hl, $c0a2
    res 1, [hl]
    ld a, [$c818]
    add a
    push af
    add $30
    ld [$9c27], a
    inc a
    ld [$9c47], a
    pop af
    ld hl, $5ede
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld c, [hl]
    ld h, d
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $a000
    add hl, de
    push hl
    ld hl, $5ef2
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    call Call_000_1ea9
    xor a
    ld [$c80b], a
    ld [$c80c], a
    call Call_000_1ea8

jr_001_59a4:
    xor a
    ld [$c809], a
    ld [$c80a], a
    push bc
    push de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    ld c, $04

jr_001_59b5:
    push bc
    call Call_001_5a25
    push hl
    ld hl, wTimerHundredsDigit
    call Call_001_5a56
    ld hl, $001d
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop bc
    dec c
    jr nz, jr_001_59b5

    push hl
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    push de
    ld hl, $c809
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c80b]
    add l
    ld [$c80b], a
    ld a, [$c80c]
    adc h
    ld [$c80c], a
    call Call_000_2006
    pop de
    ld hl, $c81c
    call Call_001_5a5c
    call Call_001_5a56
    pop hl
    pop de
    pop bc
    inc de
    inc de
    ld a, c
    or a
    jr z, jr_001_5a00

    dec c
    jr jr_001_59a4

jr_001_5a00:
    ld hl, $c80b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2006
    ld hl, $c81c
    ld de, $9c2f
    ld bc, $9c4f
    call Call_001_5a1b
    call Call_001_5a1b
    call Call_001_5a1b

Call_001_5a1b:
    ld a, [hl+]
    add a
    add $30
    ld [de], a
    inc de
    inc a
    ld [bc], a
    inc bc
    ret


Call_001_5a25:
    push de
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    ld c, a
    ld a, [$c809]
    add c
    ld [$c809], a
    push af
    pop de
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    push hl
    and $0f
    swap a
    or b
    ld h, a
    ld l, c
    push de
    pop af
    ld a, [$c80a]
    adc h
    ld [$c80a], a
    call Call_000_2006
    pop hl
    pop de
    ret


Call_001_5a56:
    call Call_001_5a5c
    call Call_001_5a5c

Call_001_5a5c:
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    ret


    ld a, [$c809]
    or a
    jr z, jr_001_5a77

    cp $11
    jp c, Jump_001_5c5c

    jp z, Jump_001_5b3a

    cp $12
    jp z, Jump_001_5caa

    jp Jump_001_5b64


jr_001_5a77:
    ld hl, $5fa4
    ld de, $d76d
    ld c, $a6
    call $1057
    ld h, d
    ld l, e
    xor a
    ld c, $14
    call FillMemory
    ld hl, $d791
    ld de, $0013
    ld a, [$c859]
    ld b, a
    ld a, [$d9a2]
    bit 2, b
    jr nz, jr_001_5a9d

    add $04

jr_001_5a9d:
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $d794
    ld a, [$d9ec]
    bit 1, b
    jr nz, jr_001_5ab1

    add $02

jr_001_5ab1:
    ld [hl+], a
    add hl, de
    inc a
    ld [hl], a
    ld hl, $d796
    ld a, [$d990]
    bit 0, b
    jr nz, jr_001_5ac1

    add $04

jr_001_5ac1:
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    call $2924
    ld h, $00
    ld l, a
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $a190
    add hl, de
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld de, $d7ef
    call Call_001_5c38
    ld de, $d7f3
    call Call_001_5c38
    ld de, $d7f7
    call Call_001_5c38
    ld de, $d7fb
    call Call_001_5c38
    call Call_000_1eb2
    pop hl
    ld de, $5f20
    add hl, de
    ld a, [hl]
    ld de, $d7c8
    call Call_001_5c44
    inc a
    ld de, $d7cc
    call Call_001_5c44
    inc a
    ld de, $d7d0
    call Call_001_5c44
    inc a
    ld de, $d7d4
    call Call_001_5c44
    ld a, [$c860]
    inc a
    ld de, $d7d9
    ld [de], a
    ld a, [$c861]
    dec a
    and $03
    add a
    add a
    ld h, $00
    ld l, a
    ld de, $d7c7
    add hl, de
    ld [hl], $11
    ld a, $01
    ld [$c809], a
    ret


Jump_001_5b3a:
    ld b, $35
    call Call_001_5b47
    ld a, $2c
    call Call_000_3872
    jp Jump_001_5c96


Call_001_5b47:
    ld hl, $ff8f

jr_001_5b4a:
    ld a, [hl]
    cp $3b
    jr nz, jr_001_5b4a

    ld [hl], b
    ret


    ld a, [$c809]
    or a
    jr z, jr_001_5bae

    cp $0b
    jp c, Jump_001_5c5c

    jp z, Jump_001_5c86

    cp $0c
    jp z, Jump_001_5caa

Jump_001_5b64:
    ld hl, $ff8f

jr_001_5b67:
    ld a, [hl]
    cp $18
    jr z, jr_001_5b72

    cp $38
    jr z, jr_001_5b72

    jr jr_001_5b67

jr_001_5b72:
    ld [hl], $01
    ld a, $0e
    call Call_000_3872
    ld a, [$c837]
    cp $03
    jr z, jr_001_5b9b

    cp $24
    jr z, jr_001_5b9b

    cp $02
    jr z, jr_001_5b9b

    ld a, [$c201]
    cp $1a
    jr c, jr_001_5b9b

    cp $1e
    jr nc, jr_001_5b9b

    ld a, $29
    ld [$c82e], a
    ld [$c835], a

jr_001_5b9b:
    xor a
    ld [$c838], a
    ld a, [$c70b]
    ldh [$ff90], a
    ld a, $11
    call Call_001_5c5c
    ld a, $12
    jp Jump_001_5c5c


jr_001_5bae:
    ld hl, $5f3a
    ld de, $d76d
    ld c, $6a
    call $1057
    ld h, d
    ld l, e
    xor a
    ld c, $14
    call FillMemory
    call $2924
    ld h, $00
    ld l, a
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $a190
    add hl, de
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld de, $d7b3
    call Call_001_5c38
    ld de, $d7b7
    call Call_001_5c38
    ld de, $d7bb
    call Call_001_5c38
    ld de, $d7bf
    call Call_001_5c38
    call Call_000_1eb2
    pop hl
    ld de, $5f20
    add hl, de
    ld a, [hl]
    ld de, $d78c
    call Call_001_5c44
    inc a
    ld de, $d790
    call Call_001_5c44
    inc a
    ld de, $d794
    call Call_001_5c44
    inc a
    ld de, $d798
    call Call_001_5c44
    ld a, [$c860]
    inc a
    ld de, $d79d
    ld [de], a
    ld a, [$c861]
    dec a
    and $03
    add a
    add a
    ld h, $00
    ld l, a
    ldh a, [hCurrentScene]
    cp $1e
    jr z, jr_001_5c32

    ld de, $d78b
    add hl, de
    ld [hl], $11

jr_001_5c32:
    ld a, $01
    ld [$c809], a
    ret


Call_001_5c38:
    call Call_001_5a25
    push hl
    ld hl, wTimerHundredsDigit
    call Call_001_5a56
    pop hl
    ret


Call_001_5c44:
    push af
    ld h, $00
    ld l, a
    push de
    call Call_000_2006
    pop de
    ld hl, wTimerTensDigit
    ld a, [hl+]
    or a
    jr z, jr_001_5c56

    inc a
    ld [de], a

jr_001_5c56:
    inc de
    ld a, [hl]
    inc a
    ld [de], a
    pop af
    ret


Call_001_5c5c:
Jump_001_5c5c:
    dec a
    ld d, $00
    ld e, a
    ld hl, $604a
    add hl, de
    add hl, de
    add a
    ld c, a
    add a
    add a
    add c
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld hl, $d773
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d76d
    push hl
    ld [hl], c
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    call Call_000_1685
    jr jr_001_5cb7

Jump_001_5c86:
    ld b, $15
    call Call_001_5b47
    ld a, $0f
    call Call_000_3872
    ldh a, [hCurrentScene]
    cp $1e
    jr z, jr_001_5cb7

Jump_001_5c96:
    ld a, [$c861]
    dec a
    and $03
    add $64
    push af
    call Call_000_3872
    pop af
    sub $04
    call Call_000_3872
    jr jr_001_5cb7

Jump_001_5caa:
    ldh a, [$8b]
    and $0f
    ret z

    ld a, $08
    ld [$c82e], a
    ld [$c835], a

jr_001_5cb7:
    ld hl, $c809
    inc [hl]
    ret


    ld a, $54
    ld [$c80d], a
    push de
    call Call_000_33a9
    ld de, $0628
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d84c
    ld c, $10

jr_001_5cd0:
    ld a, [hl+]
    push hl
    cp $54
    jr nz, jr_001_5ce9

    ld a, [hl+]
    cp e
    jr nz, jr_001_5ce9

    ld a, [hl+]
    cp d
    jr nz, jr_001_5ce9

    ld a, [hl]
    pop hl
    pop de

jr_001_5ce1:
    or a
    ret z

    ld a, $01
    ld [$c80d], a
    ret


jr_001_5ce9:
    pop hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_001_5cd0

    pop de
    ret


    ld a, [$dec7]
    or a
    ret z

    ld a, [$da4b]
    cp $1a
    ret nz

    ld a, [$da0f]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9000
    add hl, de
    ld de, $db09
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $0b
    ld [$da59], a
    ret

;5d19
db $00, $00, $00, $00, $00, $35, $35, $35, $35, $00, $00, $35, $35, $00, $00, $00
db $00, $1B, $1B, $00, $00, $00, $30, $30, $30, $30, $30, $37, $37, $00, $00, $37
db $37, $37, $37, $37, $37, $30, $30, $36, $36, $00, $00, $00, $70, $70, $70, $70
db $70, $70, $70, $00, $00, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70
db $70, $70, $20, $40, $20, $60, $30, $80, $50, $88, $70, $80, $80, $60, $80, $40
db $70, $20, $50, $18, $30, $20, $04, $04, $04, $05, $06, $07, $08, $09, $0C, $0E
db $10, $12, $14, $1E, $28, $3C, $8B, $5D, $BD, $5D, $EF, $5D, $95, $5D, $C7, $5D
db $F9, $5D, $02, $01, $01, $01, $02, $01, $02, $02, $02, $01, $26, $98, $31, $5E
db $2A, $98, $21, $5E, $6E, $98, $21, $5E, $EF, $98, $21, $5E, $6E, $99, $31, $5E
db $AA, $99, $21, $5E, $A6, $99, $31, $5E, $62, $99, $31, $5E, $E1, $98, $31, $5E
db $62, $98, $21, $5E, $02, $01, $03, $01, $02, $01, $01, $02, $03, $01, $26, $98
db $31, $5E, $2A, $98, $21, $5E, $6E, $98, $41, $5E, $EF, $98, $21, $5E, $6E, $99
db $31, $5E, $AA, $99, $21, $5E, $A6, $99, $21, $5E, $62, $99, $31, $5E, $E1, $98
db $41, $5E, $62, $98, $21, $5E, $02, $03, $02, $01, $01, $02, $03, $02, $01, $01
db $26, $98, $31, $5E, $2A, $98, $41, $5E, $6E, $98, $31, $5E, $EF, $98, $21, $5E
db $6E, $99, $21, $5E, $AA, $99, $31, $5E, $A6, $99, $41, $5E, $62, $99, $31, $5E
db $E1, $98, $21, $5E, $62, $98, $21, $5E, $D4, $D5, $D6, $D7, $E4, $E5, $E6, $E7
db $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $FD, $FE, $FF
db $0B, $0C, $0D, $0E, $0F, $10, $15, $16, $B0, $B1, $B2, $B3, $C0, $C1, $C2, $C3
db $D0, $D1, $D2, $D3, $E0, $E1, $E2, $E3, $A1, $96, $97, $85, $85, $86, $A0, $98
db $99, $85, $85, $86, $9A, $9B, $9C, $9D, $9E, $9F, $07, $37, $67, $88, $28, $58
db $88, $00, $00, $0E, $00, $1B, $00, $28, $00, $35, $00, $42, $00, $4F, $00, $5C
db $00, $69, $00, $76, $00, $83, $00, $90, $00, $9D, $00, $AA, $00, $B7, $00, $C4
db $00, $D1, $00, $DE, $00, $EB, $00, $F8, $00, $05, $01, $12, $01, $1F, $01, $2C
db $01, $39, $01, $FF, $FF, $00, $01, $00, $00, $00, $01, $01, $01, $00, $01, $01
db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01, $01, $01
db $01, $01, $01, $01, $01, $00, $01, $01, $00, $FF, $00, $FF, $01, $00, $00, $FF
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
db $00, $01, $00, $01, $00, $00, $00, $04, $01, $0C, $02, $18, $01, $20, $02, $2C
db $02, $38, $01, $40, $02, $4C, $03, $5C, $01, $FA, $5E, $02, $5F, $FA, $5E, $FA
db $5E, $86, $9C, $66, $9D, $90, $9C, $70, $9D, $86, $9C, $70, $9D, $00, $01, $01
db $02, $02, $02, $03, $03, $04, $04, $04, $05, $05, $05, $06, $06, $07, $07, $07
db $08, $08, $08, $08, $09, $09, $09, $01, $01, $05, $01, $05, $09, $01, $05, $01
db $05, $09, $01, $05, $09, $01, $05, $01, $05, $09, $01, $05, $09, $0D, $01, $05
db $01, $20, $9C, $01, $0A, $73, $D7, $15, $16, $16, $19, $16, $16, $16, $19, $16
db $16, $16, $19, $16, $16, $16, $19, $16, $16, $16, $17, $18, $22, $26, $18, $00
db $00, $00, $18, $00, $00, $00, $18, $00, $00, $00, $18, $00, $00, $00, $18, $18
db $00, $00, $1A, $16, $16, $16, $1B, $16, $16, $16, $1B, $16, $16, $16, $1B, $16
db $16, $16, $1C, $18, $20, $21, $18, $00, $00, $00, $18, $00, $00, $00, $18, $00
db $00, $00, $18, $00, $00, $00, $18, $1E, $16, $16, $1D, $16, $16, $16, $1D, $16
db $16, $16, $1D, $16, $16, $16, $1D, $16, $16, $16, $1F, $20, $9C, $01, $0A, $73
db $D7, $15, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16, $16
db $16, $16, $16, $16, $17, $18, $00, $00, $25, $27, $28, $29, $2A, $00, $00, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $18, $18, $00, $00, $0C, $0B, $0E, $0D
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $1A, $16, $16
db $19, $16, $16, $16, $19, $16, $16, $16, $19, $16, $16, $16, $19, $16, $16, $16
db $1C, $18, $22, $26, $18, $00, $00, $00, $18, $00, $00, $00, $18, $00, $00, $00
db $18, $00, $00, $00, $18, $18, $00, $00, $1A, $16, $16, $16, $1B, $16, $16, $16
db $1B, $16, $16, $16, $1B, $16, $16, $16, $1C, $18, $20, $21, $18, $00, $00, $00
db $18, $00, $00, $00, $18, $00, $00, $00, $18, $00, $00, $00, $18, $1E, $16, $16
db $1D, $16, $16, $16, $1D, $16, $16, $16, $1D, $16, $16, $16, $1D, $16, $16, $16
db $1F, $20, $9C, $2A, $9C, $40, $9C, $4A, $9C, $60, $9C, $6A, $9C, $80, $9C, $8A
db $9C, $A0, $9C, $AA, $9C, $C0, $9C, $CA, $9C, $E0, $9C, $EA, $9C, $00, $9D, $0A
db $9D, $20, $9C, $2A, $9C, $48, $28, $48, $38, $48, $48, $48, $58, $50, $20, $50
db $30, $50, $40, $50, $50, $50, $60, $50, $70, $58, $28, $58, $38, $58, $48, $58
db $58, $58, $68, $60, $20, $60, $30, $60, $40, $60, $50, $60, $60, $50, $06, $04
db $05, $04, $04, $24, $03, $04, $07, $14, $08, $04, $07, $04, $03, $04, $09, $14
db $0A, $04, $09, $24, $03, $04, $04, $04, $05, $04, $06, $04, $05, $04, $04, $14
db $03, $04, $04, $04, $05, $04, $06, $04, $05, $04, $04, $14, $03, $04, $04, $04
db $05, $04, $06, $04, $06, $51, $00, $00, $2D, $00, $2E, $00, $2F, $00, $00, $00
db $00, $00, $00, $00, $00, $E4, $E4, $90, $90, $40, $40, $00

;offset 60e5
TileIndexTable::
db $E9, $70, $45, $63
db $57, $63, $8D, $63, $9F, $63, $C3, $63, $0D, $71, $E7, $63, $F9, $63, $2F, $64
db $41, $64, $69, $63, $B1, $64, $C3, $64, $D5, $64, $E7, $64, $F9, $64, $0B, $65
db $1D, $65, $2F, $65, $41, $65, $53, $65, $65, $65, $77, $65, $89, $65, $C7, $67
db $DB, $67, $DF, $65, $7B, $63, $9F, $66, $B1, $66, $C3, $66, $AF, $67, $53, $64
db $65, $64, $CD, $70, $F1, $65, $4D, $6F, $D5, $63, $33, $63, $6D, $71, $8B, $67
db $9D, $67, $35, $67, $F9, $73, $B1, $63, $73, $67, $69, $66, $7B, $66, $F3, $67
db $19, $68, $2B, $68, $77, $64, $4F, $68, $07, $68, $61, $68, $8B, $68, $05, $66
db $91, $69, $45, $71, $B7, $6A, $CF, $6A, $E7, $6A, $F9, $6A, $05, $67, $1D, $67
db $B9, $65, $CD, $65, $B3, $69, $95, $6F, $13, $6C, $43, $6C, $2B, $6C, $8D, $66
db $01, $6C, $5B, $6C, $3D, $74, $8B, $6C, $A3, $6C, $BB, $6C, $D3, $6C, $0B, $64
db $4F, $74, $1D, $6F, $89, $64, $FB, $70, $1F, $71, $85, $73, $73, $6C, $BD, $71
db $4B, $6D, $D5, $66, $99, $73, $A1, $65, $C5, $68, $5D, $72, $E5, $62, $C3, $73
db $E5, $62, $E7, $73, $AB, $6D, $35, $6F, $E5, $62, $25, $74, $11, $6B, $59, $6B
db $29, $6B, $41, $6B, $71, $6B, $89, $6B, $A3, $68, $61, $73, $19, $66, $2D, $66
db $41, $66, $55, $66, $9D, $64, $0D, $70, $25, $70, $3D, $70, $55, $70, $F5, $6F
db $C5, $6E, $8D, $6A, $73, $68, $1D, $64, $7D, $6E, $1B, $63, $EB, $6C, $31, $71
db $9F, $6A, $59, $71, $03, $6D, $81, $71, $1B, $6D, $A9, $71, $33, $6D, $D1, $71
db $3B, $6A, $F9, $71, $F7, $62, $21, $72, $61, $74, $49, $72, $E7, $68, $71, $72
db $09, $69, $99, $72, $AD, $6E, $C1, $72, $47, $67, $E9, $72, $95, $6E, $11, $73
db $6F, $69, $39, $73, $ED, $66, $C5, $6F, $DD, $6F, $E5, $71, $7B, $6D, $0D, $72
db $93, $6D, $35, $72, $19, $6A, $B1, $73, $2B, $69, $D5, $73, $75, $6A, $5B, $67
db $F7, $69, $7D, $6F, $35, $6E, $3D, $68, $4D, $6E, $09, $6F, $65, $6E, $AD, $6F
db $A1, $6B, $B9, $6B, $D1, $6B, $E9, $6B, $C3, $6D, $95, $71, $DB, $6D, $0D, $74
db $63, $6D, $6D, $70, $85, $70, $9D, $70, $D5, $69, $65, $6F, $ED, $6D, $85, $72
db $ED, $6E, $AD, $72, $B5, $70, $D5, $72, $5D, $6A, $FD, $72, $05, $6E, $25, $73
db $1D, $6E, $4D, $73, $4D, $69, $73, $74, $85, $74, $97, $74, $A9, $74, $BB, $74
db $CD, $74, $DF, $74, $F1, $74, $03, $75, $15, $75, $27, $75, $39, $75, $4B, $75
db $5D, $75, $6F, $75, $81, $75, $93, $75, $A5, $75, $B7, $75, $C9, $75, $DB, $75
db $ED, $75, $FF, $75, $11, $76, $23, $76, $35, $76, $47, $76, $59, $76, $6B, $76
db $7D, $76, $8F, $76, $A1, $76, $B3, $76, $C5, $76, $D7, $76, $E9, $76, $FB, $76
db $0D, $77, $1F, $77, $31, $77, $43, $77, $55, $77, $67, $77, $79, $77, $8B, $77
db $9D, $77, $AF, $77, $C1, $77, $73, $73, $09, $63, $09, $63, $F7, $62, $01, $00
db $00, $00, $00, $40, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $F7, $62
db $01, $00, $00, $00, $00, $40, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
db $F7, $62, $01, $00, $00, $00, $6A, $56, $01, $01, $00, $00, $00, $00, $00, $00
db $00, $00, $33, $63, $00, $01, $00, $00, $10, $40, $02, $02, $04, $00, $00, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45, $63, $01, $00, $00, $00
db $06, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $82, $02, $57, $63, $01, $00
db $00, $00, $00, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $82, $02, $69, $63
db $01, $00, $00, $00, $03, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $82, $02
db $7B, $63, $01, $00, $00, $00, $12, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $82, $02, $8D, $63, $01, $00, $00, $00, $15, $7E, $01, $01, $11, $00, $00, $00
db $00, $00, $82, $02, $9F, $63, $01, $00, $00, $00, $A1, $4D, $01, $01, $00, $00
db $00, $00, $00, $00, $45, $00, $B1, $63, $03, $00, $00, $00, $B1, $4D, $01, $01
db $00, $00, $00, $00, $00, $00, $44, $00, $C3, $63, $03, $00, $00, $00, $4A, $51
db $01, $01, $00, $00, $00, $00, $00, $00, $85, $01, $D5, $63, $01, $00, $00, $00
db $0C, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $A2, $7D, $E7, $63, $01, $00
db $00, $00, $E1, $4D, $01, $01, $00, $00, $00, $00, $00, $00, $A2, $7E, $F9, $63
db $01, $00, $00, $00, $0F, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $08, $01
db $0B, $64, $01, $00, $00, $00, $7E, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $08, $00, $1D, $64, $01, $00, $00, $00, $0F, $7E, $01, $01, $00, $00, $00, $00
db $00, $00, $06, $05, $2F, $64, $01, $00, $00, $00, $10, $40, $01, $01, $00, $00
db $00, $00, $00, $00, $06, $04, $41, $64, $00, $00, $00, $01, $F1, $4D, $01, $01
db $00, $00, $00, $00, $00, $00, $43, $00, $53, $64, $00, $00, $00, $01, $01, $4E
db $01, $01, $00, $00, $00, $00, $00, $00, $43, $01, $65, $64, $01, $00, $00, $00
db $3E, $7F, $01, $01, $00, $00, $00, $00, $00, $00, $43, $00, $77, $64, $01, $00
db $00, $00, $41, $7F, $01, $01, $00, $00, $00, $00, $00, $00, $43, $01, $89, $64
db $00, $00, $00, $01, $01, $4E, $01, $01, $00, $00, $00, $00, $00, $00, $43, $02
db $9D, $64, $00, $04, $00, $00, $5C, $7F, $01, $02, $01, $00, $00, $01, $09, $7E
db $43, $00, $43, $00, $B1, $64, $00, $04, $00, $00, $9C, $4E, $01, $02, $00, $00
db $00, $00, $00, $00, $43, $00, $43, $00, $C3, $64, $01, $00, $00, $00, $57, $7E
db $01, $01, $00, $00, $00, $00, $00, $00, $00, $01, $D5, $64, $01, $00, $00, $00
db $5A, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $02, $E7, $64, $01, $00
db $00, $00, $5D, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $03, $F9, $64
db $01, $00, $00, $00, $60, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $04
db $0B, $65, $01, $00, $00, $00, $63, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $00, $05, $1D, $65, $01, $00, $00, $00, $66, $7E, $01, $01, $00, $00, $00, $00
db $00, $00, $00, $06, $2F, $65, $01, $00, $00, $00, $69, $7E, $01, $01, $00, $00
db $00, $00, $00, $00, $00, $07, $41, $65, $01, $00, $00, $00, $6C, $7E, $01, $01
db $00, $00, $00, $00, $00, $00, $00, $08, $53, $65, $01, $00, $00, $00, $6F, $7E
db $01, $01, $00, $00, $00, $00, $00, $00, $00, $09, $65, $65, $01, $00, $00, $00
db $72, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $0A, $77, $65, $01, $00
db $00, $00, $75, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $0B, $89, $65
db $01, $00, $00, $00, $78, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $0C
db $A1, $65, $0C, $00, $00, $00, $27, $7E, $02, $02, $00, $00, $00, $00, $00, $00
db $52, $00, $52, $01, $52, $02, $52, $03, $B9, $65, $0C, $00, $00, $00, $11, $4E
db $02, $02, $00, $00, $00, $00, $00, $00, $52, $0A, $52, $0B, $52, $0C, $52, $0D
db $CD, $65, $00, $00, $00, $02, $35, $4F, $01, $02, $00, $00, $00, $00, $00, $00
db $A2, $7E, $A2, $7E, $DF, $65, $00, $00, $02, $00, $18, $7E, $01, $01, $00, $00
db $00, $01, $1B, $7E, $44, $02, $F1, $65, $01, $00, $00, $00, $7B, $7E, $01, $01
db $00, $00, $00, $00, $00, $00, $00, $0D, $05, $66, $02, $00, $00, $00, $5C, $4E
db $01, $02, $00, $00, $00, $00, $00, $00, $A2, $91, $A2, $92, $19, $66, $02, $00
db $00, $00, $7C, $4E, $01, $02, $00, $00, $00, $00, $00, $00, $42, $79, $42, $7A
db $2D, $66, $02, $00, $00, $00, $B5, $4E, $01, $02, $09, $00, $00, $00, $00, $00
db $8D, $00, $8D, $01, $41, $66, $02, $00, $00, $00, $D5, $4E, $01, $02, $00, $00
db $00, $00, $00, $00, $8D, $02, $8D, $03, $55, $66, $02, $00, $00, $00, $F5, $4E
db $01, $02, $09, $01, $00, $00, $00, $00, $8D, $04, $8D, $05, $69, $66, $02, $00
db $00, $00, $15, $4F, $01, $02, $00, $00, $00, $00, $00, $00, $8D, $06, $8D, $07
db $7B, $66, $01, $00, $00, $00, $81, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $0A, $03, $8D, $66, $01, $00, $00, $00, $84, $7E, $01, $01, $00, $00, $00, $00
db $00, $00, $00, $0E, $9F, $66, $01, $00, $00, $00, $C7, $5E, $01, $01, $00, $00
db $00, $00, $00, $00, $08, $10, $B1, $66, $01, $00, $00, $00, $87, $7E, $01, $01
db $00, $00, $00, $00, $00, $00, $0A, $00, $C3, $66, $01, $00, $00, $00, $8A, $7E
db $01, $01, $00, $00, $00, $00, $00, $00, $0A, $01, $D5, $66, $01, $00, $00, $00
db $8D, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $0A, $02, $ED, $66, $00, $2E
db $00, $00, $55, $4F, $02, $02, $02, $08, $18, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $05, $67, $00, $30, $00, $00, $CD, $59, $02, $02, $02, $08
db $18, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1D, $67, $08, $02
db $00, $00, $55, $56, $02, $02, $05, $D6, $62, $00, $00, $00, $82, $5A, $82, $5B
db $82, $5C, $82, $5D, $35, $67, $08, $02, $00, $00, $D5, $56, $02, $02, $05, $D6
db $62, $00, $00, $00, $82, $5E, $82, $5F, $82, $60, $82, $61, $47, $67, $01, $00
db $00, $00, $1E, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $A2, $01, $5B, $67
db $00, $06, $00, $00, $CE, $62, $02, $01, $03, $02, $C6, $00, $00, $00, $A2, $01
db $A2, $01, $73, $67, $04, $00, $00, $00, $33, $7E, $02, $02, $00, $00, $00, $00
db $00, $00, $94, $00, $94, $01, $94, $02, $94, $03, $8B, $67, $0C, $00, $00, $00
db $4B, $7E, $02, $02, $00, $00, $00, $00, $00, $00, $15, $00, $15, $01, $15, $02
db $15, $03, $9D, $67, $06, $00, $00, $00, $9E, $7F, $01, $01, $0C, $00, $00, $00
db $00, $00, $82, $02, $AF, $67, $02, $00, $00, $00, $24, $61, $01, $01, $0D, $00
db $00, $00, $00, $00, $57, $00, $C7, $67, $08, $00, $00, $00, $4E, $7E, $02, $02
db $00, $00, $00, $00, $00, $00, $95, $80, $95, $81, $95, $82, $95, $83, $DB, $67
db $03, $00, $00, $00, $7A, $51, $02, $01, $00, $00, $00, $00, $00, $00, $52, $0A
db $52, $0B, $F3, $67, $0C, $00, $00, $00, $35, $7F, $02, $02, $00, $00, $00, $00
db $00, $00, $18, $00, $18, $01, $18, $02, $18, $03, $07, $68, $00, $00, $00, $02
db $AA, $51, $01, $02, $00, $00, $00, $00, $00, $00, $00, $01, $00, $02, $19, $68
db $01, $00, $00, $00, $CA, $51, $01, $01, $00, $00, $00, $00, $00, $00, $01, $00
db $2B, $68, $00, $00, $00, $01, $DA, $51, $01, $01, $00, $00, $00, $00, $00, $00
db $01, $03, $3D, $68, $00, $00, $00, $01, $EA, $51, $01, $01, $00, $00, $00, $00
db $00, $00, $01, $04, $4F, $68, $00, $00, $00, $01, $BE, $62, $01, $01, $00, $00
db $00, $00, $00, $00, $01, $05, $61, $68, $00, $00, $00, $01, $FA, $51, $01, $01
db $00, $00, $00, $00, $00, $00, $01, $06, $73, $68, $00, $00, $00, $01, $0A, $52
db $01, $01, $00, $00, $00, $00, $00, $00, $01, $07, $8B, $68, $00, $08, $00, $00
db $1A, $52, $02, $02, $03, $02, $AC, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $A3, $68, $00, $10, $00, $00, $A4, $52, $02, $02, $03, $02, $68, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $C5, $68, $00, $4C, $00, $00
db $BB, $45, $04, $03, $03, $02, $9E, $00, $00, $00, $B3, $7F, $B3, $80, $B3, $81
db $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87, $E7, $68, $00, $26
db $00, $00, $05, $44, $04, $03, $03, $02, $8E, $00, $00, $00, $B3, $7F, $B3, $80
db $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87, $09, $69
db $00, $5A, $00, $00, $10, $40, $04, $03, $03, $02, $C0, $00, $00, $00, $B3, $7F
db $B3, $80, $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87
db $2B, $69, $00, $4C, $00, $00, $14, $44, $04, $03, $03, $02, $C2, $00, $00, $00
db $B3, $7F, $B3, $80, $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86
db $B3, $87, $4D, $69, $00, $46, $00, $00, $6D, $50, $04, $03, $03, $02, $D6, $00
db $00, $00, $B3, $7F, $B3, $80, $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85
db $B3, $86, $B3, $87, $6F, $69, $00, $92, $00, $00, $9F, $57, $04, $03, $03, $02
db $FC, $00, $00, $00, $B3, $7F, $B3, $80, $B3, $81, $B3, $83, $B3, $84, $B3, $85
db $B3, $87, $B3, $88, $B3, $89, $91, $69, $00, $56, $00, $00, $5A, $47, $04, $03
db $03, $02, $CA, $10, $4A, $7F, $B3, $7F, $B3, $80, $B3, $81, $B3, $82, $B3, $83
db $B3, $84, $B3, $85, $B3, $86, $B3, $87, $B3, $69, $00, $62, $00, $00, $01, $49
db $04, $03, $03, $02, $6A, $00, $00, $00, $B3, $7F, $B3, $80, $B3, $81, $B3, $82
db $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87, $D5, $69, $00, $26, $00, $00
db $05, $44, $04, $03, $03, $02, $74, $00, $00, $00, $B3, $7F, $B3, $80, $B3, $81
db $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87, $F7, $69, $00, $92
db $00, $00, $9F, $57, $04, $03, $03, $02, $EE, $00, $00, $00, $B3, $7F, $B3, $80
db $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87, $19, $6A
db $00, $4E, $00, $00, $DF, $49, $04, $03, $03, $02, $DA, $00, $00, $00, $B3, $7F
db $B3, $80, $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86, $B3, $87
db $3B, $6A, $00, $4C, $00, $00, $14, $4D, $04, $03, $03, $02, $D4, $00, $00, $00
db $B3, $7F, $B3, $80, $B3, $81, $B3, $82, $B3, $83, $B3, $84, $B3, $85, $B3, $86
db $B3, $87, $5D, $6A, $00, $76, $00, $00, $41, $53, $03, $03, $03, $02, $BA, $0E
db $08, $7F, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $75, $6A, $00, $24, $00, $00, $06, $61, $02, $02, $03, $02
db $F6, $00, $00, $00, $B3, $7F, $B3, $80, $B3, $81, $B3, $82, $8D, $6A, $00, $2E
db $00, $00, $C3, $57, $02, $02, $03, $02, $D8, $00, $00, $00, $B3, $7F, $B3, $80
db $B3, $81, $B3, $82, $9F, $6A, $01, $00, $00, $00, $90, $7E, $01, $01, $00, $00
db $00, $00, $00, $00, $00, $10, $B7, $6A, $00, $1A, $00, $00, $E7, $5B, $02, $02
db $03, $02, $B2, $00, $00, $00, $63, $00, $63, $00, $63, $00, $63, $00, $CF, $6A
db $00, $08, $00, $00, $C5, $64, $02, $02, $03, $02, $90, $00, $00, $00, $22, $00
db $22, $00, $22, $00, $22, $00, $E7, $6A, $00, $0C, $00, $00, $A5, $7E, $02, $02
db $03, $03, $A0, $00, $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $F9, $6A
db $00, $06, $00, $00, $5A, $53, $01, $01, $03, $01, $6E, $00, $00, $00, $22, $00
db $11, $6B, $00, $08, $00, $00, $AF, $53, $02, $02, $03, $01, $6F, $00, $00, $00
db $22, $00, $22, $00, $22, $00, $22, $00, $29, $6B, $08, $02, $00, $00, $12, $54
db $02, $02, $08, $36, $62, $06, $F6, $62, $82, $1F, $82, $20, $82, $21, $82, $22
db $41, $6B, $08, $02, $00, $00, $7D, $54, $02, $02, $08, $56, $62, $0A, $4F, $63
db $82, $1F, $82, $20, $82, $21, $82, $22, $59, $6B, $08, $02, $00, $00, $E5, $54
db $02, $02, $08, $76, $62, $0C, $AE, $63, $82, $1F, $82, $20, $82, $21, $82, $22
db $71, $6B, $08, $02, $00, $00, $31, $55, $02, $02, $08, $96, $62, $06, $F6, $62
db $82, $2B, $82, $2C, $82, $2D, $82, $2E, $89, $6B, $08, $02, $00, $00, $9D, $55
db $02, $02, $08, $B6, $62, $0A, $4F, $63, $82, $2B, $82, $2C, $82, $2D, $82, $2E
db $A1, $6B, $08, $02, $00, $00, $09, $56, $02, $02, $08, $76, $62, $0C, $AE, $63
db $82, $2B, $82, $2C, $82, $2D, $82, $2E, $B9, $6B, $08, $02, $00, $00, $47, $65
db $02, $02, $08, $B8, $65, $06, $66, $66, $82, $52, $82, $53, $82, $54, $82, $55
db $D1, $6B, $08, $02, $00, $00, $D8, $65, $02, $02, $08, $46, $66, $06, $66, $66
db $82, $56, $82, $57, $82, $58, $82, $59, $E9, $6B, $18, $04, $00, $00, $BF, $66
db $02, $02, $08, $64, $68, $04, $87, $68, $82, $07, $82, $08, $82, $09, $82, $0A
db $01, $6C, $18, $04, $00, $00, $93, $67, $02, $02, $08, $64, $68, $04, $87, $68
db $82, $13, $82, $14, $82, $15, $82, $16, $13, $6C, $01, $00, $00, $00, $56, $57
db $01, $01, $0E, $00, $00, $00, $00, $00, $0A, $04, $2B, $6C, $00, $04, $00, $00
db $66, $57, $02, $02, $03, $01, $76, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $43, $6C, $00, $18, $00, $00, $D5, $57, $02, $02, $03, $02, $78, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $5B, $6C, $00, $04, $00, $00
db $94, $57, $02, $02, $03, $01, $77, $00, $00, $00, $A2, $00, $A2, $00, $A2, $00
db $A2, $00, $73, $6C, $00, $00, $0A, $00, $2A, $7E, $02, $02, $13, $00, $00, $00
db $00, $00, $06, $09, $06, $0A, $06, $0B, $06, $0C, $8B, $6C, $00, $14, $00, $00
db $EC, $58, $02, $02, $03, $02, $88, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $A3, $6C, $00, $08, $00, $00, $D7, $59, $02, $02, $03, $02, $7A, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $BB, $6C, $00, $14, $00, $00
db $58, $5A, $02, $02, $03, $02, $82, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $D3, $6C, $00, $10, $00, $00, $30, $5B, $02, $02, $03, $02, $92, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $EB, $6C, $00, $2A, $00, $00
db $F1, $5B, $02, $02, $03, $02, $96, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $03, $6D, $00, $20, $00, $00, $A8, $7E, $02, $02, $03, $02, $B0, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1B, $6D, $00, $04, $00, $00
db $48, $7E, $02, $02, $03, $02, $B4, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $33, $6D, $00, $08, $00, $00, $4D, $7F, $02, $02, $03, $02, $B6, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $4B, $6D, $00, $1C, $00, $00
db $DD, $5C, $02, $02, $03, $02, $B8, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $63, $6D, $00, $1A, $00, $00, $4B, $5D, $02, $02, $03, $04, $60, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $7B, $6D, $00, $08, $00, $00
db $A2, $69, $02, $02, $03, $02, $EA, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $93, $6D, $00, $20, $00, $00, $C0, $5D, $02, $02, $03, $02, $D0, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $AB, $6D, $00, $10, $00, $00
db $97, $5F, $02, $02, $03, $02, $D2, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $C3, $6D, $00, $10, $00, $00, $15, $5E, $02, $02, $03, $02, $94, $00
db $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $DB, $6D, $00, $10, $00, $00
db $A6, $68, $02, $02, $03, $02, $E6, $00, $00, $00, $22, $00, $22, $00, $22, $00
db $22, $00, $ED, $6D, $00, $02, $00, $00, $82, $69, $01, $01, $03, $02, $E8, $00
db $00, $00, $00, $00, $05, $6E, $00, $0E, $00, $00, $0A, $60, $02, $02, $03, $02
db $F0, $00, $00, $00, $22, $00, $22, $00, $22, $00, $22, $00, $1D, $6E, $00, $26
db $00, $00, $D4, $62, $02, $02, $03, $02, $F8, $00, $00, $00, $22, $00, $22, $00
db $22, $00, $22, $00, $35, $6E, $00, $2E, $00, $00, $00, $5E, $02, $02, $03, $02
db $FA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4D, $6E, $00, $1E
db $00, $00, $63, $60, $03, $02, $03, $02, $DC, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $65, $6E, $00, $1E, $00, $00, $63, $60, $02, $02, $03, $02
db $DE, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $7D, $6E, $00, $08
db $00, $00, $7A, $64, $02, $02, $03, $02, $E0, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $95, $6E, $00, $1C, $00, $00, $56, $7F, $02, $02, $03, $01
db $AE, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AD, $6E, $00, $20
db $00, $00, $45, $7E, $02, $02, $03, $02, $C8, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $C5, $6E, $00, $1C, $00, $00, $2B, $61, $02, $02, $03, $02
db $C4, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ED, $6E, $00, $50
db $00, $00, $20, $40, $04, $03, $03, $02, $AA, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $00, $00, $00, $09, $6F, $00, $18, $00, $00, $7A, $56, $03, $02, $03, $02
db $F2, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $1D, $6F, $04, $00, $00, $00, $36, $7E, $02, $01, $00, $00, $00, $02, $39, $7E
db $0B, $20, $0B, $21, $35, $6F, $08, $00, $00, $00, $3C, $7E, $02, $02, $00, $00
db $00, $04, $3F, $7E, $0B, $22, $0B, $23, $0B, $24, $0B, $25, $4D, $6F, $08, $00
db $00, $00, $38, $7F, $02, $02, $00, $00, $00, $04, $3B, $7F, $0B, $4A, $0B, $4B
db $0B, $4C, $0B, $4D, $65, $6F, $08, $00, $00, $00, $54, $64, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $32, $0B, $33, $0B, $34, $0B, $35, $7D, $6F, $08, $00
db $00, $00, $D3, $6B, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $36, $0B, $37
db $0B, $38, $0B, $39, $95, $6F, $04, $00, $00, $00, $7B, $62, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $3E, $0B, $3F, $0B, $40, $0B, $41, $AD, $6F, $04, $00
db $00, $00, $11, $64, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $42, $0B, $43
db $0B, $44, $0B, $45, $C5, $6F, $04, $00, $00, $00, $04, $65, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $46, $0B, $47, $0B, $48, $0B, $49, $DD, $6F, $00, $10
db $00, $00, $44, $7F, $02, $02, $07, $01, $CD, $0C, $47, $7F, $0B, $32, $0B, $32
db $0B, $32, $0B, $32, $F5, $6F, $00, $00, $0C, $00, $51, $7E, $02, $02, $0A, $02
db $CE, $04, $54, $7E, $47, $00, $47, $01, $47, $02, $47, $03, $0D, $70, $00, $00
db $0A, $00, $2D, $7E, $02, $02, $00, $00, $00, $06, $30, $7E, $06, $09, $06, $0A
db $06, $0B, $06, $0C, $25, $70, $00, $00, $0E, $00, $D7, $5E, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $10, $0B, $11, $0B, $12, $0B, $13, $3D, $70, $00, $00
db $0E, $00, $6C, $5F, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $14, $0B, $15
db $0B, $16, $0B, $17, $55, $70, $00, $00, $1C, $00, $E1, $5F, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $18, $0B, $19, $0B, $1A, $0B, $1B, $6D, $70, $08, $00
db $00, $00, $B4, $60, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $1C, $0B, $1D
db $0B, $1E, $0B, $1F, $85, $70, $00, $00, $0E, $00, $23, $6A, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $26, $0B, $27, $0B, $28, $0B, $29, $9D, $70, $00, $00
db $0E, $00, $AF, $6A, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $2A, $0B, $2B
db $0B, $2C, $0B, $2D, $B5, $70, $00, $00, $14, $00, $34, $6B, $02, $02, $00, $00
db $00, $00, $00, $00, $0B, $2E, $0B, $2F, $0B, $30, $0B, $31, $CD, $70, $00, $00
db $08, $00, $9D, $60, $02, $02, $00, $00, $00, $00, $00, $00, $0B, $3A, $0B, $3B
db $0B, $3C, $0B, $3D, $E9, $70, $0C, $00, $00, $00, $A1, $7F, $03, $02, $00, $00
db $00, $00, $00, $00, $50, $00, $50, $01, $50, $02, $50, $03, $50, $04, $50, $05
db $FB, $70, $01, $00, $00, $00, $24, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $42, $3C, $0D, $71, $01, $00, $00, $00, $21, $7E, $01, $01, $00, $00, $00, $00
db $00, $00, $42, $3C, $1F, $71, $01, $00, $00, $00, $21, $7E, $01, $01, $00, $00
db $00, $00, $00, $00, $00, $01, $31, $71, $01, $00, $00, $00, $2E, $65, $01, $01
db $00, $00, $00, $00, $00, $00, $82, $37, $45, $71, $02, $00, $00, $00, $5F, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $42, $3D, $42, $3E, $59, $71, $02, $00
db $00, $00, $62, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $42, $3F, $42, $40
db $6D, $71, $02, $00, $00, $00, $65, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $42, $41, $42, $42, $81, $71, $02, $00, $00, $00, $68, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $42, $43, $42, $44, $95, $71, $02, $00, $00, $00, $6B, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $42, $45, $42, $46, $A9, $71, $02, $00
db $00, $00, $6E, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $42, $47, $42, $48
db $BD, $71, $02, $00, $00, $00, $71, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $42, $49, $42, $4A, $D1, $71, $02, $00, $00, $00, $89, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $42, $3D, $08, $06, $E5, $71, $02, $00, $00, $00, $8C, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $42, $3F, $08, $03, $F9, $71, $02, $00
db $00, $00, $8F, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $42, $41, $08, $04
db $0D, $72, $02, $00, $00, $00, $92, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $42, $43, $08, $05, $21, $72, $02, $00, $00, $00, $95, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $42, $45, $08, $07, $35, $72, $02, $00, $00, $00, $98, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $42, $47, $08, $08, $49, $72, $02, $00
db $00, $00, $9B, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $42, $49, $08, $09
db $5D, $72, $02, $00, $00, $00, $74, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $08, $11, $42, $3E, $71, $72, $02, $00, $00, $00, $77, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $08, $12, $42, $40, $85, $72, $02, $00, $00, $00, $7A, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $08, $13, $42, $42, $99, $72, $02, $00
db $00, $00, $7D, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $08, $14, $42, $44
db $AD, $72, $02, $00, $00, $00, $80, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $08, $15, $42, $46, $C1, $72, $02, $00, $00, $00, $83, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $08, $16, $42, $48, $D5, $72, $02, $00, $00, $00, $86, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $08, $17, $42, $4A, $E9, $72, $02, $00
db $00, $00, $89, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $49, $00, $08, $0B
db $FD, $72, $02, $00, $00, $00, $8C, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $49, $01, $08, $0C, $11, $73, $02, $00, $00, $00, $8F, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $49, $02, $08, $0F, $25, $73, $02, $00, $00, $00, $92, $7F
db $02, $01, $00, $00, $00, $00, $00, $00, $49, $03, $08, $02, $39, $73, $02, $00
db $00, $00, $95, $7F, $02, $01, $00, $00, $00, $00, $00, $00, $49, $04, $08, $0A
db $4D, $73, $02, $00, $00, $00, $98, $7F, $02, $01, $00, $00, $00, $00, $00, $00
db $49, $05, $08, $0D, $61, $73, $02, $00, $00, $00, $9B, $7F, $02, $01, $00, $00
db $00, $00, $00, $00, $49, $06, $08, $0E, $73, $73, $01, $00, $00, $00, $21, $7E
db $01, $01, $00, $00, $00, $00, $00, $00, $42, $75, $85, $73, $01, $00, $00, $00
db $21, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $42, $93, $99, $73, $00, $02
db $00, $00, $44, $61, $02, $01, $07, $02, $87, $00, $00, $00, $0B, $00, $0B, $00
db $B1, $73, $00, $10, $00, $00, $64, $61, $02, $02, $03, $01, $8C, $00, $00, $00
db $00, $00, $00, $00, $81, $00, $81, $00, $C3, $73, $01, $00, $00, $00, $93, $7E
db $01, $01, $00, $00, $00, $00, $00, $00, $0C, $00, $D5, $73, $01, $00, $00, $00
db $96, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $0C, $01, $E7, $73, $01, $00
db $00, $00, $99, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $0C, $02, $F9, $73
db $01, $00, $00, $00, $9C, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $0C, $03
db $0D, $74, $08, $00, $00, $00, $0B, $62, $02, $01, $10, $00, $00, $00, $00, $00
db $08, $10, $08, $01, $25, $74, $04, $00, $00, $00, $50, $7F, $02, $02, $0F, $00
db $00, $00, $00, $00, $16, $00, $16, $01, $16, $02, $16, $03, $3D, $74, $04, $00
db $00, $00, $53, $7F, $02, $02, $0F, $00, $00, $00, $00, $00, $16, $04, $16, $05
db $16, $06, $16, $07, $4F, $74, $01, $00, $00, $00, $21, $7E, $01, $01, $12, $00
db $00, $00, $00, $00, $42, $38, $61, $74, $01, $00, $00, $00, $06, $7E, $01, $01
db $12, $00, $00, $00, $00, $00, $82, $39, $73, $74, $00, $06, $00, $00, $59, $7F
db $01, $01, $03, $02, $BE, $00, $00, $00, $00, $00, $85, $74, $01, $00, $00, $00
db $9F, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $21, $97, $74, $01, $00
db $00, $00, $A2, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $22, $A9, $74
db $01, $00, $00, $00, $42, $7E, $01, $01, $00, $00, $00, $00, $00, $00, $00, $23
db $BB, $74, $01, $00, $00, $00, $AB, $7E, $01, $01, $00, $00, $00, $00, $00, $00
db $00, $24, $CD, $74, $01, $00, $00, $00, $AE, $7E, $01, $01, $00, $00, $00, $00
db $00, $00, $00, $25, $DF, $74, $01, $00, $00, $00, $B1, $7E, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $26, $F1, $74, $01, $00, $00, $00, $B4, $7E, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $27, $03, $75, $01, $00, $00, $00, $B7, $7E
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $28, $15, $75, $01, $00, $00, $00
db $BA, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $29, $27, $75, $01, $00
db $00, $00, $BD, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $2A, $39, $75
db $01, $00, $00, $00, $C0, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $2B
db $4B, $75, $01, $00, $00, $00, $C3, $7E, $01, $01, $0B, $00, $00, $00, $00, $00
db $00, $2C, $5D, $75, $01, $00, $00, $00, $C6, $7E, $01, $01, $0B, $00, $00, $00
db $00, $00, $00, $2D, $6F, $75, $01, $00, $00, $00, $C9, $7E, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $2E, $81, $75, $01, $00, $00, $00, $CC, $7E, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $2F, $93, $75, $01, $00, $00, $00, $CF, $7E
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $30, $A5, $75, $01, $00, $00, $00
db $D2, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $31, $B7, $75, $01, $00
db $00, $00, $D5, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $32, $C9, $75
db $01, $00, $00, $00, $D8, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $33
db $DB, $75, $01, $00, $00, $00, $DB, $7E, $01, $01, $0B, $00, $00, $00, $00, $00
db $00, $34, $ED, $75, $01, $00, $00, $00, $DE, $7E, $01, $01, $0B, $00, $00, $00
db $00, $00, $00, $35, $FF, $75, $01, $00, $00, $00, $E1, $7E, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $36, $11, $76, $01, $00, $00, $00, $E4, $7E, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $37, $23, $76, $01, $00, $00, $00, $E7, $7E
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $38, $35, $76, $01, $00, $00, $00
db $EA, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $39, $47, $76, $01, $00
db $00, $00, $ED, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $3A, $59, $76
db $01, $00, $00, $00, $F0, $7E, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $3B
db $6B, $76, $01, $00, $00, $00, $F3, $7E, $01, $01, $0B, $00, $00, $00, $00, $00
db $00, $3C, $7D, $76, $01, $00, $00, $00, $F6, $7E, $01, $01, $0B, $00, $00, $00
db $00, $00, $00, $3D, $8F, $76, $01, $00, $00, $00, $F9, $7E, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $3E, $A1, $76, $01, $00, $00, $00, $FC, $7E, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $3F, $B3, $76, $01, $00, $00, $00, $FF, $7E
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $40, $C5, $76, $01, $00, $00, $00
db $02, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $41, $D7, $76, $01, $00
db $00, $00, $05, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $42, $E9, $76
db $01, $00, $00, $00, $0B, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $43
db $FB, $76, $01, $00, $00, $00, $0E, $7F, $01, $01, $0B, $00, $00, $00, $00, $00
db $00, $44, $0D, $77, $01, $00, $00, $00, $11, $7F, $01, $01, $0B, $00, $00, $00
db $00, $00, $00, $45, $1F, $77, $01, $00, $00, $00, $14, $7F, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $46, $31, $77, $01, $00, $00, $00, $17, $7F, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $47, $43, $77, $01, $00, $00, $00, $1A, $7F
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $48, $55, $77, $01, $00, $00, $00
db $1D, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $49, $67, $77, $01, $00
db $00, $00, $20, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $4A, $79, $77
db $01, $00, $00, $00, $23, $7F, $01, $01, $0B, $00, $00, $00, $00, $00, $00, $4B
db $8B, $77, $01, $00, $00, $00, $26, $7F, $01, $01, $0B, $00, $00, $00, $00, $00
db $00, $4C, $9D, $77, $01, $00, $00, $00, $29, $7F, $01, $01, $0B, $00, $00, $00
db $00, $00, $00, $4D, $AF, $77, $01, $00, $00, $00, $2C, $7F, $01, $01, $0B, $00
db $00, $00, $00, $00, $00, $4E, $C1, $77, $01, $00, $00, $00, $2F, $7F, $01, $01
db $0B, $00, $00, $00, $00, $00, $00, $4F, $D3, $77, $01, $00, $00, $00, $32, $7F
db $01, $01, $0B, $00, $00, $00, $00, $00, $00, $50, $05, $07, $04, $06, $05, $04
db $05, $06, $06, $00, $07, $07, $00, $02, $00, $02, $00, $00, $00, $02, $02, $03
db $02, $02, $06, $FC, $02, $F8, $06, $00, $06, $F8, $06, $FC, $06, $00, $06, $FC
db $06, $F8, $06, $F8, $FE, $F8, $02, $F8, $02, $F8, $00, $00, $55, $00, $00, $00
db $46, $47, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $68
db $00, $6A, $00, $90, $A0, $6E, $6F, $5D, $5E, $5F, $60, $74, $62, $76, $77, $78
db $00, $00, $00, $00, $7A, $82, $92, $96, $00, $00, $00, $00, $00, $00, $87, $88
db $00, $60, $00, $8C, $00, $8E, $00, $00, $00, $00, $00, $94, $5E, $00, $00, $00
db $00, $00, $00, $00, $00, $9E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
db $00, $AA, $00, $AC, $00, $AE, $00, $B0, $00, $B2, $00, $B4, $00, $B6, $00, $B8
db $00, $BA, $00, $00, $00, $BE, $00, $C0, $00, $C2, $00, $C4, $00, $C6, $00, $C8
db $00, $CA, $00, $00, $CD, $00, $00, $D0, $00, $D2, $00, $D4, $00, $D6, $00, $D8
db $00, $DA, $00, $DC, $00, $DE, $00, $E0, $00, $00, $00, $00, $00, $E6, $00, $E8
db $00, $EA, $00, $00, $00, $EE, $00, $F0, $00, $F2, $00, $00, $00, $F6, $00, $F8
db $00, $FA, $00, $FC, $00, $00, $55, $00, $27, $01, $02, $0B, $1C, $03, $04, $2D
db $43, $05, $26, $06, $07, $56, $08, $2F, $30, $4A, $1D, $1E, $1F, $34, $09, $0A
db $21, $22, $A5, $61, $A7, $63, $54, $1B, $0C, $0D, $0E, $0F, $10, $11, $12, $13
db $14, $15, $16, $17, $2C, $A9, $49, $24, $39, $70, $71, $72, $73, $7B, $31, $32
db $33, $AD, $35, $36, $37, $42, $18, $5D, $2E, $1A, $20, $19, $29, $2A, $6E, $5E
db $90, $92, $44, $CC, $9A, $3A, $BE, $AA, $A4, $A6, $8A, $7A, $AB, $8C, $7C, $38
db $82, $3C, $4D, $4E, $4F, $80, $86, $88, $5A, $A0, $A2, $64, $B6, $C0, $C8, $BA
db $AC, $AE, $B0, $48, $58, $98, $94, $50, $9D, $2B, $96, $47, $84, $B8, $B4, $B5
db $68, $6A, $6B, $69, $6C, $6D, $B3, $B2, $40, $41, $B9, $67, $4C, $52, $BB, $BC
db $BD, $77, $C4, $75, $78, $76, $AF, $53, $65, $23, $6F, $FD, $45, $B1, $C6, $A8
db $CA, $9E, $79, $4B, $51, $7D, $5C, $C2, $57, $81, $3B, $83, $28, $85, $B7, $87
db $59, $89, $9F, $8B, $A1, $8D, $A3, $8F, $5F, $91, $C1, $93, $C3, $95, $C5, $97
db $C7, $99, $C9, $9B, $CB, $8E, $CD, $CE, $CF, $D0, $D1, $D2, $D3, $D4, $D5, $D6
db $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF, $E0, $E1, $E2, $E3, $E4, $E5, $E6
db $E7, $E8, $E9, $EA, $EB, $EC, $ED, $EE, $EF, $F0, $F1, $F2, $F3, $F4, $F5, $F6
db $F7, $F8, $F9, $FA, $FB, $FC, $7F, $60, $66, $62, $FE, $FF, $25, $BF, $5B, $9C
db $74, $3D, $3E, $3F, $46, $7E, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF, $FF, $FF, $FF