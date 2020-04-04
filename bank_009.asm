; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    rst $08

    adc e
    ld b, c
    ld a, [c]
    ld b, c
    ld e, c
    ld b, d
    sub d
    ld b, d
    ld d, a
    ld b, [hl]
    bit 0, d
    ld [de], a
    dec e
    and h
    ld b, [hl]
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    dec hl
    ld b, e
    sbc h
    ld b, e
    dec c
    ld b, h
    ld c, l
    ld b, h
    adc l
    ld b, h
    ld [de], a
    dec e
    db $ed
    ld b, h
    sub d
    ld b, l
    dec [hl]
    ld b, [hl]
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    call c, $1246
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    call c, $1246
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    add h
    ld b, a
    ld [de], a
    dec e
    jp nz, $2e47

    ld c, c
    ld [de], a
    dec e
    ld d, l
    ld c, c
    sub c
    ld b, [hl]
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    rst $10
    ld c, c
    sub d
    ld c, d
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld d, d
    ld c, e
    ld [de], a
    dec e
    dec d
    ld c, a
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    cp l
    ld c, a
    ld b, h
    ld d, b
    ld [hl], h
    ld d, c
    ld d, c
    ld d, d
    inc a
    ld d, e
    dec e
    ld d, h
    rlca
    ld d, l
    ld [de], a
    dec e
    ld [de], a
    dec e
    add sp, $55
    ld [de], a
    dec e
    ld l, $58
    ld [de], a
    dec e
    ld [de], a
    dec e
    inc b
    ld e, d
    ld c, c
    ld e, d
    adc [hl]
    ld e, d
    db $d3
    ld e, d
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    jr jr_009_41c2

    di
    ld e, e
    adc $5c
    and c
    ld e, [hl]
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    cp l
    ld c, a
    ld [de], a
    dec e
    ld hl, $6660
    ld h, b
    xor e
    ld h, b
    ldh a, [$60]
    add hl, sp
    ld h, c
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [de], a
    dec e
    or c
    ld h, e
    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    and $07
    cp $04
    ret nz

    xor a
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl]
    cp $4f
    jr z, jr_009_41ae

    pop de
    pop hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_41ae:
    pop de
    pop hl
    xor a
    ld [de], a
    inc de
    ld a, [de]
    cp $20
    jr z, jr_009_41da

    ld c, a
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]

jr_009_41c2:
    inc de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    jp $1685


jr_009_41da:
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    and $07
    cp $04
    ret nz

    xor a
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    push hl
    ld a, [hl+]
    cp $4f
    jr z, jr_009_4215

    pop de
    pop hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_4215:
    pop de
    pop hl
    xor a
    ld [de], a
    inc de
    ld a, [de]
    cp $20
    jr z, jr_009_4241

    ld c, a
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    jp $1685


jr_009_4241:
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    or a
    jr nz, jr_009_4272

    ld a, [hl]
    cp $20
    jr c, jr_009_4272

    xor a

jr_009_4272:
    pop de
    pop hl
    or a
    jr z, jr_009_427f

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    jp Jump_009_6480


jr_009_427f:
    ld a, $4f
    ld [de], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    push hl
    ld a, [hl+]
    or a
    jr nz, jr_009_42ab

    ld a, [hl]
    cp $20
    jr c, jr_009_42ab

    xor a

jr_009_42ab:
    pop de
    pop hl
    or a
    jr z, jr_009_42b8

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    jp Jump_009_6480


jr_009_42b8:
    ld a, $4f
    ld [de], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop de
    jp $1685


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    push hl
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp $4f
    jr nz, jr_009_4305

    xor a
    ld [de], a
    inc de
    ld a, [de]
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    cp $20
    jr z, jr_009_42fe

    push hl
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    jr jr_009_4301

jr_009_42fe:
    xor a
    ld [hl+], a
    ld [hl], a

jr_009_4301:
    pop de
    call $1685

jr_009_4305:
    call $331d
    pop de
    push de
    call Call_009_4320
    ld a, $30
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    call $331d
    pop de
    call Call_009_4320
    ld a, $31
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    inc [hl]
    ret


Call_009_4320:
    push hl
    ld c, $10

jr_009_4323:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_009_4323

    pop hl
    ret


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    and $03
    ret nz

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    push hl
    ld a, [hl+]
    cp $0e
    jr z, jr_009_434a

    pop de
    pop hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_434a:
    pop de
    pop hl
    xor a
    ld [de], a
    inc de
    ld a, [de]
    cp $20
    jr z, jr_009_437d

    ld c, a
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    jp $1685


jr_009_437d:
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    and $03
    ret nz

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, hOAMDMAFunction
    add hl, de
    push hl
    ld a, [hl+]
    cp $0e
    jr z, jr_009_43bb

    pop de
    pop hl
    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_43bb:
    pop de
    pop hl
    xor a
    ld [de], a
    inc de
    ld a, [de]
    cp $20
    jr z, jr_009_43ee

    ld c, a
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    jp $1685


jr_009_43ee:
    dec de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    push hl
    ld a, [hl+]
    or a
    jr nz, jr_009_4426

    ld a, [hl]
    cp $21
    jr c, jr_009_4426

    xor a

jr_009_4426:
    pop de
    pop hl
    or a
    jr z, jr_009_4433

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    jp Jump_009_6480


jr_009_4433:
    ld a, $0e
    ld [de], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, hOAMDMAFunction
    add hl, de
    push hl
    ld a, [hl+]
    or a
    jr nz, jr_009_4466

    ld a, [hl]
    cp $21
    jr c, jr_009_4466

    xor a

jr_009_4466:
    pop de
    pop hl
    or a
    jr z, jr_009_4473

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl], a
    jp Jump_009_6480


jr_009_4473:
    ld a, $0e
    ld [de], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push hl
    ld hl, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, d
    ld [hl-], a
    ld [hl], e
    pop de
    jp $1685


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    push hl
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp $0e
    jr nz, jr_009_44c7

    xor a
    ld [de], a
    inc de
    ld a, [de]
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    cp $20
    jr z, jr_009_44c0

    push hl
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    jr jr_009_44c3

jr_009_44c0:
    xor a
    ld [hl+], a
    ld [hl], a

jr_009_44c3:
    pop de
    call $1685

jr_009_44c7:
    call $331d
    pop de
    push de
    call Call_009_44e2
    ld a, $3c
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    call $331d
    pop de
    call Call_009_44e2
    ld a, $3d
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    inc [hl]
    ret


Call_009_44e2:
    push hl
    ld c, $10

jr_009_44e5:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_009_44e5

    pop hl
    ret


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    dec a
    jr z, jr_009_44fd

    dec a
    dec a
    jr z, jr_009_454a

    dec [hl]
    ret


jr_009_44fd:
    ld a, [hl]
    cp $02
    ret c

    xor a
    ld [hl+], a
    inc hl
    ld a, [hl]
    or a
    jr z, jr_009_4546

    dec [hl]
    inc hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    xor a
    ld [de], a
    inc de
    ld a, [de]
    ld c, a
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    inc de
    push bc
    call $1635
    pop bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, c
    cp $20
    jr z, jr_009_4541

    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    jr jr_009_4542

jr_009_4541:
    xor a

jr_009_4542:
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_009_4546:
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_454a:
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl+], a
    inc hl
    push hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_009_458d

    inc hl
    ld a, [hl-]
    or a
    jr z, jr_009_4567

    cp $20
    jr c, jr_009_458d

jr_009_4567:
    ld d, h
    ld e, l
    pop hl
    inc [hl]
    inc hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $57
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e
    call $1635
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d967]
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_009_458d:
    pop hl
    dec hl
    xor a
    ld [hl], a
    ret


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    dec a
    jr z, jr_009_45a2

    dec a
    dec a
    jr z, jr_009_45ed

    dec [hl]
    ret


jr_009_45a2:
    ld a, [hl]
    cp $02
    ret c

    xor a
    ld [hl+], a
    inc hl
    ld a, [hl]
    or a
    jr z, jr_009_45e9

    dec [hl]
    inc hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    xor a
    ld [de], a
    inc de
    ld a, [de]
    ld c, a
    inc de
    inc de
    inc de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e
    dec de
    push bc
    call $1635
    pop bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, c
    cp $20
    jr z, jr_009_45e4

    push hl
    ld hl, $d9e9
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    jr jr_009_45e5

jr_009_45e4:
    xor a

jr_009_45e5:
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_009_45e9:
    dec hl
    xor a
    ld [hl], a
    ret


jr_009_45ed:
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl+], a
    inc hl
    push hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    or a
    jr nz, jr_009_4630

    inc hl
    ld a, [hl-]
    or a
    jr z, jr_009_460a

    cp $21
    jr c, jr_009_4630

jr_009_460a:
    ld d, h
    ld e, l
    pop hl
    inc [hl]
    inc hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $57
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    call $1635
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d967]
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_009_4630:
    pop hl
    dec hl
    xor a
    ld [hl], a
    ret


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp $0b
    ret nz

    xor a
    ld [de], a
    inc de
    ld [de], a
    ld hl, $007f
    add hl, de
    xor a
    ld [de], a
    inc de
    ld [de], a
    ret


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    cp $17
    jr z, jr_009_4678

    cp $0f
    ret nz

    ld a, [$d941]
    ld c, a

jr_009_4668:
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, c
    inc a
    inc a
    ld [hl], a
    jp $1685


jr_009_4678:
    dec hl
    dec hl
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    cp $17
    jr z, jr_009_4678

    cp $0f
    ret nz

    ld a, [$d96a]
    ld c, a
    jr jr_009_4668

    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp $0e
    ret nz

    xor a
    ld [de], a
    inc de
    ld a, [de]
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    cp $20
    jr z, jr_009_46d5

    push hl
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    jr jr_009_46d8

jr_009_46d5:
    xor a
    ld [hl+], a
    ld [hl], a

jr_009_46d8:
    pop de
    jp $1685


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    push bc
    ld de, $0006
    add hl, de
    ld b, h
    ld c, l
    pop hl
    xor a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld de, $007b
    add hl, de
    xor a
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld a, [bc]
    ld [hl], a
    pop de
    call $1635
    ld a, [de]
    inc de
    ld c, a
    ld [hl+], a
    ld a, [de]
    inc de
    ld b, a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    inc de
    inc de
    inc de
    inc de
    call Call_009_476f
    ld [hl+], a
    xor a
    ld [hl], a
    push bc
    call $1635
    pop bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    call Call_009_476f
    ld [hl+], a
    xor a
    ld [hl], a
    push bc
    call $1635
    pop bc
    push hl
    ld hl, $001f
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    call Call_009_476f
    ld [hl+], a
    xor a
    ld [hl], a
    push bc
    call $1635
    pop bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    call Call_009_476f
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_009_476f:
    ld a, [de]
    inc de
    cp $20
    jr nz, jr_009_4777

    xor a
    ret


jr_009_4777:
    push hl
    push de
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp $9a
    ret nz

    xor a
    ld [de], a
    inc de
    ld a, [de]
    or a
    jr z, jr_009_47a2

    add $20

jr_009_47a2:
    ld [de], a
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    cp $20
    jr z, jr_009_47bb

    push hl
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    jr jr_009_47be

jr_009_47bb:
    xor a
    ld [hl+], a
    ld [hl], a

jr_009_47be:
    pop de
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    dec a
    jr z, jr_009_47d3

    dec a
    dec a
    jp z, Jump_009_4857

    dec [hl]
    ret


jr_009_47d3:
    ld a, [hl]
    cp $05
    ret c

    xor a
    ld [hl+], a
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_009_47ea

    dec hl
    xor a
    ld [hl], a
    ld a, $31
    ld [$c82f], a
    ld [$c835], a
    ret


jr_009_47ea:
    dec [hl]
    ld b, $00
    ld a, [hl+]
    add a
    ld c, a
    push bc
    add a
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld h, a
    ld l, e
    push hl
    ld hl, $48ec
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld b, h
    ld c, l
    pop hl
    add hl, de
    ld a, [hl]
    cp $99
    jr z, jr_009_480e

    or a
    jr nz, jr_009_4845

jr_009_480e:
    ld a, [hl]
    cp $99
    jr z, jr_009_481d

    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [hl]
    or a
    jr z, jr_009_481c

    sub $20

jr_009_481c:
    ld [hl], a

jr_009_481d:
    pop hl
    pop bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    ld hl, $48e0
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld c, [hl]
    pop hl
    push bc
    ld d, $00
    add hl, de
    ld d, h
    ld e, l
    call $1635
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    pop bc
    ld a, [$d966]
    add c
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_009_4845:
    pop hl
    pop bc
    dec hl
    dec hl
    dec hl
    inc [hl]
    dec hl
    xor a
    ld [hl], a
    ld a, $31
    ld [$c82f], a
    ld [$c835], a
    ret


Jump_009_4857:
    ld a, [hl]
    cp $05
    ret c

    xor a
    ld [hl+], a
    inc hl
    ld a, [hl]
    cp $06
    jr nz, jr_009_486f

    dec hl
    xor a
    ld [hl], a
    ld a, $31
    ld [$c82f], a
    ld [$c835], a
    ret


jr_009_486f:
    inc [hl]
    ld b, $00
    ld a, [hl+]
    add a
    ld c, a
    push bc
    add a
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld h, a
    ld l, e
    push hl
    ld hl, $4912
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld b, h
    ld c, l
    pop hl
    add hl, de
    ld a, [bc]
    cp $99
    jr nz, jr_009_4894

    ld [hl+], a
    ld a, [hl]
    jr jr_009_489d

jr_009_4894:
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [hl]
    or a
    jr z, jr_009_489d

    add $20

jr_009_489d:
    ld [hl], a
    ld [$c809], a
    pop hl
    pop bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    ld hl, $4904
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld c, [hl]
    pop hl
    push bc
    ld d, $00
    add hl, de
    ld d, h
    ld e, l
    call $1635
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    pop bc
    ld a, c
    cp $05
    jr nz, jr_009_48d8

    ld a, [$c809]
    or a
    jr z, jr_009_48d8

    push hl
    ld hl, $d9e9
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    jr jr_009_48dc

jr_009_48d8:
    ld a, [$d966]
    add c

jr_009_48dc:
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    ld h, b
    ld bc, $0460
    ld b, b
    ld bc, $0440
    jr nz, @+$03

    jr nz, jr_009_48f0

    add b
    ld bc, $0099

jr_009_48f0:
    add b
    ld bc, $0099
    nop
    ld bc, $0099
    nop
    ld bc, $0099
    add b
    nop
    sbc c
    nop
    add b
    nop
    sbc c
    nop
    ld h, b
    ld bc, $0460
    ld h, b
    dec b
    ld b, b
    inc b
    ld b, b
    dec b
    jr nz, @+$06

    jr nz, jr_009_4917

    add b
    ld bc, $0099
    add b

jr_009_4917:
    ld bc, $0099
    add b
    ld bc, $0000
    nop
    ld bc, $0099
    nop
    ld bc, $0000
    add b
    nop
    sbc c
    nop
    add b
    nop
    nop
    nop
    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    or a
    ret z

    ld c, a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    call nz, Call_009_4946
    ld a, [hl]
    or a
    ret z

Call_009_4946:
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db18
    add hl, de
    ld [hl], c
    pop hl
    ret


    call Call_009_63f3
    inc hl
    inc hl
    ld a, $0f
    cp [hl]
    ret nz

    xor a
    ld [hl+], a
    inc hl
    inc [hl]
    ld a, [hl]
    cp $0a
    jr nz, jr_009_4968

    xor a

jr_009_4968:
    ld [hl+], a
    push af
    add a
    add a
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld hl, $49a1
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    push hl
    ld hl, $007f
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    pop af
    push hl
    ld hl, $49c9
    ld c, a
    add hl, bc
    ld a, [$d969]
    add [hl]
    pop hl
    ld [hl], a
    jp $1685


    ld [$0810], sp
    ld bc, $1008
    ld [$0801], sp
    db $10
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0810], sp
    ld bc, $1008
    ld [$0801], sp
    db $10
    ld [$0001], sp
    ld [bc], a
    inc b
    ld b, $06
    ld b, $06
    inc b
    ld [bc], a
    nop
    ld e, $3c
    dec a
    ld a, b
    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    ld e, [hl]
    push hl
    ld hl, $49d3
    ld d, $00
    add hl, de
    cp [hl]
    pop hl
    ret nz

    ld a, [hl]
    inc a
    and $03
    ld [hl+], a
    dec e
    jr z, jr_009_4a23

    dec e
    jr z, jr_009_4a0b

    dec e
    jr z, jr_009_4a1e

    inc hl
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d97d]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


jr_009_4a0b:
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d97d]
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


jr_009_4a1e:
    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    ret


jr_009_4a23:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5d
    pop hl
    ld a, $70
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    sub $06
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $19
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec bc
    dec bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    ld b, a
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    ld e, [hl]
    push hl
    ld hl, $49d3
    ld d, $00
    add hl, de
    cp [hl]
    pop hl
    ret nz

    ld a, [hl]
    inc a
    and $03
    ld [hl+], a
    dec e
    jr z, jr_009_4ade

    dec e
    jr z, jr_009_4ac6

    dec e
    jr z, jr_009_4ad9

    inc hl
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d97e]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


jr_009_4ac6:
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d97e]
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


jr_009_4ad9:
    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    ret


jr_009_4ade:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5e
    pop hl
    ld a, $71
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    add $10
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $80
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $15
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    ldh a, [$f0]
    sub [hl]
    sub [hl]

    call Call_009_63f3
    inc hl
    inc hl
    ldh a, [$95]
    bit 1, a
    jr z, jr_009_4b5f

    dec [hl]
    ret


jr_009_4b5f:
    ld a, [hl+]
    cp [hl]
    ret c

    dec hl
    xor a
    ld [hl+], a
    inc hl
    inc [hl]
    ld a, [hl]
    and $03
    ld [hl-], a
    push hl
    ld hl, $4b4e
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    inc hl
    push hl
    ld hl, $c200
    ld de, $0020
    ld bc, $0020

jr_009_4b81:
    ld a, [hl]
    or a
    jr z, jr_009_4b8c

    inc hl
    ld a, [hl-]
    cp $6e
    jr nz, jr_009_4b8c

    inc b

jr_009_4b8c:
    add hl, de
    dec c
    jr nz, jr_009_4b81

    pop hl
    ld a, b
    cp $08
    ret nc

    ld d, h
    ld e, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    dec hl
    dec hl
    dec hl
    dec hl
    push hl
    ld a, [hl+]
    cp $0a
    jr nz, jr_009_4bb0

    ld a, [hl]
    cp $00
    call z, Call_009_4be6
    cp $02
    call z, Call_009_4cfe

jr_009_4bb0:
    pop hl
    ld bc, $0080
    add hl, bc
    ld a, [hl+]
    cp $0a
    jr nz, jr_009_4bc0

    ld a, [hl]
    cp $01
    call z, Call_009_4c6d

jr_009_4bc0:
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    cp $0a
    jr nz, jr_009_4bd6

    ld a, [hl]
    cp $00
    call z, Call_009_4d89
    cp $01
    call z, Call_009_4e91

jr_009_4bd6:
    pop hl
    ld bc, $0080
    add hl, bc
    ld a, [hl+]
    cp $0a
    ret nz

    ld a, [hl]
    cp $02
    call z, Call_009_4e09
    ret


Call_009_4be6:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    sub $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $2b
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec bc
    dec bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $fffd
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


Call_009_4c6d:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    sub $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $2c
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $007e
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $fffd
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


Call_009_4cfe:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    sub $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $2a
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec bc
    dec bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $fffd
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


Call_009_4d89:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    add $05
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $40
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


Call_009_4e09:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    add $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $0082
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


Call_009_4e91:
    push de
    push af
    ld a, $56
    ld [$c82e], a
    ld [$c835], a
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5b
    pop hl
    ld a, $6e
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    add $04
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    add $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $22
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, $06
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $00
    pop bc
    call $32f5
    pop af
    pop de
    ret


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl+]
    cp [hl]
    ret nz

    dec hl
    xor a
    ld [hl+], a
    push hl
    ld a, $3c
    call Call_1d18
    pop hl
    ld [hl+], a
    ld a, [$defe]
    and $03
    ret nz

    push hl
    ld hl, $c200
    ld de, $0020
    ld bc, $0020

jr_009_4f38:
    ld a, [hl]
    or a
    jr z, jr_009_4f43

    inc hl
    ld a, [hl-]
    cp $ae
    jr nz, jr_009_4f43

    inc b

jr_009_4f43:
    add hl, de
    dec c
    jr nz, jr_009_4f38

    pop hl
    ld a, [hl+]
    cp b
    ret c

    ld a, [hl]
    call Call_1d18
    ld b, a
    ld hl, $c86d
    ld de, $3842
    ld c, $82

jr_009_4f58:
    ld a, [hl+]
    cp e
    jr z, jr_009_4f64

    cp c
    jr z, jr_009_4f6c

    inc hl
    inc hl
    inc hl
    jr jr_009_4f58

jr_009_4f64:
    ld a, [hl+]
    cp d
    jr z, jr_009_4f75

    inc hl
    inc hl
    jr jr_009_4f58

jr_009_4f6c:
    ld a, [hl+]
    cp $39
    jr z, jr_009_4f75

    inc hl
    inc hl
    jr jr_009_4f58

jr_009_4f75:
    ld a, b
    or a
    jr z, jr_009_4f7e

    dec b
    inc hl
    inc hl
    jr jr_009_4f58

jr_009_4f7e:
    dec hl
    dec hl
    call $3375
    push de
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $0b
    pop hl
    ld a, $ae
    ld [hl+], a
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    pop de
    ld a, d
    sub $10
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $52
    ld [hl+], a
    inc hl
    inc hl
    ld a, [$c80a]
    ld b, a
    add $40
    ld [hl], a
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    push hl
    ld de, $000d
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_009_4fd9

    dec a
    jr z, jr_009_4fd7

    dec [hl]
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_009_500d

jr_009_4fd7:
    pop hl
    ret


jr_009_4fd9:
    pop hl
    ld a, [hl]
    cp $0c
    ret c

    xor a
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    cp $25
    ret c

    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $c200
    ld de, $0020
    ld bc, $0020

jr_009_4ff4:
    ld a, [hl]
    or a
    jr z, jr_009_5004

    inc hl
    ld a, [hl-]
    cp $a0
    jr nz, jr_009_4fff

    inc b

jr_009_4fff:
    cp $a1
    jr nz, jr_009_5004

    inc b

jr_009_5004:
    add hl, de
    dec c
    jr nz, jr_009_4ff4

    pop hl
    ld a, b
    cp $05
    ret nc

jr_009_500d:
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5a
    pop hl
    ld a, $a0
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $09
    ld [hl+], a
    inc hl
    inc hl
    ld a, [$c80a]
    ld b, a
    add $40
    ld [hl], a
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jr z, jr_009_50c3

    dec a
    jr z, jr_009_508a

    dec a
    jr z, jr_009_50b0

    dec a
    jp z, Jump_009_50d9

    dec a
    jr z, jr_009_5064

    dec a
    jr z, jr_009_50b0

    jr jr_009_5078

jr_009_5064:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a5]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5078:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a5]
    ld [hl], a
    pop de
    jp $1685


jr_009_508a:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $98
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    sub $09
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


Jump_009_50b0:
jr_009_50b0:
    ld de, $000b
    add hl, de
    ld a, [hl]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c202
    add hl, de
    inc [hl]
    ret


Jump_009_50c3:
jr_009_50c3:
    ld de, $000b
    add hl, de
    ld a, [hl]
    or a
    ret z

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
    ret


Jump_009_50d9:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5d
    pop hl
    ld a, $98
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    add $03
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    sub $08
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $19
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec bc
    dec bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


Call_009_514b:
    inc hl
    inc hl
    inc [hl]
    ld a, [hl]
    cp $1f
    jr c, jr_009_5158

    xor a
    ld [hl-], a
    dec hl
    ld [hl+], a
    inc hl

jr_009_5158:
    and $07
    cp $07
    jr c, jr_009_5164

    inc [hl]
    dec hl
    dec hl
    xor a
    ld [hl+], a
    inc hl

jr_009_5164:
    ld a, [hl-]
    push hl
    ld hl, $64d3
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    ld a, e
    and $07
    ret


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_51bc

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_51df

    dec a
    jr z, jr_009_5196

    dec a
    jp z, Jump_009_50b0

    jr jr_009_51aa

jr_009_5196:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a6]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_51aa:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a6]
    ld [hl], a
    pop de
    jp $1685


jr_009_51bc:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $99
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    add $0f
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $20
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_51df:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5e
    pop hl
    ld a, $99
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    add $03
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    add $0a
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $c0
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $15
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_5299

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_52c0

    dec a
    jr z, jr_009_5273

    dec a
    jp z, Jump_009_50b0

    jr jr_009_5287

jr_009_5273:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a7]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5287:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a7]
    ld [hl], a
    pop de
    jp $1685


jr_009_5299:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $9a
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e8
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld [hl], $e8
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_52c0:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5f
    pop hl
    ld a, $9a
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    sub $03
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    sub $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $18
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $ff7e
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_5384

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_53a5

    dec a
    jr z, jr_009_535e

    dec a
    jp z, Jump_009_50b0

    jr jr_009_5372

jr_009_535e:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a8]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5372:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a8]
    ld [hl], a
    pop de
    jp $1685


jr_009_5384:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $9b
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_53a5:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $60
    pop hl
    ld a, $9b
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    sub $06
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    add $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $17
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $ff82
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_5465

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_548a

    dec a
    jr z, jr_009_543f

    dec a
    jp z, Jump_009_50b0

    jr jr_009_5453

jr_009_543f:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a9]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5453:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9a9]
    ld [hl], a
    pop de
    jp $1685


jr_009_5465:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $9c
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e8
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $18
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_548a:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $61
    pop hl
    ld a, $9c
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    sub $03
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    add $0c
    ld [hl+], a
    ld [$c80e], a
    inc hl
    xor a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $16
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $ff86
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_554f

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_5570

    dec a
    jr z, jr_009_5529

    dec a
    jp z, Jump_009_50b0

    jr jr_009_553d

jr_009_5529:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9aa]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_553d:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9aa]
    ld [hl], a
    pop de
    jp $1685


jr_009_554f:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $9d
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_5570:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $62
    pop hl
    ld a, $9d
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    sub $06
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, [de]
    dec de
    dec de
    dec de
    add $04
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $17
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push hl
    ld hl, $ff82
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_581d
    or a
    jr z, jr_009_55ff

    cp $05
    jp z, Jump_009_5676

    dec a
    jp z, Jump_009_578c

    dec a
    dec a
    jp z, Jump_009_56ef

    jp Jump_009_57f1


jr_009_55ff:
    inc hl
    inc hl
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl+], a
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $09
    pop hl
    ld a, $a4
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, [$c80f]
    cpl
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $42
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld [hl+], a
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld a, $43
    ld e, a
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld d, a
    ld [bc], a
    ld [hl+], a
    ld a, [$c70d]
    ld [hl], a
    inc bc
    inc bc
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    ld a, $0b
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $20
    pop bc
    jp $32f5


Jump_009_5676:
    inc hl
    inc hl
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl+], a
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $09
    pop hl
    ld a, $a4
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    ld a, [$c80f]
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $43
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld [hl+], a
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld a, $43
    ld e, a
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld d, a
    ld [bc], a
    ld [hl+], a
    ld a, [$c70d]
    ld [hl], a
    inc bc
    inc bc
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    ld a, $0b
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $20
    pop bc
    jp $32f5


Jump_009_56ef:
    inc hl
    inc hl
    push hl
    ld de, $0009
    add hl, de
    ld [hl], $05
    ld hl, $c220
    ld bc, $ff1f

jr_009_56fe:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_009_572b

    ld a, [hl]
    cp $a4
    jr nz, jr_009_572b

    ld de, $0011
    add hl, de
    ld a, [$c70d]
    cp [hl]
    jr nz, jr_009_572b

    ld de, $fff1
    add hl, de
    ld a, [hl+]
    inc hl
    cp b
    jr nc, jr_009_571c

    ld b, a

jr_009_571c:
    xor a
    ld [hl+], a
    ld a, [$c80f]
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, $01
    ld [hl+], a
    ld [hl], $43

jr_009_572b:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_009_56fe

    pop hl
    push hl
    ld de, $0005
    add hl, de
    ld a, b
    cp $ff
    jr z, jr_009_5755

    sub [hl]
    jr c, jr_009_5751

    ld c, a
    ld e, $05
    add hl, de
    ld b, [hl]
    ld h, c
    ld l, $00
    call $2954
    srl e
    pop hl
    ld [hl], e
    ret


jr_009_5751:
    pop hl
    xor a
    ld [hl], a
    ret


Jump_009_5755:
jr_009_5755:
    ld b, [hl]
    pop hl
    inc hl
    ld a, [hl-]
    sub b
    ld c, a
    ld b, [hl]
    push hl
    ld a, b
    and $f0
    swap a
    inc a
    ld b, a
    ld de, $000a
    add hl, de
    ld a, [hl+]
    push hl
    swap a
    ld e, a
    xor a

jr_009_576e:
    add e
    dec b
    jr nz, jr_009_576e

    add a
    sub c
    ld h, a
    ld l, $00
    ld b, e
    swap b
    call $2954
    srl e
    pop hl
    ld a, [hl]
    sub e
    pop hl
    ld [hl], a
    ret


Jump_009_5785:
jr_009_5785:
    push hl
    ld de, $0005
    add hl, de
    jr jr_009_5755

Jump_009_578c:
    inc hl
    inc hl
    push hl
    ld de, $0009
    add hl, de
    xor a
    ld [hl], a
    ld hl, $c220
    ld bc, $001f

jr_009_579b:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_009_57cb

    ld a, [hl]
    cp $a4
    jr nz, jr_009_57cb

    ld de, $0011
    add hl, de
    ld a, [$c70d]
    cp [hl]
    jr nz, jr_009_57cb

    ld de, $fff1
    add hl, de
    ld a, [hl+]
    inc hl
    cp b
    jr c, jr_009_57b9

    ld b, a

jr_009_57b9:
    ld a, $ff
    ld [hl+], a
    ld a, [$c80f]
    cpl
    inc a
    ld [hl], a
    ld de, $0007
    add hl, de
    ld a, $00
    ld [hl+], a
    ld [hl], $42

jr_009_57cb:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_009_579b

    pop hl
    inc hl
    ld a, [hl-]
    sub b
    jr c, jr_009_57ee

    ld c, a
    ld a, b
    or a
    jr z, jr_009_5785

    push hl
    ld e, $0a
    add hl, de
    ld b, [hl]
    ld h, c
    ld l, $00
    call $2954
    srl e
    pop hl
    ld [hl], e
    ret


jr_009_57ee:
    xor a
    ld [hl], a
    ret


Jump_009_57f1:
    inc hl
    inc hl
    dec [hl]
    ld hl, $c220
    ld c, $1f

jr_009_57f9:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_009_5814

    ld a, [hl]
    cp $a4
    jr nz, jr_009_5814

    ld de, $0011
    add hl, de
    ld a, [$c70d]
    cp [hl]
    jr nz, jr_009_5814

    ld de, $fff3
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a

jr_009_5814:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_009_57f9

    ret


Call_009_581d:
    call Call_009_63f3
    push hl
    ld de, $000d
    add hl, de
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld [$c80f], a
    ld a, [hl]
    pop hl
    ret


    call Call_009_581d
    or a
    jr z, jr_009_5845

    cp $05
    jp z, Jump_009_58ba

    dec a
    jp z, Jump_009_5935

    dec a
    dec a
    jp z, Jump_009_5999

    jp Jump_009_57f1


jr_009_5845:
    inc hl
    inc hl
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl+], a
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $09
    pop hl
    ld a, $a4
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    ld a, [$c80f]
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $43
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld [hl+], a
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld a, $43
    ld e, a
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld d, a
    ld [bc], a
    ld [hl+], a
    ld a, [$c70d]
    ld [hl], a
    inc bc
    inc bc
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    ld a, $0b
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $20
    pop bc
    jp $32f5


Jump_009_58ba:
    inc hl
    inc hl
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl+], a
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $09
    pop hl
    ld a, $a4
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, [$c80f]
    cpl
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $42
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld [hl+], a
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld a, $43
    ld e, a
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld d, a
    ld [bc], a
    ld [hl+], a
    ld a, [$c70d]
    ld [hl], a
    inc bc
    inc bc
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    ld a, $0b
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    ld [hl], $20
    pop bc
    jp $32f5


Jump_009_5935:
    inc hl
    inc hl
    push hl
    ld de, $0009
    add hl, de
    ld [hl], $00
    ld hl, $c220
    ld bc, $ff1f

jr_009_5944:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_009_5971

    ld a, [hl]
    cp $a4
    jr nz, jr_009_5971

    ld de, $0011
    add hl, de
    ld a, [$c70d]
    cp [hl]
    jr nz, jr_009_5971

    ld de, $fff1
    add hl, de
    ld a, [hl+]
    inc hl
    cp b
    jr nc, jr_009_5962

    ld b, a

jr_009_5962:
    xor a
    ld [hl+], a
    ld a, [$c80f]
    ld [hl], a
    ld de, $0007
    add hl, de
    ld a, $01
    ld [hl+], a
    ld [hl], $43

jr_009_5971:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_009_5944

    pop hl
    inc hl
    ld a, b
    cp $ff
    jp z, Jump_009_5785

    sub [hl]
    dec hl
    jr c, jr_009_5996

    push hl
    ld c, a
    ld e, $0a
    add hl, de
    ld b, [hl]
    ld h, c
    ld l, $00
    call $2954
    srl e
    pop hl
    ld [hl], e
    ret


jr_009_5996:
    xor a
    ld [hl], a
    ret


Jump_009_5999:
    inc hl
    inc hl
    push hl
    ld de, $0009
    add hl, de
    ld [hl], $05
    ld hl, $c220
    ld bc, $001f

jr_009_59a8:
    push hl
    ld a, [hl+]
    or a
    jr z, jr_009_59d8

    ld a, [hl]
    cp $a4
    jr nz, jr_009_59d8

    ld de, $0011
    add hl, de
    ld a, [$c70d]
    cp [hl]
    jr nz, jr_009_59d8

    ld de, $fff1
    add hl, de
    ld a, [hl+]
    inc hl
    cp b
    jr c, jr_009_59c6

    ld b, a

jr_009_59c6:
    ld a, $ff
    ld [hl+], a
    ld a, [$c80f]
    cpl
    inc a
    ld [hl], a
    ld de, $0007
    add hl, de
    ld a, $00
    ld [hl+], a
    ld [hl], $42

jr_009_59d8:
    pop hl
    ld de, $0020
    add hl, de
    dec c
    jr nz, jr_009_59a8

    pop hl
    push hl
    ld de, $0005
    add hl, de
    ld a, [hl]
    sub b
    jr c, jr_009_59ff

    ld c, a
    ld a, b
    or a
    jp z, Jump_009_5755

    ld e, $05
    add hl, de
    ld b, [hl]
    ld h, c
    ld l, $00
    call $2954
    srl e
    pop hl
    ld [hl], e
    ret


jr_009_59ff:
    pop hl
    xor a
    ld [hl], a
    ret


    ret


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $11
    ld de, $0080
    add hl, de
    ld a, $13
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $12
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9b2]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $14
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $15
    ld de, $0080
    add hl, de
    ld a, $17
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $16
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9b3]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $19
    ld de, $0080
    add hl, de
    ld a, $1b
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $1a
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9b4]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $1d
    ld de, $0080
    add hl, de
    ld a, $1f
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $1e
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9b5]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_5b60

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_5b81

    dec a
    jr z, jr_009_5b3a

    dec a
    jp z, Jump_009_50b0

    jr jr_009_5b4e

jr_009_5b3a:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9ef]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5b4e:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9ef]
    ld [hl], a
    pop de
    jp $1685


jr_009_5b60:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $e2
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    sub $03
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    add $0e
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_5b81:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5d
    pop hl
    ld a, $e2
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    add $01
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    add $0a
    ld [hl+], a
    ld [$c80e], a
    inc hl
    inc hl
    ld a, $c0
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $15
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec bc
    dec bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_514b
    jp z, Jump_009_50c3

    dec a
    jr z, jr_009_5c3b

    dec a
    jp z, Jump_009_50b0

    dec a
    jr z, jr_009_5c5c

    dec a
    jr z, jr_009_5c15

    dec a
    jp z, Jump_009_50b0

    jr jr_009_5c29

jr_009_5c15:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f0]
    add $04
    ld [hl], a
    pop de
    jp $1685


jr_009_5c29:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f0]
    ld [hl], a
    pop de
    jp $1685


jr_009_5c3b:
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $e3
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [de]
    sub $03
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    sub $08
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_5c5c:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    inc hl
    inc hl
    inc hl
    push hl
    call $332d
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $5e
    pop hl
    ld a, $e3
    ld [hl+], a
    ld [hl+], a
    inc hl
    pop de
    ld a, [de]
    inc de
    add $01
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    inc hl
    ld a, [de]
    dec de
    dec de
    dec de
    sub $08
    ld [hl+], a
    ld [$c80e], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    inc hl
    ld a, $81
    ld [hl+], a
    inc hl
    ld a, $19
    ld [hl+], a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl], a
    pop bc
    jp $32f5


    call Call_009_63f3
    push hl
    call Call_009_5ddd
    pop hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_5e81
    and $0f
    jr z, jr_009_5cf4

    dec a
    jr z, jr_009_5d31

    dec a
    jr z, jr_009_5d45

    dec a
    jp z, Jump_009_5e39

    dec a
    jp z, Jump_009_5e5f

    jp Jump_009_5dfd


jr_009_5cf4:
    ld a, [hl+]
    push hl
    swap a
    and $03
    add a
    ld hl, $651c
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c809], a
    ld a, [hl]
    ld [$c80a], a
    pop hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $e4
    ld [hl+], a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [$c809]
    ld b, a
    ld a, [de]
    add b
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c80a]
    ld b, a
    ld a, [de]
    add b
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


Jump_009_5d31:
jr_009_5d31:
    ld de, $000b
    add hl, de
    ld a, [hl]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c202
    add hl, de
    xor a
    ld [hl], a
    ret


jr_009_5d45:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    ld a, [hl]
    push hl
    push hl
    swap a
    and $03
    ld e, a
    add a
    add a
    add e
    ld hl, $6524
    ld d, $00
    ld e, a
    add hl, de
    pop de
    push hl
    ld hl, $000b
    add hl, de
    ld a, [hl]
    ld c, a
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c202
    add hl, de
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $46
    pop hl
    pop de
    pop bc
    inc bc
    xor a
    ld [hl+], a
    ld a, [hl+]
    ld [$c80d], a
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [hl+]
    ld [$c80e], a
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $85
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    push hl
    ld a, [de]
    ld d, $00
    ld e, a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    jp $32f5


Call_009_5ddd:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and $0f
    jr z, jr_009_5dea

    dec a
    jr z, jr_009_5dea

    ret


jr_009_5dea:
    ld de, $000b
    add hl, de
    ld a, [hl]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c202
    add hl, de
    inc [hl]
    ret


Jump_009_5dfd:
    ld a, [hl+]
    push hl
    swap a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    swap e
    srl e
    pop hl
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $64fc
    add hl, de
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    pop hl
    pop bc
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f1]
    add b
    ld [hl], a
    pop de
    jp $1685


Jump_009_5e39:
    ld a, [hl+]
    push hl
    swap a
    dec a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f1]
    add b
    ld [hl], a
    pop de
    jp $1685


Jump_009_5e5f:
    ld a, [hl+]
    push hl
    swap a
    dec a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f1]
    add b
    ld [hl], a
    pop de
    jp $1685


Call_009_5e81:
    xor a
    ld [hl+], a
    inc hl
    inc [hl]
    ld a, [hl]
    and $07
    cp $06
    jr c, jr_009_5e93

    ld a, [hl]
    add $10
    and $30
    ld [hl], a
    xor a

jr_009_5e93:
    push hl
    ld hl, $64f2
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    dec hl
    ld [hl+], a
    ld a, [hl]
    ret


    call Call_009_63f3
    push hl
    call Call_009_5ddd
    pop hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp [hl]
    ret nz

    call Call_009_5e81
    and $0f
    jr z, jr_009_5ec8

    dec a
    jp z, Jump_009_5d31

    dec a
    jr z, jr_009_5f05

    dec a
    jp z, Jump_009_5fd9

    dec a
    jp z, Jump_009_5fff

    jp Jump_009_5f9d


jr_009_5ec8:
    ld a, [hl+]
    push hl
    swap a
    and $03
    add a
    ld hl, $6558
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c809], a
    ld a, [hl]
    ld [$c80a], a
    pop hl
    inc hl
    inc hl
    push hl
    call $332d
    pop de
    ld a, $e5
    ld [hl+], a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [$c809]
    ld b, a
    ld a, [de]
    add b
    inc de
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c80a]
    ld b, a
    ld a, [de]
    add b
    ld [hl], a
    ld hl, $0007
    add hl, de
    ld [hl], c
    ret


jr_009_5f05:
    ld a, $14
    ld [$c82e], a
    ld [$c835], a
    ld a, [hl]
    push hl
    push hl
    swap a
    and $03
    ld e, a
    add a
    add a
    add e
    ld hl, $6560
    ld d, $00
    ld e, a
    add hl, de
    pop de
    push hl
    ld hl, $000b
    add hl, de
    ld a, [hl]
    ld c, a
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c202
    add hl, de
    push hl
    ld hl, $c0a6
    ld a, c
    ld [$c80a], a
    ld b, $00
    add hl, bc
    ld [hl], $47
    pop hl
    pop de
    pop bc
    inc bc
    xor a
    ld [hl+], a
    ld a, [hl+]
    ld [$c80d], a
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [hl+]
    ld [$c80e], a
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $85
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $16
    ld [hl+], a
    push hl
    ld a, [de]
    ld d, $00
    ld e, a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $81
    ld [bc], a
    inc bc
    ld a, [$c80a]
    push af
    add $40
    ld [bc], a
    ld [hl], a
    ld bc, $000c
    add hl, bc
    ld a, [$c80d]
    and $f8
    ld [hl+], a
    ld a, [$c80e]
    and $f8
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    jp $32f5


Jump_009_5f9d:
    ld a, [hl+]
    push hl
    swap a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    swap e
    srl e
    pop hl
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $6538
    add hl, de
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    pop hl
    pop bc
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f2]
    add b
    ld [hl], a
    pop de
    jp $1685


Jump_009_5fd9:
    ld a, [hl+]
    push hl
    swap a
    dec a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f2]
    add b
    ld [hl], a
    pop de
    jp $1685


Jump_009_5fff:
    ld a, [hl+]
    push hl
    swap a
    dec a
    and $03
    ld hl, $64f8
    ld d, $00
    ld e, a
    add hl, de
    ld b, [hl]
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f2]
    add b
    ld [hl], a
    pop de
    jp $1685


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $27
    ld de, $0080
    add hl, de
    ld a, $29
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $28
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f8]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $2a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $2b
    ld de, $0080
    add hl, de
    ld a, $2d
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $2c
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9f9]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    ld hl, $da47
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $2e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $2f
    ld de, $0080
    add hl, de
    ld a, $31
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $30
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9fa]
    ld [hl+], a
    xor a
    ld [hl], a
    call $1685
    jp Jump_009_644b


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    cp $1e
    ret nz

    xor a
    ld [hl+], a
    dec [hl]
    ret nz

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $32
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $33
    ld de, $0080
    add hl, de
    ld a, $35
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $34
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d962]
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


    call Call_009_63f3
    inc hl
    inc hl
    ld a, [hl]
    cp $1e
    ret nz

    xor a
    ld [hl+], a
    dec [hl]
    ret nz

    dec hl
    dec hl
    dec hl
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $36
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $37
    ld de, $0080
    add hl, de
    ld a, $39
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $38
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d9fc]
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685

Call_09_6182:
    ld a, $4f
    ld [hl], a
    push hl
    call $331d
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    ld a, $35
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9f8]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    call $1685
    call $331d
    ld a, [$c809]
    ld e, a
    ld a, [$c80a]
    ld d, a
    push de
    call Call_009_61e9
    inc hl
    ld a, $32
    ld [hl+], a
    inc [hl]
    call $331d
    pop de
    call Call_009_61e9
    inc hl
    ld a, $33
    ld [hl+], a
    inc [hl]
    inc [hl]
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    call Call_009_6485
    jp Jump_009_648b


Call_009_61e9:
    push hl
    ld c, $10
jr_009_61ec:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_009_61ec
    pop hl
    ret

Call_09_61f4:
    ld a, $0e
    ld [hl], a
    push hl
    call $331d
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9f9]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    call $1685
    call $331d
    ld a, [$c809]
    ld e, a
    ld a, [$c80a]
    ld d, a
    push de
    call Call_009_625b
    inc hl
    ld a, $3e
    ld [hl+], a
    inc [hl]
    call $331d
    pop de
    call Call_009_625b
    inc hl
    ld a, $3f
    ld [hl+], a
    inc [hl]
    inc [hl]
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    call Call_009_6485
    jp Jump_009_648b


Call_009_625b:
    push hl
    ld c, $10

jr_009_625e:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_009_625e

    pop hl
    ret

Call_09_6266:
    push hl
    push hl
    call $331d
    ld a, $53
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9fa]
    add $04
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    push hl
    call $1685
    pop de
    pop hl
    ld a, $42
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $80
    ld [hl+], a
    inc hl
    inc hl
    ld a, $42
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $81
    ld [hl], a
    ld bc, $007b
    add hl, bc
    ld a, $42
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $82
    ld [hl+], a
    inc hl
    inc hl
    ld a, $42
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    ld a, $83
    ld [hl], a
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    jp Jump_009_648b

Call_09_62cd:
    ld a, $0e
    ld [hl], a
    push hl
    call $331d
    ld a, $37
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9b3]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    call $1685
    jp Jump_009_648b

Call_09_6308:
    push hl
    push hl
    call $331d
    ld a, $48
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9b4]
    add $04
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    push hl
    call $1685
    pop de
    pop hl
    ld a, $52
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $14
    ld [hl+], a
    inc hl
    inc hl
    ld a, $52
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $15
    ld [hl], a
    ld bc, $007b
    add hl, bc
    ld a, $52
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $16
    ld [hl+], a
    inc hl
    inc hl
    ld a, $52
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    ld a, $17
    ld [hl], a
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    jp Jump_009_648b

Call_09_636f:
    ld a, $9a
    ld [hl+], a
    ld a, [hl]
    or a
    jr z, jr_009_6378
    sub $20
jr_009_6378:
    ld [hl-], a
    push hl
    call $331d
    ld a, $57
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9b2]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    ld hl, $da47
    ld a, $f0
    ld [hl+], a
    ld [hl], $00
    call $1685
    jp Jump_009_648b


    ld hl, $dd3c
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_009_63f3
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    ld [hl+], a
    ld a, $3a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0b
    ld [hl+], a
    ld [hl], $3b
    ld de, $0080
    add hl, de
    ld a, $3d
    ld [hl-], a
    ld a, $0b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $3c
    ld [hl-], a
    ld [hl], $0b
    pop hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$da01]
    ld [hl+], a
    xor a
    ld [hl], a
    jp $1685


Call_009_63f3:
    ld de, $db15
    ld a, [$c70d]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, de
    ret


    ld de, $c200
    ld a, [$c70d]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    ret


    push bc
    inc bc
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ld bc, $2bb3
    add hl, bc
    ld a, l
    and $1f
    add a
    add a
    ld b, $00
    ld c, a
    swap h
    ld a, l
    and $e0
    swap a
    or h
    ld l, b
    ld h, a
    srl h
    rr l
    srl h
    rr l
    add hl, bc
    ld bc, $c8f3
    add hl, bc
    pop de
    ret


    ld hl, $c0a6
    ld a, [$c70d]
    ld d, $00
    ld e, a
    add hl, de
    xor a
    ld [hl], a
    ret


Jump_009_644b:
    ld hl, $da46
    dec [hl]
    ret nz

    ld a, $26
    ld [$c82e], a
    ld [$c835], a
    ld a, [$c837]
    cp $03
    ret z

    cp $24
    ret z

    ld a, [$c201]
    cp $1a
    jr c, jr_009_6479

    cp $1e
    jr nc, jr_009_6479

    xor a
    ld [$c837], a
    ld a, $29
    ld [$c82e], a
    ld [$c835], a
    ret


jr_009_6479:
    ld a, [$da45]
    ld [$c836], a
    ret


Jump_009_6480:
    ld hl, $da4a
    dec [hl]
    ret


Call_009_6485:
    ld hl, $da4a
    inc [hl]
    inc [hl]
    ret


Jump_009_648b:
    ld hl, $da46
    inc [hl]
    ret


Call_009_6490:
    ld a, $6a
    ld [$c82f], a
    ld [$c835], a
    ld h, d
    ld l, e
    push hl
    ld a, $85
    ld [hl+], a
    ld [hl], $02
    call $331d
    ld a, $5d
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, [$d96a]
    inc a
    ld [hl+], a
    xor a
    ld [hl], a

jr_009_64c7:
    pop de
    jp $1685


    ld b, $00
    adc d
    rst $38
    add [hl]
    rst $38
    adc d
    rst $38
    ld [hl], $3b
    inc a
    dec a

jr_009_64d7:
    ld b, b
    ld b, c
    ld b, l
    nop
    sub b
    sub l
    sub [hl]
    sub a
    sbc d
    sbc e
    sbc a
    nop
    jr @+$1f

    ld e, $1f
    ld [hl+], a
    inc hl
    daa
    nop
    ld d, h
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, a
    ld h, e
    db $10
    inc b
    ld bc, $3304
    ld c, $10
    ld [$0800], sp
    add d
    rrca
    add d
    db $10
    add d
    ld de, $1282
    add d
    dec bc
    add d
    inc c
    add d
    dec c
    add d
    ld c, $82
    rlca
    add d
    ld [$0982], sp
    add d
    ld a, [bc]
    add d
    dec bc
    add d
    inc c
    add d
    dec c
    add d
    ld c, $fc
    db $fd
    ld sp, hl
    ld b, $fc
    db $fd
    inc bc
    ld sp, hl
    rst $38
    add b
    rst $38
    add b
    ld a, [hl]
    rst $38
    ld b, b
    nop
    nop
    add d
    rst $38
    add b
    rst $38
    add b
    ld a, [hl]
    nop
    nop
    rst $38
    ld b, b
    cp $82
    dec de
    add d
    inc e
    add d
    dec e
    add d
    ld e, $82
    rla
    add d
    jr jr_009_64c7

    add hl, de
    add d
    ld a, [de]
    add d
    inc de
    add d
    inc d
    add d
    dec d
    add d
    ld d, $82
    rla
    add d
    jr jr_009_64d7

    add hl, de
    add d
    ld a, [de]
    db $fc
    dec bc
    ld sp, hl
    ld [bc], a
    db $fc
    dec bc
    inc bc
    db $10
    rst $38
    add b
    nop
    add b
    adc d
    rst $38
    ld b, b
    nop
    nop
    add [hl]
    rst $38
    add b
    nop
    add b
    adc d
    nop
    nop
    nop
    ret nz

    db $06

    ld a, [$c10b]
    cp $04
    jp nc, Jump_009_660b

    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $6f9c
    add hl, bc
    ld a, [hl]
    ld [$c1f1], a
    ld a, [$c10b]
    ld b, a
    add a
    add a
    add b
    ld c, a
    ld b, $00
    ld hl, $66a3
    add hl, bc
    ld a, [hl+]
    ld [$c1f2], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    rla
    jr nc, jr_009_660b

    ld bc, $0006
    add hl, bc
    ld a, [$c108]
    sub $40
    cp [hl]
    jr nz, jr_009_660b

    ld a, [$c1f1]
    and a
    jr nz, jr_009_65c9

    ld a, [$c1f2]
    ld b, a
    ld a, [de]
    and b
    jr nz, jr_009_65c9

    ld hl, $0007
    add hl, de
    ld a, [hl]
    and b
    jr z, jr_009_660b

jr_009_65c9:
    ld a, [$c10e]
    srl a
    ld c, a
    ld b, $00
    ld hl, $66a0
    add hl, bc
    ld a, [hl]
    ld hl, $c10c
    sub [hl]
    ld [hl], a
    ld hl, $c0fd
    ld a, [hl-]
    cpl
    add $01
    ld e, a
    ld a, [hl]
    cpl
    adc $00
    ld e, a
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c101
    ld a, [hl-]
    cpl
    add $01
    ld e, a
    ld a, [hl]
    cpl
    adc $00
    ld d, a
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c10a]
    ld c, a
    ld b, $00
    ld hl, $6696
    add hl, bc
    ld a, [hl]
    ld [$c10a], a
    jr jr_009_6616

Jump_009_660b:
jr_009_660b:
    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_009_6614

    dec [hl]
    ret nz

jr_009_6614:
    ld [hl], $02

jr_009_6616:
    ld hl, $6660
    push hl
    ld a, [$c0fa]
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c0fe]
    and $f8
    rrca
    ld e, a
    ld d, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c10a]
    ld [$c10d], a
    add a
    ld c, a
    ld b, $00
    ld hl, $664a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or a
    ld h, [hl]
    ei
    ld h, [hl]
    ccf
    ld h, a
    add e
    ld h, a
    sbc e
    ld l, a
    sbc e
    ld l, a
    rst $00
    ld h, a
    dec bc
    ld l, b
    ld c, a
    ld l, b
    sub e
    ld l, b
    rst $10
    ld l, b

    ld a, [$c10e]
    rra
    rra
    ret c

    rra
    jr c, jr_009_667f

    ld hl, $c0fc
    sra [hl]
    inc hl
    rr [hl]
    inc hl
    inc hl
    inc hl
    sra [hl]
    inc hl
    rr [hl]
    ld a, $04
    ld [$c10c], a
    ret


jr_009_667f:
    ld hl, $c0fd
    sla [hl]
    dec hl
    rl [hl]
    ld bc, $0005
    add hl, bc
    sla [hl]
    dec hl
    rl [hl]
    ld a, $01
    ld [$c10c], a
    ret


    rlca
    ld b, $09
    ld [$0504], sp
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    add b
    inc sp
    pop bc
    ld c, b
    pop bc
    add b
    ld b, c
    pop bc
    ld a, [hl-]
    pop bc
    add b
    rla
    pop bc
    inc l
    pop bc
    ret nz

    dec h
    pop bc
    ld e, $c1

    ld hl, hOAMDMAFunction
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_66e2

    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6908

    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6a9c

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6a11

    jp Jump_009_69db


Jump_009_66e2:
    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_66ee

    jp Jump_009_6936


jr_009_66ee:
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_696b


    ld hl, HeaderLogo
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_6726

    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_69ac

    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6a53

    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_696b

    jp Jump_009_6936


Jump_009_6726:
    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6732

    jp Jump_009_69db


jr_009_6732:
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6a11


    ld hl, $007c
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_676a

    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_696b

    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6936

    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6908

    jp Jump_009_6a9c


Jump_009_676a:
    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6776

    jp Jump_009_6a53


jr_009_6776:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_69ac


    ld hl, $0008
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_67ae

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6a11

    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_69db

    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_69ac

    jp Jump_009_6a53


Jump_009_67ae:
    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_67ba

    jp Jump_009_6a9c


jr_009_67ba:
    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6908


    ld hl, $ff84
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_67f2

    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6ae7

    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6c34

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6bf2

    jp Jump_009_6bbc


Jump_009_67f2:
    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_67fe

    jp Jump_009_6b16


jr_009_67fe:
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6b4c


    ld hl, $0100
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_6836

    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6b8d

    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6c7e

    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6b4c

    jp Jump_009_6b16


Jump_009_6836:
    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6842

    jp Jump_009_6bbc


jr_009_6842:
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6bf2


    ld hl, $fffc
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_687a

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6bf2

    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6bbc

    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6b8d

    jp Jump_009_6c7e


Jump_009_687a:
    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6886

    jp Jump_009_6c34


jr_009_6886:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6ae7


    ld hl, $0088
    add hl, de
    ld a, [hl]
    and $c0
    jp z, Jump_009_68be

    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6b4c

    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6b16

    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6ae7

    jp Jump_009_6c34


Jump_009_68be:
    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_68ca

    jp Jump_009_6c7e


jr_009_68ca:
    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6b8d


    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $a0
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, [$c10e]
    rra
    jp nc, Jump_009_6ad5

    jr jr_009_68f6

Jump_009_68f6:
jr_009_68f6:
    ld hl, $fffc
    add hl, de
    ld a, [hl]
    and $c0
    jr z, jr_009_6962

    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6936

Jump_009_6908:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $05
    ld [$c10b], a
    xor a
    ld [$c10a], a
    ld b, $05
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $0f
    ld [$c0f9], a
    ret


Jump_009_6936:
jr_009_6936:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c10b], a
    xor a
    ld [$c10a], a
    ld b, $06
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $12
    ld [$c0f9], a
    ret


jr_009_6962:
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_699a

Jump_009_696b:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    ld a, $04
    ld [$c10b], a
    ld a, $02
    ld [$c10a], a
    ld b, $07
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $15
    ld [$c0f9], a
    ret


jr_009_699a:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a08

    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_69db

Jump_009_69ac:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    ld a, $07
    ld [$c10b], a
    ld a, $01
    ld [$c10a], a
    ld b, $01
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $03
    ld [$c0f9], a
    ret


Jump_009_69db:
jr_009_69db:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$c10b], a
    ld a, $01
    ld [$c10a], a
    ld b, $02
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $06
    ld [$c0f9], a
    ret


jr_009_6a08:
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a40

Jump_009_6a11:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $06
    ld [$c10b], a
    ld a, $03
    ld [$c10a], a
    ld b, $03
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $09
    ld [$c0f9], a
    ret


jr_009_6a40:
    ld bc, $00f8
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a7d

    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a53

    ret


Jump_009_6a53:
jr_009_6a53:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    xor a
    ld [$c10b], a
    ld a, $02
    ld [$c10a], a
    ld b, $00
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    xor a
    ld [$c0f9], a
    ret


jr_009_6a7d:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a89

    jp Jump_009_69ac


jr_009_6a89:
    ld bc, $fe80
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6ac8

    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6a9c

    ret


Jump_009_6a9c:
jr_009_6a9c:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $01
    ld [$c10b], a
    ld a, $03
    ld [$c10a], a
    ld b, $04
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $0c
    ld [$c0f9], a
    ret


jr_009_6ac8:
    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6908


Jump_009_6ad5:
    ld hl, $0008
    add hl, de
    ld a, [hl]
    and $c0
    jr z, jr_009_6b43

    ld bc, $ff7c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6b16

Jump_009_6ae7:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    ld a, $04
    ld [$c10b], a
    ld a, $06
    ld [$c10a], a
    ld b, $0d
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $27
    ld [$c0f9], a
    ret


Jump_009_6b16:
jr_009_6b16:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c10b], a
    ld a, $06
    ld [$c10a], a
    ld b, $0e
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $2a
    ld [$c0f9], a
    ret


jr_009_6b43:
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6b7b

Jump_009_6b4c:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $05
    ld [$c10b], a
    ld a, $09
    ld [$c10a], a
    ld b, $0f
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $2d
    ld [$c0f9], a
    ret


jr_009_6b7b:
    ld bc, $fff4
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6be9

    ld bc, $0084
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6bbc

Jump_009_6b8d:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $06
    ld [$c10b], a
    ld a, $07
    ld [$c10a], a
    ld b, $09
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $1b
    ld [$c0f9], a
    ret


Jump_009_6bbc:
jr_009_6bbc:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$c10b], a
    ld a, $07
    ld [$c10a], a
    ld b, $0a
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $1e
    ld [$c0f9], a
    ret


jr_009_6be9:
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6c21

Jump_009_6bf2:
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    ld a, $07
    ld [$c10b], a
    ld a, $08
    ld [$c10a], a
    ld b, $0b
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $21
    ld [$c0f9], a
    ret


jr_009_6c21:
    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6c5f

    ld bc, $007c
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6c34

    ret


Jump_009_6c34:
jr_009_6c34:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $80
    xor a
    ld [$c10b], a
    ld a, $08
    ld [$c10a], a
    ld b, $0c
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $24
    ld [$c0f9], a
    ret


jr_009_6c5f:
    ld bc, $0004
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6c6b

    jp Jump_009_6ae7


jr_009_6c6b:
    ld bc, $0180
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6caa

    ld bc, $ff84
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_009_6c7e

    ret


Jump_009_6c7e:
jr_009_6c7e:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $01
    ld [$c10b], a
    ld a, $09
    ld [$c10a], a
    ld b, $08
    ld hl, $c116
    ld a, [hl]
    and $0f
    cp b
    ret z

    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $18
    ld [$c0f9], a
    ret


jr_009_6caa:
    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    and $c0
    jp z, Jump_009_6cb7

    jp Jump_009_6b8d


Jump_009_6cb7:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld de, $0c74
    ld a, [$c116]
    bit 3, a
    jp z, $6e6a

    ld de, $247c
    jp $6e6a


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_009_6cd7

    dec [hl]
    ret nz

jr_009_6cd7:
    ld [hl], $02
    ld a, [$c0fa]
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c0fe]
    and $f8
    rrca
    ld e, a
    ld d, $00
    add hl, de
    ld de, $c86d
    add hl, de
    push hl
    ld e, l
    ld d, h
    ld hl, $6d49
    ld a, [$c10e]
    rra
    jr c, jr_009_6d04

    ld hl, $6d5b

jr_009_6d04:
    ld a, [$c10b]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl+]
    cp $85
    jr nz, jr_009_6d1f

    ld a, [hl-]
    cp $01
    jr nz, jr_009_6d1f

    ld e, l
    ld d, h
    call Call_009_6490

jr_009_6d1f:
    pop de
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6d33
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $6660
    push bc
    jp hl


    or a
    ld h, [hl]
    ei
    ld h, [hl]
    ccf
    ld h, a
    add e
    ld h, a
    sbc e
    ld l, a
    sbc e
    ld l, a
    rst $00
    ld h, a
    dec bc
    ld l, b
    ld c, a
    ld l, b
    sub e
    ld l, b
    ld l, l
    ld l, l
    inc b
    ld bc, hOAMDMAFunction
    ld a, h
    nop
    ld [$0000], sp
    ld bc, $fffc
    add h
    rst $38
    adc b
    nop
    nop
    nop
    add h
    rst $38
    nop
    ld bc, $0088
    db $fc
    rst $38
    ld [$0400], sp
    ld bc, $007c
    add b
    rst $38
    nop
    nop
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, [$c10e]
    rra
    jp nc, Jump_009_6ad5

    jp Jump_009_68f6


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6d9a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sbc [hl]
    ld l, l
    ldh [$ff6d], a
    ld a, [$c10e]
    add a
    ld c, a
    ld b, $00
    ld hl, $6dd4
    add hl, bc
    ld de, $c100
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $50
    ld [$c116], a
    ld a, $01
    ld [$c10a], a
    ld a, [$c0fa]
    ld [$c10b], a

Jump_009_6dc1:
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $10
    ld [hl], a
    xor a
    ld [$c10c], a
    ld a, $84
    ld [$c10d], a
    ret


    nop
    jr nz, @+$01

    ldh [rP1], a
    ld b, b
    rst $38
    ret nz

    nop
    add b
    rst $38
    add b
    ld hl, $c10c
    ld a, [$c109]
    rra
    jr nc, jr_009_6df5

    inc [hl]
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $20
    ld [hl], a
    jr jr_009_6e36

jr_009_6df5:
    ld a, [hl]
    and a
    jr nz, jr_009_6e1a

    ld hl, $c10d
    dec [hl]
    ld a, [hl]
    and $7f
    jr nz, jr_009_6e08

    ld a, [hl]
    xor $80
    add $04
    ld [hl], a

jr_009_6e08:
    ld bc, $fff0
    ld a, [hl]
    rla
    jr nc, jr_009_6e12

    ld bc, $0010

jr_009_6e12:
    ld hl, $c0fc
    ld [hl], b
    inc hl
    ld [hl], c
    jr jr_009_6e36

jr_009_6e1a:
    ld a, [hl]
    cp $01
    jr nz, jr_009_6e2b

    dec [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    jr jr_009_6e36

jr_009_6e2b:
    dec [hl]
    dec [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl], a

jr_009_6e36:
    ld hl, $c109
    res 0, [hl]
    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $6e63
    add hl, bc
    ld a, [$c0fe]
    cp [hl]
    ret c

    cp $f9
    ret nc

    ld b, [hl]
    ld a, [$c10e]
    rra
    jr c, jr_009_6e56

    ld b, $f8

jr_009_6e56:
    ld a, b
    ld [$c0fe], a
    ld a, [$c10b]
    ld [$c0fa], a
    jp Jump_009_6dc1


    xor b
    ld hl, sp-$58
    ld hl, sp-$58
    xor b
    ld hl, sp+$21
    nop
    pop bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c10a], a
    ld hl, $c0f9
    ld [hl], d
    ld hl, $c116
    ld [hl], e
    ld hl, $c103
    set 2, [hl]
    call Call_009_6f3d
    jp Jump_009_6eb1


    ld hl, $c0c7
    ld c, $08

jr_009_6e99:
    ld de, $0005
    inc [hl]

jr_009_6e9d:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_6ea7

    dec e
    jr nz, jr_009_6e9d

jr_009_6ea5:
    jr jr_009_6ea5

jr_009_6ea7:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_009_6e99

    ld d, $00
    jp Jump_009_6f34


Jump_009_6eb1:
    ld a, [$c0c7]
    ld hl, $c0cd
    cp [hl]
    jr nc, jr_009_6ebd

    ld hl, $c0c7

jr_009_6ebd:
    ld c, $04

jr_009_6ebf:
    ld de, $000b
    inc [hl]

jr_009_6ec3:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_6ed0

    dec e
    ld a, $06
    cp e
    jr nz, jr_009_6ec3

jr_009_6ece:
    jr jr_009_6ece

jr_009_6ed0:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_009_6ebf

    ld d, $03
    jr jr_009_6f34

    ld hl, $c0c7
    ld de, $c0cd
    ld c, $03

jr_009_6ee1:
    ld a, [de]
    cp [hl]
    jr nc, jr_009_6ee7

    ld l, e
    ld h, d

jr_009_6ee7:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_009_6ee1

    ld c, $02

jr_009_6ef2:
    ld de, $0017
    inc [hl]

jr_009_6ef6:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_6f03

    dec e
    ld a, $12
    cp e
    jr nz, jr_009_6ef6

jr_009_6f01:
    jr jr_009_6f01

jr_009_6f03:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_009_6ef2

    ld d, $02
    jr jr_009_6f34

    ld hl, $c0c7
    ld de, $c0cd
    ld c, $07

jr_009_6f14:
    ld a, [de]
    cp [hl]
    jr nc, jr_009_6f1a

    ld l, e
    ld h, d

jr_009_6f1a:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_009_6f14

    inc [hl]

jr_009_6f24:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_009_6f31

    dec e
    ld a, $12
    cp e
    jr nz, jr_009_6f24

jr_009_6f2f:
    jr jr_009_6f2f

jr_009_6f31:
    ld [hl], b
    ld d, $01

Jump_009_6f34:
jr_009_6f34:
    ld hl, $c103
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    ret


Call_009_6f3d:
    ld a, [$c108]
    sub $40
    ld b, a
    ld hl, $c0c8
    ld c, $08

jr_009_6f48:
    ld de, $ffff

jr_009_6f4b:
    ld a, [hl]
    cp b
    jr z, jr_009_6f59

    inc hl
    dec e
    ld a, $fa
    cp e
    jr nz, jr_009_6f4b

    inc hl
    jr jr_009_6f61

jr_009_6f59:
    ld [hl], $00
    add hl, de
    dec [hl]
    ld de, $0007
    add hl, de

jr_009_6f61:
    dec c
    jr nz, jr_009_6f48

    ret


    ldh a, [$94]
    rla
    jr nc, jr_009_6f71

    ld a, [$dd18]
    cp $08
    jr z, jr_009_6f99

jr_009_6f71:
    ld a, [$c0fa]
    add d
    ld d, a
    cp $e8
    jr c, jr_009_6f7c

    ld d, $00

jr_009_6f7c:
    ld a, [$c203]
    sub d
    ret c

    cp b
    jr nc, jr_009_6f99

    ld a, [$c0fe]
    add e
    ld e, a
    cp $f0
    jr c, jr_009_6f8f

    ld e, $00

jr_009_6f8f:
    ld a, [$c207]
    sub e
    ret c

    cp c
    jr nc, jr_009_6f99

    and a
    ret


jr_009_6f99:
    scf
    ret


    ret


    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
