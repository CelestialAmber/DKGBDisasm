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
    ld hl, $60e5
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
    call $3375
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
    ld hl, $60e5
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
    call $1685

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
    call $1685
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
    jp $1685


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
    ld hl, $c81e
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
    ld a, [$da43]
    ld h, $00
    ld l, a
    call Call_000_2006
    ld bc, $9a10
    ld hl, $c81e
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
    jp $1685


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
    jp $1685


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
    jp $1685


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
    call $1685
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
    call $1685
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
    ld [$da43], a
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
    ld a, [$da43]
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
    ld [$da43], a
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
    call $162c
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
    ld hl, $da43
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2006
    ld a, [$c81f]
    ld c, a
    push bc
    ld hl, $da41
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2006
    pop bc
    ld hl, $c81f
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
    jp $1685


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
    call $1635
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
    call $1635
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
    call $1635
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
    ld de, $c81e
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
    call $162c
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
    ld hl, $c81d
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
    ld hl, $c81d
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
    ld hl, $c81e
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
    call $1685
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
    call $33a9
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


    nop
    nop
    nop
    nop
    nop
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    nop
    nop
    dec [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    dec de
    dec de
    nop
    nop
    nop
    jr nc, jr_001_5d61

    jr nc, jr_001_5d63

    jr nc, jr_001_5d6c

    scf
    nop
    nop
    scf
    scf
    scf
    scf
    scf
    scf
    jr nc, jr_001_5d70

    ld [hl], $36
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nz, @+$42

    jr nz, @+$62

    jr nc, jr_001_5ce1

jr_001_5d61:
    ld d, b
    adc b

jr_001_5d63:
    ld [hl], b
    add b
    add b
    ld h, b
    add b
    ld b, b
    ld [hl], b
    jr nz, @+$52

jr_001_5d6c:
    jr jr_001_5d9e

    jr nz, @+$06

jr_001_5d70:
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0c09], sp
    ld c, $10
    ld [de], a
    inc d
    ld e, $28
    inc a
    adc e
    ld e, l
    cp l
    ld e, l
    rst $28
    ld e, l
    sub l
    ld e, l
    rst $00
    ld e, l
    ld sp, hl
    ld e, l
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $9826
    ld sp, $2a5e
    sbc b
    ld hl, $6e5e

jr_001_5d9e:
    sbc b
    ld hl, $ef5e
    sbc b
    ld hl, $6e5e
    sbc c
    ld sp, $aa5e
    sbc c
    ld hl, $a65e
    sbc c
    ld sp, $625e
    sbc c
    ld sp, $e15e
    sbc b
    ld sp, $625e
    sbc b
    ld hl, $025e
    ld bc, $0103
    ld [bc], a
    ld bc, $0201
    inc bc
    ld bc, $9826
    ld sp, $2a5e
    sbc b
    ld hl, $6e5e
    sbc b
    ld b, c
    ld e, [hl]
    rst $28
    sbc b
    ld hl, $6e5e
    sbc c
    ld sp, $aa5e
    sbc c
    ld hl, $a65e
    sbc c
    ld hl, $625e
    sbc c
    ld sp, $e15e
    sbc b
    ld b, c
    ld e, [hl]
    ld h, d
    sbc b
    ld hl, $025e
    inc bc
    ld [bc], a
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $2601
    sbc b
    ld sp, $2a5e
    sbc b
    ld b, c
    ld e, [hl]
    ld l, [hl]
    sbc b
    ld sp, $ef5e
    sbc b
    ld hl, $6e5e
    sbc c
    ld hl, $aa5e
    sbc c
    ld sp, $a65e
    sbc c
    ld b, c
    ld e, [hl]
    ld h, d
    sbc c
    ld sp, $e15e
    sbc b
    ld hl, $625e
    sbc b
    ld hl, $d45e
    push de
    sub $d7
    db $e4
    push hl
    and $e7
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec d
    ld d, $b0
    or c
    or d
    or e
    ret nz

    pop bc
    jp nz, $d0c3

    pop de
    jp nc, $e0d3

    pop hl
    ld [c], a
    db $e3
    and c
    sub [hl]
    sub a
    add l
    add l
    add [hl]
    and b
    sbc b
    sbc c
    add l
    add l
    add [hl]
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rlca
    scf
    ld h, a
    adc b
    jr z, @+$5a

    adc b
    nop
    nop
    ld c, $00
    dec de
    nop
    jr z, jr_001_5e72

jr_001_5e72:
    dec [hl]
    nop
    ld b, d
    nop
    ld c, a
    nop
    ld e, h
    nop
    ld l, c
    nop
    halt
    nop
    add e
    nop
    sub b
    nop
    sbc l
    nop
    xor d
    nop
    or a
    nop
    call nz, $d100
    nop
    sbc $00
    db $eb
    nop
    ld hl, sp+$00
    dec b
    ld bc, $0112
    rra
    ld bc, $012c
    add hl, sp
    ld bc, $ffff
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    rst $38
    nop
    rst $38
    ld bc, $0000
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5ed8:
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    inc b
    ld bc, $020c
    jr @+$03

    jr nz, jr_001_5eea

    inc l
    ld [bc], a

jr_001_5eea:
    jr c, jr_001_5eed

    ld b, b

jr_001_5eed:
    ld [bc], a
    ld c, h
    inc bc
    ld e, h
    ld bc, $5efa
    ld [bc], a
    ld e, a
    ld a, [$fa5e]
    ld e, [hl]
    add [hl]
    sbc h
    ld h, [hl]
    sbc l
    sub b
    sbc h
    ld [hl], b
    sbc l
    add [hl]
    sbc h
    ld [hl], b
    sbc l
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    ld bc, $0501
    ld bc, $0905
    ld bc, $0105
    dec b
    add hl, bc
    ld bc, $0905
    ld bc, $0105
    dec b
    add hl, bc
    ld bc, $0905
    dec c
    ld bc, $0105
    jr nz, jr_001_5ed8

    ld bc, $730a
    rst $10
    dec d
    ld d, $16
    add hl, de
    ld d, $16
    ld d, $19
    ld d, $16
    ld d, $19
    ld d, $16
    ld d, $19
    ld d, $16
    ld d, $17
    jr jr_001_5f78

    ld h, $18
    nop
    nop
    nop
    jr jr_001_5f5d

jr_001_5f5d:
    nop
    nop
    jr jr_001_5f61

jr_001_5f61:
    nop
    nop
    jr jr_001_5f65

jr_001_5f65:
    nop
    nop
    jr jr_001_5f81

    nop
    nop
    ld a, [de]
    ld d, $16
    ld d, $1b
    ld d, $16
    ld d, $1b
    ld d, $16
    ld d, $1b

jr_001_5f78:
    ld d, $16
    ld d, $1c
    jr jr_001_5f9e

    ld hl, $0018

jr_001_5f81:
    nop
    nop
    jr jr_001_5f85

jr_001_5f85:
    nop
    nop
    jr jr_001_5f89

jr_001_5f89:
    nop
    nop
    jr jr_001_5f8d

jr_001_5f8d:
    nop
    nop
    jr jr_001_5faf

    ld d, $16
    dec e
    ld d, $16
    ld d, $1d
    ld d, $16
    ld d, $1d
    ld d, $16

jr_001_5f9e:
    ld d, $1d
    ld d, $16
    ld d, $1f
    jr nz, @-$62

    ld bc, $730a
    rst $10
    dec d
    ld d, $16
    ld d, $16

jr_001_5faf:
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    rla
    jr jr_001_5fc0

jr_001_5fc0:
    nop
    dec h
    daa
    jr z, jr_001_5fee

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    nop
    nop
    inc c
    dec bc
    ld c, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_6001

    ld d, $16
    add hl, de
    ld d, $16
    ld d, $19

jr_001_5fee:
    ld d, $16
    ld d, $19
    ld d, $16
    ld d, $19
    ld d, $16
    ld d, $1c
    jr jr_001_601e

    ld h, $18
    nop
    nop
    nop

jr_001_6001:
    jr jr_001_6003

jr_001_6003:
    nop
    nop
    jr jr_001_6007

jr_001_6007:
    nop

jr_001_6008:
    nop
    jr jr_001_600b

jr_001_600b:
    nop
    nop
    jr jr_001_6027

    nop
    nop
    ld a, [de]
    ld d, $16
    ld d, $1b
    ld d, $16
    ld d, $1b
    ld d, $16
    ld d, $1b

jr_001_601e:
    ld d, $16
    ld d, $1c
    jr jr_001_6044

    ld hl, $0018

jr_001_6027:
    nop
    nop
    jr jr_001_602b

jr_001_602b:
    nop
    nop
    jr jr_001_602f

jr_001_602f:
    nop
    nop
    jr jr_001_6033

jr_001_6033:
    nop
    nop
    jr jr_001_6055

    ld d, $16
    dec e
    ld d, $16
    ld d, $1d
    ld d, $16
    ld d, $1d
    ld d, $16

jr_001_6044:
    ld d, $1d
    ld d, $16
    ld d, $1f
    jr nz, @-$62

    ld a, [hl+]
    sbc h
    ld b, b
    sbc h
    ld c, d
    sbc h
    ld h, b
    sbc h
    ld l, d

jr_001_6055:
    sbc h
    add b
    sbc h
    adc d
    sbc h
    and b
    sbc h
    xor d
    sbc h
    ret nz

    sbc h
    jp z, $e09c

    sbc h
    ld [$009c], a
    sbc l
    ld a, [bc]
    sbc l
    jr nz, jr_001_6008

    ld a, [hl+]
    sbc h
    ld c, b
    jr z, jr_001_60b9

    jr c, jr_001_60bb

    ld c, b
    ld c, b
    ld e, b
    ld d, b
    jr nz, jr_001_60c9

    jr nc, jr_001_60cb

    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b
    ld e, b
    jr z, jr_001_60dd

    jr c, jr_001_60df

    ld c, b
    ld e, b
    ld e, b
    ld e, b
    ld l, b
    ld h, b
    jr nz, jr_001_60ef

    jr nc, @+$62

    ld b, b
    ld h, b
    ld d, b
    ld h, b
    ld h, b
    ld d, b
    ld b, $04
    dec b
    inc b
    inc b
    inc h
    inc bc
    inc b
    rlca
    inc d
    ld [$0704], sp
    inc b
    inc bc
    inc b
    add hl, bc
    inc d
    ld a, [bc]
    inc b
    add hl, bc
    inc h
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    inc b
    inc d

jr_001_60b9:
    inc bc
    inc b

jr_001_60bb:
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    inc b
    inc d
    inc bc
    inc b
    inc b
    inc b

jr_001_60c9:
    dec b
    inc b

jr_001_60cb:
    ld b, $04
    ld b, $51
    nop
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_60dd:
    nop
    db $e4

jr_001_60df:
    db $e4
    sub b
    sub b
    ld b, b
    ld b, b
    nop
    jp hl


    ld [hl], b
    ld b, l
    ld h, e
    ld d, a
    ld h, e
    adc l
    ld h, e
    sbc a
    ld h, e

jr_001_60ef:
    jp $0d63


    ld [hl], c
    rst $20
    ld h, e
    ld sp, hl
    ld h, e
    cpl
    ld h, h
    ld b, c
    ld h, h
    ld l, c
    ld h, e
    or c
    ld h, h
    jp $d564


    ld h, h
    rst $20
    ld h, h
    ld sp, hl
    ld h, h
    dec bc
    ld h, l
    dec e
    ld h, l
    cpl
    ld h, l
    ld b, c
    ld h, l
    ld d, e
    ld h, l
    ld h, l
    ld h, l
    ld [hl], a
    ld h, l
    adc c
    ld h, l
    rst $00
    ld h, a
    db $db
    ld h, a
    rst $18
    ld h, l
    ld a, e
    ld h, e
    sbc a
    ld h, [hl]
    or c
    ld h, [hl]
    jp $af66


    ld h, a
    ld d, e
    ld h, h
    ld h, l
    ld h, h
    call $f170
    ld h, l
    ld c, l
    ld l, a
    push de
    ld h, e
    inc sp
    ld h, e
    ld l, l
    ld [hl], c
    adc e
    ld h, a
    sbc l
    ld h, a
    dec [hl]
    ld h, a
    ld sp, hl
    ld [hl], e
    or c
    ld h, e
    ld [hl], e
    ld h, a
    ld l, c
    ld h, [hl]
    ld a, e
    ld h, [hl]
    di
    ld h, a
    add hl, de
    ld l, b
    dec hl
    ld l, b
    ld [hl], a
    ld h, h
    ld c, a
    ld l, b
    rlca
    ld l, b
    ld h, c
    ld l, b
    adc e
    ld l, b
    dec b
    ld h, [hl]
    sub c
    ld l, c
    ld b, l
    ld [hl], c
    or a
    ld l, d
    rst $08
    ld l, d
    rst $20
    ld l, d
    ld sp, hl
    ld l, d
    dec b
    ld h, a
    dec e
    ld h, a
    cp c
    ld h, l
    call $b365
    ld l, c
    sub l
    ld l, a
    inc de
    ld l, h
    ld b, e
    ld l, h
    dec hl
    ld l, h
    adc l
    ld h, [hl]
    ld bc, $5b6c
    ld l, h
    dec a
    ld [hl], h
    adc e
    ld l, h
    and e
    ld l, h
    cp e
    ld l, h
    db $d3
    ld l, h
    dec bc
    ld h, h
    ld c, a
    ld [hl], h
    dec e
    ld l, a
    adc c
    ld h, h
    ei
    ld [hl], b
    rra
    ld [hl], c
    add l
    ld [hl], e
    ld [hl], e
    ld l, h
    cp l
    ld [hl], c
    ld c, e
    ld l, l
    push de
    ld h, [hl]
    sbc c
    ld [hl], e
    and c
    ld h, l
    push bc
    ld l, b
    ld e, l
    ld [hl], d
    push hl
    ld h, d
    jp $e573


    ld h, d
    rst $20
    ld [hl], e
    xor e
    ld l, l
    dec [hl]
    ld l, a
    push hl
    ld h, d
    dec h
    ld [hl], h
    ld de, $596b
    ld l, e
    add hl, hl
    ld l, e
    ld b, c
    ld l, e
    ld [hl], c
    ld l, e
    adc c
    ld l, e
    and e
    ld l, b
    ld h, c
    ld [hl], e
    add hl, de
    ld h, [hl]
    dec l
    ld h, [hl]
    ld b, c
    ld h, [hl]
    ld d, l
    ld h, [hl]
    sbc l
    ld h, h
    dec c
    ld [hl], b
    dec h
    ld [hl], b
    dec a
    ld [hl], b
    ld d, l
    ld [hl], b
    push af
    ld l, a
    push bc
    ld l, [hl]
    adc l
    ld l, d
    ld [hl], e
    ld l, b
    dec e
    ld h, h
    ld a, l
    ld l, [hl]
    dec de
    ld h, e
    db $eb
    ld l, h
    ld sp, $9f71
    ld l, d
    ld e, c
    ld [hl], c
    inc bc
    ld l, l
    add c
    ld [hl], c
    dec de
    ld l, l
    xor c
    ld [hl], c
    inc sp
    ld l, l
    pop de
    ld [hl], c
    dec sp
    ld l, d
    ld sp, hl
    ld [hl], c
    rst $30
    ld h, d
    ld hl, $6172
    ld [hl], h
    ld c, c
    ld [hl], d
    rst $20
    ld l, b
    ld [hl], c
    ld [hl], d
    add hl, bc
    ld l, c
    sbc c
    ld [hl], d
    xor l
    ld l, [hl]
    pop bc
    ld [hl], d
    ld b, a
    ld h, a
    jp hl


    ld [hl], d
    sub l
    ld l, [hl]
    ld de, $6f73
    ld l, c
    add hl, sp
    ld [hl], e
    db $ed
    ld h, [hl]
    push bc
    ld l, a
    db $dd
    ld l, a
    push hl
    ld [hl], c
    ld a, e
    ld l, l
    dec c
    ld [hl], d
    sub e
    ld l, l
    dec [hl]
    ld [hl], d
    add hl, de
    ld l, d
    or c
    ld [hl], e
    dec hl
    ld l, c
    push de
    ld [hl], e
    ld [hl], l
    ld l, d
    ld e, e
    ld h, a
    rst $30
    ld l, c
    ld a, l
    ld l, a
    dec [hl]
    ld l, [hl]
    dec a
    ld l, b
    ld c, l
    ld l, [hl]
    add hl, bc
    ld l, a
    ld h, l
    ld l, [hl]
    xor l
    ld l, a
    and c
    ld l, e
    cp c
    ld l, e
    pop de
    ld l, e
    jp hl


    ld l, e
    jp $956d


    ld [hl], c
    db $db
    ld l, l
    dec c
    ld [hl], h
    ld h, e
    ld l, l
    ld l, l
    ld [hl], b
    add l
    ld [hl], b
    sbc l
    ld [hl], b
    push de
    ld l, c
    ld h, l
    ld l, a
    db $ed
    ld l, l
    add l
    ld [hl], d
    db $ed
    ld l, [hl]
    xor l
    ld [hl], d
    or l
    ld [hl], b
    push de
    ld [hl], d
    ld e, l
    ld l, d
    db $fd
    ld [hl], d
    dec b
    ld l, [hl]
    dec h
    ld [hl], e
    dec e
    ld l, [hl]
    ld c, l
    ld [hl], e
    ld c, l
    ld l, c
    ld [hl], e
    ld [hl], h
    add l
    ld [hl], h
    sub a
    ld [hl], h
    xor c
    ld [hl], h
    cp e
    ld [hl], h
    call $df74
    ld [hl], h
    pop af
    ld [hl], h
    inc bc
    ld [hl], l
    dec d
    ld [hl], l
    daa
    ld [hl], l
    add hl, sp
    ld [hl], l
    ld c, e
    ld [hl], l
    ld e, l
    ld [hl], l
    ld l, a
    ld [hl], l
    add c
    ld [hl], l
    sub e
    ld [hl], l
    and l
    ld [hl], l
    or a
    ld [hl], l
    ret


    ld [hl], l
    db $db
    ld [hl], l
    db $ed
    ld [hl], l
    rst $38
    ld [hl], l
    ld de, $2376
    halt
    dec [hl]
    halt
    ld b, a
    halt
    ld e, c
    halt
    ld l, e
    halt
    ld a, l
    halt
    adc a
    halt
    and c
    halt
    or e
    halt
    push bc
    halt
    rst $10
    halt
    jp hl


    halt
    ei
    halt
    dec c
    ld [hl], a
    rra
    ld [hl], a
    ld sp, $4377
    ld [hl], a
    ld d, l
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc e
    ld [hl], a
    sbc l
    ld [hl], a
    xor a
    ld [hl], a
    pop bc
    ld [hl], a
    ld [hl], e
    ld [hl], e
    add hl, bc
    ld h, e
    add hl, bc
    ld h, e
    rst $30
    ld h, d
    ld bc, $0000
    nop
    nop
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ld h, d
    ld bc, $0000
    nop
    nop
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ld h, d
    ld bc, $0000
    nop
    ld l, d
    ld d, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld h, e
    nop
    ld bc, $0000
    db $10
    ld b, b
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld h, e
    ld bc, $0000
    nop
    ld b, $7e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    ld d, a
    ld h, e
    ld bc, $0000
    nop
    nop
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    ld l, c
    ld h, e
    ld bc, $0000
    nop
    inc bc
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    ld a, e
    ld h, e
    ld bc, $0000
    nop
    ld [de], a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    adc l
    ld h, e
    ld bc, $0000
    nop
    dec d
    ld a, [hl]
    ld bc, $1101
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    sbc a
    ld h, e
    ld bc, $0000
    nop
    and c
    ld c, l
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, l
    nop
    or c
    ld h, e
    inc bc
    nop
    nop
    nop
    or c
    ld c, l
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    jp $0363


    nop
    nop
    nop
    ld c, d
    ld d, c
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add l
    ld bc, $63d5
    ld bc, $0000
    nop
    inc c
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    and d
    ld a, l
    rst $20
    ld h, e
    ld bc, $0000
    nop
    pop hl
    ld c, l
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    and d
    ld a, [hl]
    ld sp, hl
    ld h, e
    ld bc, $0000
    nop
    rrca
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [$0b01], sp
    ld h, h
    ld bc, $0000
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [$1d00], sp
    ld h, h
    ld bc, $0000
    nop
    rrca
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    cpl
    ld h, h
    ld bc, $0000
    nop
    db $10
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    ld b, c
    ld h, h
    nop
    nop
    nop
    ld bc, $4df1
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    ld d, e
    ld h, h
    nop
    nop
    nop
    ld bc, $4e01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld bc, $6465
    ld bc, $0000
    nop
    ld a, $7f
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    ld [hl], a
    ld h, h
    ld bc, $0000
    nop
    ld b, c
    ld a, a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld bc, $6489
    nop
    nop
    nop
    ld bc, $4e01
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld [bc], a
    sbc l
    ld h, h
    nop
    inc b
    nop
    nop
    ld e, h
    ld a, a
    ld bc, $0102
    nop
    nop
    ld bc, $7e09
    ld b, e
    nop
    ld b, e
    nop
    or c
    ld h, h
    nop
    inc b
    nop
    nop
    sbc h
    ld c, [hl]
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    ld b, e
    nop
    jp $0164


    nop
    nop
    nop
    ld d, a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $64d5
    ld bc, $0000
    nop
    ld e, d
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $20
    ld h, h
    ld bc, $0000
    nop
    ld e, l
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld sp, hl
    ld h, h
    ld bc, $0000
    nop
    ld h, b
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec bc
    ld h, l
    ld bc, $0000
    nop
    ld h, e
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec e
    ld h, l
    ld bc, $0000
    nop
    ld h, [hl]
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $2f
    ld h, l
    ld bc, $0000
    nop
    ld l, c
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, c
    ld h, l
    ld bc, $0000
    nop
    ld l, h
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$6553], sp
    ld bc, $0000
    nop
    ld l, a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld h, l
    ld h, l
    ld bc, $0000
    nop
    ld [hl], d
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [hl], a
    ld h, l
    ld bc, $0000
    nop
    ld [hl], l
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    adc c
    ld h, l
    ld bc, $0000
    nop
    ld a, b
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    and c
    ld h, l
    inc c
    nop
    nop
    nop
    daa
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld d, d
    ld bc, $0252
    ld d, d
    inc bc
    cp c
    ld h, l
    inc c
    nop
    nop
    nop
    ld de, $024e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld a, [bc]
    ld d, d
    dec bc
    ld d, d
    inc c
    ld d, d
    dec c
    call $0065
    nop
    nop
    ld [bc], a
    dec [hl]
    ld c, a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    and d
    ld a, [hl]
    and d
    ld a, [hl]
    rst $18
    ld h, l
    nop
    nop
    ld [bc], a
    nop
    jr jr_001_6653

    ld bc, $0001
    nop
    nop
    ld bc, $7e1b
    ld b, h
    ld [bc], a
    pop af
    ld h, l
    ld bc, $0000
    nop
    ld a, e
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec b
    ld h, [hl]
    ld [bc], a
    nop
    nop
    nop
    ld e, h
    ld c, [hl]
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    and d
    sub c
    and d
    sub d
    add hl, de
    ld h, [hl]
    ld [bc], a
    nop
    nop
    nop
    ld a, h
    ld c, [hl]
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld a, c
    ld b, d
    ld a, d
    dec l
    ld h, [hl]
    ld [bc], a
    nop
    nop
    nop
    or l
    ld c, [hl]
    ld bc, $0902
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    adc l
    ld bc, $6641
    ld [bc], a
    nop
    nop
    nop
    push de
    ld c, [hl]
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    adc l
    ld [bc], a
    adc l
    inc bc
    ld d, l
    ld h, [hl]
    ld [bc], a
    nop
    nop
    nop
    push af
    ld c, [hl]
    ld bc, $0902
    ld bc, $0000
    nop
    nop
    adc l
    inc b

jr_001_6653:
    adc l
    dec b
    ld l, c
    ld h, [hl]
    ld [bc], a
    nop
    nop
    nop
    dec d
    ld c, a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    adc l
    ld b, $8d
    rlca
    ld a, e
    ld h, [hl]
    ld bc, $0000
    nop
    add c
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc bc
    adc l
    ld h, [hl]
    ld bc, $0000
    nop
    add h
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $9f
    ld h, [hl]
    ld bc, $0000
    nop
    rst $00
    ld e, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [$b110], sp
    ld h, [hl]
    ld bc, $0000
    nop
    add a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    jp $0166


    nop
    nop
    nop
    adc d
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $66d5
    ld bc, $0000
    nop
    adc l
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [bc], a
    db $ed
    ld h, [hl]
    nop
    ld l, $00
    nop
    ld d, l
    ld c, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0018], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld h, a
    nop
    jr nc, jr_001_66f2

jr_001_66f2:
    nop
    call $0259
    ld [bc], a
    ld [bc], a
    ld [$0018], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld h, a
    ld [$0002], sp
    nop
    ld d, l
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    dec b
    sub $62
    nop
    nop
    nop
    add d
    ld e, d
    add d
    ld e, e
    add d
    ld e, h
    add d
    ld e, l
    dec [hl]
    ld h, a
    ld [$0002], sp
    nop
    push de
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    dec b
    sub $62
    nop
    nop
    nop
    add d
    ld e, [hl]
    add d
    ld e, a
    add d
    ld h, b
    add d
    ld h, c
    ld b, a
    ld h, a
    ld bc, $0000
    nop
    ld e, $7e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    and d
    ld bc, $675b
    nop
    ld b, $00
    nop
    adc $62
    ld [bc], a
    ld bc, $0203
    add $00
    nop
    nop
    and d
    ld bc, $01a2
    ld [hl], e
    ld h, a
    inc b
    nop
    nop
    nop
    inc sp
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    nop
    sub h
    ld bc, $0294
    sub h
    inc bc
    adc e
    ld h, a
    inc c
    nop
    nop
    nop
    ld c, e
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    dec d
    ld bc, $0215
    dec d
    inc bc
    sbc l
    ld h, a
    ld b, $00
    nop
    nop
    sbc [hl]
    ld a, a
    ld bc, $0c01
    nop
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    xor a
    ld h, a
    ld [bc], a
    nop
    nop
    nop
    inc h
    ld h, c
    ld bc, $0d01
    nop
    nop
    nop
    nop
    nop
    ld d, a
    nop
    rst $00
    ld h, a
    ld [$0000], sp
    nop
    ld c, [hl]
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    add b
    sub l
    add c
    sub l
    add d
    sub l
    add e
    db $db
    ld h, a
    inc bc
    nop
    nop
    nop
    ld a, d
    ld d, c
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld d, d
    ld a, [bc]
    ld d, d
    dec bc
    di
    ld h, a
    inc c
    nop
    nop
    nop
    dec [hl]
    ld a, a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_67ed

jr_001_67ed:
    jr @+$03

    jr jr_001_67f3

    jr jr_001_67f6

jr_001_67f3:
    rlca
    ld l, b
    nop

jr_001_67f6:
    nop
    nop
    ld [bc], a
    xor d
    ld d, c
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    add hl, de
    ld l, b
    ld bc, $0000
    nop
    jp z, $0151

    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $2b00
    ld l, b
    nop
    nop
    nop
    ld bc, $51da
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $3d03
    ld l, b
    nop
    nop
    nop
    ld bc, $51ea
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $4f04
    ld l, b
    nop
    nop
    nop
    ld bc, $62be
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $6105
    ld l, b
    nop
    nop
    nop
    ld bc, $51fa
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $7306
    ld l, b
    nop
    nop
    nop
    ld bc, $520a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $8b07
    ld l, b
    nop
    ld [$0000], sp
    ld a, [de]
    ld d, d
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    xor h
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    and e
    ld l, b
    nop
    stop
    nop
    and h
    ld d, d
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld l, b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    push bc
    ld l, b
    nop
    ld c, h
    nop
    nop
    cp e
    ld b, l
    inc b
    inc bc
    inc bc
    ld [bc], a
    sbc [hl]
    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    rst $20
    ld l, b
    nop
    ld h, $00
    nop
    dec b
    ld b, h
    inc b
    inc bc
    inc bc
    ld [bc], a
    adc [hl]
    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    add hl, bc
    ld l, c
    nop
    ld e, d
    nop
    nop
    db $10
    ld b, b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ret nz

    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    dec hl
    ld l, c
    nop
    ld c, h
    nop
    nop
    inc d
    ld b, h
    inc b
    inc bc
    inc bc
    ld [bc], a
    jp nz, RST_00

    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    ld c, l
    ld l, c
    nop
    ld b, [hl]
    nop
    nop
    ld l, l
    ld d, b
    inc b
    inc bc
    inc bc
    ld [bc], a
    sub $00
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    ld l, a
    ld l, c
    nop
    sub d
    nop
    nop
    sbc a
    ld d, a
    inc b
    inc bc
    inc bc
    ld [bc], a
    db $fc
    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add a
    or e
    adc b
    or e
    adc c
    sub c
    ld l, c
    nop
    ld d, [hl]
    nop
    nop
    ld e, d
    ld b, a
    inc b
    inc bc
    inc bc
    ld [bc], a
    jp z, Jump_001_4a10

    ld a, a
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    or e
    ld l, c
    nop
    ld h, d
    nop
    nop
    ld bc, $0449
    inc bc
    inc bc
    ld [bc], a
    ld l, d
    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    push de
    ld l, c
    nop
    ld h, $00
    nop
    dec b
    ld b, h
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [hl], h
    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    rst $30
    ld l, c
    nop
    sub d
    nop
    nop
    sbc a
    ld d, a
    inc b
    inc bc
    inc bc
    ld [bc], a
    xor $00
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    add hl, de
    ld l, d
    nop
    ld c, [hl]
    nop
    nop
    rst $18
    ld c, c
    inc b
    inc bc
    inc bc
    ld [bc], a
    jp c, RST_00

    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    dec sp
    ld l, d
    nop
    ld c, h
    nop
    nop
    inc d
    ld c, l
    inc b
    inc bc
    inc bc
    ld [bc], a
    call nc, RST_00
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    or e
    add e
    or e
    add h
    or e
    add l
    or e
    add [hl]
    or e
    add a
    ld e, l
    ld l, d
    nop
    halt
    nop
    nop
    ld b, c
    ld d, e
    inc bc
    inc bc
    inc bc
    ld [bc], a
    cp d
    ld c, $08
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld l, d
    nop
    inc h
    nop
    nop
    ld b, $61
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    or $00
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    adc l
    ld l, d
    nop
    ld l, $00
    nop
    jp $0257


    ld [bc], a
    inc bc
    ld [bc], a
    ret c

    nop
    nop
    nop
    or e
    ld a, a
    or e
    add b
    or e
    add c
    or e
    add d
    sbc a
    ld l, d
    ld bc, $0000
    nop
    sub b
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    or a
    ld l, d
    nop
    ld a, [de]
    nop
    nop
    rst $20
    ld e, e
    ld [bc], a

jr_001_6aa8:
    ld [bc], a
    inc bc
    ld [bc], a
    or d
    nop
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    rst $08
    ld l, d
    nop
    ld [$0000], sp
    push bc
    ld h, h
    ld [bc], a

jr_001_6ac0:
    ld [bc], a
    inc bc
    ld [bc], a
    sub b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    rst $20
    ld l, d
    nop
    inc c
    nop
    nop
    and l
    ld a, [hl]
    ld [bc], a

jr_001_6ad8:
    ld [bc], a
    inc bc
    inc bc
    and b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld sp, hl
    ld l, d
    nop
    ld b, $00
    nop
    ld e, d
    ld d, e
    ld bc, $0301
    ld bc, $006e
    nop
    nop
    ld [hl+], a
    nop
    ld de, $006b
    ld [$0000], sp
    xor a
    ld d, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $006f
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    add hl, hl
    ld l, e
    ld [$0002], sp
    nop
    ld [de], a
    ld d, h
    ld [bc], a
    ld [bc], a
    ld [$6236], sp
    ld b, $f6
    ld h, d
    add d
    rra
    add d
    jr nz, jr_001_6aa8

    ld hl, $2282
    ld b, c
    ld l, e
    ld [$0002], sp
    nop
    ld a, l
    ld d, h
    ld [bc], a
    ld [bc], a
    ld [$6256], sp
    ld a, [bc]
    ld c, a
    ld h, e
    add d
    rra
    add d
    jr nz, jr_001_6ac0

    ld hl, $2282
    ld e, c
    ld l, e
    ld [$0002], sp
    nop
    push hl
    ld d, h
    ld [bc], a
    ld [bc], a
    ld [$6276], sp
    inc c
    xor [hl]
    ld h, e
    add d
    rra
    add d
    jr nz, jr_001_6ad8

    ld hl, $2282
    ld [hl], c
    ld l, e
    ld [$0002], sp
    nop
    ld sp, $0255
    ld [bc], a
    ld [$6296], sp
    ld b, $f6
    ld h, d
    add d
    dec hl
    add d
    inc l
    add d
    dec l
    add d
    ld l, $89
    ld l, e
    ld [$0002], sp
    nop
    sbc l
    ld d, l
    ld [bc], a
    ld [bc], a
    ld [$62b6], sp
    ld a, [bc]
    ld c, a
    ld h, e
    add d
    dec hl
    add d
    inc l
    add d
    dec l
    add d
    ld l, $a1
    ld l, e
    ld [$0002], sp
    nop
    add hl, bc
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    ld [$6276], sp
    inc c
    xor [hl]
    ld h, e
    add d
    dec hl
    add d
    inc l
    add d
    dec l
    add d
    ld l, $b9
    ld l, e
    ld [$0002], sp
    nop
    ld b, a
    ld h, l
    ld [bc], a
    ld [bc], a
    ld [$65b8], sp
    ld b, $66
    ld h, [hl]
    add d
    ld d, d
    add d
    ld d, e
    add d
    ld d, h
    add d
    ld d, l
    pop de
    ld l, e
    ld [$0002], sp
    nop
    ret c

    ld h, l
    ld [bc], a
    ld [bc], a
    ld [$6646], sp
    ld b, $66
    ld h, [hl]
    add d
    ld d, [hl]
    add d
    ld d, a
    add d
    ld e, b
    add d
    ld e, c
    jp hl


    ld l, e
    jr jr_001_6bd9

    nop
    nop
    cp a
    ld h, [hl]

jr_001_6bd9:
    ld [bc], a
    ld [bc], a
    ld [$6864], sp
    inc b
    add a
    ld l, b
    add d
    rlca
    add d
    ld [$0982], sp
    add d
    ld a, [bc]
    ld bc, $186c
    inc b
    nop
    nop
    sub e
    ld h, a
    ld [bc], a
    ld [bc], a
    ld [$6864], sp
    inc b
    add a
    ld l, b
    add d
    inc de
    add d
    inc d
    add d
    dec d
    add d
    ld d, $13
    ld l, h
    ld bc, $0000
    nop
    ld d, [hl]
    ld d, a
    ld bc, $0e01
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc b
    dec hl
    ld l, h
    nop
    inc b
    nop
    nop
    ld h, [hl]
    ld d, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0076
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld l, h
    nop
    jr jr_001_6c30

jr_001_6c30:
    nop
    push de
    ld d, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld e, e
    ld l, h
    nop
    inc b
    nop
    nop
    sub h
    ld d, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0077
    nop
    nop
    and d
    nop
    and d
    nop
    and d
    nop
    and d
    nop
    ld [hl], e
    ld l, h
    nop
    nop
    ld a, [bc]
    nop
    ld a, [hl+]
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    inc de
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    ld b, $0a
    ld b, $0b
    ld b, $0c
    adc e
    ld l, h
    nop
    inc d
    nop
    nop
    db $ec
    ld e, b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    adc b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    and e
    ld l, h
    nop
    ld [$0000], sp
    rst $10
    ld e, c
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, d
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    cp e
    ld l, h
    nop
    inc d
    nop
    nop
    ld e, b
    ld e, d
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    add d
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    db $d3
    ld l, h
    nop
    stop
    nop
    jr nc, jr_001_6d1e

    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    sub d
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    db $eb
    ld l, h
    nop
    ld a, [hl+]
    nop
    nop
    pop af
    ld e, e
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    sub [hl]
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc bc
    ld l, l
    nop
    jr nz, jr_001_6cf0

jr_001_6cf0:
    nop
    xor b
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld l, l
    nop
    inc b
    nop
    nop
    ld c, b
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld l, l
    nop

jr_001_6d1e:
    ld [$0000], sp
    ld c, l
    ld a, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    or [hl]
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld c, e
    ld l, l
    nop
    inc e
    nop
    nop
    db $dd
    ld e, h
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    cp b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld h, e
    ld l, l
    nop
    ld a, [de]
    nop
    nop
    ld c, e
    ld e, l
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld h, b
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld a, e
    ld l, l
    nop
    ld [$0000], sp
    and d
    ld l, c
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0000], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    sub e
    ld l, l
    nop
    jr nz, jr_001_6d80

jr_001_6d80:
    nop
    ret nz

    ld e, l
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ret nc

    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    xor e
    ld l, l
    nop
    stop
    nop
    sub a
    ld e, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    jp nc, RST_00

    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    jp $006d


    stop
    nop
    dec d
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    sub h
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    db $db
    ld l, l
    nop
    stop
    nop
    and [hl]
    ld l, b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    and $00
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    db $ed
    ld l, l
    nop
    ld [bc], a
    nop
    nop
    add d
    ld l, c
    ld bc, $0301
    ld [bc], a
    add sp, $00
    nop
    nop
    nop
    nop
    dec b
    ld l, [hl]
    nop
    ld c, $00
    nop
    ld a, [bc]
    ld h, b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    dec e
    ld l, [hl]
    nop
    ld h, $00
    nop
    call nc, $0262
    ld [bc], a
    inc bc
    ld [bc], a
    ld hl, sp+$00
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    dec [hl]
    ld l, [hl]
    nop
    ld l, $00
    nop
    nop
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld l, [hl]
    nop
    ld e, $00
    nop
    ld h, e
    ld h, b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld l, [hl]
    nop
    ld e, $00
    nop
    ld h, e
    ld h, b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld l, [hl]
    nop
    ld [$0000], sp
    ld a, d
    ld h, h
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    ld l, [hl]
    nop
    inc e
    nop
    nop
    ld d, [hl]
    ld a, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $00ae
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor l
    ld l, [hl]
    nop
    jr nz, jr_001_6e9a

jr_001_6e9a:
    nop
    ld b, l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    ld l, [hl]
    nop
    inc e
    nop
    nop
    dec hl
    ld h, c
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ed
    ld l, [hl]
    nop
    ld d, b
    nop
    nop
    jr nz, jr_001_6f0d

    inc b
    inc bc
    inc bc
    ld [bc], a
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld l, a
    nop
    jr jr_001_6ef2

jr_001_6ef2:
    nop
    ld a, d
    ld d, [hl]
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [c]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld l, a
    inc b
    nop

jr_001_6f0d:
    nop
    nop
    ld [hl], $7e
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    add hl, sp
    ld a, [hl]
    dec bc
    jr nz, jr_001_6f27

    ld hl, $6f35
    ld [$0000], sp
    nop
    inc a
    ld a, [hl]
    ld [bc], a
    ld [bc], a

jr_001_6f27:
    nop
    nop
    nop
    inc b
    ccf
    ld a, [hl]
    dec bc
    ld [hl+], a
    dec bc
    inc hl
    dec bc
    inc h
    dec bc
    dec h
    ld c, l
    ld l, a
    ld [$0000], sp
    nop
    jr c, jr_001_6fbc

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    dec sp
    ld a, a
    dec bc
    ld c, d
    dec bc
    ld c, e
    dec bc
    ld c, h
    dec bc
    ld c, l
    ld h, l
    ld l, a
    ld [$0000], sp
    nop
    ld d, h
    ld h, h
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl-], a
    dec bc
    inc sp
    dec bc
    inc [hl]
    dec bc
    dec [hl]
    ld a, l
    ld l, a
    ld [$0000], sp
    nop
    db $d3
    ld l, e
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl], $0b
    scf
    dec bc
    jr c, jr_001_6f87

    add hl, sp
    sub l
    ld l, a
    inc b
    nop
    nop
    nop
    ld a, e
    ld h, d
    ld [bc], a
    ld [bc], a

jr_001_6f87:
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, $0b
    ccf
    dec bc
    ld b, b
    dec bc
    ld b, c
    xor l
    ld l, a
    inc b
    nop
    nop
    nop
    ld de, $0264
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld b, d
    dec bc
    ld b, e
    dec bc
    ld b, h
    dec bc
    ld b, l
    push bc
    ld l, a
    inc b
    nop
    nop
    nop
    inc b
    ld h, l
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_001_6fbc:
    nop
    dec bc
    ld b, [hl]
    dec bc
    ld b, a
    dec bc
    ld c, b
    dec bc
    ld c, c
    db $dd
    ld l, a
    nop
    stop
    nop
    ld b, h
    ld a, a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0ccd
    ld b, a
    ld a, a
    dec bc
    ld [hl-], a
    dec bc
    ld [hl-], a
    dec bc
    ld [hl-], a
    dec bc
    ld [hl-], a
    push af
    ld l, a
    nop
    nop
    inc c
    nop
    ld d, c
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    adc $04
    ld d, h
    ld a, [hl]
    ld b, a
    nop
    ld b, a
    ld bc, $0247
    ld b, a
    inc bc
    dec c
    ld [hl], b
    nop
    nop
    ld a, [bc]
    nop
    dec l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, $30
    ld a, [hl]
    ld b, $09
    ld b, $0a
    ld b, $0b
    ld b, $0c
    dec h
    ld [hl], b
    nop
    nop
    ld c, $00
    rst $10
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    db $10
    dec bc
    ld de, $120b
    dec bc
    inc de
    dec a
    ld [hl], b
    nop
    nop
    ld c, $00
    ld l, h
    ld e, a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc d
    dec bc
    dec d
    dec bc
    ld d, $0b
    rla
    ld d, l
    ld [hl], b
    nop
    nop
    inc e
    nop
    pop hl
    ld e, a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    jr jr_001_705b

    add hl, de
    dec bc
    ld a, [de]
    dec bc
    dec de
    ld l, l
    ld [hl], b
    ld [$0000], sp
    nop

jr_001_705b:
    or h
    ld h, b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc e
    dec bc
    dec e
    dec bc
    ld e, $0b
    rra
    add l
    ld [hl], b
    nop
    nop
    ld c, $00
    inc hl
    ld l, d
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld h, $0b
    daa
    dec bc
    jr z, jr_001_708f

    add hl, hl
    sbc l
    ld [hl], b
    nop
    nop
    ld c, $00
    xor a
    ld l, d
    ld [bc], a
    ld [bc], a

jr_001_708f:
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, [hl+]
    dec bc
    dec hl
    dec bc
    inc l
    dec bc
    dec l
    or l
    ld [hl], b
    nop
    nop
    inc d
    nop
    inc [hl]
    ld l, e
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld l, $0b
    cpl
    dec bc
    jr nc, jr_001_70bf

    ld sp, $70cd
    nop
    nop
    ld [$9d00], sp
    ld h, b
    ld [bc], a
    ld [bc], a

jr_001_70bf:
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, [hl-]
    dec bc
    dec sp
    dec bc
    inc a
    dec bc
    dec a
    jp hl


    ld [hl], b
    inc c
    nop
    nop
    nop
    and c
    ld a, a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld d, b
    ld bc, $0250
    ld d, b
    inc bc
    ld d, b
    inc b
    ld d, b
    dec b
    ei
    ld [hl], b
    ld bc, $0000
    nop
    inc h
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, d
    inc a
    dec c
    ld [hl], c
    ld bc, $0000
    nop
    ld hl, $017e
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    inc a
    rra
    ld [hl], c
    ld bc, $0000
    nop
    ld hl, $017e
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $7131
    ld bc, $0000
    nop
    ld l, $65
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add d
    scf
    ld b, l
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld e, a
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    dec a
    ld b, d
    ld a, $59
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld h, d
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ccf
    ld b, d
    ld b, b
    ld l, l
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld h, l
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, c
    ld b, d
    ld b, d
    add c
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld l, b
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, d
    ld b, h
    sub l
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld l, e
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, l
    ld b, d
    ld b, [hl]
    xor c
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld l, [hl]
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, a
    ld b, d
    ld c, b
    cp l
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    ld [hl], c
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld c, c
    ld b, d
    ld c, d
    pop de
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    adc c
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    dec a
    ld [$e506], sp
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    adc h
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ccf
    ld [$f903], sp
    ld [hl], c
    ld [bc], a
    nop
    nop
    nop
    adc a
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, c
    ld [$0d04], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    sub d
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld [$2105], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    sub l
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, l
    ld [$3507], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    sbc b
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld b, a
    ld [$4908], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    sbc e
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld c, c
    ld [$5d09], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    ld [hl], h
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4211], sp
    ld a, $71
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    ld [hl], a
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4212], sp
    ld b, b
    add l
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    ld a, d
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4213], sp
    ld b, d
    sbc c
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    ld a, l
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4214], sp
    ld b, h
    xor l
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    add b
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4215], sp
    ld b, [hl]
    pop bc
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    add e
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4216], sp
    ld c, b
    push de
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    add [hl]
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$4217], sp
    ld c, d
    jp hl


    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    adc c
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    nop
    ld [$fd0b], sp
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    adc h
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    ld bc, $0c08
    ld de, $0273
    nop
    nop
    nop
    adc a
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    ld [bc], a
    ld [$250f], sp
    ld [hl], e
    ld [bc], a
    nop
    nop
    nop
    sub d
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    inc bc
    ld [$3902], sp
    ld [hl], e
    ld [bc], a
    nop
    nop
    nop
    sub l
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    inc b
    ld [$4d0a], sp
    ld [hl], e
    ld [bc], a
    nop
    nop
    nop
    sbc b
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    dec b
    ld [$610d], sp
    ld [hl], e
    ld [bc], a
    nop
    nop
    nop
    sbc e
    ld a, a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld c, c
    ld b, $08
    ld c, $73
    ld [hl], e
    ld bc, $0000
    nop
    ld hl, $017e
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    ld [hl], l
    add l
    ld [hl], e
    ld bc, $0000
    nop
    ld hl, $017e
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, d
    sub e
    sbc c
    ld [hl], e
    nop
    ld [bc], a
    nop
    nop
    ld b, h
    ld h, c
    ld [bc], a
    ld bc, $0207
    add a
    nop
    nop
    nop
    dec bc
    nop
    dec bc
    nop
    or c
    ld [hl], e
    nop
    stop
    nop
    ld h, h
    ld h, c
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $008c
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    jp $0173


    nop
    nop
    nop
    sub e
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    push de
    ld [hl], e
    ld bc, $0000
    nop
    sub [hl]
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $73e7
    ld bc, $0000
    nop
    sbc c
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld sp, hl
    ld [hl], e
    ld bc, $0000
    nop
    sbc h
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc
    dec c
    ld [hl], h
    ld [$0000], sp
    nop
    dec bc
    ld h, d
    ld [bc], a
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [$0810], sp
    ld bc, $7425
    inc b
    nop
    nop
    nop
    ld d, b
    ld a, a
    ld [bc], a
    ld [bc], a
    rrca
    nop
    nop
    nop
    nop
    nop
    ld d, $00
    ld d, $01
    ld d, $02
    ld d, $03
    dec a
    ld [hl], h
    inc b
    nop
    nop
    nop
    ld d, e
    ld a, a
    ld [bc], a
    ld [bc], a
    rrca
    nop
    nop
    nop
    nop
    nop
    ld d, $04
    ld d, $05
    ld d, $06
    ld d, $07
    ld c, a
    ld [hl], h
    ld bc, $0000
    nop
    ld hl, $017e
    ld bc, $0012
    nop
    nop
    nop
    nop
    ld b, d
    jr c, jr_001_74b1

    ld [hl], h
    ld bc, $0000
    nop
    ld b, $7e
    ld bc, $1201
    nop
    nop
    nop
    nop
    nop
    add d
    add hl, sp
    ld [hl], e
    ld [hl], h
    nop
    ld b, $00
    nop
    ld e, c
    ld a, a
    ld bc, $0301
    ld [bc], a
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    add l
    ld [hl], h
    ld bc, $0000
    nop
    sbc a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $7497
    ld bc, $0000
    nop
    and d
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    xor c
    ld [hl], h
    ld bc, $0000
    nop
    ld b, d
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    cp e
    ld [hl], h
    ld bc, $0000
    nop
    xor e
    ld a, [hl]

jr_001_74b1:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    call $0174
    nop
    nop
    nop
    xor [hl]
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    rst $18
    ld [hl], h
    ld bc, $0000
    nop
    or c
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $f1
    ld [hl], h
    ld bc, $0000
    nop
    or h
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    inc bc
    ld [hl], l
    ld bc, $0000
    nop
    or a
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$17

    ld [hl], l
    ld bc, $0000
    nop
    cp d
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    daa
    ld [hl], l
    ld bc, $0000
    nop
    cp l
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    add hl, sp
    ld [hl], l
    ld bc, $0000
    nop
    ret nz

    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl

jr_001_7539:
    ld c, e
    ld [hl], l
    ld bc, $0000
    nop
    jp $017e


    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    inc l
    ld e, l
    ld [hl], l
    ld bc, $0000
    nop
    add $7e
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, a
    ld [hl], l
    ld bc, $0000
    nop
    ret


    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $81
    ld [hl], l
    ld bc, $0000
    nop
    call z, $017e
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    cpl
    sub e
    ld [hl], l
    ld bc, $0000
    nop
    rst $08
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_001_7539

    ld [hl], l
    ld bc, $0000
    nop
    jp nc, $017e

    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    ld sp, $75b7
    ld bc, $0000
    nop
    push de
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ret


    ld [hl], l
    ld bc, $0000
    nop
    ret c

    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    db $db
    ld [hl], l
    ld bc, $0000
    nop
    db $db
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    db $ed
    ld [hl], l
    ld bc, $0000
    nop
    sbc $7e
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    rst $38
    ld [hl], l
    ld bc, $0000
    nop
    pop hl
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $11
    halt
    ld bc, $0000
    nop
    db $e4
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    inc hl
    halt
    ld bc, $0000
    nop
    rst $20
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7659

    halt
    ld bc, $0000
    nop
    ld [$017e], a
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld b, a
    halt
    ld bc, $0000
    nop
    db $ed
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld e, c
    halt
    ld bc, $0000
    nop
    ldh a, [$7e]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp

jr_001_7659:
    ld l, e
    halt
    ld bc, $0000
    nop
    di
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld a, l
    halt
    ld bc, $0000
    nop
    or $7e
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    adc a
    halt
    ld bc, $0000
    nop
    ld sp, hl
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $a1
    halt
    ld bc, $0000
    nop
    db $fc
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    or e
    halt
    ld bc, $0000
    nop
    rst $38
    ld a, [hl]
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    push bc
    halt
    ld bc, $0000
    nop
    ld [bc], a
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    rst $10
    halt
    ld bc, $0000
    nop
    dec b
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    jp hl


    halt
    ld bc, $0000
    nop
    dec bc
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ei
    halt
    ld bc, $0000
    nop
    ld c, $7f
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    dec c
    ld [hl], a
    ld bc, $0000
    nop
    ld de, $017f
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    ld b, l
    rra
    ld [hl], a
    ld bc, $0000
    nop
    inc d
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld sp, $0177
    nop
    nop
    nop
    rla
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld b, e
    ld [hl], a
    ld bc, $0000
    nop
    ld a, [de]
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld d, l
    ld [hl], a
    ld bc, $0000
    nop
    dec e
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld h, a
    ld [hl], a
    ld bc, $0000
    nop
    jr nz, jr_001_77dc

    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld a, c
    ld [hl], a
    ld bc, $0000
    nop
    inc hl
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    adc e
    ld [hl], a
    ld bc, $0000
    nop
    ld h, $7f
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    sbc l
    ld [hl], a
    ld bc, $0000
    nop
    add hl, hl
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    xor a
    ld [hl], a
    ld bc, $0000
    nop
    inc l
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    pop bc
    ld [hl], a
    ld bc, $0000
    nop
    cpl
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    db $d3
    ld [hl], a
    ld bc, $0000
    nop
    ld [hl-], a
    ld a, a
    ld bc, $0b01
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    dec b
    rlca
    inc b
    ld b, $05
    inc b
    dec b
    ld b, $06

jr_001_77dc:
    nop
    rlca
    rlca
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $fc
    ld [bc], a
    ld hl, sp+$06
    nop
    ld b, $f8
    ld b, $fc
    ld b, $00
    ld b, $fc
    ld b, $f8
    ld b, $f8
    cp $f8
    ld [bc], a
    ld hl, sp+$02
    ld hl, sp+$00
    nop
    ld d, l
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    nop
    ld l, d
    nop
    sub b
    and b
    ld l, [hl]
    ld l, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld [hl], h
    ld h, d
    halt
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    nop
    ld a, d
    add d
    sub d
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    adc b
    nop
    ld h, b
    nop
    adc h
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    sub h
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or h
    nop
    or [hl]
    nop
    cp b
    nop
    cp d
    nop
    nop
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c400

Call_001_7875:
    nop
    add $00
    ret z

    nop
    jp z, RST_00

    call RST_00
    ret nc

    nop
    jp nc, $d400

    nop
    sub $00
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    and $00
    add sp, $00
    ld [$0000], a
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    nop
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    nop
    ld d, l
    nop
    daa
    ld bc, $0b02
    inc e
    inc bc
    inc b
    dec l
    ld b, e
    dec b
    ld h, $06
    rlca
    ld d, [hl]
    ld [$302f], sp
    ld c, d
    dec e
    ld e, $1f
    inc [hl]
    add hl, bc
    ld a, [bc]
    ld hl, $a522
    ld h, c
    and a
    ld h, e
    ld d, h
    dec de
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc l
    xor c
    ld c, c
    inc h
    add hl, sp
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, e
    ld sp, $3332
    xor l
    dec [hl]
    ld [hl], $37
    ld b, d
    jr jr_001_794e

    ld l, $1a
    jr nz, jr_001_790e

    add hl, hl
    ld a, [hl+]
    ld l, [hl]
    ld e, [hl]
    sub b
    sub d
    ld b, h
    call z, $3a9a
    cp [hl]
    xor d
    and h
    and [hl]
    adc d
    ld a, d
    xor e
    adc h
    ld a, h
    jr c, @-$7c

    inc a
    ld c, l
    ld c, [hl]
    ld c, a

jr_001_790e:
    add b
    add [hl]
    adc b
    ld e, d
    and b
    and d
    ld h, h
    or [hl]
    ret nz

    ret z

    cp d
    xor h
    xor [hl]
    or b
    ld c, b
    ld e, b
    sbc b
    sub h
    ld d, b
    sbc l
    dec hl
    sub [hl]
    ld b, a
    add h
    cp b
    or h
    or l
    ld l, b
    ld l, d
    ld l, e
    ld l, c
    ld l, h
    ld l, l
    or e
    or d
    ld b, b
    ld b, c
    cp c
    ld h, a
    ld c, h
    ld d, d
    cp e
    cp h
    cp l
    ld [hl], a
    call nz, Call_001_7875
    halt
    xor a
    ld d, e
    ld h, l
    inc hl
    ld l, a
    db $fd
    ld b, l
    or c
    add $a8
    jp z, $799e

    ld c, e
    ld d, c

jr_001_794e:
    ld a, l
    ld e, h
    jp nz, $8157

    dec sp
    add e
    jr z, @-$79

    or a
    add a
    ld e, c
    adc c
    sbc a
    adc e
    and c
    adc l
    and e
    adc a
    ld e, a
    sub c
    pop bc
    sub e
    jp $c595


    sub a
    rst $00
    sbc c
    ret


    sbc e
    res 1, [hl]
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$ffe1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    ld a, a
    ld h, b
    ld h, [hl]
    ld h, d
    cp $ff
    dec h
    cp a
    ld e, e
    sbc h
    ld [hl], h
    dec a
    ld a, $3f
    ld b, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
