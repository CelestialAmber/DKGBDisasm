; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]


    nop
    ld b, d
    ret z

    ld b, d
    and c
    ld b, e

Call_005_4006:
    ld d, e
    ld b, h
    jp nc, $c144

    ld b, l
    ld h, $47
    add hl, bc
    ld c, b
    dec de
    ld c, c
    ldh a, [rOBP1]
    cp l
    ld c, d
    cp c
    ld c, e
    halt
    ld c, h
    dec e
    ld c, [hl]
    ld h, c
    ld c, a
    halt
    ld d, b
    ld e, l
    ld d, c
    cp h
    ld d, d
    ld b, a
    ld d, h
    jr nc, jr_005_407e

    ld d, e
    ld d, a
    dec a
    ld e, b
    cp [hl]
    ld e, c
    ld b, [hl]
    ld e, e
    inc d
    ld e, h
    and h
    ld e, l
    dec sp
    ld e, a
    and c
    ld h, b
    ld c, e
    ld h, d
    rst $00
    ld h, e
    xor l
    ld h, h
    inc de
    ld h, [hl]
    ld [hl], e
    ld h, a
    add hl, de
    ld l, c
    ld c, d
    ld l, d
    jp c, $296b

    ld l, l
    xor e
    ld l, [hl]
    and [hl]
    ld [hl], b
    or b
    ld [hl], d
    xor e
    ld [hl], e
    xor l
    ld [hl], l
    dec l
    ld a, b
    ld d, [hl]
    ld a, d
    ld h, h
    ld a, e
    nop
    ld b, b
    add c
    ld b, c
    xor h
    ld b, e
    xor h
    ld b, h
    adc c
    ld b, l
    ld b, c
    ld b, a
    push bc
    ld c, b
    add hl, de
    ld c, d
    dec h
    ld c, h
    ld d, h
    ld c, l
    ret z

    ld c, [hl]
    adc $4f
    reti


    ld d, b
    dec [hl]
    ld d, d
    push hl
    ld d, e
    inc b
    ld d, l
    ld e, a
    ld d, [hl]
    sbc e
    ld d, a

jr_005_407e:
    or a
    ld e, c
    adc h
    ld e, d
    ld b, d
    ld e, h
    sbc d
    ld e, l
    inc sp
    ld e, a
    xor l
    ld h, b
    db $fc
    ld h, c
    adc l
    ld h, e
    ld d, l
    ld h, l
    ret c

    ld h, [hl]
    ret z

    ld l, b
    ld c, [hl]
    ld l, d
    jp c, $bf6b

    ld l, h
    ld a, b
    ld l, [hl]
    ei
    ld l, a
    and c
    ld [hl], c
    nop
    ld b, b
    adc b
    ld b, c
    and c
    ld b, e
    ld [hl], l
    ld b, l
    sub h
    ld b, [hl]
    ld h, d
    ld c, b
    or a
    ld c, c
    jr jr_005_40fb

    add e
    ld c, h
    ld hl, $8f4e
    ld d, b
    sub h
    ld d, d
    or [hl]
    ld d, e
    ld b, $55
    ld l, a
    ld d, [hl]
    ld e, d
    ld e, b
    adc d
    ld e, c
    jp z, Jump_005_5a5a

    ld e, h
    add h
    ld e, l
    ld [hl-], a
    ld e, [hl]
    sub $5e
    ld a, l
    ld e, a
    inc l
    ld h, b

Jump_005_40d0:
    rst $18
    ld h, b
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c

Jump_005_40de:
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d

jr_005_40fb:
    ld h, c
    or d
    ld h, c
    or d

Call_005_40ff:
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    or d
    ld h, c
    nop
    dec b
    nop
    ld h, h
    nop
    nop
    add e
    ld l, [hl]
    or a
    jp c, $fd3d

    rst $38
    ld bc, $0701
    rst $38
    rlca
    ld a, l
    ld a, l
    ld a, l
    ld h, c
    rst $38
    ld bc, $010f
    inc b
    jr nz, jr_005_422c

    ld bc, $ce06
    rst $08
    jr nz, @+$11

    or $01

jr_005_4225:
    add hl, bc
    pop de
    jp nc, $0220

    ld [bc], a
    dec bc

jr_005_422c:
    ld d, l
    ld d, l
    db $fc
    dec e
    rrca
    ld bc, $d400
    push de
    ld bc, $0101

jr_005_4238:
    ld l, a
    di
    ld l, a
    dec bc
    dec h
    ld bc, $0f01
    rst $38
    rst $38
    rst $10
    ret c

    ret nz

    jr nz, jr_005_4247

jr_005_4247:
    ld b, b
    nop
    jr nz, jr_005_425a

    ld bc, $5803
    nop
    ld bc, $8703
    sub l
    ld a, a
    and e
    or a
    or a
    or a
    add l
    and c

jr_005_425a:
    add l
    inc h
    rrca
    call nz, $0f3c
    ld bc, $490d
    dec b
    ld b, $2a
    rrca
    ld bc, $8100
    adc a
    rst $38
    add c
    sub a
    dec sp
    dec sp
    sub c
    add e
    add e
    jr z, jr_005_42a4

    jr z, jr_005_4238

    add l
    add l
    ld h, d
    inc c
    ld d, l
    jp c, Jump_005_7d0f

    rrca

Call_005_4280:
    ld a, h
    ld e, l
    inc bc
    ld bc, $ff0f
    add c
    add c
    add c
    rlca
    ld a, b
    rrca
    sbc $61
    dec c
    add a
    add a
    sub l
    sbc e
    db $dd
    nop
    add l
    add l
    ld b, a
    jr z, jr_005_4225

    jr z, jr_005_42bd

    rrca
    ld bc, $010f
    rlca
    xor c
    db $e3
    ld a, [bc]

jr_005_42a4:
    ld hl, sp+$68
    rrca
    and [hl]
    ld [$008b], sp
    dec sp
    dec sp
    ld e, a
    add e
    add e
    dec b
    add e
    rla
    add hl, bc
    ld l, a
    ld bc, $e606
    rrca
    ld bc, $c201
    sbc e

jr_005_42bd:
    jp c, $b76e

    jp c, $c657

    db $db
    ld a, a
    ld e, c
    call c, $0400
    ld b, $10
    ld h, h
    nop
    nop
    nop
    ld bc, $01ff
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld c, $01
    rrca
    rst $38
    rst $38
    daa
    ld bc, $010f
    nop
    jr nz, jr_005_4304

    dec b
    ld bc, $011d
    ld bc, $0701
    rst $38

jr_005_4304:
    rlca
    rlca
    ld bc, $0615
    jr nz, jr_005_431a

    sub b
    jr nz, @+$11

    jr nz, jr_005_431f

    jr nz, jr_005_4321

    jr nz, jr_005_431a

    ld a, l
    jr nz, jr_005_4326

    dec bc
    nop
    ld a, l

jr_005_431a:
    inc e
    ld bc, $2000
    ld [bc], a

jr_005_431f:
    dec bc
    dec bc

jr_005_4321:
    dec bc
    rlca
    ld bc, $0110

jr_005_4326:
    jr nz, jr_005_4331

    xor e
    ld [hl+], a
    inc [hl]
    ld bc, $220e
    ld h, b
    inc c
    inc l

jr_005_4331:
    pop af
    add hl, bc
    inc l
    and h
    add b
    rrca
    ld bc, $a903
    dec d
    rrca
    dec bc
    ld bc, $010a
    inc b
    ld [hl+], a
    rst $08
    rst $38
    rst $38
    ld hl, $0109
    inc b
    ld b, b
    dec bc
    rlca
    rst $38
    ld e, a
    rst $38
    ld d, e
    rst $38
    rlca
    rst $20
    ld bc, $0700
    ld [de], a
    ld bc, $0797
    xor e
    rst $38
    jr nz, jr_005_436c

    rst $38
    jr nz, @+$0b

    ld h, b
    dec bc
    ld d, l
    ld b, [hl]
    ld bc, $ff00
    ld d, l
    ld bc, $0b06

jr_005_436c:
    ld [bc], a
    and b
    ld c, $07
    rrca
    dec b
    and e
    rlca
    rst $38
    ld b, b
    rra
    jr nz, jr_005_4388

    jr nz, jr_005_4395

    ld a, [bc]
    ld bc, $220e
    nop
    and b
    rrca
    dec b
    dec bc
    jr nz, jr_005_4395

    jr nz, @+$11

jr_005_4388:
    ret nz

    add hl, bc
    ld bc, $200d
    dec b
    ld b, h
    reti


    db $db
    jp nz, $dbe3

    ld e, h

jr_005_4395:
    ld h, d
    call c, $b957
    call c, $2257
    db $dd
    ld a, a
    sbc l
    db $dd
    nop
    nop
    dec b
    nop
    ld h, h
    nop
    nop
    nop
    adc a
    rst $38
    rst $38
    rst $38
    rlca
    ld [bc], a
    nop
    ld bc, $010f
    inc b
    ld bc, $01c7
    ld bc, $0207
    nop
    add hl, de
    rrca
    jr nz, @+$0b

    ld [bc], a
    rst $38
    ld [hl], e
    ld a, l
    ld a, l
    dec de
    rrca
    ld b, b
    ld [$5555], sp
    ld d, l
    ld [de], a
    ld b, $3d
    xor e
    jr nz, @+$0f

    dec bc
    dec bc
    dec bc
    rst $38
    add e
    rrca
    jr nz, jr_005_43df

    pop hl
    ld [bc], a
    ld h, b
    nop
    jr nz, jr_005_43e6

    ld c, e

jr_005_43df:
    ld [$0001], sp
    ld l, a
    ld l, a
    ld l, a
    ld e, l

jr_005_43e6:
    ld [hl], c
    dec b
    ld bc, $6f6f
    ld [hl], d
    rlca
    ld bc, $4aff
    rrca
    adc e
    rst $38
    ld a, e
    rlca
    rlca
    rlca
    jr nz, jr_005_4408

    jr nz, @+$11

    dec e
    ld a, [bc]
    ld h, l
    nop
    jr nz, @+$0b

    ld a, e
    ld [bc], a
    ld b, b
    rrca
    rlca
    ld b, $1b

jr_005_4408:
    ld [bc], a
    jr nz, jr_005_4416

    inc sp
    nop
    add hl, sp
    ld [bc], a
    dec h
    ld d, l
    jr nz, jr_005_4418

    ld d, l
    ret nz

    dec bc

jr_005_4416:
    inc d
    nop

jr_005_4418:
    ld a, e
    add e
    inc de
    ld h, b
    inc b
    nop
    ld e, a
    dec c
    jr nz, jr_005_442b

    ld e, a
    rrca
    jr nz, jr_005_4435

    ld h, b
    rrca
    add b
    rlca
    dec de

jr_005_442b:
    inc c
    and b
    rlca
    cp h
    rst $00
    ld [$0c01], sp
    ld h, $26

jr_005_4435:
    ld h, $70
    dec b
    ld bc, $0326
    ld h, $73
    rlca
    inc bc
    ld bc, $2000
    add hl, bc
    jp nz, $da99

    sub b
    or l
    jp c, $a67c

    db $db
    ld a, h
    dec de
    call c, $357f
    call c, RST_00
    ld b, $00
    ld h, h
    nop
    nop
    nop
    ld b, c
    rst $38
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $ab04
    inc de
    rrca
    inc sp
    rst $38
    inc hl
    ld a, [bc]
    rrca
    ld bc, $060c
    ld b, $14
    rrca
    ld bc, $2106
    nop
    inc bc
    nop
    ld bc, $0d04
    ld [bc], a
    ld bc, $070d
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld a, [bc]
    jr nz, jr_005_4492

    inc hl
    jr nz, jr_005_4491

    inc hl
    jr nz, jr_005_449d

    ld b, b
    rrca
    ld a, a

jr_005_4491:
    dec c

jr_005_4492:
    add b
    dec bc
    jp hl


    nop
    ccf
    rrca
    ld [$070a], sp
    jr nz, jr_005_44ac

jr_005_449d:
    inc hl
    rst $38
    xor a
    ld b, d
    add hl, de
    inc b
    inc hl
    jr nz, jr_005_44b5

    ld b, b
    rrca
    ld a, a
    dec c
    add b
    inc c

jr_005_44ac:
    nop
    ccf
    rrca
    ld [bc], a
    ld b, $04
    rlca
    ld b, c
    rrca

jr_005_44b5:
    jr nz, jr_005_44c6

    jr nz, @+$11

    jr nz, jr_005_44ca

    ld a, a
    dec bc
    ld bc, $000e
    jr nz, jr_005_44cb

    jp nz, $da9b

    ld e, [hl]

jr_005_44c6:
    sbc [hl]
    jp c, $3f57

jr_005_44ca:
    db $db

jr_005_44cb:
    ld d, a
    sub [hl]
    db $db
    ld a, a
    ld e, b
    call c, RST_00
    rlca
    inc c
    sub [hl]
    nop
    nop
    nop
    ld a, c
    rst $38
    ld bc, $010f
    ld a, [bc]
    call $e0df
    call nc, $0f16
    ld l, $01
    rlca
    ld d, e
    rst $38
    ld [c], a
    jr nz, jr_005_44f2

    sbc $01
    dec b
    ld [hl+], a
    dec bc

jr_005_44f2:
    ld l, l
    db $e4
    jr nz, jr_005_44fb

    db $d3
    call $0201
    xor a

jr_005_44fb:
    call $0a60
    ei
    call $20ce
    ld [bc], a
    daa
    ld d, l
    ld d, l
    daa
    rst $18
    ld a, a
    ldh [$ffcf], a
    rst $18
    ldh [$ffcd], a
    rst $38
    ldh [rNR41], a
    add hl, bc
    rst $18
    ld d, l
    ld d, l
    call Call_005_55d4
    ld bc, $2700
    ld h, l
    sbc a
    rst $38
    daa
    pop hl
    ld [c], a
    call $0203
    and b
    rrca
    rlca
    ld e, [hl]
    ld b, e
    ld [bc], a
    daa
    daa
    call $03e3
    nop
    db $e4
    jr nz, jr_005_453d

    db $ed
    pop hl
    and b
    ld bc, $e507
    ld bc, $d300
    rst $08

jr_005_453d:
    daa
    ld e, a
    call $27cd
    pop de
    call $0b80
    db $e3
    and b
    ld bc, $077f
    add sp, -$17
    jp hl


    jp hl


    db $d3
    call $0120
    db $e4
    ld l, h
    nop
    jr nz, jr_005_4561

    pop de
    and b
    ld [bc], a
    jr nz, jr_005_4560

    rst $18
    daa
    sbc [hl]

jr_005_4560:
    db $db

jr_005_4561:
    rst $38
    daa
    add b
    dec c
    call $20cd
    ld b, $e1
    daa
    sub h
    add l
    nop
    add b
    inc c
    ld d, l
    ld bc, $e803
    ld b, $02
    ld h, b
    rrca
    rst $38
    jp $07cf


    ld b, b
    ld [de], a
    add b
    inc bc
    ld bc, $6004
    ld a, [bc]
    rlca
    db $e4
    ld a, [bc]
    jr nz, @+$09

    pop de
    jr nz, jr_005_459b

    ld d, l
    ld h, c
    dec b
    jr nz, jr_005_4592

    inc c

jr_005_4592:
    inc b
    ld b, b
    ld a, [bc]
    ld d, l
    adc $a0
    nop
    rlca
    ld h, b

jr_005_459b:
    dec b
    ld a, c
    or b
    nop
    rst $08
    add b
    rra
    inc b
    jr nz, @+$08

    ldh a, [rP1]
    rst $08
    ld h, b
    rrca
    ld bc, $200d
    add hl, bc
    cp d
    rla
    db $db
    ld d, a
    ld e, d
    db $db
    ld h, h
    sbc l
    db $db
    ld a, a
    ld d, [hl]
    call c, Call_005_5bae
    call c, Call_005_6664
    call c, $0200
    jr @+$0e

    sub [hl]
    nop
    nop
    nop
    db $eb
    ld a, [$01ff]
    rrca
    daa
    inc c
    ld [$dfce], sp
    ldh [$ff3f], a
    call $f5d4
    db $ec
    db $ed
    xor $03
    nop
    rrca
    nop
    ei
    push de
    sub $20
    inc c
    call $e2e1
    adc $d4
    rst $28
    or $ff
    rst $28
    rst $38
    inc bc
    ld bc, $ffff
    rst $10
    ld sp, hl
    ret c

    jr nz, @+$0f

    ld bc, $d400
    push af
    rst $38
    ldh a, [rIE]
    ld c, e
    xor a
    ldh a, [rIF]
    ld bc, $0ed3
    nop
    jr nz, jr_005_4611

    sbc $01
    dec b
    ld e, e
    rst $38
    sbc $20
    ld [bc], a
    ld a, c
    rst $38

jr_005_4611:
    jr nz, @+$0d

    ld hl, sp+$01
    ld b, $7d
    push af
    ld l, $01
    db $d3
    rst $38
    rst $38
    call nc, $60de
    inc c
    ld [hl], e
    ld a, [$05ce]
    ld bc, $0085
    rst $38
    rst $38
    ld d, l
    ld bc, $cc02
    jr nz, jr_005_4639

    cp a
    nop
    ld a, [$05cd]
    nop
    jr jr_005_4639

    rst $38

jr_005_4639:
    rst $38
    and e
    push af
    db $d3
    inc c
    ld bc, $0920
    ld [hl-], a
    inc bc
    ld [c], a
    ld b, b
    inc b
    or $6f
    db $d3
    call $e4e3
    jr nz, @+$0c

    db $e3
    rlca
    ld b, b
    nop
    ldh a, [rNR14]
    nop
    jr nz, @+$08

    ld bc, $8000
    ld a, [bc]
    rlca
    adc $fa
    call $80fc
    ld b, $20
    rrca
    rst $18
    rlca
    rst $08
    ld a, [$dfd0]
    sbc a
    ldh [$ffce], a
    ld a, [$f5d4]
    jr nz, jr_005_4681

    add b
    ld b, $53
    ldh a, [$08]
    nop
    ld b, b
    inc b
    and b
    inc c
    ld a, e
    ld bc, $e3cd
    rst $38

jr_005_4681:
    rst $38
    ld [$0160], sp
    add hl, hl
    nop
    and b
    nop
    sbc [hl]
    ld h, b
    inc e
    add b
    dec c
    add b
    dec de
    nop
    ld de, $8092
    nop
    pop de
    jr nz, jr_005_469e

    jr nz, jr_005_46b6

    pop hl
    ei
    nop
    inc d

jr_005_469e:
    nop
    call $fad7
    ld [hl+], a
    ld a, [bc]
    ld bc, $2200
    and b
    rrca
    ld d, l
    ld d, l
    ld [hl-], a
    nop
    rla
    rst $30
    adc d
    inc de
    add b
    dec e
    call $80ce

jr_005_46b6:
    inc b
    ld a, $02
    db $10
    ld b, b
    dec bc
    inc sp
    ld bc, $0044
    ld b, $00
    ld sp, hl
    jr nz, jr_005_46c5

jr_005_46c5:
    adc [hl]
    nop
    ldh [$ff0c], a
    rst $38
    ei
    ld h, l
    rst $38
    ei
    ei
    rst $10
    ret c

    rst $10
    dec h
    ret c

    sbc a
    ld de, $8ed3
    nop
    inc bc
    nop
    daa
    sub c
    dec l
    jr nz, @+$03

    ld a, [$215a]
    ld d, l
    ldh [$ff1f], a
    cpl
    dec e
    dec e
    dec e
    cpl
    inc d
    jr nz, jr_005_46f3

    ld h, b
    ld [bc], a
    rlca
    ld b, b
    ld a, [bc]

jr_005_46f3:
    ld [HeaderLogo], sp
    jr nz, @+$08

    ld h, b
    ld bc, $2022
    rrca
    ld [$0f60], sp
    jr nz, jr_005_4711

    jr nz, jr_005_4705

    rlca

jr_005_4705:
    ldh [rIF], a
    jr nz, jr_005_4718

    nop
    ldh [$ff1f], a
    ld bc, $200d
    add hl, bc
    cp d

jr_005_4711:
    sbc b
    jp c, $1e80

    db $db
    cp d
    ld h, h

jr_005_4718:
    db $db
    add b
    cp l
    db $db
    ld a, a
    ld e, l
    db $dd
    xor [hl]
    sub a
    db $dd
    ld h, h
    sbc l
    db $dd
    nop
    nop
    ld [de], a
    inc c
    sub [hl]
    nop
    nop
    nop
    cp c
    rst $38
    ld bc, $010f
    ld a, [bc]
    ld sp, hl
    ld c, d
    dec e
    ld bc, $2f08
    sbc $20
    ld c, $d4
    jr nc, @+$01

    xor a
    ld c, $07
    jr nc, @+$01

    ld l, e
    rst $38
    ld a, c
    jr nz, @+$10

    rst $38
    jr nz, jr_005_4755

    sbc $ff
    inc bc
    ld bc, $20f6
    add hl, bc
    dec de
    dec c

jr_005_4755:
    ld bc, $1601
    ld a, [c]
    rst $38
    rst $38
    ld sp, hl
    ld d, l
    ld bc, $4004
    rrca
    rst $38
    rst $38
    pop af
    ld c, $f2
    sbc $08
    ld [bc], a
    db $d3
    pop de
    call $20cd
    inc c
    ld d, e
    rst $38
    ei
    rst $38
    xor e
    ld hl, $9e05
    rst $38
    call $e0df
    ld a, d
    jr nz, jr_005_4788

    ld [$050a], sp
    pop af
    dec d
    dec c
    dec de
    rlca
    nop
    add a

jr_005_4788:
    call $e4e3
    jr nz, jr_005_4798

    ldh [$ff0a], a
    add b
    rrca
    ld b, b
    ld [bc], a
    push hl
    call c, $0101
    ret nz

jr_005_4798:
    ld [bc], a
    db $d3
    call $8007
    ld a, [bc]
    ld hl, sp+$08
    cp a
    ld hl, sp-$08
    ld sp, hl
    rst $38
    add sp, -$17
    ld bc, $ea00
    ld a, [$0220]
    jp nc, $0b20

    call $cd08
    call $f3d4
    rst $38
    db $eb
    jr nz, @+$07

    ld h, b
    ld c, $e0
    ld [$5555], sp
    ld hl, sp+$20
    ld [$0060], sp
    ret nz

    dec bc
    db $e4
    ld [$cecd], sp
    call nc, $1984
    ld d, $20
    nop
    adc $c0
    dec bc
    ld h, b
    inc c
    ld b, b
    nop
    jr nz, jr_005_47f5

    adc $6e
    jr nz, jr_005_47eb

    ret nc

    ld h, l
    rst $38
    ld b, b
    dec bc
    jp nc, Jump_005_40d0

    dec bc
    ld a, [bc]
    ret nz

    dec de
    ld d, l

jr_005_47eb:
    ld bc, $ff0b
    ret nz

    dec c
    ld d, h
    ld a, [$acda]
    cp e

jr_005_47f5:
    db $db
    ld h, h
    ldh [$ffdb], a
    ld d, a
    ld [hl+], a
    call c, Call_005_5564
    call c, Call_005_617f
    call c, Call_005_657c
    call c, Call_005_677c
    call c, $0300
    ld a, [de]
    inc e
    sub [hl]
    nop
    nop
    adc b
    ld a, a
    ld [hl], c
    call c, $9a01
    ldh [$ffda], a
    ld bc, $5538
    rst $38
    ld bc, $2705
    ld bc, $ff08
    ld bc, $fa07
    ld bc, $fd00
    rst $30
    jr nz, jr_005_482c

    rst $38
    rst $38

jr_005_482c:
    sub $d7
    rlca
    ret c

    ld a, l
    rlca
    dec bc
    ld [bc], a
    ld sp, hl
    ld a, [$f3fa]
    db $f4
    inc b
    nop
    rst $20
    rst $38
    rst $38
    ld hl, sp+$01
    dec b
    jr nz, jr_005_4843

jr_005_4843:
    reti


    jp c, $8d07

    db $db
    jr nz, jr_005_4850

    push af
    or $04
    nop
    ld b, b
    inc bc

jr_005_4850:
    ld bc, $fb01
    cp $20
    nop
    call c, $07dd
    sbc $07
    ld a, l
    ld a, l
    and a
    and $27
    rst $20
    jr nz, jr_005_4872

    jr nz, jr_005_486b

    ld d, l
    ld bc, $2705
    db $e4
    inc b

jr_005_486b:
    nop
    jr nz, jr_005_4877

    ldh [rNR41], a
    nop
    inc de

jr_005_4872:
    ld bc, $e107
    ld [c], a
    rst $38

jr_005_4877:
    ld [c], a
    ld sp, hl
    rlca
    ld a, [$27fa]
    ld a, [$3707]
    ld_long a, $ffff
    dec hl
    ld b, $27
    jp nc, $0340

    jr nz, jr_005_4897

    ld c, h
    dec b
    nop
    dec bc
    ld [bc], a
    ei
    ld d, l
    ld bc, $200e
    dec bc
    rst $30

jr_005_4897:
    ld b, b
    ld bc, $ddc3
    sbc $bf
    nop
    ld b, b
    ld bc, $0274
    jr nz, @+$11

    db $dd
    sbc $43
    rst $10
    push hl
    jr nz, @+$11

    jr nz, jr_005_48bc

    jr nz, jr_005_48be

    jr nz, jr_005_48b9

    ld [c], a
    jr nz, jr_005_48bd

    sub $90
    ld [$dcff], sp

jr_005_48b9:
    ld b, $01
    push hl

jr_005_48bc:
    inc de

jr_005_48bd:
    ld [bc], a

jr_005_48be:
    ld a, [$e2fa]
    inc de
    inc bc
    rst $38
    daa
    ld [bc], a
    nop
    ld de, $0040
    jp hl


    ld [$3dea], a
    db $eb
    ld b, b
    nop
    db $ec
    db $ed
    db $ed
    ld sp, hl
    ld d, $14
    jr nz, jr_005_48e2

    add b
    ld bc, $2009
    rrca
    jr nz, @+$11

    jr nz, jr_005_48f1

jr_005_48e2:
    jr nz, @+$11

    and b
    ld a, [bc]
    ld bc, $550f
    ld bc, $01ff
    rrca
    ld bc, $010f
    rrca

jr_005_48f1:
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $c20c
    call nz, $9ada
    ldh [$ffda], a
    ld a, a
    ld [hl], c
    call c, RST_00
    rlca
    inc e
    sub [hl]
    nop
    nop
    adc b
    add b
    ld b, d
    call c, Call_005_7f02
    and $da
    ld bc, $ad38
    daa
    ld bc, $270f
    rst $38
    ld bc, $d708
    ld bc, $f702
    cp $0a
    nop
    sub $d7
    rst $10
    ret c

    rst $38
    ld sp, hl
    ld a, [$016c]
    nop
    jr nz, jr_005_4952

    cp e
    rst $38
    jr nz, @+$05

    ld d, e
    rst $38
    jr nz, @+$11

    ld e, a
    rst $38
    sbc [hl]
    rst $38

jr_005_4952:
    rst $10
    rst $38
    jr nz, jr_005_495a

    rst $38
    jr nz, jr_005_495a

    db $e3

jr_005_495a:
    ld a, c
    rst $38
    jr nz, jr_005_4969

    ld h, d
    inc bc
    jr nz, jr_005_4963

    reti


jr_005_4963:
    jp c, $2fda

    db $db
    rst $38
    ld sp, hl

jr_005_4969:
    rst $38
    jr nz, jr_005_4978

    ld d, l
    ld bc, $2001
    ld [bc], a
    rst $08
    call c, $dddd
    sbc $0f
    inc bc

jr_005_4978:
    ld a, $0a
    xor a
    rlca
    call c, $0440
    jr nz, @+$04

    ld sp, hl
    ld a, [$4007]
    dec bc
    ld hl, sp-$01
    inc hl
    rlca
    ld hl, sp+$01
    ld a, [bc]
    rrca
    nop
    jr nz, jr_005_499a

    ld a, [$0131]
    ld bc, $c909
    rlca
    add b
    rrca

jr_005_499a:
    dec e
    rlca
    ld d, l
    add b
    ld c, $3f
    inc bc
    ld h, l
    rst $38
    jp nc, $0320

    cp e
    ld d, b
    ld [bc], a
    jr nz, jr_005_49b4

    di
    jr nz, jr_005_49ae

jr_005_49ae:
    di
    db $f4
    ld b, d
    ld [$f400], sp

jr_005_49b4:
    ld [$2005], sp
    rrca
    inc e
    inc bc
    inc b
    dec b
    rlca
    nop
    rra
    sbc a
    or $fa
    ld a, [$f6f5]
    ld a, [hl]
    dec b
    add b
    dec bc
    push af
    inc bc
    or $07
    inc e
    ld [bc], a
    inc b
    ld b, $c0
    inc c
    ldh [rIF], a
    jr nz, @+$0d

    ld a, [c]
    inc de
    ld c, b
    inc e
    inc d
    nop
    cpl
    jr nz, jr_005_49e4

    dec b
    ld bc, $2003

jr_005_49e4:
    rrca
    rst $38
    ld a, a
    and $da
    sbc b
    add hl, sp
    call c, Call_005_4280
    call c, RST_00
    ld [de], a
    inc e
    ret z

    nop
    nop
    add h
    sbc b
    sub l
    db $db
    inc bc
    inc a
    ld d, l
    ld d, l
    ld bc, $2706
    ld a, [bc]
    ld b, $ff
    ld bc, $ab08
    ld b, $02
    rst $38
    ld sp, hl
    ld_long a, $ffbc
    daa
    ld d, e
    rst $38
    ld a, [$016e]
    ld bc, $f6f5
    rst $38
    ld bc, $cd0a
    adc $20
    ld bc, $ff6f
    rst $38
    daa
    rst $38
    jr nz, jr_005_4a28

    ld a, [$20fa]

jr_005_4a28:
    dec bc
    cp e
    rst $08
    ret nc

    jr nz, @+$03

    ld a, [$27fa]
    dec de
    ld bc, $879e
    rst $38
    ld a, c
    rst $38
    jr nz, @+$0c

    add b
    ld [$053b], sp
    ld b, b
    inc c
    pop de
    add hl, de
    jp nc, $005c

    ld b, b
    ld bc, $f4f3
    dec b
    nop
    ld bc, $2001
    ld c, $35
    xor a
    jr nz, @+$06

    ld h, l
    add d
    ld bc, $f4f3
    ld b, b
    rrca
    jr nz, jr_005_4a5e

    ldh a, [$b9]

jr_005_4a5e:
    ld bc, $0fc0
    jr nz, jr_005_4a6c

    ldh [rIF], a
    rst $38
    rst $38
    db $d3
    call nc, $d4db
    push de

jr_005_4a6c:
    jr nz, jr_005_4a71

    ld a, [$e0fa]

jr_005_4a71:
    rrca
    rst $38
    rst $38
    rrca
    sub $d7
    rst $10
    ret c

    jr nz, @+$11

    ldh [$ff0c], a
    jr nz, jr_005_4a8e

    ld bc, $ef06
    rlca
    rst $10
    rst $10
    cp h
    ldh [rTAC], a
    ld_long a, $ffbb
    add e
    cp h
    rst $38

jr_005_4a8e:
    jr nz, @+$0f

    nop
    jr jr_005_4aaf

    inc e
    jr nz, @+$05

    add b
    inc bc
    ld a, [$c09c]
    rrca
    jr nz, @+$04

    jp c, $dbda

    jr nz, jr_005_4ab2

    jr nz, jr_005_4aad

    pop de
    daa
    pop de
    pop de
    rst $38
    sbc h
    rlca
    and b

jr_005_4aad:
    dec c
    daa

jr_005_4aaf:
    ld bc, $800f

jr_005_4ab2:
    ld a, [de]
    sbc b
    add b
    db $db
    sbc b
    sub l
    db $db
    ld a, a
    ld d, l
    call c, RST_00
    inc d
    inc e
    ret z

    nop
    nop
    add h
    ld d, h
    ld b, c
    call c, $3c01
    db $ed
    rst $38
    ld bc, $270d
    ld [hl], c
    rrca
    ld a, [bc]
    ld hl, sp-$08
    ld a, c
    ei
    rst $38
    db $fc
    ld [$dc00], sp
    xor a
    sbc $ff
    rst $38
    ld a, a
    ld sp, hl
    ld a, [$fafa]
    ei
    ld a, e
    ld a, e
    jr nz, jr_005_4af1

    rst $38
    ld_long a, $fffa
    rst $38
    rst $30
    rst $38
    rst $38
    reti


jr_005_4af1:
    rst $28
    jp c, $daff

    db $db
    jr nz, jr_005_4b07

    rst $38
    rst $38
    ld d, l
    sub [hl]
    ld bc, $d602
    rst $10
    ld bc, $d801
    jr nz, jr_005_4b14

    ld b, b
    nop

jr_005_4b07:
    ld a, [$fa97]
    rst $30
    rst $38
    jr nz, jr_005_4b12

    daa
    ld bc, $2001

jr_005_4b12:
    inc c
    di

jr_005_4b14:
    ld [hl], a
    db $f4
    cp h
    rst $38
    jr nz, jr_005_4b1d

    ld d, e
    rst $38
    daa

jr_005_4b1d:
    dec l
    nop
    jp z, $0f20

    rst $38
    jr nz, @+$06

    rst $38
    jr nz, jr_005_4b37

    jr nz, jr_005_4b2a

jr_005_4b2a:
    push af
    or $6e
    ld h, b
    ld [$bbfa], sp
    rst $38
    jr nz, jr_005_4b40

    ld h, l
    rst $38
    add b

jr_005_4b37:
    ld bc, $a666
    inc bc
    ld d, l
    daa
    call $2000

jr_005_4b40:
    inc c
    rst $38
    rst $38
    and b
    inc bc
    ld e, c
    daa
    ld b, b
    inc bc
    ret nz

    rrca
    ld a, [$e0fa]
    ld [bc], a
    daa
    ldh [rIF], a
    cp $e0

Call_005_4b54:
    rlca
    rlca
    reti


    jp c, $da27

    jp c, $adda

    db $db
    jr nz, jr_005_4b60

jr_005_4b60:
    sbc [hl]
    rst $38
    jr nz, jr_005_4b6f

    ld hl, sp+$01
    nop
    rst $30
    rst $38
    rlca
    pop hl
    ld [c], a
    daa
    ld [c], a
    ld [c], a

jr_005_4b6f:
    ld [c], a
    db $e3
    ld a, c
    ld sp, hl
    ld c, [hl]
    ld de, $0b20
    dec e
    dec e
    dec e
    cpl
    jr nz, jr_005_4b7f

    ld d, l
    daa

jr_005_4b7f:
    ld a, l
    ld bc, $07fa
    nop
    ld [hl], b
    or d
    dec e
    jr nc, @+$42

    inc bc
    rra
    dec de
    dec c
    dec c
    dec c
    dec de
    ld b, d
    ld [de], a
    jr nz, @+$0f

    db $db
    ld [bc], a
    inc sp
    ld [c], a
    ld sp, hl
    ld b, b
    inc b
    jr nz, @+$11

    rst $30
    rst $38
    ld b, b
    ld bc, $0f20
    nop
    rrca
    ld [hl+], a
    ld de, $2002
    rrca
    ld bc, $6405
    push bc
    jp c, $3e64

    db $db
    ld d, h
    ld b, c
    call c, Call_005_557f
    call c, RST_00
    dec de
    jr nz, @-$68

    nop
    nop
    add h
    call z, $db1d
    ld bc, $053c
    rst $38
    ld bc, $0704
    ld [bc], a
    nop
    ld bc, $010f
    rlca
    jr nz, jr_005_4be1

    jr nz, jr_005_4be3

    call c, $0f01
    ld bc, $e304
    db $e4
    and $20
    inc bc
    db $e3
    and $8a

jr_005_4be1:
    dec de
    dec c

jr_005_4be3:
    db $dd
    ld bc, $dc00
    ld b, b
    ld [$0110], sp
    jr nz, jr_005_4bf6

    jp c, $da2f

    jp c, $e2db

    ld [$5500], sp

jr_005_4bf6:
    ld bc, $0801
    nop
    ld e, c
    reti


    ld de, $2000

Call_005_4bff:
    ld c, $e5
    and $68
    dec b
    push hl
    jr nz, jr_005_4c15

    cp e
    sbc $df
    ld b, b
    ld [bc], a
    call $cfce
    db $10
    ld [bc], a
    reti


    ld [hl], e
    sbc $df

jr_005_4c15:
    jr nz, @+$11

    ld [$d600], sp
    rst $10
    ret c

    jr nz, @+$11

    ld l, [hl]
    ld a, b
    inc bc
    db $db
    ld [c], a
    ld d, l
    ld bc, $ff06
    reti


    add a
    inc bc
    ret nc

    and b
    ld c, $01
    dec b
    add b
    ld c, $37
    ld [bc], a
    call c, $074e
    ld d, l
    ld d, l
    inc b
    ret nz

    dec c
    ld b, d
    ld [$0fd9], sp
    ld [bc], a
    jr nz, @+$10

    ld [hl], e
    dec b
    inc a
    nop
    jr nz, jr_005_4c57

    ret nc

    or c
    nop
    ld b, b
    ld [$000e], sp
    jr nz, jr_005_4c5b

    daa
    ld [de], a
    nop
    ld d, l
    ld d, l
    ld l, c

jr_005_4c57:
    ld [c], a
    add b
    ld b, $20

jr_005_4c5b:
    nop
    daa
    jr nz, @+$0d

    ldh [$ffe1], a
    ld b, b
    add hl, bc
    nop
    ld c, $00
    jr nz, jr_005_4c73

    ld bc, $200f
    ld a, [bc]
    jp nz, $dac0

    call z, $db1d
    ld a, a

jr_005_4c73:
    ld e, [hl]
    call c, Boot
    ld [$c803], sp
    nop
    ld [bc], a
    nop
    inc bc
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
    ld [de], a
    add [hl]
    inc e
    push de
    ld d, b
    push de
    ld e, [hl]
    push de
    ld a, b
    add h
    add b
    sub [hl]
    db $dd
    ld [bc], a
    inc a
    ld sp, hl
    daa
    ld bc, $010f
    ld [$ffff], sp
    pop de
    rst $38
    rst $38
    scf
    rst $38
    jp nc, $01df

    ld bc, $dfe1
    inc c
    ld bc, $040f
    ld d, l
    ldh [rNR13], a
    ld [bc], a
    rst $18
    jr nz, jr_005_4cb9

jr_005_4cb9:
    ld h, l
    ld de, $e101
    ld c, $02
    jr nz, jr_005_4ce1

    ld [$0230], sp
    jr nz, @+$04

    ld de, $2007
    rlca
    pop hl
    ld de, $2004
    dec b
    ld d, e
    pop hl
    rst $18
    ld b, b
    rrca
    ld bc, $1b00
    ld b, b
    ld a, [bc]
    ldh [rNR41], a
    dec bc
    xor a
    xor a
    rst $18
    rst $18
    inc c

jr_005_4ce1:
    jr nz, jr_005_4ce4

    sbc [hl]

jr_005_4ce4:
    ld de, $dc02
    add hl, hl
    rst $10
    ld hl, $2000
    nop
    ld a, [de]
    jr nz, jr_005_4cf6

    rst $38
    jr nz, @+$06

    ld de, $c102

jr_005_4cf6:
    and $15
    ld [bc], a
    ld b, b
    rlca
    cp a
    inc bc
    jr nz, jr_005_4d00

    push hl

jr_005_4d00:
    nop
    ld a, [hl+]
    jp nc, $1a7c

    nop
    jr nz, jr_005_4d0a

    ld d, l
    ld d, l

jr_005_4d0a:
    ld d, l
    daa
    ld a, [hl+]
    ld b, b
    inc b
    di
    ld d, l
    nop
    ld b, b
    ld [$0420], sp
    rst $38
    rlca
    rst $38
    daa
    jp c, $0460

    db $dd
    ld b, b
    inc b
    pop de
    xor e
    jr nz, jr_005_4d29

    ld d, l
    nop
    ld a, [hl]
    jr nz, jr_005_4d2f

jr_005_4d29:
    pop hl
    rst $18
    call c, $d7ff
    rst $18

jr_005_4d2f:
    ld b, b
    rrca
    ld a, [de]
    ld b, b
    ld b, $e6
    ld b, $02
    inc c
    ldh [rNR41], a
    rlca
    ld l, a
    nop
    jr nz, jr_005_4d47

    ld c, c
    pop de
    jr nz, @+$05

    ld b, b
    dec bc
    ldh [rNR41], a

jr_005_4d47:
    rlca
    xor c
    nop
    nop
    ld h, b
    rrca
    and [hl]
    jr nz, jr_005_4d52

    daa
    daa

jr_005_4d52:
    ld b, b
    ld a, [bc]
    jp z, $d215

    ld b, b
    ld [de], a
    rlca
    ld a, [hl-]
    ld l, $00
    daa
    ld h, b
    rrca
    db $f4
    pop de
    daa
    ld b, b
    dec b
    jr nz, jr_005_4d68

    ld a, e

jr_005_4d68:
    ldh [$fff5], a
    jr nz, jr_005_4d6d

    di

jr_005_4d6d:
    push af
    inc c
    db $f4
    jr nz, jr_005_4d76

    db $dd
    or $20
    nop

jr_005_4d76:
    di
    db $f4
    di
    jr nz, jr_005_4d80

    db $f4
    or $de
    jr nz, @+$03

jr_005_4d80:
    or $f6
    inc c
    or $20
    ld [$f6f6], sp
    push de
    or $20
    dec b
    or $20
    inc b
    dec de
    jr nz, jr_005_4d9a

    nop
    ld d, l
    ld l, h
    ld bc, $2005
    nop
    ld d, l

jr_005_4d9a:
    nop
    ld bc, $5502
    nop
    jr nz, jr_005_4da7

    sbc a
    rst $38
    jp nc, $f0f1

    rlca

jr_005_4da7:
    inc c
    ld bc, $0042
    jp nc, $f1bd

    ld d, $01
    rlca
    rst $38
    ld d, e
    rst $38
    ld b, b
    dec b
    pop af
    add sp, $20
    nop
    ld [de], a
    nop
    jr nz, jr_005_4dc3

    rst $38
    jr nz, @+$05

    rst $38
    rst $38

jr_005_4dc3:
    ldh a, [$d2]
    jr nz, @+$06

    rst $38
    jr nz, jr_005_4dd9

    jr nz, @+$04

    rst $38
    jr nz, @+$06

    db $e3
    ld a, c
    sub d
    jr nz, jr_005_4dd9

    daa
    add e
    ld [bc], a
    xor d
    db $10

jr_005_4dd9:
    ld d, l
    ld a, l
    ld bc, $0520
    db $e4
    ld d, h
    inc h
    ld bc, $0320
    rst $38
    ld b, b
    dec b
    jp nc, $0340

    daa
    ld b, e
    dec d
    ld e, e
    db $e4
    db $e3
    jr nz, jr_005_4df8

    ld [c], a
    db $e3
    jr nz, jr_005_4df8

    jr jr_005_4e18

jr_005_4df8:
    ld a, [bc]
    db $db
    daa
    push hl
    jr nz, jr_005_4e04

    db $e4
    push hl
    jr nz, jr_005_4e03

    ld [c], a

jr_005_4e03:
    rst $38

jr_005_4e04:
    inc bc
    rst $38
    ld [c], a
    add b
    rla
    ld bc, $600f
    inc sp
    add b
    db $ec
    db $db
    sbc b
    ld b, $dc
    ld d, h
    sub c
    call c, $567f

jr_005_4e18:
    db $dd
    add b
    sub [hl]
    db $dd
    nop
    ld [bc], a
    jr jr_005_4e23

    sub [hl]
    nop
    ld [bc], a

jr_005_4e23:
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [de], a
    add [hl]
    or d
    sub $af
    rst $10
    inc a
    push de
    ld a, b
    adc h
    ld [hl], b
    xor a
    rst $10
    add hl, bc
    ld [hl], d
    sub a
    push de
    add hl, bc
    ld [hl], d
    inc a
    push de
    add hl, bc
    inc [hl]
    ld e, a
    daa
    daa
    ld [hl], c
    rst $38
    daa
    ld bc, $ff0d
    ld bc, $bf07
    rst $18
    pop de
    ld a, e
    rst $38
    jp nc, $01df

    inc b
    call c, $d7f1
    rlca
    ld [bc], a
    jr nz, @+$11

    ld bc, $e101
    jp c, $ffdc

    sbc a
    rst $38
    rst $10
    db $dd
    rst $18
    ldh [rNR41], a
    rrca
    jr nz, jr_005_4e77

    db $dd
    sbc [hl]

jr_005_4e77:
    rra
    nop
    ld a, c
    rst $38
    rst $38
    rst $20
    ld b, b
    rrca
    jr nz, jr_005_4e83

    and $ea

jr_005_4e83:
    ld de, $d204
    jr nz, jr_005_4e93

    pop hl
    jr nz, jr_005_4e8d

    xor a
    pop hl

jr_005_4e8d:
    rst $18
    ld sp, $0dd1
    nop
    and b

jr_005_4e93:
    rrca
    ld b, b
    inc b
    rst $38
    rst $18
    jr nz, jr_005_4e9b

    ret nz

jr_005_4e9b:
    rrca
    or [hl]
    ld h, b
    rlca
    ldh [$ffd1], a
    rra
    ld [bc], a
    ld [hl], d
    rst $38
    jr nz, jr_005_4eb6

    rst $38
    dec hl
    jp nc, $21e1

    nop
    pop de
    add hl, de
    ld [bc], a
    ld a, e
    add b
    dec c
    and b
    ld b, $b4

jr_005_4eb6:
    jr c, @+$05

    jr nz, jr_005_4ec8

    ldh [rNR41], a
    nop
    daa
    daa
    rra
    ld bc, $4872
    rrca
    ld bc, $0020
    nop

jr_005_4ec8:
    rra
    daa
    ld b, b
    ld bc, $0008
    rst $38
    ld b, b
    rrca
    ret c

    jr nz, @+$11

    jr nz, jr_005_4ee5

    jr nz, jr_005_4ed8

jr_005_4ed8:
    ld d, e
    rst $38
    jr nz, @+$09

    sbc [hl]
    rst $38
    ld a, [bc]
    jr nz, @+$11

    rst $38
    jr nz, jr_005_4eec

    rst $38

jr_005_4ee5:
    jr nz, @+$11

    ld bc, $2002
    inc b
    nop

jr_005_4eec:
    inc e
    db $ed
    db $f4
    ldh [$ff03], a
    push af
    db $f4
    jr nz, @+$07

    jp nc, $f6f6

    sbc d
    jr nz, jr_005_4f04

    or $20
    ld bc, $f4f3
    dec d
    nop
    jr nz, @+$07

jr_005_4f04:
    ldh a, [$de]
    jr nz, @+$11

    or $f2
    pop af
    ldh a, [rNR41]
    nop
    ld d, l
    nop
    ld a, [hl+]
    add b
    ld [bc], a
    ldh a, [rNR41]
    add hl, bc
    ldh a, [rNR41]
    ld bc, $bc2e
    ld de, $0fa0
    sub d
    ld bc, $d102
    inc de
    ld [bc], a
    jr nz, @+$04

    ld h, l
    jr nz, @+$11

    jr nz, @+$04

    ld d, l
    jr @+$03

    ld bc, $0f40
    ld b, b
    add hl, bc
    rlca
    rst $38
    nop
    rra
    jr nz, jr_005_4f48

    jr nz, @+$11

    rlca
    rst $38
    ld e, l
    rst $38
    jr nz, jr_005_4f50

    ld b, b
    ld a, [bc]
    jr nz, jr_005_4f54

    jr nz, jr_005_4f51

    ld e, b

jr_005_4f48:
    ld de, $6068
    dec d
    dec b
    dec b
    jr nz, jr_005_4f5b

jr_005_4f50:
    ld [hl], b

jr_005_4f51:
    jr nz, jr_005_4f57

    ld [hl], e

jr_005_4f54:
    rst $38
    dec b
    dec b

jr_005_4f57:
    nop
    jr nz, jr_005_4f63

    sbc b

jr_005_4f5b:
    jp c, Jump_005_7fdc

    ld a, d
    db $dd
    nop
    nop
    inc de

jr_005_4f63:
    inc bc
    sub [hl]
    nop
    ld [bc], a
    nop
    ld bc, $0000
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
    ld [de], a
    add h
    cp [hl]
    call nc, $d5fb
    ld a, d
    nop
    ld b, l
    daa
    ld bc, $ff02
    ld bc, $010f
    inc b
    jr nz, @+$05

    rst $18
    ld bc, $7f03
    pop de
    dec de
    jp nc, $e0df

    rst $18
    rst $18
    jr nz, jr_005_4fa1

    rst $28
    rst $18
    ld h, l
    rst $38
    rst $18
    jr nz, jr_005_4f9e

jr_005_4f9e:
    ldh [$ffdf], a
    xor a

jr_005_4fa1:
    ld h, $20
    nop
    inc c
    jp nc, $0127

    jr nz, jr_005_4fb5

    rst $38
    jr nz, jr_005_4faf

    ld d, $00

jr_005_4faf:
    adc l
    ldh [rNR41], a
    ld [bc], a
    ld a, [de]
    rst $38

jr_005_4fb5:
    jr nz, jr_005_4fc3

    ld bc, $0500
    ld bc, $57e6
    rst $20
    rst $18
    pop hl
    jr nz, jr_005_4fc3

    rst $38

jr_005_4fc3:
    jr nz, jr_005_4fd1

    ld d, l
    ld bc, $8e00
    jr nz, jr_005_4fcb

jr_005_4fcb:
    call c, $d2ff
    ld h, b
    ld [bc], a
    rrca

jr_005_4fd1:
    ld bc, $0920
    call c, $d7ef
    rst $18
    rst $18
    rlca
    ld a, [hl]
    nop
    pop de
    ld hl, $db09
    add hl, bc
    ld hl, $0140
    call c, $c0ab
    ld a, [bc]
    ld b, c
    rst $38
    rst $08
    push de
    rst $18
    rlca
    rst $20
    dec sp
    nop
    ld b, b
    inc b
    rst $18
    ret c

    ld [c], a
    ld [c], a
    dec c
    push de
    ld e, e
    inc bc
    dec b
    nop
    add b
    ld [bc], a
    rst $18
    ret c

    db $d3
    ld b, h
    nop
    dec de
    dec de
    ld bc, $5edc
    ld bc, $0240
    add hl, bc
    nop
    add hl, bc
    jr nz, jr_005_501b

    db $db
    call c, $20e7
    nop
    rst $38
    rst $38
    dec b
    nop
    rst $10

jr_005_501b:
    call c, $206e
    nop
    rst $10
    and $53
    ld b, b
    dec de
    ld b, c
    rst $38
    jr nz, @+$07

    and [hl]
    dec b
    nop
    inc c
    jp nc, $0009

    jr nz, jr_005_503c

    rst $38
    jr nz, @+$0b

    dec de
    jp nz, RST_20

    jp nc, $1d80

    dec de

jr_005_503c:
    ld bc, $0180
    ld a, [$2900]
    ld d, l
    ld [$1d00], a
    cp h
    ld b, b
    ld a, [bc]
    rst $38
    ld b, b
    ld c, $ff
    rst $38
    ld [c], a
    db $dd
    pop de
    ld a, $02
    rst $38
    jp nc, $209e

    ld bc, $79e3
    cp e
    rst $38
    db $e3
    ld e, $09
    db $e4
    push hl
    db $e4
    ld b, b
    ld a, [bc]
    push hl
    rlca
    rst $38
    rst $38
    push hl
    nop
    cpl
    ld bc, $200b
    add hl, bc
    ld d, h
    db $e3
    jp c, Jump_005_587f

    call c, RST_00
    add hl, de
    inc bc
    ld h, h
    nop
    nop
    nop
    db $dd
    daa
    ld bc, $270f
    call $02ce
    dec b
    rst $38
    rst $38
    rst $38
    jp nc, $e1df

    rlca
    call c, Call_005_7d07
    ld a, l
    rst $38
    ld h, c
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    and l
    ld h, c
    xor a
    rst $38
    rst $10
    db $f4
    pop de
    rra
    ld b, $cd
    jr nz, jr_005_50a4

jr_005_50a4:
    db $f4
    ld [hl], a
    di
    rlca
    rst $38
    jr nz, @+$0b

    rst $38
    ldh a, [$d1]
    ld b, b
    ld a, [bc]
    ld e, e
    ldh a, [$f1]
    jr nz, jr_005_50b5

jr_005_50b5:
    ld l, a
    ld l, a
    jr nz, jr_005_50c0

    rst $38
    ld b, b
    dec bc
    ld a, e
    rst $38
    rst $38
    ld [hl], d

jr_005_50c0:
    nop
    rst $38
    rst $38
    ld h, e
    rst $38
    inc b
    ld bc, $20ac
    inc bc
    ld b, b
    ld a, [bc]
    rst $38
    rst $38
    ld b, b
    nop
    rst $38
    ld bc, $a504
    sbc a
    ld h, c
    ld d, l
    ld d, l
    ld d, l
    nop
    ld b, b
    add hl, bc
    cp d
    dec bc
    and l
    ld l, b
    ld h, e
    ld bc, $0b40
    ld [hl], l
    ld [bc], a
    and l
    ld a, l
    ld [bc], a
    rst $38
    rst $38
    jr nz, jr_005_50f0

    nop
    add b
    ld a, [bc]

jr_005_50f0:
    jr nz, jr_005_5101

    ld b, b
    rrca
    ld b, b
    rrca
    ld b, b
    rrca
    jr nz, jr_005_50fe

    and b
    ld bc, $0f40

jr_005_50fe:
    and d
    jr nz, jr_005_5106

jr_005_5101:
    and a
    ld b, b
    rrca
    jr nz, @+$0c

jr_005_5106:
    inc bc
    ld de, $8063
    dec c
    and a
    and h
    ld d, h
    ld bc, $0020
    and a
    inc bc
    inc de
    ld b, b
    inc e
    ld h, e
    dec sp
    ld bc, $daff
    dec b
    inc bc
    jr jr_005_5123

    nop
    and a
    ld [c], a
    ld b, b

jr_005_5123:
    dec bc
    ld [c], a
    db $e3
    ld e, $20
    rlca
    rst $38
    rst $38
    ld [c], a
    db $e3
    ld h, $10
    ld b, b
    ld e, $24
    nop
    cp l
    ld [c], a
    ld b, d
    inc d
    push hl
    db $e4
    push hl
    db $e4
    ld b, b
    add hl, bc
    ld h, $02
    ld bc, $260f
    ld b, b
    add hl, bc
    jp nz, $da99

    ld a, [hl-]
    or l
    jp c, $e6b6

    jp c, Jump_005_5a9d

    db $db
    sbc l
    add c
    db $db
    or [hl]
    jp c, Jump_005_7fdb

    dec [hl]
    call c, $3fb6
    call c, $0300
    ld [de], a
    ld a, [bc]
    sub [hl]
    nop
    nop
    nop
    ld [hl], c
    rst $38
    ld bc, $010f
    rrca
    ld bc, $cd05
    adc $65
    ld b, $02
    di
    rst $08
    ret nc

    rlca
    ld bc, $0105
    rst $38
    pop de
    jp nc, $d7d3

    jp nc, $d4d3

    dec d
    ld bc, $30d0
    rrca
    xor a
    rst $38
    ld [hl], a
    rst $38
    rst $10
    sub $02
    nop
    ret c

    pop de
    call nc, $0c48
    ld e, d
    ld l, $00
    sbc [hl]
    dec bc
    ld [bc], a
    sub $d7
    ld [bc], a
    inc bc
    ret c

    inc a
    dec c
    rst $38
    pop de
    rst $38
    rst $38
    jp nc, $ffd3

    rst $38
    jp c, $db5d

    ld [bc], a
    ld bc, $ff79
    call c, $0d20
    nop
    ld bc, $af01
    rst $38
    rst $38
    sbc $df
    ld [bc], a
    ld bc, $20ff
    rrca
    push de
    rst $08
    sub $bb
    rst $38
    rst $10
    daa
    inc b
    ld bc, $3101
    rst $38
    rst $28
    ld sp, $27ff
    ld h, $01
    ld [bc], a
    daa
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    reti


    jp c, $ffff

    db $db
    rst $38
    or a
    rst $38
    db $f4
    di
    ld [bc], a
    inc bc
    ldh a, [$36]
    ld bc, $2700
    db $fc
    ld bc, $2c04
    ld bc, $e4e1
    db $e3
    db $e4
    db $e3
    rst $38
    rst $10
    rst $38
    ld a, [c]
    pop af
    ld [bc], a
    inc bc
    xor $20
    ld [bc], a
    rst $38
    ld d, e
    rst $28
    rst $38
    rst $38
    daa
    ld [hl], $01
    ld [bc], a
    push hl
    jp hl


    ld [$e9e3], a
    ld [$0d40], a
    ld a, c
    ld bc, $0420
    rst $20
    db $eb
    db $ec
    add e
    db $eb
    db $ec
    ld c, $00
    ld bc, $4003
    ld [bc], a
    ld e, c
    inc bc
    ld b, b
    rlca
    daa
    cp $30
    nop
    sbc $da
    xor e
    rst $38
    db $db
    jp c, Jump_005_5827

    ld b, b
    inc bc
    ld bc, $4009
    inc b
    rst $18
    sbc $04
    nop
    db $db
    ld b, b
    nop
    ld d, a
    daa
    ld sp, hl
    ld a, [$0502]
    ld a, [$0106]
    daa
    add b
    inc bc
    db $ed
    pop hl
    and [hl]
    nop
    db $e4
    ld [c], a
    ld b, b
    nop
    daa
    ei
    db $fc
    ld [hl], $02
    inc b
    daa
    daa
    ld b, $02
    db $eb
    db $ec
    jr nz, jr_005_525d

    ret nz

jr_005_525d:
    rlca
    cp a
    ld hl, sp+$36
    push af
    or $f8
    ld hl, sp+$07
    ld [bc], a
    rst $30
    db $ed
    ld hl, sp-$80
    ld [bc], a
    db $eb
    ld bc, $08c0
    or $f7
    ld [hl], $37
    ld bc, $0b02
    ld [bc], a
    nop
    ld [hl], $f8
    ld hl, $8000
    ld [bc], a
    ccf
    ld bc, $ff1c
    rst $38
    inc e
    dec bc
    ld [bc], a
    rrca
    ld [bc], a
    ld b, $01
    daa
    di
    rra
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $7f0d
    ld d, $db
    ld c, [hl]
    halt
    db $db
    ld c, [hl]
    inc bc
    call c, Boot
    jr @+$05

    sub [hl]
    nop
    ld b, $00
    rrca
    ld bc, $0000
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
    ld [de], a
    adc d
    ld a, a
    rst $10
    ret z

    sub $f6
    sub $fe
    sub $85
    sub $08
    add h
    ret z

    sub $7f
    rst $10
    ld l, b
    sub b
    add b
    call c, $05dc
    add b
    rst $00
    db $db
    dec b
    add b
    ret nz

    db $db
    dec b
    add b
    db $e3
    call c, $3004
    ld sp, hl
    daa
    ld bc, $010f
    ld [$ffff], sp
    rst $18
    ldh [$ffdf], a
    sub $01
    nop
    pop de
    rst $38
    ld bc, $d200
    ld a, [bc]
    ld bc, $dfe1
    ld sp, hl
    rst $18
    ld de, $2008
    nop
    rst $18
    call c, $dfd7
    pop hl
    call nc, $0720
    ld bc, $e001
    jr nz, jr_005_5322

    ld d, e

jr_005_5322:
    jr nz, jr_005_5328

    call c, Call_005_4bff
    rst $38

jr_005_5328:
    rst $10
    cpl
    dec b
    ldh [rNR43], a
    dec b
    ld b, b
    ld [$08d1], sp
    ld bc, $4022
    ld a, [bc]
    db $dd
    jr nz, jr_005_5348

    jr nz, @+$08

    ld b, d
    nop
    call c, TimerOverflowInterrupt
    jr nz, jr_005_534b

    sub l
    xor e
    jr nz, jr_005_5347

    ld a, c

jr_005_5347:
    ld b, b

jr_005_5348:
    ld b, $dc
    add hl, bc

jr_005_534b:
    ld [bc], a
    jr nz, jr_005_534e

jr_005_534e:
    sbc [hl]
    or h
    ld b, b
    rrca
    ld a, d
    inc b
    jp nc, $06b1

    rst $38
    rst $38
    db $f4
    rrca
    daa
    ld hl, sp+$40
    inc bc
    nop
    dec d
    ld b, b
    inc bc
    daa
    dec hl
    dec hl
    daa
    jp nc, $df19

    ld b, $01
    db $10
    ld bc, $d7dc
    and b
    rrca
    ld d, a
    ld [bc], a
    ld h, b
    inc b
    sub e
    jr @+$01

    jr nz, jr_005_538a

    add b
    add hl, bc
    rst $38
    jr nz, jr_005_538d

    add l
    rrca
    daa
    jp nz, $0b20

    dec hl
    ld bc, $8005

jr_005_538a:
    ld [bc], a
    ld b, [hl]
    nop

jr_005_538d:
    jr nz, jr_005_5394

    ldh [$ffd1], a
    ld h, l
    jr jr_005_53f4

jr_005_5394:
    ld [$e0e0], sp
    inc b
    jr nz, jr_005_539c

    ld h, l
    rst $38

jr_005_539c:
    ld b, b
    dec b
    dec [hl]
    di
    add b
    inc c
    pop hl
    ld b, b
    inc bc
    rst $38
    db $f4
    nop
    rra
    nop
    dec d
    jp z, $0260

    or $40
    ld bc, $08af
    nop
    ld b, b
    dec e
    db $f4
    pop de
    push hl
    add hl, hl
    jr nz, @+$06

    db $f4
    db $10
    ld bc, $0420
    di
    db $f4
    di
    or $20
    inc bc
    call c, $11f0
    inc bc
    ldh a, [rIE]
    rst $38
    or $be
    jr nz, jr_005_53da

    or $f6
    pop af
    rst $10
    db $dd
    jr nz, jr_005_53f0

    ld a, [de]

jr_005_53da:
    ld a, [hl-]
    dec d
    ld bc, $20f0
    ld [$f1f2], sp
    rst $38
    ld a, [de]
    ld [de], a
    jr nz, @+$17

    ret z

    ld bc, $2002
    ld [bc], a
    sub [hl]
    nop
    ld a, [hl+]
    rla

jr_005_53f0:
    ld bc, $0208
    rst $38

jr_005_53f4:
    jp nc, $2000

    inc de
    dec h
    inc de
    nop
    ld de, $046f
    jr nc, jr_005_5406

    ld h, b

Call_005_5401:
    dec d
    db $10
    ld b, $20
    rrca

jr_005_5406:
    and d
    ld de, $0005
    ld bc, $2001
    rrca
    ld de, $e206
    ld a, [bc]
    nop
    rlca
    sub l
    ld [c], a
    rrca
    inc bc
    db $e3
    jr nz, @+$04

    ld a, [de]
    jr nz, jr_005_5425

    ld de, $e400
    ld a, [$0120]
    db $e4

jr_005_5425:
    rrca
    inc bc
    db $e4
    ld [c], a
    ld [c], a
    ld [c], a
    db $e3
    nop
    ld b, b
    ld bc, $0206
    ld de, $6001
    rra
    push hl
    dec e
    add b
    ret nz

    db $db
    add b
    rst $00
    db $db
    add b
    call c, $80dc
    db $e3
    call c, $9d7f
    db $dd
    nop
    ld bc, $0308
    ret z

    nop
    ld [bc], a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    adc b
    ld a, a
    rst $10
    sub [hl]
    sub $a3
    sub $23
    sub $76
    adc b
    add b
    db $e3
    call c, $9802
    rst $18
    call c, $3802
    ld l, c
    daa
    ld bc, $010f
    ld [$01ff], sp
    nop
    db $d3
    rst $18
    ld bc, $5b01
    ret c

    rst $38
    ld bc, $d302
    ret c

    inc d
    ld bc, $15ab
    inc b
    ld b, l
    rst $18
    ld de, $de00
    ld a, [bc]
    inc bc
    ld hl, $1703
    nop
    daa
    add hl, bc
    ld [bc], a
    xor c
    push de
    jr nz, jr_005_54a2

    rlca
    ld [bc], a
    pop hl
    inc b
    nop

jr_005_54a2:
    call c, $042c
    daa
    sbc b
    ld a, [hl+]
    ld bc, $043f
    jr nz, jr_005_54b0

    sbc [hl]
    rst $38
    ld b, b

jr_005_54b0:
    inc b
    dec [hl]
    ld [bc], a
    daa
    and a
    rst $18
    rst $18
    sbc $54
    dec b
    jr nz, jr_005_54be

    ldh [rTIMA], a

jr_005_54be:
    nop
    ldh [$fff4], a
    ld b, e
    nop
    ld d, $07
    rst $18
    ld d, l
    ld b, $ff
    rst $38
    ld d, l
    ld d, l
    sub c
    ld d, l
    xor a
    rlca
    rla
    dec b
    ld bc, $e001
    inc c
    ld bc, $003b
    rlca
    ld a, [c]

Call_005_54db:
    ld [hl-], a
    rlca
    daa
    ld d, $03
    ld a, [bc]
    inc bc
    rst $18
    rst $18
    ld d, e
    rst $38
    ld b, l
    rst $18
    jr nz, @+$06

    pop hl
    scf
    inc bc
    ld d, $02
    ld b, a
    ld [bc], a
    daa
    ld a, l
    inc b
    or a
    rst $38
    rst $38
    ldh [rLCDC], a
    dec b
    ld a, c
    rst $38
    jr nz, @+$06

    ld h, l
    sub c
    rst $38
    jr nz, jr_005_5507

    ld a, e
    nop
    ld b, b
    ld [bc], a

jr_005_5507:
    ldh [$ffab], a
    dec b
    jr nz, jr_005_550f

    rst $38
    xor l
    rst $38

jr_005_550f:
    ld l, d
    inc b
    db $dd
    rst $18
    ld h, b
    dec b
    rst $18
    and b
    ld b, $21
    cp e

Call_005_551a:
    add hl, bc
    daa
    add b
    dec b
    call c, $d7ff
    ret nz

    inc bc
    nop
    ld c, d
    stop
    dec hl
    ld bc, $2701
    ld c, e
    ld bc, $0620
    pop de
    ld de, $2a10
    ld b, b
    nop
    pop hl
    push af
    inc c
    daa
    inc b
    nop
    db $f4
    ld a, [hl+]
    ld bc, $0020
    dec a
    rst $10
    and b
    nop
    rst $18
    and $21
    add hl, bc
    ld bc, $3b09
    nop
    cp a
    db $f4
    or $29
    push af
    rst $18
    ldh [rNR41], a
    nop
    jp nc, Jump_005_40de

    nop
    push af
    pop de
    rst $38
    rst $20
    call nc, Call_005_551a
    nop
    ld l, l
    or $01

Call_005_5564:
    nop
    di
    rst $18
    jr nz, @+$05

    and $af
    ld [$fb00], sp
    rst $20
    db $f4
    ld de, $df01
    rst $18
    push af
    call c, Call_005_5fff
    rst $20
    push af
    db $f4
    rlca
    or $21
    ld [bc], a

Call_005_557f:
    pop de
    ldh [rSC], a
    db $db
    or $ff
    jr nz, jr_005_5587

jr_005_5587:
    rst $38
    jp nc, $0111

    push af
    db $f4
    inc hl
    or $d1
    ld a, [bc]
    ld bc, $0320
    inc c
    nop
    rlca
    ld b, b
    nop
    ld [$ce01], sp
    jr nz, jr_005_559e

jr_005_559e:
    daa
    daa
    ld a, [hl+]
    inc d
    inc bc
    ld a, [hl+]
    ld bc, $f1f6
    or a
    ld a, [hl+]
    daa
    nop
    jr nz, jr_005_55b1

    pop af
    ldh a, [rNR41]
    inc b

jr_005_55b1:
    or $fd
    ld a, [c]
    jr nz, jr_005_55b9

    pop af
    ldh a, [$27]

jr_005_55b9:
    pop af
    rst $38
    rst $38
    db $db
    ldh a, [$f2]
    jr nz, jr_005_55c5

    rst $38
    rst $38
    jr nz, @+$06

jr_005_55c5:
    pop af
    rst $38
    or c
    ldh a, [$2c]
    ld bc, $0013
    halt
    ld [hl+], a
    rst $38
    ldh a, [rNR41]
    ld b, $18

Call_005_55d4:
    jp nz, $0220

    dec b
    ld bc, $9806
    inc h
    ld b, b
    ld a, [bc]
    sbc [hl]
    inc hl
    rst $38
    pop de
    ld b, h
    ld a, [bc]
    ld b, $20
    dec b
    ld d, l
    ld h, c
    ld de, $0f20
    ld b, b
    rlca
    rlca
    ld b, b
    rrca
    db $f4
    inc c
    dec b
    dec c
    ld bc, $20e2
    inc bc
    ld [c], a
    db $e3
    ld [c], a
    db $e3
    and d
    jr nz, @+$06

    ld a, [de]
    dec e
    ld bc, $0010
    jr nz, jr_005_560a

    db $e4
    jr nz, jr_005_560d

jr_005_560a:
    db $e4
    rlca
    db $e4

jr_005_560d:
    push hl
    db $e4
    inc hl
    nop
    jr nz, jr_005_5613

jr_005_5613:
    daa
    nop
    add hl, bc
    nop
    rrca
    nop
    nop
    jr nz, jr_005_561f

    ld d, h
    ccf
    ld h, b

jr_005_561f:
    dec sp
    sbc b
    rst $18
    call c, $e198
    call c, $e380
    call c, $4980
    db $dd
    ld a, a
    sbc d
    db $dd
    nop
    nop
    add hl, de
    inc de
    sub [hl]
    nop
    nop
    adc h
    ld [hl], d
    ld sp, $08d5
    ld d, h
    add c
    call c, Call_005_5401
    ld [hl+], a
    call c, $3401
    dec [hl]
    daa
    ld bc, $0700
    ld [bc], a
    nop
    daa
    rst $38
    ld bc, $1003
    ld bc, $fff5
    ld bc, $ec08
    ld bc, $0700
    db $ec
    rlca
    ld a, l
    rst $38
    ld a, l
    db $ed
    db $ec
    rst $28
    db $ec
    xor $ff
    rst $38
    xor a
    and l
    ld h, c
    rst $38
    and l
    jr nz, @+$0c

    rst $28
    jr nz, jr_005_566f

jr_005_566f:
    xor $ce
    jr nz, jr_005_5673

jr_005_5673:
    ld a, l
    db $ed
    ldh a, [$1f]
    nop
    jr nz, @+$10

    xor $f0
    rst $38
    db $ed
    xor $07
    rst $38
    rlca
    ld d, l
    ld d, l
    nop
    sub a
    rst $38
    ldh a, [rIE]
    jr nz, @+$11

    rst $38
    ld d, $01
    dec e
    ld bc, $c1ff
    rlca
    jr nz, jr_005_56a4

    jr nz, jr_005_569c

    ld b, b
    nop
    jr nz, jr_005_56aa

    or b

jr_005_569c:
    ld [$2727], sp
    push af
    ld l, a
    ld bc, $0005

jr_005_56a4:
    jr nz, jr_005_56b3

    jp c, $d7d7

    ret c

jr_005_56aa:
    ld a, a
    rst $38
    rst $38
    push de
    rst $10
    reti


    jp c, $09d6

jr_005_56b3:
    nop
    db $fd
    ld h, c
    ld h, b
    rrca
    rst $38
    rst $38
    db $dd
    rst $38
    rst $38
    db $db
    adc $09
    inc b
    ld h, e
    rst $38
    and a
    inc bc
    nop
    jr nz, jr_005_56d4

    sbc $ff
    or e
    rst $38
    call c, $0509
    ld bc, $e900
    db $eb
    ld b, b

jr_005_56d4:
    rrca
    db $db
    ld a, e
    dec de
    dec c
    ld bc, $1b04
    rst $38
    db $ed
    db $ec
    ld b, b
    rrca
    ld a, a
    call c, $d6d5
    reti


    jp c, $d6d7

    adc h
    ld bc, $e9a3
    db $eb
    jr nz, jr_005_56fa

    db $fc
    nop
    ld b, b
    ld bc, $4cdb
    dec b
    db $eb
    or a
    db $ec

jr_005_56fa:
    ld d, l
    ld d, l
    ld a, $0a
    rlca
    ret c

    ld b, b
    ld bc, $bedc
    ld h, c
    inc b
    dec de
    db $ec
    db $ec
    push de
    sub $20
    dec bc
    db $dd
    or $40
    ld [bc], a
    push de
    sub $5f
    nop
    sub $d8
    db $dd
    db $ec
    ld h, a
    db $ec
    db $db
    rst $38
    ld h, b
    dec bc
    ld e, l
    ld de, $dcdc
    ld [c], a
    inc b
    push af
    sbc $5f
    nop
    ld d, l
    ret nz

    rrca
    db $db
    ld d, l
    nop
    dec de
    jr z, jr_005_5792

    inc b
    ld c, c
    nop
    dec e
    add hl, bc
    dec b
    ld bc, $050f
    jr nz, jr_005_5746

    jp nz, $da9a

    sub b
    or [hl]
    jp c, Jump_005_5947

    db $db

jr_005_5746:
    ld d, h
    cp l
    db $db
    ld a, a
    dec d
    call c, $2254
    call c, $8154
    call c, RST_00
    inc de
    inc bc
    sub [hl]
    nop
    ld [bc], a
    nop
    rlca
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
    ld [de], a
    adc b
    ld e, h
    push de
    ld d, c
    sub $55
    call nc, $d659
    halt
    adc h
    ld [hl], b
    ld d, c
    sub $09
    ld [hl], d
    ld d, l
    call nc, $7009
    ld e, c
    sub $09
    inc [hl]
    rst $38
    nop
    nop
    nop
    daa
    ld [hl], c
    rst $38
    daa
    daa
    ld l, c
    ld [hl], d
    inc b
    nop
    ld [$0000], sp

jr_005_5792:
    ld bc, $2701
    rst $38
    ld bc, $ef0a
    jp nc, $ffff

    pop de
    inc b
    inc b
    push de
    rst $18
    rst $18
    ld [hl], a
    rst $18
    pop de
    rst $38
    jr nz, jr_005_57b7

    pop de
    jp nc, $2065

    ld [bc], a
    ld [hl], l
    rst $10
    jr nz, jr_005_57bf

    cp c
    ld b, b
    ld a, [bc]
    rst $38
    sbc [hl]
    rst $38

jr_005_57b7:
    ld b, b
    rrca
    ld a, d
    jr nz, jr_005_57c5

    rst $38
    jr nz, jr_005_57cc

jr_005_57bf:
    ld d, l
    ld d, l
    ld d, l
    nop
    jr nz, jr_005_57cc

jr_005_57c5:
    jp hl


    ld d, l
    ld bc, $4002
    dec bc
    rlca

jr_005_57cc:
    ld b, b
    ld a, [bc]
    rst $10
    rst $18
    rlca
    ld a, d
    ld b, b
    ld a, [bc]
    xor a
    jr nz, jr_005_57e3

    rst $38
    push de
    rlca
    rst $38
    ld b, b
    rrca
    inc a
    ld e, h

Jump_005_57df:
    ld [bc], a
    ld l, b
    nop
    rst $38

jr_005_57e3:
    ld a, [de]
    rst $38
    rst $10
    jr nz, jr_005_57f7

    ld b, b
    ld a, [bc]
    inc hl
    rst $38
    rlca
    and b
    rrca
    and b
    rrca
    ldh [$ff0e], a
    cp e
    ld b, b
    ld b, $00

jr_005_57f7:
    rra
    add $60
    ld a, [bc]
    ld d, e
    rst $38
    jr nz, jr_005_580e

    add b
    ld a, [bc]
    jr nz, @+$0f

    ld a, c
    rst $38
    adc $20
    ld [$e2e2], sp
    db $e3
    ld h, b
    ld c, $20

jr_005_580e:
    ld [$e5e2], sp
    xor e
    push hl
    push hl
    jr nz, @+$0d

    daa
    ld bc, $7000
    inc e
    nop
    ld h, $8f
    ld h, $d1
    jp nc, $0e70

    ld [bc], a
    ld bc, $2000

Jump_005_5827:
    inc c
    daa
    rst $38
    daa
    ld h, $26
    ld [hl], e
    rst $38
    ld h, $26
    daa
    ld bc, $2027
    rrca
    sbc b
    ccf
    db $db
    ld a, a
    dec [hl]
    call c, $0200
    ld d, $13
    sub [hl]
    nop
    nop
    nop
    db $ed
    rst $38
    ld bc, $ff0f
    daa
    inc de
    rrca
    rst $38
    call Call_005_6dcf
    ret nc

    ld [$ce03], sp
    ret nc

    jr nz, jr_005_5861

    call $19ce
    inc b
    jp nz, $010c

    ret nc

    ld b, b
    rrca

jr_005_5861:
    dec [hl]
    ld b, $60
    rrca
    ld bc, $f402
    push af
    cp h
    ld [bc], a
    rrca
    jr nz, jr_005_5877

    rst $20
    add sp, -$0a
    rst $30
    ld [bc], a
    ld [bc], a
    ld a, c
    db $dd
    rst $38

jr_005_5877:
    ld [$f703], sp
    rst $20
    add sp, $20
    add hl, bc
    push hl

Jump_005_587f:
    and $7f
    rst $20
    add sp, -$08
    ld sp, hl
    ld hl, sp-$19
    add sp, $2b
    ld bc, $f97f
    ld hl, sp-$07
    rst $20
    add sp, -$1b
    and $20
    add hl, bc
    or l
    ld d, l
    ld bc, $0002
    ld b, $08
    ld d, l
    ld d, l
    jr nz, jr_005_58a8

    sub $df
    rlca
    reti


    jp c, $d7d6

    inc b
    add hl, bc

jr_005_58a8:
    rlca
    jp c, $207e

    add hl, bc
    pop hl
    rlca
    pop hl
    ldh [$ffe1], a
    ld [c], a
    ld a, [bc]
    ld bc, $dfdb
    xor a
    rlca
    ld [bc], a
    rst $38
    rlca
    ret nz

    ld a, [bc]
    db $e4
    rlca
    rst $38
    rst $38
    sbc [hl]
    rst $38
    db $dd
    db $e3
    db $e4
    db $e3
    db $e4
    rst $30
    db $db
    rst $38
    db $dd
    jr nz, jr_005_58de

    rst $38
    and $07
    db $e4
    rst $38
    rst $38
    rst $38
    sbc $e5
    and $e5
    and $dc
    rst $38
    rst $38

jr_005_58de:
    sbc $ff
    rst $18
    ldh [$ffe1], a
    ldh [rTAC], a
    ld [hl], l
    ldh [rNR41], a
    add hl, bc
    nop
    ld bc, $ff09
    db $db
    ld d, l
    ld b, $00
    db $fc
    and b
    ld a, [bc]
    sub a
    ld b, $d7
    jp c, $d8d7

    rst $38
    call c, $d55f
    rlca
    rst $10
    sub $d9
    ld h, b
    dec e
    xor e
    ld [$1f04], sp
    db $dd
    rst $38
    db $db
    db $db
    rlca
    ld h, e
    nop
    ret nz

    rra
    ld bc, $bf03
    sbc $ff
    call c, $07dc
    db $db
    and b
    rra
    rst $38
    ld [bc], a
    ld b, b
    add hl, bc
    call c, $0b20
    sub b
    ld bc, $123c
    ld c, e
    db $10
    and a
    dec b
    ld b, b
    ld a, [de]
    inc e
    sbc l
    nop
    inc bc
    ld bc, $ffd8
    rst $38
    sbc h
    nop
    add hl, bc
    nop
    inc b
    nop
    and $20
    add hl, bc
    ld d, e
    rst $38
    ccf
    inc de
    inc e
    db $10
    db $db
    rlca
    rst $38

Jump_005_5947:
    or h
    ld bc, $a012
    ld c, $dd
    sbc h
    ld [bc], a
    rst $38
    call c, RST_20
    db $db
    db $ec
    ld b, b
    cpl
    inc e
    nop
    db $e3
    db $e4
    ld b, b
    inc bc
    db $e3
    db $e4
    call c, $201e
    dec c
    ld d, l
    ld d, l
    inc b
    inc b
    ret c

    dec d
    db $e3
    dec d
    ld b, b
    ld a, [bc]
    or [hl]
    sbc c
    ld [bc], a
    reti


    ld h, l
    ld c, c
    ld [de], a
    sub $07
    ld c, $01
    sub $91
    daa
    ld a, l
    inc c
    sbc c
    ld bc, $0301
    rlca
    ld c, $01
    ld h, b
    ld a, [bc]
    db $e3
    ld hl, $99e8
    inc bc
    ld [c], a
    ld de, $0020
    and a
    ld bc, $80e3
    dec hl
    ld a, [$ec10]
    sbc c
    nop
    ld [c], a
    ld de, $e4e3
    ld b, b
    nop
    db $e3
    db $db
    push hl
    ld a, [bc]

jr_005_59a3:
    jr nz, jr_005_59ae

    daa
    ld bc, $270f
    jr nz, @+$0b

    ret z

    cp h
    db $db

jr_005_59ae:
    ret z

    ld d, a
    call c, $c757
    call c, $fdc8
    call c, $967f
    db $dd
    ret z

    and [hl]
    db $dd
    nop
    ld [bc], a
    inc d
    inc de
    sub [hl]
    nop
    nop
    adc h
    ld d, h
    jr c, jr_005_59a3

    ld bc, $fc54
    db $db
    ld bc, $7954
    call c, $3401
    db $ed
    rst $38
    ld bc, $ff0f
    daa
    dec c
    add hl, bc
    call $cfce
    dec d
    ret nc

    rlca
    ld [bc], a
    ret nc

    inc c
    inc bc
    xor a
    jr nz, jr_005_59f3

    ld bc, $200f
    dec bc
    db $ed
    sbc [hl]
    ld b, l
    ld [bc], a
    ret nc

    rst $38
    ld b, h
    dec b

jr_005_59f3:
    db $e3
    db $e4
    db $e3
    ld a, h
    ld b, b
    rrca
    ld bc, $e306
    db $e4
    push hl
    and $e5
    jr nz, @+$0b

    sub a
    ld d, l
    ld d, l
    nop
    ld e, e
    ld a, [bc]
    ld d, l
    ld bc, $2000
    add hl, bc
    dec de
    db $fd
    dec c
    ld bc, $1b09
    daa
    push de
    sub $d9
    jp c, $20ee

    add hl, bc
    rst $10
    sub $d8
    ld b, b
    ld a, [bc]
    db $db
    rst $38
    rst $18
    db $fd
    ldh [rNR41], a
    add hl, bc
    ld h, l
    rst $38
    sbc $22
    ld a, [bc]
    ld a, [bc]
    db $fd
    ld [hl+], a
    dec bc
    ld bc, $e0df
    pop hl
    ldh [$ff27], a
    call c, $ffeb
    db $db
    ldh [$ff0c], a
    db $dd
    rlca
    inc bc
    ld hl, $0909
    push af
    ld hl, $0240
    call c, $0c20
    sbc $e1
    ldh [$ffe1], a
    add l
    ld [c], a
    add hl, bc
    ld bc, $41dc
    nop
    ld b, b
    ld c, $a0
    dec c
    ld b, b
    dec c

Jump_005_5a5a:
    rst $10
    dec hl
    sub $d7
    and c
    nop
    sbc $40
    ld [bc], a
    call c, JoypadTransitionInterrupt
    ld b, b
    dec c
    ld sp, hl
    xor e
    dec e
    ld [bc], a
    add h
    nop
    jp hl


    ld [$dbdb], a
    rst $38
    rst $20
    jp hl


    daa
    ld [$0e80], a
    dec e
    ld bc, $ffde
    jp hl


    rst $38
    db $ec
    db $ec
    ld [$e9dc], a
    db $ec
    daa
    db $ec
    daa
    db $eb
    ld [$80e9], a
    rrca
    add b
    rlca
    db $ec
    ld bc, $4000
    inc c
    sbc a
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    jp hl


    db $ec
    ld bc, $2004

Jump_005_5a9d:
    ld c, $05
    ccf
    dec b
    dec b
    daa
    jp hl


    db $eb
    db $ec
    jr nz, @+$11

    ret nz

    dec b
    dec e
    ret c

    ld a, e
    nop
    ld hl, $2109
    jr nz, @+$11

    sbc [hl]
    dec b
    ld e, h
    ld b, $cc
    jr nz, @+$11

    jr nz, jr_005_5abe

    ld a, c
    rst $38

jr_005_5abe:
    inc e
    inc b
    ld b, [hl]
    ld bc, $ef27
    ld h, a
    db $ec
    xor $ed
    jr nz, jr_005_5ad4

    cp $00
    db $ec
    db $ec

Call_005_5ace:
    and e
    ld de, $ef3b
    db $ec
    dec de

jr_005_5ad4:
    nop
    xor $f0
    xor $20
    dec de
    db $10
    ld hl, $00fb
    db $ed
    ld [hl], $01
    ldh a, [$ed]
    xor $ff
    rst $38
    cp e
    db $db
    ldh a, [rLCDC]
    inc e
    jp c, $dad9

    and e
    nop
    ldh a, [$36]
    ld a, [bc]
    nop
    ldh a, [$db]
    ld h, b
    db $10
    call c, $a7f0
    db $10
    ld h, b
    ld a, [bc]
    sbc c
    ld d, e
    ld b, c
    ld de, $0220
    call c, $0127
    nop
    ld b, b
    nop
    db $db
    or $a0
    dec l

jr_005_5b0e:
    sbc $e3
    jr nz, jr_005_5b14

    daa
    daa

jr_005_5b14:
    rst $38
    cp h
    halt
    ld a, [hl+]
    nop
    call c, $20dc
    dec c
    db $dd
    push hl
    ldh a, [$d6]
    ld hl, $2729
    jr jr_005_5b27

    ld b, b

jr_005_5b27:
    dec c
    ld d, l
    ld bc, $0607
    add hl, bc
    dec b
    jr nz, @+$0b

    ld d, h
    jr c, jr_005_5b0e

    ld d, h
    dec sp
    db $db
    ld d, h
    call c, Call_005_54db
    ldh [$ffdb], a
    ld d, h
    ld e, b
    call c, Call_005_5d54
    call c, $f77f
    call c, RST_00
    dec de
    inc de
    sub [hl]
    nop
    nop
    nop
    xor l
    daa
    ld bc, $270f
    rst $38
    ld bc, $ec08
    ld bc, $0704
    db $eb
    xor $07
    dec bc
    dec b
    db $ec
    jr nz, jr_005_5b70

    db $ec
    xor $07
    rst $20
    rst $38
    rlca
    db $ed
    jr nz, jr_005_5b79

    jr nz, @+$05

    xor $ed
    xor $3d

jr_005_5b70:
    rst $38
    jr nz, jr_005_5b73

jr_005_5b73:
    rst $38
    db $ed
    xor $ed
    jr nz, jr_005_5b88

jr_005_5b79:
    dec e
    ld bc, HeaderDestinationCode
    nop
    ld d, l
    ld bc, $0001
    inc hl
    inc bc
    jr nz, jr_005_5b8f

    xor $08

jr_005_5b88:
    inc b
    cp a
    push de
    sub $d7
    sub $d7

jr_005_5b8f:
    ret c

    ld a, [bc]
    ld bc, $5bed
    xor $ff
    ld bc, $ff0f
    db $db
    dec b
    ld bc, $18dd
    rrca
    inc d
    ld d, l
    ld bc, $0101
    call c, $0105
    sbc $69
    inc bc
    jr nz, jr_005_5bb5

    ld d, l
    inc b

Call_005_5bae:
    or d
    ld a, a
    inc bc
    db $dd
    ld l, c
    inc bc
    ld b, d

jr_005_5bb5:
    dec bc
    db $dd
    ld e, l
    ld a, a
    ld b, $de
    ld d, e
    rst $38
    ld e, l
    ld l, c
    inc bc
    ld bc, $de09
    ld a, a
    rlca
    db $dd
    ld l, c
    dec b
    and d
    add d
    dec bc
    ld d, l
    add l
    inc b
    ld a, [bc]
    rlca
    ld bc, $5d07
    jp c, $d508

    adc [hl]
    add hl, bc
    nop
    sub $d8
    ld e, l
    jp c, $da0f

    inc b
    db $e4
    rrca
    rst $38
    rla
    rst $38
    daa
    daa
    ld d, e
    ld [bc], a
    sbc $e4
    inc b
    ld h, c
    nop
    ret nz

    dec de
    dec bc
    daa
    daa
    ld e, l
    nop
    ld e, l
    ld b, b
    inc b
    ld l, l
    ld [bc], a
    jr nz, jr_005_5c09

    ld d, e
    ld [bc], a
    ld [bc], a
    ld b, b
    dec b
    db $db
    ld [de], a
    inc bc
    jr nz, @+$0b

    ld bc, $200f

jr_005_5c09:
    add hl, bc
    jp nz, $daa0

    call z, $dafd
    ld a, a
    ld e, [hl]
    call c, $0300
    add hl, bc
    dec d
    ret z

    nop
    ld bc, $0001
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
    add h
    adc a
    call nc, $d472
    ld a, a
    dec c
    nop
    adc l
    and $01
    ld bc, $ff0b
    ld bc, $010f
    inc b
    jr nz, jr_005_5c40

    add hl, hl
    db $fc

jr_005_5c40:
    jr jr_005_5c51

    ld bc, $1e02
    rst $38
    rst $38
    ld d, e
    rst $38
    ld a, [de]
    rst $10
    rst $38
    and $ce
    ld bc, $d607

jr_005_5c51:
    ld a, [de]
    inc bc
    rst $20
    add sp, -$2d
    jp hl


    ld [$011f], a
    ld b, h
    inc bc
    ret nc

    ld hl, $e70a
    add sp, -$03
    ld [$043e], a
    reti


    rst $38
    rst $38
    daa
    inc e
    ld d, l
    ld d, a
    nop
    daa
    call nc, $0221
    call $0105
    xor a
    ld b, d
    dec b
    cp $3e
    ld bc, $ffd8
    rst $38
    dec bc
    jp nc, $d3d2

    scf
    dec bc
    dec bc
    call nc, $0542
    call $46ff
    dec b
    rra
    nop
    ei
    jp c, $20dd

    nop
    rst $38
    rst $38
    pop de
    dec bc
    dec bc
    or l
    db $d3
    ld hl, $cd01
    ld h, [hl]
    ld [$0bce], sp
    inc b
    nop
    cp e
    and l
    rst $38
    jr nz, @+$04

    rst $38
    jr nz, jr_005_5caa

jr_005_5caa:
    ld hl, $0b02
    inc h
    rlca
    call $20da
    ld bc, $20ff
    dec b
    inc e
    ld d, l
    ld bc, $0002

jr_005_5cbb:
    dec b
    or $01
    rlca
    ld bc, $0102
    ld bc, $ffff
    cpl
    dec e
    rst $28
    dec e
    dec e
    cpl
    rst $10
    ld b, $12
    rlca
    rst $10
    adc $d3
    ldh [$ffe1], a
    scf
    nop
    dec b
    ld bc, $0bcd
    inc bc
    rst $38
    rst $38
    db $ed
    jr nc, jr_005_5d20

    nop
    jr nc, jr_005_5cbb

    jr nz, jr_005_5ce8

    ret c

    adc $e2

jr_005_5ce8:
    ld h, c
    db $e3
    dec d
    nop
    dec b
    ld [bc], a
    ld b, $03
    jr nz, jr_005_5cf8

    ld a, c
    rst $38
    jr nz, jr_005_5cf8

    inc l
    add b

jr_005_5cf8:
    rlca
    dec b
    ld bc, $ff9e
    jr nz, jr_005_5d05

    rst $38
    jr nz, jr_005_5d06

    inc e
    ld b, $d4

jr_005_5d05:
    db $ec

jr_005_5d06:
    ld [bc], a
    ld bc, $0200
    ld bc, $270d
    inc h
    ld b, $0b
    dec bc
    cp $bd
    nop
    ld [bc], a
    daa
    rst $38
    xor e
    rst $38
    rst $38
    db $e4
    sub a
    db $d3
    push hl
    push de
    inc d

jr_005_5d20:
    ld [bc], a
    ld bc, $0420
    inc bc
    ld [de], a
    ld h, l
    ld h, $40
    nop
    ld bc, $4627
    ld bc, $0220
    adc $20
    ld [bc], a
    ld b, d
    ld [bc], a
    db $fc
    db $e3
    ld [bc], a
    or $12
    ld bc, $3127
    rst $38
    ld sp, $7fff
    db $ec
    ldh a, [$eb]
    rst $28
    xor $ed
    xor $01
    inc bc
    db $f4
    ld [$2008], sp
    ld bc, $0136
    nop
    di
    db $f4

Call_005_5d54:
    db $f4
    ld sp, hl
    dec de
    ld hl, sp-$0e
    ld bc, $f100
    ld a, [c]
    ld bc, $0803
    inc b
    jr nz, @+$07

    dec bc
    rst $30
    db $f4
    ld hl, $f101
    inc e
    ld a, [bc]
    ld [$2001], sp
    dec b
    ld bc, $0e0f
    ld bc, $ff03
    rst $38
    ld h, $01
    rrca
    ld bc, $7308
    cpl
    ld bc, $000f
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $b007
    ld b, [hl]
    db $db
    or b
    ld c, d
    db $db
    ld a, a
    sub $db
    or b
    daa
    call c, Boot
    inc de
    dec b
    ret z

    nop
    nop
    nop
    ld a, c
    rst $38
    ld bc, $010f
    ld a, [bc]
    sub $d6
    ret nc

    sub $04
    rlca
    or l
    jp nc, $0416

    pop de
    rrca
    ld [bc], a
    ret nc

    ld bc, $010c
    db $d3
    ld e, h
    inc b
    inc c
    ld bc, $ef00
    db $d3
    ld a, [c]
    dec bc
    ld bc, $20d3
    rrca
    or $40
    inc b
    db $d3
    rst $38
    jr nz, jr_005_5ddc

    adc $ce
    xor a
    adc $5f

jr_005_5ddc:
    adc $ce
    rst $08
    ld bc, $0102
    ld [bc], a
    daa
    jr nz, jr_005_5dea

    ld c, a
    ld bc, $dd27

jr_005_5dea:
    sub $13
    nop
    jr nz, jr_005_5df1

    rst $38
    rra

jr_005_5df1:
    ld bc, $2779
    rla
    inc b
    jr nz, jr_005_5dff

    adc $e0
    xor e
    rst $38
    jr nz, jr_005_5dfe

jr_005_5dfe:
    ld h, e

jr_005_5dff:
    daa
    ld d, l

jr_005_5e01:
    ld bc, $1800
    dec b
    ld [$2f01], sp
    dec e
    ld bc, $a600
    jr nz, @+$03

    adc $ff
    jr nz, jr_005_5e14

    ret


    dec b

jr_005_5e14:
    sbc [hl]
    jr nz, jr_005_5e1b

    jr nc, jr_005_5e01

    add hl, hl
    ld [bc], a

jr_005_5e1b:
    ld l, a
    inc bc
    jr nz, jr_005_5e28

    rst $38
    jr nz, jr_005_5e2e

    daa
    db $dd
    db $dd
    ld h, c
    db $dd
    ld h, b

jr_005_5e28:
    ld b, $9c
    inc b
    jr nz, @+$0a

    rra

jr_005_5e2e:
    nop
    adc $ce
    ld b, b
    dec b
    ld a, [de]
    jr nz, jr_005_5e3f

    inc e
    ld sp, $0001
    db $dd
    rra
    ld bc, $0220

jr_005_5e3f:
    adc a
    ld [bc], a
    jp nc, $011d

    db $dd
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    rra
    ld [bc], a
    ld a, c
    rst $38
    ld [hl], d
    ld b, b
    rlca
    daa
    inc d
    dec d
    inc hl
    inc de
    db $d3
    call $c0ce
    inc b
    dec e
    ld a, [$010f]
    ld_long a, $fffa
    ld de, $0101
    ld a, [bc]
    ld l, b
    nop
    push af
    nop
    jr nz, @+$11

    rst $08
    ld [$e006], sp
    rlca
    db $dd
    ld bc, $02cf
    rst $38
    rst $38
    nop
    db $eb
    inc b
    ld bc, $2706
    rst $20
    inc c
    inc h
    inc b
    jr nz, @+$05

    rlca
    db $dd
    ld bc, $3a0b
    ld [de], a
    ld c, b
    ld [bc], a
    jr nz, jr_005_5e92

    ret nc

    ld d, h
    ld [$0377], sp

jr_005_5e92:
    ld bc, $8006
    ld bc, $0155
    add hl, bc
    nop
    pop hl
    sub e
    sub $e2
    ld b, h
    nop
    ld d, h
    nop
    dec bc
    ld c, l
    inc bc
    ld [$f302], a
    ld a, c
    db $f4
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    call $f3ce
    db $f4
    ld e, d
    nop
    db $eb
    call Call_005_660b
    nop
    rst $08
    nop
    ld hl, $ff65
    adc $4b
    push af
    or $0b
    nop
    call $0807
    jr nz, jr_005_5eca

    inc e

jr_005_5eca:
    ld h, b
    inc b
    call nz, $2182
    ld a, l
    inc hl
    inc e
    ld l, d
    ld a, [bc]
    ld h, b
    dec b
    dec bc
    nop
    push hl
    db $db
    cp a
    db $db
    db $db
    call nc, $dbdb
    and $c9
    dec bc
    db $db
    or a
    db $db
    ld d, e
    rst $38
    add b
    inc bc
    db $dd
    db $db
    inc b
    ld de, $c227
    daa
    inc b
    db $db
    rlca
    ld b, $60
    ld [de], a
    sub $21
    or l
    ld [bc], a
    db $dd
    db $dd
    sub b
    db $e4
    inc h
    rlca
    inc b
    ld h, b
    inc d
    ld [hl-], a
    inc b
    db $db
    add hl, sp
    add hl, bc
    rlca
    ld [bc], a
    and $b4
    add b
    inc bc
    ld [de], a
    ld [bc], a
    inc e
    add l
    nop
    dec de
    dec c
    ld bc, $1b0c
    dec bc
    db $db
    call nc, RST_20
    dec b
    ld bc, $010f
    rlca
    jr nz, jr_005_5f25

jr_005_5f25:
    ld e, d
    ld l, l
    call c, $7588
    call c, Call_005_777f
    call c, $ea88
    call c, Call_005_7a5a
    db $dd
    ld d, h
    set 3, l
    ld d, h
    call $00dd
    ld bc, $0512
    ret z

    nop
    nop
    adc b
    ld [hl], b
    xor [hl]
    rst $10
    dec c
    ld a, a
    ret nc

    call c, $3801
    ld sp, hl
    ld [bc], a
    ld bc, $010f
    ld [$ffff], sp
    daa
    call Call_005_5ace
    ld bc, $0b02
    ld [$ce04], sp
    ld bc, $0017
    daa
    dec bc
    inc bc
    jp $01cf


    jr nz, jr_005_5f77

    ld bc, $2009
    rrca
    jr nz, jr_005_5f7d

    daa
    rst $08
    rst $30
    xor e
    rst $38
    call $0220
    ld a, c

jr_005_5f77:
    rst $38
    adc $4b
    and l
    rst $38
    inc e

jr_005_5f7d:
    ld b, $4b
    ld c, $01
    jr nz, @+$04

    rst $38
    jr nz, @+$06

    rst $38
    dec hl
    rst $38
    adc $03
    nop
    dec bc
    ld c, [hl]
    inc bc
    adc $0e
    ld [bc], a
    ld h, b
    add hl, bc
    ld b, l
    ld d, l
    ld bc, $0504
    ld bc, $0c01
    inc b
    add b
    rrca
    rlca
    ld e, a
    inc b
    ld e, a
    rlca
    adc $cf
    db $d3
    call $0280
    sub $01
    inc bc
    ld a, b
    jr nz, @+$11

    jr nz, jr_005_5fb6

    ldh a, [rP1]
    daa
    rst $38

jr_005_5fb6:
    rst $38
    rst $38
    ld h, b
    ld b, $fa
    ld bc, $0005
    jr nz, jr_005_5fc4

    rst $38
    ld [hl], c
    rst $38
    ld [hl], l

jr_005_5fc4:
    rst $38
    add $01
    rrca
    rst $38
    rst $38
    jr nz, jr_005_5fd1

    ld bc, $200f
    inc b
    inc e

jr_005_5fd1:
    ld d, l
    ld b, c
    ld d, l
    jr nz, @+$11

    ld b, b
    rrca
    ld bc, $200f
    rrca
    ld bc, $0100
    cp c
    ld a, [de]
    ld c, c
    ld d, l
    ret nz

    ld d, $1c
    ld bc, $1f9e
    dec b
    ld l, $06
    rlca
    ld b, b
    ld bc, $ce63
    rst $08
    ld b, b
    ld b, $3e
    inc b
    ld l, [hl]
    add hl, bc
    db $d3
    xor a
    jr nz, jr_005_5ffe

    cp b
    db $ed

jr_005_5ffe:
    inc bc

Call_005_5fff:
    ld c, l
    ld de, $0120
    sub $d0
    sub $03
    inc b
    sub $4b
    db $d3
    rst $38
    ld b, b
    dec b
    db $dd
    ld bc, $3202
    nop
    rst $38
    inc b
    ld [bc], a
    xor c
    db $d3
    ld a, [bc]
    inc b
    ld h, b
    ld b, $d3
    ld l, $01
    sub $a1
    rlca
    daa
    reti


    pop hl
    ld [hl], d
    ld de, $0820
    di
    db $f4
    ld l, [hl]
    db $10
    di
    db $f4
    adc $47
    ld [bc], a
    di
    db $f4
    inc e
    ld h, h
    rla
    jr nz, @+$06

    push af
    or $f6
    jr nz, jr_005_603e

jr_005_603e:
    push af
    or $a3
    ld de, $f5cf
    or $e9
    cp c
    db $dd
    ld bc, $6006
    rlca
    sub $65
    rst $38
    jp z, $d614

    di
    push de
    sub $01
    ld b, $20
    inc b
    db $db
    db $db
    dec bc
    pop hl
    scf
    rst $38
    rst $38
    db $db
    ld bc, $d404
    db $db
    ld bc, Call_000_2006
    rlca
    ld a, c
    db $dd
    dec d
    rlca
    jr nz, @+$11

    ld d, e
    rst $38
    dec bc
    db $dd
    ld d, l
    rlca
    add [hl]
    ld h, b
    ld b, $bc
    rst $38
    jr nz, jr_005_6080

    rra
    jr nz, jr_005_60bf

    rrca

jr_005_6080:
    ld a, $01
    rst $38
    ld l, a
    rst $38
    ld [bc], a
    ld [bc], a
    ld [hl], b
    inc b
    nop
    ld [bc], a
    dec bc
    ld e, h
    ccf
    nop
    and b
    inc de
    ld d, a
    ret z

    db $db
    add [hl]
    rlca
    call c, $0e86
    call c, $a088
    call c, $d07f
    call c, $0300
    ld a, [de]
    dec b
    sub [hl]
    nop
    rlca
    rlca
    rlca
    ld bc, $0000
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

Jump_005_60b6:
    nop
    adc b
    reti


    call nc, $d539
    ld h, $d5
    or b

jr_005_60bf:
    push de
    ld a, [bc]
    adc b
    sub e
    call nc, $d550
    ld c, e
    call c, $dbf2
    ld a, [bc]
    add h
    dec a
    push de
    and h
    call nc, $8468
    ld a, a
    ld d, c
    call c, $3c01
    rst $18
    rst $28
    ldh a, [$f1]
    ld a, [c]
    rst $38
    ld bc, $0102
    daa
    cp $07
    ld [bc], a
    rlca
    rst $38
    rlca
    ld bc, $0202
    ld [bc], a
    ld l, h
    dec c
    inc bc
    ld bc, $ef07
    ldh a, [rNR41]
    dec c
    rst $28
    ldh a, [$39]
    inc bc
    rst $38
    pop de
    sub $d6
    ret nc

    ld a, [de]
    rst $38
    ret nc

    sub $af
    ld bc, $d627
    jp nc, $0620

Call_005_6108:
    add hl, hl
    ld b, b
    rlca
    db $d3
    db $e4
    inc bc
    inc b
    ld b, b
    nop
    db $d3
    jr nz, jr_005_6117

    ld e, d
    dec bc
    db $d3

jr_005_6117:
    ld bc, $dd1c
    ld d, l
    ld bc, $0001
    daa
    jr nz, @+$11

    ld bc, $001c
    cp c
    rlca
    ld d, [hl]
    inc b
    ld e, b
    nop
    rst $38
    rst $38
    sub $58
    nop
    adc $3a
    ld bc, $0b03
    add b
    dec b
    ld a, l
    ld a, l
    ld a, l
    ld c, e
    ld [bc], a
    dec b
    ld bc, $ce23
    adc $20
    rlca
    sbc b
    ld bc, $0601
    ld a, [hl+]
    db $d3
    ld bc, $0b20
    cp a
    add hl, hl
    jr nc, @-$2b

    adc $1a
    rst $38
    ld de, $ce07
    ld a, a
    adc $ff
    rst $38
    ld d, l
    ld bc, $2a27
    ld c, $05
    ld [hl], l
    db $d3
    jr nz, jr_005_6163

jr_005_6163:
    rst $38
    jr nz, jr_005_6168

    db $ed
    inc d

jr_005_6168:
    dec c
    ld bc, $7b00
    ld d, $ec
    ld l, a
    nop
    adc $ce
    di
    db $f4
    ld e, $02
    di
    di
    db $f4
    jr nz, jr_005_617b

jr_005_617b:
    ei
    ld [bc], a
    adc $ed

Call_005_617f:
    rrca
    xor $b6
    ld [de], a
    ld bc, $12eb
    jr nz, @+$04

    push af
    or $20
    ld [bc], a
    push af
    pop af
    or $1e
    nop
    ld e, e
    ld [bc], a
    rra
    inc b
    adc $ce
    inc c
    rst $38
    rst $18
    rst $38
    daa
    ld d, l
    ld hl, $0109
    ld b, $21
    adc $56
    rra
    ld a, [bc]
    db $ed
    inc de
    ldh [rP1], a
    rlca
    add sp, $01
    sub $01
    ld [bc], a
    sbc [hl]
    rlca
    ld bc, $d61b
    sub $10
    rlca
    nop
    add b
    ld [bc], a
    rla
    rst $38
    sub $ff
    rst $38
    db $db
    rlca
    db $db
    db $db
    db $db
    ld d, e
    call nc, $01db
    ld [bc], a
    rlca
    ld bc, $030c
    ld [bc], a
    db $10
    ld de, $8503
    db $db
    jr nz, @+$11

    inc c
    inc bc
    dec b
    jr nz, @+$06

    ld h, b
    ld [bc], a
    ld bc, $1308
    ccf
    sub $d6
    ld de, $edec
    inc de
    ld c, $04
    nop
    db $10
    xor [hl]
    ld a, e
    ld [de], a
    adc $1b
    dec c
    ld bc, $1703
    sbc e
    nop
    db $eb
    add hl, sp
    dec d
    ld b, $01
    sub l
    ld [de], a
    rst $38
    rst $38
    dec b
    ld bc, $010f
    ld [$ff01], sp
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $000f
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $c20c
    and a
    jp c, $af47

    jp c, $c3a6

    jp c, $1947

    db $db
    ld b, a
    ld e, $db
    ld d, h
    ld a, [c]
    db $db
    ld d, h
    dec h
    call c, Call_005_4b54
    call c, $517f
    call c, Call_005_7d54
    call c, Boot
    ld [$c80d], sp
    nop
    nop
    add h
    ld [hl], d
    ld c, l
    call nc, $3c0f
    cp e
    ld [hl], d
    rst $38
    ld bc, $d209
    jp nc, $01ff

    inc c
    ld bc, $27e3
    dec e
    ld bc, $0e08
    dec c
    jr nz, @+$03

    call $cfce
    or [hl]
    ld bc, $0106
    daa
    inc c
    rlca
    adc $af
    jr nz, jr_005_627a

    rst $38

jr_005_627a:
    cp a
    rst $38
    di
    push de
    ld [c], a
    ld [c], a
    db $e3
    inc bc
    inc b
    call nc, $d4ed
    dec bc
    ld b, $e2
    rst $20
    ld h, d
    inc b
    db $f4
    sub $ff
    xor e
    rst $38
    db $e4
    inc bc
    ld [bc], a
    sbc [hl]
    add b
    ld bc, $0ee4
    dec b
    add sp, $5d
    rst $30
    rra
    ld [bc], a
    di
    rst $38
    rst $10
    ld [de], a
    dec b
    rst $38
    jr nz, jr_005_62b1

    ld h, a
    jp hl


    rst $38
    or $3f
    ld [bc], a
    jr nz, jr_005_62b4

    inc e
    ld d, l

jr_005_62b1:
    ld bc, $e504

jr_005_62b4:
    nop
    jr nz, @+$07

    rst $30
    ccf
    ld [bc], a
    ld b, b
    ld b, $07
    db $e4
    rst $38
    sbc a
    call nc, $ffd4
    db $e4
    rlca
    ld b, b
    ld b, $41
    ld bc, $40f4
    jr nz, jr_005_62d7

    ld h, b
    ld bc, $0820
    add d
    inc bc
    jr nz, jr_005_62e4

    jr nz, jr_005_62dc

jr_005_62d7:
    rst $38
    jr nz, jr_005_62e6

    adc a
    pop de

jr_005_62dc:
    db $d3
    db $d3
    pop de
    jr nz, jr_005_62ef

    sbc b
    ld b, $01

jr_005_62e4:
    dec c
    nop

jr_005_62e6:
    ld a, h
    ld b, b
    dec b
    ld [hl-], a
    dec b
    db $e4
    jp nc, $ffab

jr_005_62ef:
    jp nc, $05e0

    xor e
    rlca
    ld [$0560], a
    ret c

    jr nz, jr_005_6301

    rst $38
    jr nz, jr_005_6305

    db $eb
    sbc [hl]
    jr nz, jr_005_6306

jr_005_6301:
    reti


    rlca
    ld d, e
    rst $38

jr_005_6305:
    inc bc

jr_005_6306:
    ld d, $fd
    inc b
    ld h, l
    ld [hl], a
    rst $38
    rlca
    db $ec
    jr nz, jr_005_6315

    jp c, $ff07

    jr nz, jr_005_6319

jr_005_6315:
    ld e, h
    nop
    ld [de], a
    ld c, e

jr_005_6319:
    inc d
    rlca
    db $ed
    rst $38
    and c
    rlca
    nop
    jr nz, jr_005_6326

    ld hl, sp+$60
    ld d, $b5

jr_005_6326:
    inc b
    rra
    ld bc, $dddc
    sbc $07
    push hl
    cp e
    sbc $de
    inc bc
    ld [bc], a
    jp nc, $ded2

    dec bc
    dec b
    sbc $fb
    xor $ef
    ccf
    inc bc
    rst $18
    ldh [$ffe1], a
    rlca
    and $f6
    ld bc, $d204
    jp nc, $050a

    and $f0
    pop af
    ld a, [c]
    sub d
    rra
    ld [bc], a
    push af
    ld l, h
    ld bc, $046a
    push af
    ld h, b
    ld hl, $263f
    push af
    ld e, c
    ld hl, sp+$1f
    inc b
    jr nz, @+$07

    push af
    di
    jr nz, jr_005_6366

jr_005_6366:
    ld e, $7b
    ld h, $d7
    rra
    rst $38
    ld hl, sp+$40
    ld d, $00
    dec hl
    ld [bc], a
    db $f4
    jp nc, $d22b

    ld e, $9c
    jr z, jr_005_6399

    xor d
    ld a, [hl+]
    push af
    db $ec
    db $10
    ld [hl], d
    inc hl
    xor $21
    rrca
    rst $38
    rst $38
    db $d3
    ld bc, $d202
    jp nc, $ea2f

    pop bc
    add hl, hl
    ld c, d
    ld a, [$7929]
    inc b
    nop
    jp nc, $30d2

    ld [hl], d

jr_005_6399:
    ld b, b
    add hl, bc
    jr nc, jr_005_63b7

    dec sp
    jr nz, @+$11

    rst $38
    rst $38
    ld [bc], a
    ld bc, $e509
    daa
    jr nz, jr_005_63b8

    ld [hl], e
    ld [hl+], a
    dec bc
    inc h
    nop
    ld h, $26
    ld h, $0d
    ld bc, $0507
    rst $38
    rst $38

jr_005_63b7:
    xor h

jr_005_63b8:
    add e
    db $db
    sbc b
    xor h
    db $db
    sbc b
    ld a, [$aedb]
    ld c, a
    call c, Call_005_777f
    db $dd
    nop
    nop
    inc d
    dec b
    sub [hl]
    nop
    nop
    add h
    ld a, a
    ld h, c
    call c, $3c01
    push af
    rst $38
    ld bc, $0b03
    ld [$ff04], sp
    db $d3
    ret nc

    ret nc

    ei
    db $d3
    rst $38
    ld bc, $5308
    rst $38
    rst $38
    rst $28
    ldh a, [$fd]
    ld a, [c]
    jr nz, jr_005_63ef

    rst $28
    ldh a, [$f1]

jr_005_63ef:
    ld a, [c]
    db $d3
    ld a, c
    ld e, c
    rst $38
    jr nz, jr_005_6400

    ld b, b
    ld b, $ef
    ld a, [c]
    ld b, b
    inc bc
    rst $38
    jr nz, jr_005_640a

    xor a

jr_005_6400:
    ld d, l
    ld d, l
    ld d, l
    dec bc
    ld h, b
    dec b
    sbc [hl]
    inc b
    nop
    inc e

jr_005_640a:
    cp h
    ld de, $2000
    add hl, bc
    adc $ce
    rlca
    dec bc
    add b
    ld a, [bc]
    call $ce7b
    adc $20
    rrca
    ld bc, $af27
    rst $08
    inc a
    ld bc, $0049
    jr nz, @+$11

    ld b, b
    dec b
    rst $08
    ld b, b
    rrca
    jr nz, jr_005_6435

    ld d, l
    inc a
    nop
    reti


    rst $38
    add b
    rrca
    jr nz, @+$03

jr_005_6435:
    ld bc, $8027
    ld [bc], a
    dec bc
    dec b
    and h
    ld bc, $0901
    nop
    rlca
    ld b, b
    rrca
    and b
    rlca
    rst $38
    jr nz, @+$0e

    cp e
    ld a, a
    rst $38
    rlca
    dec bc
    db $dd
    sub $d0
    sub $03
    ld [$07a9], sp
    dec de
    dec de
    ld b, b
    ld bc, $03d3
    add hl, bc
    rlca
    add b
    ld c, $55
    cp l
    daa
    dec e
    ld b, $01
    ld d, l
    ld bc, $2002
    ld c, $07
    sla a
    dec b
    ld bc, $0105
    xor a
    ld [bc], a
    jr nz, jr_005_6480

    ld [bc], a
    rlca
    pop af
    ld [bc], a
    ld bc, $0c07
    nop
    jr nz, jr_005_648b

    db $dd

jr_005_6480:
    db $dd
    ld h, l
    rst $38
    sbc l
    db $dd
    ld bc, $f303
    db $f4
    cp e
    dec bc

jr_005_648b:
    nop
    jr nz, @+$0f

    rst $08
    db $fc
    rlca
    ld bc, $0101
    rst $08
    push af
    or $ff
    rst $38
    call Call_005_4006
    ld a, [de]
    ld bc, $0102
    rrca
    jr nz, @+$0b

    add [hl]
    dec h
    db $db
    add [hl]
    daa
    db $db
    ld a, a
    ld h, c
    call c, $0300
    add hl, bc
    dec d
    ret z

    nop
    ld b, $00
    ld bc, $0001
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
    ld [de], a
    add h
    cp l
    call nc, $d5d9
    ld c, $84
    ld b, $d6
    add h
    call nc, $0068
    cp a
    rst $38
    rst $38
    rst $20
    add sp, -$16
    rst $38
    ld bc, $d800
    sbc c
    rst $38
    ld bc, $0b06
    nop
    ld bc, $0102
    ld [bc], a
    inc d
    rlca
    rst $38
    rst $30
    reti


    jp c, $2bdb

    inc b
    sbc $da
    jp c, Jump_005_7bd9

    add hl, hl
    and $01
    ld bc, $ff01
    rst $38
    adc $01
    inc bc
    ld [hl], l
    call $0004
    sub $40
    ld b, $af
    ret c

    rst $38
    jr nz, jr_005_6511

    ret


    call $0524
    ld hl, $1a01
    ld h, b

jr_005_6511:
    ld [bc], a
    jr nz, jr_005_6516

    sbc [hl]
    rst $38

jr_005_6516:
    jr nc, jr_005_6558

    dec bc
    ld bc, $1202
    dec b
    jr nz, jr_005_651f

jr_005_651f:
    rst $38
    rst $38
    ld b, b
    inc c
    sub l
    inc b
    sub $01
    ld bc, $5527
    ld bc, $0201
    ld l, $04
    ld bc, $a727
    adc $e0
    pop hl
    ld a, [bc]
    ld [bc], a
    rlca
    ld bc, $07cd
    inc bc
    rlca
    ld l, h
    jr jr_005_6540

jr_005_6540:
    jr nz, jr_005_6542

jr_005_6542:
    ld a, c
    rst $38
    jr nz, jr_005_6548

    ld [c], a
    db $e3

jr_005_6548:
    ld c, b
    ld [bc], a
    ld h, d
    rlca
    nop
    adc $07
    inc b
    jr nz, jr_005_6556

    inc bc
    nop
    dec bc
    inc e

jr_005_6556:
    ld c, [hl]
    ld [bc], a

jr_005_6558:
    sbc l
    nop
    ld [$0003], sp
    ld bc, $1027
    inc bc
    ld a, [bc]
    nop
    rst $38
    ld [hl], l
    rst $38
    jr jr_005_656a

    ld h, l
    ld h, a

jr_005_656a:
    ld bc, $cd07
    dec bc
    inc a
    ld [bc], a
    ld [hl], c
    rlca
    ld c, [hl]
    nop
    or h
    inc b
    and b
    ld [bc], a
    rlca
    adc $0b
    add a

Call_005_657c:
    ld [bc], a
    inc c
    ld [$1400], sp
    nop
    ld d, e
    rst $38
    jr nz, jr_005_6588

    or h
    inc bc

jr_005_6588:
    jr nz, jr_005_658f

    jr c, jr_005_658f

    ld [hl], $40
    ld [bc], a

jr_005_658f:
    rst $38
    rst $38
    ld b, b
    ld b, $bc
    rst $38
    jr nz, jr_005_659e

    jr nc, jr_005_659b

    or c
    ld a, [hl+]

jr_005_659b:
    db $e4
    inc b
    ld b, b

jr_005_659e:
    inc b
    nop
    inc d
    rlca
    call $1924
    ld bc, $2b37
    dec hl
    dec hl
    ld b, b
    ld [bc], a
    ld a, [de]
    rst $38
    ld h, b
    ld b, $24
    add hl, de
    ld c, d
    ld [$ff06], sp
    jr nz, @+$05

    ld [bc], a
    ld bc, $610f
    ld [bc], a
    ld bc, $14e0
    push bc
    xor $01
    inc bc
    db $ed
    ld [$010f], sp
    nop
    ld b, b
    nop
    ld a, [c]
    ld a, [c]
    rlca
    ld a, [c]
    pop af
    ld a, [c]
    ld bc, $0803
    rrca
    jr nz, @+$05

    inc e
    rrca
    ld [$0805], sp
    jr nz, jr_005_65e5

    ld bc, $200f
    inc b
    ld h, $01
    rrca

jr_005_65e5:
    ld bc, $8007
    add hl, hl
    ld bc, $000f
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $880e
    ld c, d
    db $db
    adc b
    push bc
    db $db
    ld a, a
    dec d

Call_005_660b:
    call c, $954d
    call c, $b04d
    call c, $0200
    dec de
    dec c
    ret z

    nop
    nop
    nop
    db $fd
    rst $38
    ld bc, $f301
    rst $38
    rst $38
    rlca
    pop de
    rlca
    ld [hl], a
    rst $38
    rst $38
    or $0e
    ld [bc], a
    rst $38
    ld bc, $01ff
    inc c
    sub l
    db $f4
    jr nz, jr_005_6633

jr_005_6633:
    jp nc, RST_20

    rst $30
    jr nz, jr_005_6648

    ld bc, $cd02
    rst $38
    adc $cf
    rlca
    db $d3
    rlca
    rst $08
    adc $d0
    sub h
    jr nz, @+$11

jr_005_6648:
    ld bc, $f802
    ld b, b
    inc b
    push af
    jr nz, @+$11

    ld bc, $1c03
    call $0155
    ld bc, $ff00
    jr nz, jr_005_666a

    ld bc, $f305
    call nc, $f631
    inc c
    ld b, $20

Call_005_6664:
    rrca
    and e
    nop
    jp nc, $20f7

jr_005_666a:
    rrca
    ld bc, $0e00
    ld d, [hl]
    inc b
    di
    rst $38
    jp nc, $03de

    ld l, d
    ld bc, $0f40
    add b
    inc bc
    db $fc
    add c
    dec b
    ld b, b
    ld a, [bc]
    nop
    rst $38
    call $cecf
    rst $08
    scf
    rst $08
    adc $d3
    ld b, $02
    rst $08
    ret nc

    inc l
    nop
    ld b, b
    inc c
    rst $38
    di
    push de
    db $e3
    ld [c], a
    ld [c], a
    db $e3
    jp nc, $f6e2

    ld b, $01
    rst $20
    or $80
    ld c, $55
    nop
    sub $e4
    ld e, a
    rst $38
    rst $38
    db $e4
    jp nc, $06ff

    ld bc, $80e8
    rrca
    ld d, a
    di
    rst $38
    rst $10
    jr nz, jr_005_66be

    jp hl


    and [hl]
    ld bc, $9c01
    inc c
    dec d

jr_005_66be:
    nop
    jr nz, jr_005_66c8

    inc e
    and h
    ld bc, $3f01
    dec bc
    ld b, b

jr_005_66c8:
    dec bc
    ld b, c
    nop
    ld c, c
    ld bc, $1cbc
    jr nz, jr_005_66d1

jr_005_66d1:
    inc e
    rst $18
    inc bc
    jr nz, jr_005_66d7

    rst $30

jr_005_66d7:
    jr nz, @+$0c

    push hl
    di
    ld h, d
    ld bc, $4000
    dec b
    ld a, [bc]
    ld bc, $f6ff
    ld bc, $3fd6
    dec bc
    rst $38
    ret c

    ld h, b
    rlca
    db $eb
    rrca
    nop
    rst $30
    ld bc, $3d4e
    rra
    ld d, l
    nop
    jp nc, $0564

    and b
    rra
    jp c, $003a

    rst $10
    db $d3
    db $d3
    db $d3
    ld b, b
    ld bc, $60ec
    rra
    rst $38
    rst $38
    db $dd
    db $db
    ld a, [de]
    nop
    jp nc, $d2d2

    jr nz, jr_005_6713

    db $ed

jr_005_6713:
    rst $38
    call c, $1e60
    ld d, a
    nop
    nop
    sbc $de
    jr nz, jr_005_671e

jr_005_671e:
    push hl
    sbc $f7
    sbc $1c
    ld d, l
    nop
    ld e, $ff
    rst $38
    rst $18
    ldh [$fff7], a
    pop hl
    and $e6
    jr nz, jr_005_6730

jr_005_6730:
    and $e6
    and $f0
    ld c, e
    pop af
    ld a, [c]
    add b
    ld c, $f5
    db $dd
    inc d
    db $e3
    inc d
    ld hl, sp+$20
    inc c
    ld a, l
    push af
    inc b
    ld [bc], a
    push af
    call nc, $d4d4
    ld hl, sp-$58
    ld hl, $ad10
    ld hl, $0da0
    rra
    nop
    and b
    ld bc, $21ff
    inc bc
    nop
    ld l, $1f
    ld bc, $2018
    ld [bc], a
    ld hl, $4004
    ld a, [bc]
    ld bc, $0227
    rrca
    jr nz, jr_005_6772

    jp nz, $daa0

    call z, $dafd
    ld a, a
    sbc [hl]
    db $dd

jr_005_6772:
    nop
    inc bc
    ld a, [bc]
    ld c, $c8
    nop
    nop
    add h
    ld a, a
    ld [hl], b

Call_005_677c:
    call c, $2301

Jump_005_677f:
    add d
    ld [hl+], a
    ld e, h
    ld [bc], a
    add d
    ld [hl+], a
    ld e, h
    ld [bc], a
    add d
    ld [hl+], a
    ld e, h
    ld b, $82
    ld [hl+], a
    ld e, [hl]
    ld [bc], a
    add d
    ld [hl+], a
    ld e, [hl]
    ld [bc], a
    add c
    ld [hl+], a
    reti


    ld [bc], a
    ld bc, $010f
    ld [$ffff], sp
    ld [$2703], sp
    ld bc, $03e0
    ld bc, $050b
    inc c
    inc bc
    inc d
    ld bc, $0120
    daa
    pop hl
    rst $28
    rst $38
    db $e4
    push hl
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    and l
    cp [hl]
    inc bc
    ld bc, $eeea
    pop hl
    rst $28
    db $ed
    ld a, [bc]
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    rst $38
    daa
    daa
    xor $e1
    rst $30
    pop hl
    rst $28
    jp hl


    jr nz, jr_005_67da

    rst $20
    pop hl
    jp hl


    db $ec
    cp d
    jr nz, jr_005_67dc

    ld h, a

jr_005_67da:
    ld d, $00

jr_005_67dc:
    daa
    and l
    ld [$0220], a
    sbc [hl]
    sbc [hl]
    jr nz, jr_005_67ea

    rst $38
    ld [$edf2], a
    ld a, [bc]

jr_005_67ea:
    inc b
    ld bc, $a502
    or $51
    nop
    jp hl


    db $ec
    ld b, b
    rlca
    rst $38
    rst $38
    call $f6df
    ld a, [bc]
    inc b
    ld [c], a
    rst $20
    jr nz, jr_005_6801

    ld [hl], a

jr_005_6801:
    rst $38
    jp hl


    db $ec
    cp h
    sub h
    ld bc, $0420
    ld d, l
    nop
    nop
    ldh [rNR41], a
    inc b
    and $c9
    xor $20
    ld bc, $0031
    sbc $08
    ld bc, $0540
    and l
    call $559b
    nop
    ld a, [bc]
    inc bc
    ld bc, $1827
    ld bc, $00c7
    rst $18
    ld d, l
    ld d, e
    jr nz, jr_005_6836

    adc $0a
    ld b, $ea
    ld b, b
    inc b
    ldh [rLCDC], a
    dec bc

jr_005_6836:
    ld a, [c]
    inc b
    nop
    ld h, e
    ld a, [bc]
    ld [bc], a
    and b
    ld bc, $ffa7
    rst $10
    adc $31
    ret c

    ld [$1d01], sp
    inc bc
    add hl, de
    nop
    xor a
    ld h, c
    dec d
    nop
    jr nz, jr_005_6855

    rra
    db $e3
    db $e4
    push hl
    db $db

jr_005_6855:
    call RST_08
    dec l
    ld de, $011d
    ld hl, sp+$51
    ld bc, $02da
    jr nz, jr_005_6867

    ld bc, $ef27
    push hl

jr_005_6867:
    adc $6b
    db $d3
    call nc, $010a
    dec b
    ld bc, $e201
    db $e3
    call z, $fa01
    jr nz, jr_005_687a

    and a
    ld b, b
    db $10

jr_005_687a:
    xor $ef
    db $ec
    db $ed
    call $d56b
    sub $32
    ld bc, $5165
    db $10
    db $e3
    rst $20
    ld e, a
    db $10
    ld sp, hl
    add sp, $70
    ld de, $0070
    ld [c], a
    db $eb
    rst $38
    rst $38
    pop hl
    rst $18
    pop hl
    ld bc, $ce27
    rst $38
    ld bc, $e605
    rst $20
    ld a, a
    xor $ee
    rst $20
    rst $28
    pop hl
    jp hl


    db $ed
    inc c
    nop
    rst $30
    ld h, e
    ld [c], a
    rst $20
    nop
    db $10
    pop hl
    xor $e8
    db $e4
    dec a
    jp hl


    rra
    dec b
    ld [c], a
    db $e3
    pop hl
    ld a, c
    ld [hl-], a
    nop
    and c
    db $10
    ld a, [hl]
    dec l
    ld [bc], a
    xor $ef
    rst $38
    rst $38
    add sp, -$11
    ld d, b
    nop
    ld h, b
    rrca
    ld [bc], a
    ld a, b
    ld bc, $0132
    ld de, $1201
    ld bc, $e7e2
    ld c, $01
    ld h, l
    dec b
    ld bc, $0108
    jr nz, @+$31

    ld bc, $7302
    rst $38
    ld bc, $000f
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $9d05
    db $e3
    jp c, $099d

    db $db
    or [hl]
    jp nz, Jump_005_7fdb

    ld [hl], b
    call c, RST_00
    rlca
    ld c, $96
    nop
    nop
    add h
    ld a, a
    ld h, a
    call c, $3c01
    add l
    rst $38
    ld bc, $0201
    ld bc, $0900
    ld b, $0b
    inc b
    ld bc, $e606
    rst $38
    db $eb
    xor $e1
    pop hl
    pop hl
    rst $28
    db $ed
    ld [c], a
    cp l
    db $e3
    ld [$ef00], sp
    push hl
    and l
    ld h, c
    ld e, $0a
    ld b, c
    ld a, [$0021]
    rst $20
    jr jr_005_694d

jr_005_694d:
    add sp, -$1b
    and $ee
    xor $cf
    rst $28
    rst $28
    ld a, [c]
    db $ed
    jr nz, @+$0e

    ld b, c
    dec b
    db $ed
    db $ed
    db $dd
    ld [$0027], a
    sbc [hl]
    rst $38
    db $ec
    jr nz, jr_005_6972

    ld d, l
    nop
    rst $38
    di
    db $f4
    ld [$efee], a
    add sp, -$18
    ld d, e
    rst $18

jr_005_6972:
    rst $38
    ld [$e1ee], a
    rst $38
    jr nz, jr_005_6987

    push af
    ld a, c
    ld a, a
    rst $38
    or $e6
    db $eb
    ld a, [c]
    add sp, -$13
    ld c, b
    ld [bc], a
    ei
    ld d, l

jr_005_6987:
    nop
    jr nz, jr_005_6997

    rst $30
    rst $38
    rst $38
    ld hl, sp-$16
    ei
    db $eb
    db $eb
    jr nz, jr_005_6995

    rst $38

jr_005_6995:
    and $ea

jr_005_6997:
    adc $ed
    jp hl


    rst $38
    jr nz, jr_005_69a9

    rst $08
    nop
    ld a, [bc]
    ld bc, $2209
    and l
    ld h, e
    cp $9e
    dec bc
    ld h, c

jr_005_69a9:
    rst $38
    and l
    rst $38
    rst $38
    call c, $3bce
    and l
    ld h, l
    inc c
    nop
    and l
    call $0edf
    ld bc, $0901
    db $dd
    xor a
    jr nz, @+$04

    db $dd
    call $0da7
    ld bc, $cea7
    rst $28
    ldh [rIE], a
    and a
    rst $38
    ld b, b
    rrca
    rst $08
    ret nc

    adc $fd
    ret c

    inc c
    ld bc, $cdd7
    db $d3
    call nc, Call_005_40ff
    sbc $20
    rrca
    pop de
    jp nc, $decd

    inc c
    ld bc, $cedb
    or a
    push de
    sub $ff
    ld b, b
    rrca
    ld hl, $0109
    add hl, bc
    ld d, l
    and l
    nop
    jr nz, jr_005_69fe

    ld h, e
    add b
    ld bc, $0199
    ld h, c
    and a
    ld [bc], a
    rst $38
    or a

jr_005_69fe:
    ld [c], a
    db $e3
    rst $20
    rra
    add hl, bc
    db $e4
    push hl
    sub d
    ld bc, $0fa7
    adc $e4
    push hl
    ld h, e
    and a
    inc bc
    ld h, $10
    and b
    dec de
    ld a, [de]
    db $10
    rst $18
    ld [c], a
    db $eb
    rst $20
    rst $28
    rst $28
    ld a, [hl+]
    nop
    rst $10
    adc $f6
    add a
    nop
    ld [$81ee], a
    dec bc
    db $ed
    ldh a, [$e6]
    rst $20
    rst $38
    xor $e1
    rst $28
    db $ec
    rst $28
    db $ed
    ldh a, [$f0]
    cp a
    call $f0df
    and $eb
    db $eb
    and b
    dec de
    ld [hl+], a
    ld bc, $410a
    dec de
    jr nz, jr_005_6a6e

    ld b, a
    ld a, e
    jp c, Jump_005_677f

    call c, $0300
    dec d
    ld c, $96
    nop
    nop
    add h
    ld a, a
    ld de, $01dc
    inc a
    ld h, l
    ld [bc], a
    ld bc, $ff03
    ld bc, $010f
    dec b
    and l
    ld h, c
    inc bc
    nop
    rst $38
    ld d, e
    rst $38
    rst $28
    db $e3
    xor $e8
    rst $28
    jp hl


    rst $38
    db $ec

jr_005_6a6e:
    and $ee
    xor $e7
    rst $20
    add sp, -$11
    ld a, a
    rst $28
    rst $20
    add sp, -$18
    rst $28
    add sp, -$11
    jr nz, jr_005_6a85

    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    rst $20

jr_005_6a85:
    rst $28
    rst $28
    db $ed
    cpl
    rst $38
    ld [$e1eb], a
    jr z, jr_005_6a8f

jr_005_6a8f:
    pop hl
    ld c, $01
    rlca
    nop
    cp $20
    ld b, $e6
    db $eb
    db $eb
    db $eb
    rst $28
    rst $28
    add sp, -$01
    db $ec
    rst $38
    rst $38
    and $e7
    pop hl
    rst $28
    pop hl
    rst $38
    xor $e1
    pop hl
    rst $28
    rst $28
    pop hl
    rst $28
    add sp, $57
    rst $38
    rst $38
    sbc [hl]
    jr nz, jr_005_6ab9

    ld bc, $0084

jr_005_6ab9:
    daa
    dec b
    nop
    ld b, c
    daa
    jr nz, jr_005_6ac0

jr_005_6ac0:
    dec e
    nop
    ld bc, $2101
    nop
    ld b, b
    inc bc
    ld h, e
    ld h, b
    ld [bc], a
    xor $5a
    nop
    db $ec
    db $ec
    rst $38
    add hl, bc
    nop
    ld [$eee7], a
    cp $23
    ld bc, $ecec
    rst $28
    rst $20
    rst $20
    rst $38
    rst $38
    ld a, a
    ld d, l
    nop
    and a
    rst $38
    rst $38
    and a
    ld h, e
    xor l
    dec b
    xor [hl]
    add hl, hl
    ld bc, $eaaf
    ld bc, $03d5
    daa
    jr nz, jr_005_6af5

jr_005_6af5:
    db $e3
    rst $10
    db $e3
    db $e4
    push hl
    call Call_005_6108
    ld b, $02
    ld [$7eeb], a
    ld c, h
    nop
    db $ed
    and l
    rst $38
    ld_long $ffff, a
    and [hl]
    nop
    ld a, l
    add sp, $22
    ld [$e661], sp
    db $e4
    and $e4
    db $10
    inc b
    ei
    and l
    ld h, l
    dec b
    nop
    pop hl
    xor $55
    nop
    add sp, $69
    ld bc, $0098
    ld bc, $6303
    ld a, l
    nop
    pop hl
    pop hl
    ld hl, $3d03
    and l
    dec b
    ld bc, $e7ee
    ld a, c
    rst $38
    rst $30
    nop
    ld bc, $eb05
    ld [$bbe7], a
    ld [bc], a
    jp hl


    jr nz, jr_005_6b4a

    rst $38
    rst $38
    add sp, $79
    jp hl


    jr nz, jr_005_6b4f

    ccf

jr_005_6b4a:
    db $10
    pop hl
    jr @+$01

    pop hl

jr_005_6b4f:
    jr nz, @+$09

    ret z

    db $f4
    ld bc, $073f
    db $dd
    ld bc, $31ee
    nop
    ld [de], a
    ld [bc], a
    and a
    ldh a, [$bd]
    ldh a, [$80]
    nop
    rst $28
    db $ec
    db $ed
    jp hl


    pop bc
    ld [$f7ea], sp
    db $eb
    xor $01
    ld sp, $f003
    ldh a, [$f1]
    pop af
    jp $ffff


    inc d
    db $10
    ld bc, $280c
    db $10
    ld [$5502], sp
    nop
    sbc a
    ld d, l
    nop
    rst $38
    rst $38
    ld sp, $0f02
    ld [bc], a
    ld [$03ff], sp
    rst $38
    ld [hl], $01
    rrca
    ld bc, $2008
    rrca
    jr nz, jr_005_6ba6

    ld bc, $200f
    add hl, bc
    ld bc, $0126
    rrca
    ld bc, $6e08
    cpl
    ld bc, $010f

jr_005_6ba6:
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    ld bc, $010f
    inc bc
    sub h
    cp [hl]
    jp c, $c294

    jp c, $049d

    db $db
    sub h
    inc c
    db $db
    ld e, d
    ld e, d
    db $db
    ld a, a
    ld de, $4edc
    ld a, l
    call c, $8b4e
    call c, RST_00
    add hl, de
    ld c, $c8
    nop
    ld bc, $0001
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
    add h
    ld d, c
    push de
    inc e
    push de
    ld a, a
    dec c
    add h
    ld a, a
    ld h, a
    call c, $1e01
    add d
    db $10
    halt
    ld de, $5583
    ld l, l
    ld d, c
    ld [$ffb5], sp
    ld bc, $0700
    ld [bc], a
    nop
    rst $38
    ld [bc], a
    ld bc, $ff07
    db $fc
    ld bc, $200c
    ld [bc], a
    rst $38
    ld h, c
    and $ee
    rst $20
    pop hl
    rst $18
    xor $e8
    pop hl
    pop hl
    rst $20
    inc e
    add hl, bc
    di
    ld hl, sp-$02
    jr nz, jr_005_6c2d

    ld a, l
    ld a, l
    ld h, c

jr_005_6c2d:
    ld [$e1ee], a
    rst $20
    rst $18
    xor $ef
    pop hl
    rst $20
    rst $28
    jr nz, jr_005_6c42

    push af
    or $fe
    jr nz, @+$04

    ld bc, $2702
    ld h, e

jr_005_6c42:
    ld [$e1eb], a
    halt
    ld bc, $ee01
    pop hl
    ld b, b
    ld a, [bc]
    di
    di
    rst $38
    dec e
    nop
    cp $0c
    ld [bc], a
    ld [$eeeb], a
    xor $e7
    rst $28
    pop hl
    and [hl]
    ld b, b
    dec bc
    push af
    push af
    add b
    inc b
    ld [hl+], a
    ld [bc], a
    rst $20
    ld hl, $e800
    ld l, [hl]
    jr nz, jr_005_6c74

    dec bc
    nop
    ld d, l
    ld [bc], a
    nop
    ld l, a
    dec bc
    dec c
    ld [bc], a

jr_005_6c74:
    ld a, a
    rst $10
    reti


    ld a, [hl+]
    nop
    dec de
    ld d, l
    nop
    jr nz, jr_005_6c87

    rst $10
    inc e
    di
    db $f4
    rlca
    ld [bc], a
    sbc $0e
    ld [bc], a

jr_005_6c87:
    jp c, Jump_005_57df

    and $0c
    xor $60
    ld a, [bc]
    dec bc
    and c
    nop
    jr nz, @+$09

    nop
    db $fd
    rst $18
    ld c, $02
    reti


    ldh [$ffea], a
    inc c
    add sp, -$12
    or $40
    rrca
    rst $38
    inc e
    jr nz, @+$04

    db $db
    jp c, $ffff

    rst $10
    inc c
    db $eb
    db $eb
    jr nz, @+$0b

    ld bc, $1333
    daa
    ldh [$fffe], a
    dec c
    ld bc, $d9dc
    rst $38
    ei
    inc de
    adc $de
    ld a, d
    jr nz, @+$0b

    rst $30
    ld bc, $f401
    rst $38
    reti


    ret c

    dec c
    ld bc, $dd7f
    jp c, $0ffb

    db $fc
    call $e0df
    inc c
    rst $20
    push af
    push af
    or $59
    ld bc, $1006
    db $dd
    dec de
    rla
    rrca
    db $fc
    rst $38
    adc $e0
    ld b, b
    rrca
    ld e, c
    nop
    ret nz

    inc bc
    db $e4
    nop
    jp $ffcd


    ld b, b
    rrca
    inc b
    ld de, $02c0
    and h
    nop
    adc $d8
    ld d, [hl]
    ld b, b
    dec bc
    ld bc, $4027
    nop
    jp c, $0640

    call c, $0f40
    and a
    ld bc, $f027
    ld bc, $200a
    add hl, bc
    dec b
    ld bc, $5501
    ld bc, $0200
    ld a, [bc]
    jr nz, jr_005_6d22

    jp nz, $da9a

    sub b
    or [hl]
    jp c, Jump_005_76c6

    db $db

jr_005_6d22:
    ld d, h
    add [hl]
    db $db
    ld a, a
    ld h, a
    call c, $0200
    ld a, [bc]
    ld e, $c8
    nop
    nop
    add h
    ld a, a
    and [hl]
    db $dd
    ld bc, $d53c
    rst $38
    ld bc, $0200
    ld bc, $ff0d
    ld bc, $e407
    push hl
    rst $28
    rst $38
    rst $38
    and l
    ld h, c
    inc bc
    nop
    and $e7
    dec bc
    rst $08
    xor $e8
    add sp, -$17
    inc c
    ld bc, $0920
    rst $28
    add sp, -$05
    db $e4
    push hl
    jr nz, jr_005_6d5f

    inc e
    rst $20
    rst $28
    xor e

jr_005_6d5f:
    rst $38
    sbc $20
    dec c
    sbc [hl]
    rst $38
    rst $28
    db $ed
    jr nz, @+$04

    rst $38
    ld [$40da], a
    nop
    rst $38
    jr nz, @+$10

    rst $38
    rst $38
    ld d, h
    inc bc
    ld h, c
    rst $38
    rst $28
    rst $38
    inc e
    db $eb
    db $ec
    jr nz, jr_005_6d8d

    ld bc, $2702
    ld l, l
    dec bc
    inc d
    nop
    and a
    ld h, c
    dec bc
    ld bc, $2702
    jr nz, jr_005_6d9b

jr_005_6d8d:
    rst $28
    db $ec
    and l
    ld h, c
    inc e
    dec a
    ld bc, $ff63
    rst $38
    pop af
    ld h, c
    xor c
    inc bc

jr_005_6d9b:
    ld h, b
    inc c
    inc d
    ld [bc], a
    ld d, l
    nop
    rst $38
    rst $38
    ld sp, hl
    xor a
    jr nz, @+$11

    jr nz, jr_005_6dad

    and a
    ld h, e
    rst $38
    dec bc

jr_005_6dad:
    rst $38
    db $fc
    ld b, b
    rrca
    jr nz, jr_005_6db9

    rst $38
    rst $38
    call $ce1c
    rst $08

jr_005_6db9:
    add hl, sp
    ret nc

    add hl, hl
    inc bc
    jr nz, jr_005_6dce

    call $ffd0
    ld b, b
    inc b
    ld bc, $2100
    inc e
    jr nz, jr_005_6dd9

    rla
    ld [bc], a
    jr nz, @+$07

jr_005_6dce:
    ld b, b

Call_005_6dcf:
    rrca
    ld h, c
    reti


    ld bc, $0001
    ld b, c
    daa
    ld b, b
    rrca

jr_005_6dd9:
    ret nz

    ld b, $37
    ld [bc], a
    ld b, b
    rrca
    jr nz, jr_005_6de8

    inc e
    jr nz, jr_005_6de7

    dec hl
    ld d, l
    nop

jr_005_6de7:
    ld b, b

jr_005_6de8:
    rrca
    ld h, c
    inc bc
    rlca
    rst $38
    and $03
    jr nz, @+$11

    or h
    jr nz, jr_005_6e03

    jr nz, jr_005_6e05

    and l
    ld h, e
    db $10
    rst $38
    ld h, l
    jr nz, @+$11

    ld h, e
    call z, $119d
    jr nz, jr_005_6e04

jr_005_6e03:
    rst $38

jr_005_6e04:
    ld d, l

jr_005_6e05:
    ld h, a
    ld de, $0e20
    rst $38
    ld d, e
    ld c, $5a
    inc d
    rst $38
    ld [c], a
    db $e3
    ld c, [hl]
    jr nz, jr_005_6e34

    rrca
    cp l
    ld de, $105a
    cp a
    and a
    ld [c], a
    rst $20
    xor $ef
    jp hl


    jr nz, @+$0f

    push hl
    db $fd
    and a
    dec bc
    ld b, $e6
    xor $e7
    rst $28
    db $e4
    push hl
    ret c

    jr nz, jr_005_6e3c

    and b
    ld hl, $0201

jr_005_6e34:
    ld [c], a
    db $e3
    ccf
    nop
    rst $28
    add sp, -$45
    db $ed

jr_005_6e3c:
    ld h, e
    jr nz, @+$0d

    xor $e8
    db $ed
    rra
    inc bc
    rst $20
    ld c, e
    xor $ee
    ld hl, $e800
    ld b, d
    nop
    ret nz

    inc l
    jp hl


    dec a
    inc b
    rst $38
    pop hl
    rst $20
    rst $20
    rst $28
    pop hl
    xor $e8
    pop hl
    ei
    db $ed
    and a
    jr nz, jr_005_6e69

    pop hl
    add sp, -$17
    ldh a, [rIE]
    rst $38
    ldh a, [$e6]
    rst $20

jr_005_6e69:
    xor $79
    rst $38
    pop hl
    xor $cf
    pop hl
    rst $28
    pop hl
    pop hl
    ld b, c
    nop
    jr nz, jr_005_6e81

    xor $e4
    ccf
    push hl
    ldh a, [$f1]
    ld [$efee], a
    dec bc

jr_005_6e81:
    nop
    ld bc, $6f01
    xor $e8
    rst $28
    jp hl


    jr nz, jr_005_6e94

    ld d, l
    nop
    ld [bc], a
    rrca
    nop
    jr nz, jr_005_6e9b

    sbc l
    cp d

jr_005_6e94:
    jp c, $be9d

    jp c, $194f

    db $db

jr_005_6e9b:
    ld e, d
    cp d
    db $db
    ld e, d
    cp [hl]
    db $db
    ld c, a
    dec [hl]
    call c, $034f
    db $dd
    ld a, a
    and [hl]
    db $dd
    nop
    ld bc, $1e07
    ret z

    nop
    nop
    adc h
    ld a, a
    sub c
    db $dd
    ld bc, $5898
    db $db
    dec b
    sbc b
    cp d
    db $db
    call nc, $8315
    rst $08
    dec e
    jr nz, jr_005_6ec9

    add e
    cp a
    db $ed
    ld [c], a
    dec c

jr_005_6ec9:
    add e
    cp a
    ld a, l
    ld a, [c]
    inc b
    jp hl


    nop
    ld bc, $010f
    ld [$01ff], sp
    ld [$ff61], sp
    and l
    rst $08
    rst $38
    rst $38
    and l
    ld h, c
    dec c
    inc bc
    ld [$e600], sp
    xor $cb
    pop hl
    pop hl
    inc c
    ld [bc], a
    ld d, e
    jr nz, @+$11

    ld [$e200], sp
    db $e3
    dec sp
    rst $20
    rst $28
    jr nz, jr_005_6ef6

jr_005_6ef6:
    db $e3
    db $e4
    push hl
    ld b, b
    rrca
    ld [$ef01], sp
    and $ee
    ld a, c
    rst $38
    jr nz, jr_005_6f04

jr_005_6f04:
    xor $ef
    ld bc, $02a7
    ld [bc], a
    daa
    inc b
    ld bc, $0320
    ld h, e
    jr nz, jr_005_6f17

    ld [$e7ff], a
    rst $38
    rst $38

jr_005_6f17:
    rst $28
    rst $38
    rst $38
    pop hl
    rst $28
    di
    add sp, -$13
    dec a
    inc bc
    inc bc
    nop
    ld d, l
    nop
    and a
    rst $38
    sbc e
    ld d, l
    nop
    jr nz, jr_005_6f2f

    ld bc, $3502

jr_005_6f2f:
    nop
    ld b, b
    nop
    pop hl
    cp e
    add sp, -$14
    jr nz, jr_005_6f3e

    rst $38
    rst $38
    pop de
    ld a, $02
    ld d, l

jr_005_6f3e:
    sbc l
    nop
    ld c, $01
    and $e7
    xor $40
    ld bc, $011f
    rst $38
    ld a, l
    ld h, e
    jr nz, jr_005_6f4f

    and a

jr_005_6f4f:
    rst $38
    jp nc, $ffe1

    ret nz

    ld b, $2f
    and l
    rst $38
    db $eb
    db $eb
    ld b, b
    nop
    db $e4
    and c
    inc b
    sbc d
    ld [bc], a
    rst $20
    call nc, $d5e1
    jr nz, jr_005_6f6f

    ld bc, $e101
    pop hl
    pop hl
    ld h, e
    ld d, l
    nop

jr_005_6f6f:
    ld [hl], h
    nop
    dec b
    rlca
    ld bc, $cd00
    ret nc

    jr nz, jr_005_6f82

    rst $30
    pop hl
    rlca
    pop hl
    and e
    nop
    call $d0cf

jr_005_6f82:
    rst $38
    ccf
    rst $38
    ret c

    pop hl
    reti


    call $09ce
    ld bc, $0320
    ld l, a
    and $ff
    rst $38
    ld [hl], l
    ld [hl+], a
    nop
    rlca
    rst $28
    ld h, h
    inc b
    or l
    jp c, $002d

    db $db
    ld h, b
    rlca
    ld [c], a
    db $e3
    ld b, d
    inc bc
    rlca
    rst $00
    pop hl
    pop hl
    jp hl


    rra
    dec b
    ld hl, $2004
    ld [bc], a
    and $ee
    cp d
    ld h, b
    dec b
    pop hl
    ld h, d
    nop
    call c, $e1dd
    ld bc, $de03
    and a
    rst $18
    rst $38
    xor a
    jr nz, jr_005_6fc4

    ld h, d

jr_005_6fc4:
    db $10
    rst $38
    sub e
    ld [bc], a
    ld d, l
    push hl
    nop
    jr nz, jr_005_6fcd

jr_005_6fcd:
    ldh [rSB], a
    add hl, bc
    xor $02
    db $eb
    xor $e1
    and d
    add b
    ld bc, $34ef
    ld bc, $1225
    ld bc, $a708
    xor $00
    ld [$e73d], a
    ld c, $12
    rst $28
    add sp, -$1f
    rst $28
    pop bc
    ld bc, $0b01
    sub $88
    db $10
    rst $20
    xor $80
    nop
    rst $20
    inc a
    nop
    rst $28
    pop hl
    or a
    db $ec
    jp hl


    rst $38
    ld bc, $ea0f
    rst $20
    add b
    ld b, $00
    xor l
    inc b
    ld bc, $010b
    daa
    ld hl, $eb02
    nop
    inc d
    pop hl
    ld c, c
    pop hl
    ld b, $26
    ld bc, $e200
    inc d
    jr nz, jr_005_703d

    inc bc
    rst $38
    nop
    ld d, $97
    pop hl
    add sp, $65
    jr jr_005_7026

jr_005_7026:
    push hl
    ld e, $02
    ld c, $01
    db $e4
    ld a, d
    ld hl, $9e00
    ld e, $02
    xor $e7
    add sp, $07
    jp $8d00


    rst $28
    adc e
    inc bc
    rst $38

jr_005_703d:
    and $91
    inc d
    ld b, c
    dec b
    add b
    inc bc
    add sp, $0f
    pop hl

jr_005_7047:
    pop hl
    rst $20
    rst $20
    jr c, @+$03

    ld a, $02
    ld bc, $1e02
    jr nz, jr_005_70ce

    ld [bc], a
    daa
    add b
    ld bc, $e707
    add sp, -$18
    db $e4
    nop
    add $01
    inc c
    rst $20
    xor $06
    ld bc, $0142
    ld a, [hl]
    ld bc, $efee
    dec bc
    add sp, -$11
    add hl, de
    inc b
    xor $0a
    ld b, $20
    ld [bc], a
    sbc [hl]
    inc bc
    add [hl]
    jr nz, jr_005_7047

    ld b, d
    inc b
    xor $e7
    pop hl
    ld hl, $0008
    ld d, $1b
    dec c
    ld [hl+], a
    ld bc, $1b02
    rrca
    inc b
    and l
    ld bc, $232d
    dec b
    ld bc, $010f
    ld [$ff03], sp
    rst $38
    sbc b
    ld e, b
    db $db
    ld c, a
    ld l, l
    db $db
    sbc b
    cp d
    db $db
    ld a, a
    sub c
    db $dd
    ld d, h
    cp [hl]
    db $dd
    nop
    ld bc, $0e16
    ret z

    nop
    ld bc, $003f
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
    adc [hl]
    dec de
    sub $12
    push de
    db $d3
    sub $17
    push de
    rst $18
    sub $27
    sub $22
    push de
    ld a, a
    inc bc
    nop

jr_005_70ce:
    add hl, de
    pop hl
    ld bc, $010f
    ld [$ffff], sp
    inc d
    rrca
    jr nz, jr_005_70e9

    ld bc, $7e0f
    jr nz, jr_005_70ee

    pop hl
    pop hl
    rst $28
    add sp, -$1f
    xor $07
    nop
    ei
    ld d, e

jr_005_70e9:
    rst $38
    jr nz, jr_005_70fb

    pop hl
    pop hl

jr_005_70ee:
    sbc [hl]
    rst $38
    pop hl
    rst $28
    add sp, -$14
    db $eb
    rst $20
    inc de
    inc bc
    xor $e8
    rst $28

jr_005_70fb:
    xor $0b
    nop
    xor $79
    rst $38
    jr nz, jr_005_7105

    add sp, -$11

jr_005_7105:
    xor $fd
    rst $28
    add hl, bc
    nop
    rst $28
    db $ec
    jp c, $ebea

    db $eb
    rst $38
    rst $20
    rst $28
    add sp, -$11
    rst $28
    rst $28
    db $ec
    db $ec
    rst $28
    rst $38
    ld [$eee7], a
    inc d
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    nop
    ld [$2ae7], a
    ld d, l
    nop
    ld d, l
    rst $38
    nop
    ld a, [hl+]
    reti


    sbc $ff
    ld [$f2eb], a
    ld a, [$020b]
    rst $38
    add hl, de
    ld bc, $0055
    ld a, [c]
    rst $38
    rst $38
    rst $38
    db $ec
    db $ed
    reti


    rst $38
    ld [$ebf2], a
    db $eb
    ld a, [hl]
    inc sp
    nop
    jp c, $ffdf

    rst $08
    ret nc

    adc $1b
    nop
    ei
    call $05de
    nop
    call c, $ead9
    rlca
    db $eb
    sbc $08
    nop
    db $db
    jp c, $dbff

    dec d
    ld bc, $ffff
    rst $38
    reti


    rst $18
    rst $38
    pop de
    jp nc, $d3cd

    call nc, $fff7
    adc $df
    jr nz, @+$03

    jp c, $07ff

    rst $38
    or $28
    ld [bc], a
    rst $38
    call c, $0115
    rst $38
    rst $38
    jp c, Jump_005_7ee0

    dec b
    nop
    adc $d5
    sub $ff
    call $20e0
    inc b
    push af
    db $e3
    ld [$dd03], sp
    dec d
    ld bc, $e3e2
    db $e4
    push hl
    rst $08
    rst $38
    rst $38
    rst $10
    call $0004
    ld c, a
    ld [bc], a
    db $dd
    reti


    rst $38
    and $07
    rst $20
    rst $38
    rst $38
    db $ed
    db $dd
    reti


    or a
    ld h, l
    rst $38
    call $001e
    ld bc, $0102
    ld [bc], a
    daa
    rst $28
    db $e4
    push hl
    db $db
    call $0120
    ld [c], a
    db $e3
    rst $20
    push af
    rlca
    ret nz

    nop
    add sp, $36
    ld bc, $dece
    and $ee
    ei
    dec bc
    rst $30
    ld bc, $f801
    dec bc
    add sp, -$13
    call c, $ce7b
    ret c

    jr nz, jr_005_71e0

jr_005_71e0:
    and $e7
    rst $28
    rlca
    rst $30
    ld bc, $e8df
    db $e4
    jp hl


    rst $38
    call $002d
    inc e
    push af
    ld a, [hl]
    ld bc, $f601
    inc e
    rst $28
    db $e4
    push hl
    call $023e
    ei
    xor $e1
    jr nz, @+$03

    xor $ef
    add sp, -$13
    rst $10
    rst $30
    adc $e6
    rst $20
    ld b, b
    inc bc
    jr nz, @+$01

    dec bc
    pop hl
    sbc [hl]
    ld sp, hl
    ld bc, $0055
    rst $20
    rst $28
    dec d
    ld de, $1307
    ld d, l
    rst $28
    nop
    db $e3
    rst $20
    rst $28
    ld b, b
    ld [bc], a
    rst $38
    rst $38
    inc e
    ld c, l
    pop hl
    ld e, a
    db $10
    add sp, $07
    adc e
    ld [de], a
    ld l, l
    ld [de], a
    rlca
    sbc c
    db $10
    ld l, a
    rst $20
    rst $20
    rst $28
    pop hl
    and b
    dec b
    pop hl
    xor a
    xor e
    db $10
    add hl, bc
    rlca
    and b
    rla
    dec bc
    ld bc, $d4ee
    ld a, [de]
    inc b
    nop
    jr nz, jr_005_7256

    ld bc, $300e
    jr nz, jr_005_725e

    jr nz, jr_005_7260

    jr nz, jr_005_7256

    and b
    inc bc
    ld a, [hl+]

jr_005_7256:
    pop hl
    or a
    inc b
    ld [bc], a
    nop
    inc a
    inc c
    add hl, bc

jr_005_725e:
    ret nz

    db $10

jr_005_7260:
    xor e
    rst $38
    ld [c], a
    xor $34
    ld a, [bc]
    ld b, l
    add hl, bc
    ld [de], a
    cp b
    ld [de], a
    and $20
    rrca
    jr nz, jr_005_7277

    push hl
    dec hl
    ld de, $0f20
    jr nz, jr_005_727d

jr_005_7277:
    cpl
    pop hl
    db $e4
    db $eb
    pop hl
    ld [hl], c

jr_005_727d:
    inc bc
    nop
    jr nz, jr_005_7290

    and b
    daa
    sub b
    add $0f
    jr nz, @+$11

    jr nz, jr_005_7299

    jr nz, jr_005_728c

jr_005_728c:
    ld [bc], a
    ld bc, $010f

jr_005_7290:
    ld [$01ff], sp
    rst $38
    ld d, a
    jp $c8da


    push af

jr_005_7299:
    jp c, $d657

    db $db
    ret z

    ld de, $c6dc
    ccf
    call c, $b5c8
    call c, $d0c8
    call c, $a07f
    db $dd
    ret z

    and a
    db $dd
    nop
    nop
    ld a, [de]
    ld c, $96
    nop
    nop
    add h
    ld a, a
    ld h, [hl]
    call c, $2301
    add c
    jr nz, jr_005_72c0

    add e

jr_005_72c0:
    ld [$0808], sp
    inc d
    ld [hl], l
    rst $38
    ld bc, $0701
    ld [bc], a
    nop
    rst $38
    ld bc, $0102
    dec b
    push af
    rst $38
    ld bc, $f308
    jr nz, jr_005_72dd

    and l
    ld h, c
    rst $38
    and l
    reti


    dec bc

jr_005_72dd:
    ld b, $02
    jr nz, jr_005_72ea

    push af
    ld hl, sp+$20
    inc bc
    ld a, l
    ld a, l
    jp c, $011a

jr_005_72ea:
    inc e
    jr nz, jr_005_72fb

    rst $30
    or $20
    inc bc
    ld d, l
    nop
    ld d, d
    ld b, b
    inc b
    ld h, e
    ld b, b
    rrca
    ld a, e
    nop

jr_005_72fb:
    daa
    ld h, b
    inc bc
    inc e
    inc hl
    ld [bc], a
    inc a
    ld b, b
    rrca
    add b
    dec b
    rst $38
    rst $38
    and a
    inc e
    jr nz, jr_005_7317

    or [hl]
    inc b
    dec h
    daa
    jr nz, jr_005_7317

    rst $38
    ld b, b
    inc c
    rla
    ld [bc], a

jr_005_7317:
    ld h, c
    ld d, $00
    jr nz, jr_005_731f

    ld h, a
    ld d, l
    nop

jr_005_731f:
    inc e
    jr nz, jr_005_7331

    inc bc
    nop
    inc e
    rst $38
    cp d
    rlca
    adc d
    jr nz, jr_005_733a

    ld h, c
    dec e
    jr jr_005_7356

    jr nz, jr_005_7340

jr_005_7331:
    inc bc
    nop
    ld bc, $a709
    ld a, $20
    ld c, $63

jr_005_733a:
    ld [c], a
    db $e3
    db $e4
    push hl
    rrca
    inc bc

jr_005_7340:
    ld a, [bc]
    rlca
    sub $20
    ld [$0d1b], sp
    ld bc, $1b09
    ld c, [hl]
    dec bc
    ld h, c
    rst $38
    ld a, a
    and a
    and $e7
    rst $28
    pop hl
    rst $28
    push hl

jr_005_7356:
    ld a, $02
    rst $28
    xor $e1
    xor $e8
    rra
    add hl, bc
    ldh a, [$f0]
    ld h, e
    adc $16
    ld [bc], a
    pop hl
    db $e4
    db $ed
    ld c, $00
    add hl, hl
    ld bc, $e1e1
    ld a, [hl]
    jr nz, jr_005_737a

    pop af
    pop af
    ldh a, [$f0]
    and $e7
    dec d
    nop
    cp l

jr_005_737a:
    rst $28
    ld a, b
    nop
    ld [c], a
    db $e3
    rst $20
    rst $20
    jr nz, jr_005_738f

    ld d, l
    add hl, hl
    nop
    ld [bc], a
    rlca
    ccf
    nop
    xor $40
    dec c
    ld h, $01

jr_005_738f:
    ld a, [bc]
    jr z, jr_005_7396

    nop
    ld bc, $c208

jr_005_7396:
    sbc e
    jp c, $a19d

    jp c, $b7aa

    jp c, $c49d

    jp c, Jump_005_60b6

    db $db
    ld d, h
    cp $db
    ld a, a
    ld h, [hl]
    call c, Boot
    dec d
    ld e, $fa
    nop
    ld b, $00
    inc bc
    ld bc, $0000
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
    ld [de], a
    add [hl]
    rst $20
    push de
    rst $18
    call nc, $d646
    inc c
    add h
    dec [hl]
    push de
    ld e, b
    call nc, $0068
    dec c
    rst $38
    ld bc, $2907
    rst $38
    ld bc, $010f
    rrca
    ld bc, $010f
    ld a, [bc]
    cp c
    pop de
    inc de
    rrca
    ld bc, $d209
    pop hl
    db $d3
    ld de, $010b
    call $0102
    ld bc, $0127
    dec b
    ld [bc], a
    rlca
    nop
    daa
    ld bc, $2af5
    ld d, $03
    daa
    dec a
    rrca
    rst $38
    rst $38
    call Call_005_7bce
    rst $08
    ret nc

    ld l, d
    dec bc
    ld [c], a
    db $e3
    db $e4
    jp hl


    ld e, $06
    ld e, a
    ret nc

    rst $38
    sub $e1
    rst $10
    dec h
    nop
    ret nc

    dec bc
    nop
    ld a, [$006a]
    xor a
    inc d
    nop
    ld d, l
    nop
    ld d, l
    nop
    dec bc
    rst $28
    push hl
    rst $38
    rst $38
    ld a, [de]
    inc hl
    inc bc
    ret c

    pop hl
    reti


    xor $2d
    inc b
    call nc, $d5e1
    rlca
    ld bc, $e1e1
    pop hl
    ld e, a
    rlca
    inc e
    add sp, -$1c
    push hl
    dec d
    inc bc
    jp c, $000f

    ld [hl], l
    db $db
    dec bc
    dec b
    db $db
    jr nz, jr_005_744f

    ld d, l
    nop
    ld [bc], a
    sub b
    inc bc

jr_005_744f:
    ld a, d
    rra
    nop
    ld bc, $06ae
    pop hl
    pop hl
    sbc $df
    jr nz, @+$05

    cp a
    pop hl

jr_005_745d:
    xor $e1
    rst $28
    add sp, -$13
    ld a, $03
    pop hl
    and $42
    ld [bc], a
    ld a, [c]
    ldh [rSB], a
    inc bc
    jr nz, jr_005_7472

    pop hl
    ld d, e
    rst $38
    rra

jr_005_7472:
    jp hl


    rst $38
    call c, $e1dd
    ld bc, $3905
    ld bc, $02bc
    ld c, [hl]
    jr nz, jr_005_7485

    rst $38
    rst $38
    db $ed
    inc sp
    dec b

jr_005_7485:
    ld bc, $f303
    or d
    ld bc, $e7db
    xor $20
    dec b
    rst $28
    pop hl
    and e
    ld b, $01
    daa
    dec [hl]
    ld h, $01
    nop
    ld bc, $018f
    rst $20
    rst $28
    ldh [$ff03], a
    and b
    ld [bc], a
    ld [c], a
    ld bc, $2704
    ld d, c
    jr jr_005_745d

    ld bc, $013e
    pop hl
    pop hl
    add sp, -$15
    db $ed
    dec bc
    ld b, h
    ld d, $0b
    ld a, d
    ld [bc], a
    rst $20
    add hl, hl
    rst $20
    pop hl
    xor $40
    ld bc, $0220
    cp l
    nop
    jr nz, @+$09

    inc e
    rst $38
    rst $38
    adc a
    and $e7
    xor $ef
    push de
    nop
    sbc b
    ld bc, $0020
    rst $28
    inc de
    add sp, -$17
    ld d, $02
    ld b, b
    rlca
    sbc [hl]
    sbc e
    nop
    rra
    ld bc, $0220
    ld [hl], e
    xor $e1
    jr nz, jr_005_74e7

    ld [hl], b

jr_005_74e7:
    inc bc
    ld d, l
    nop
    push hl
    ld a, [hl+]
    inc bc
    ld [$031f], a
    pop hl
    and b
    inc bc
    pop hl
    cp h
    nop
    ld h, c
    rst $38
    and l
    ld d, b
    ld d, a
    nop
    ldh [rNR10], a
    xor d
    ld b, $18
    nop
    pop hl
    ldh [$ff03], a
    rst $28
    ld hl, $fe00
    jr nz, jr_005_750b

jr_005_750b:
    ld [c], a
    db $e3
    xor $65
    rst $38
    add sp, -$17
    push hl
    ld h, c
    sbc a
    ld [bc], a
    rst $28
    sbc c
    ld [bc], a
    nop
    ld d, $e9
    ld h, e
    rst $38
    rla
    and l
    and $e7
    stop
    rst $28
    jr nz, jr_005_7527

jr_005_7527:
    sbc a
    nop
    rla
    inc bc
    ld a, c
    rst $20
    jr nz, jr_005_7530

    ld a, d

jr_005_7530:
    inc bc
    push hl
    rst $38
    and a
    and $b3
    ld bc, $e807
    db $ed
    ld h, e
    ld c, b
    nop
    cp a
    nop
    jr nz, jr_005_7541

jr_005_7541:
    ldh [rSC], a
    ld bc, $ed02
    xor $a3
    nop
    ld [c], a
    db $e3
    dec bc
    ld [bc], a
    db $e4
    push hl
    and $70
    inc [hl]
    inc de
    ld [bc], a
    ld bc, $0520
    ld h, c
    nop
    rst $38
    and $ee
    ld de, $f410
    ld l, d
    ld de, $00fb
    rst $20
    sub h
    nop
    pop hl
    rst $20
    xor $e8
    ld l, b
    jr nz, @+$07

    rst $18
    db $10
    ccf
    ld bc, $0f79
    ld bc, $e1ef
    ld a, l
    inc bc
    ld a, h
    ld l, [hl]
    ld bc, $0420
    xor $ef
    rst $28
    add sp, -$11
    inc de
    db $10
    rst $08
    rst $38
    rst $38
    add sp, -$11
    ld sp, $2003
    nop
    xor $e7
    ld h, l
    pop hl
    add b
    nop
    ld [bc], a
    ld bc, $010f
    ld [$ffff], sp
    sub h
    or a
    jp c, $ba94

    jp c, $bd94

    jp c, $8194

    call c, $a594
    call c, $967f
    db $dd
    nop
    ld bc, $0e0a
    ld a, [$0000]
    nop
    call $0102
    dec b
    daa
    ld bc, $0704
    db $10
    ld b, $ff
    rst $38
    cp $1f
    ld b, $ee
    pop hl
    jp hl


    db $ed
    rst $38
    call c, $fbff
    reti


    rst $18
    jr z, jr_005_75d4

    rst $38
    call c, $ffd9
    rst $38

jr_005_75d4:
    rst $38
    rst $38
    pop hl
    pop hl
    rst $28
    jp hl


    jp hl


    db $ed
    db $ed
    cp a
    ld h, c
    ld [$efee], a
    add sp, -$14
    jr nz, jr_005_75e6

jr_005_75e6:
    jp c, $e0ff

    rst $38
    ld h, c
    call c, $ffda
    and l
    ld h, c
    rst $28
    rst $38
    rst $38
    db $dd
    jp c, $0120

    rst $28
    pop hl
    pop hl
    rst $38
    db $ed
    db $ed
    db $ec
    ld h, c
    rst $38
    ld [$ecec], a
    cp d
    inc de
    nop
    rst $38
    inc [hl]
    nop
    ld h, c
    db $dd
    reti


    jr nz, jr_005_7610

    ld [c], a
    ei

jr_005_7610:
    db $e3
    db $e3
    ld b, b
    inc bc
    db $ed
    db $ec
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    jp c, $ffde

    rst $38
    db $db
    db $db
    inc [hl]
    nop
    ld a, c
    ld h, e
    dec bc
    nop
    jr nz, jr_005_7629

jr_005_7629:
    and $e3
    pop hl
    rst $20
    ld b, b
    ld bc, $79d7
    rst $38
    db $ec
    ld a, [de]
    nop
    rst $38
    ld a, d
    nop
    rst $38
    ld d, l
    ld sp, hl
    nop
    ld [hl], h
    ld [bc], a
    dec bc
    nop
    and l
    ld h, c
    ld [c], a
    db $e3
    pop hl
    ei
    xor $e1
    jr nz, jr_005_764a

jr_005_764a:
    add sp, -$01
    rst $38
    db $ec
    ld bc, $a9f0
    nop
    ld a, d
    ld bc, $0474
    dec bc
    nop
    and l
    ld h, c
    and $e7
    rst $20
    xor $e1
    pop hl
    ret nz

    ld bc, $02ad
    ld d, l
    nop
    ld d, l
    ld c, a
    nop
    nop
    rst $38
    rst $38
    rlca
    ld bc, $020b
    and a
    or c
    nop
    ei
    xor $ef
    jr nz, jr_005_7678

jr_005_7678:
    rst $28
    db $ec
    db $ec
    rst $18
    and l
    ld a, a
    sbc $a5
    rst $38
    and l
    db $db
    reti


    and l
    ld a, [hl-]
    nop
    rst $20
    and l
    reti


    sbc $0b
    nop
    add l
    ld bc, $e7eb
    pop hl
    xor $40
    ld bc, $afef
    rst $38
    jr nz, @+$04

    and a
    call c, $26da
    jr nz, @+$04

    jp c, $0bdf

    nop
    add l
    ld [bc], a
    db $eb
    ld h, b
    ld [bc], a
    push de
    nop
    inc l
    ld a, $01
    ld a, d
    nop
    reti


    and a
    ld b, b
    ld [bc], a
    ldh [$ff85], a
    inc bc
    ld l, b
    inc bc
    di
    rst $38
    rst $38
    dec b
    ld bc, $0220
    ld [c], a
    rst $20
    db $e4
    push hl
    ld hl, sp+$40

Jump_005_76c6:
    ld bc, $013b
    inc d
    nop
    db $dd
    and l
    rst $18
    and l
    and $bf
    xor $ff
    rst $38
    call $ffd8
    jr nz, @+$05

    and $87
    xor $ef
    db $ec
    ld b, b
    ld bc, $02e0
    pop af
    nop
    jr nz, jr_005_76e6

jr_005_76e6:
    db $db
    cpl
    db $eb
    rst $38
    rst $38
    adc $0f
    nop
    and a
    ld [bc], a
    nop
    ld d, b
    inc b
    ld sp, $06a5
    ld [bc], a
    add l
    nop
    dec [hl]
    ld bc, $cddc
    jr nz, jr_005_7702

    ld bc, $8701

jr_005_7702:
    ld h, c
    db $dd
    db $db
    xor c
    nop
    ld b, b
    nop
    ld c, l
    ld bc, $0185
    and a
    scf
    rst $38
    and l
    db $dd
    dec e
    nop
    adc $d8
    jr nz, jr_005_771c

    sbc h
    db $10
    ld a, d
    inc [hl]

jr_005_771c:
    ld bc, $ebda
    ld bc, $e2da
    db $e3
    db $ed
    ld c, $00
    ld d, e
    ld d, e
    rst $38
    and b
    ld [bc], a
    ld [bc], a
    nop
    dec bc
    jr nz, jr_005_7730

jr_005_7730:
    db $dd
    jr nz, jr_005_7734

    dec [hl]

jr_005_7734:
    and a
    ld b, b
    ld bc, $3cdc
    db $10
    db $e4
    db $ed
    sub l
    ld bc, $0040
    ccf
    push de
    sub $61
    rst $38
    and l
    inc e
    jr nz, jr_005_7749

jr_005_7749:
    sbc $01
    ld e, e
    rst $38
    db $db
    ld b, b
    ld bc, $e6dd
    ei
    nop
    db $ed
    add b
    inc bc
    dec c
    call $015b
    and l
    inc e
    ld e, b
    inc d
    inc d
    jr nz, jr_005_7782

    nop
    cp d
    db $10
    ld e, $f7
    db $10
    db $ed
    and a
    rst $10
    adc $a0
    ld [bc], a
    jr nz, jr_005_7770

jr_005_7770:
    inc b
    ld b, $59
    db $dd
    ld b, b
    ld bc, $00cd
    nop
    pop hl
    ld c, $21
    call $1200

Call_005_777f:
    ld hl, sp+$20
    add hl, bc

jr_005_7782:
    and [hl]
    ld de, $00c0
    and l
    ld [$e8e9], a
    db $ed
    call nc, $023d
    ld b, b
    inc c
    ld h, c
    ret nz

    inc bc
    and l
    ld h, b
    ld d, $ed
    push hl
    cp b
    jr nz, jr_005_77a6

    ret nz

    ld [bc], a
    dec b
    nop
    jp c, $07ff

    sbc l
    ld [bc], a
    rst $28
    and a

jr_005_77a6:
    db $ec
    db $ed
    ld h, c
    inc c
    db $10
    inc b
    dec b
    ld h, e
    dec de
    nop
    and a
    rst $30
    ld [c], a
    push hl
    and a
    adc b
    jr nz, jr_005_77bf

    rst $38
    ldh a, [$f0]
    ld [$2160], a
    db $ed

jr_005_77bf:
    ld a, h
    jr nz, @+$01

    inc b
    inc bc
    ld h, l
    rst $38
    db $db
    inc l
    add $10
    sbc $00
    db $e4
    push hl
    ld b, b
    nop
    ldh a, [$60]
    ld [hl+], a
    adc c
    ld bc, $29ec
    ld bc, $11c2
    rst $38
    rst $38
    rla
    db $10
    and $e3
    xor $bd
    add sp, $0c
    ld sp, $f107
    sbc [hl]
    rst $38
    jr nz, jr_005_781f

    daa
    reti


    pop af
    ld [hl+], a
    nop
    jr jr_005_77f2

jr_005_77f2:
    dec bc
    dec bc
    ld l, a
    nop
    rst $38
    ld [$e7f7], a
    pop hl
    rst $28
    dec [hl]
    nop
    rlca
    xor $ff
    rst $38
    halt
    add b
    inc h
    daa
    dec b
    ld bc, $1c03
    inc e
    ld [bc], a
    ld bc, $030b
    rst $38
    rst $38
    sbc l
    add sp, -$26
    or [hl]
    dec e
    db $db
    or [hl]
    inc h
    db $db
    or [hl]
    sub b
    db $db
    sbc l
    sbc b

jr_005_781f:
    db $db
    and d
    and $db
    or [hl]
    scf
    call c, $767f
    db $dd
    and d
    xor b
    db $dd
    nop
    ld bc, $1e08
    ret z

    nop
    ld [bc], a
    nop
    inc bc
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
    ld [de], a
    add [hl]
    ld l, b
    push de
    ld a, a
    push de
    ld h, b
    push de
    ld a, b
    add h
    ld a, a
    sub b
    db $dd
    ld bc, $e93c
    rst $38
    ld bc, $010f
    ld a, [bc]
    push hl
    rlca
    inc bc
    and $e7
    xor $37
    rst $28
    add sp, -$13
    jr @+$0a

    db $f4
    push af
    ld [$1403], sp
    nop
    rst $38
    call $d0cf
    rst $38
    ld [c], a
    rst $20
    xor $ee
    db $db
    add sp, -$1c
    dec l
    ld bc, $cecd
    rrca
    nop
    rst $38
    rst $38
    db $eb
    or $f7
    jr nz, jr_005_7886

    rst $28
    dec [hl]
    ld [bc], a

jr_005_7886:
    ld [c], a
    db $e3
    xor $ff
    pop hl
    rst $28
    pop hl
    rst $28
    ld a, c
    rst $38
    call Call_005_7ed0
    ld d, $02
    call $f8cf
    pop hl
    rst $38
    sbc [hl]
    ld a, [bc]
    ld bc, $eefb
    jp hl


    ld e, a
    ld [bc], a
    xor $e7
    pop hl
    pop hl
    rst $28
    cp l
    add sp, $5f
    rlca
    jp nc, $e1e1

    db $d3
    add hl, bc
    ld [bc], a
    ld [bc], a
    cp [hl]
    ld bc, $2703
    rst $28
    pop hl
    ld d, l
    nop
    ld [bc], a
    ld bc, $a7ff
    rst $38
    ld [hl+], a
    ld a, [bc]
    ld bc, $0e03
    inc bc
    dec bc
    ld e, l
    ld bc, $b7e7
    rst $20
    xor $e1
    ld b, b
    nop
    inc l
    add sp, $4d
    ld bc, $be0b
    inc de
    nop
    rst $38
    call nc, $e1e1
    push de
    ld b, b
    ld [bc], a
    inc e
    ld d, [hl]
    cp h
    ld [bc], a
    xor $ef
    jr nz, jr_005_78e6

jr_005_78e6:
    pop hl
    adc l
    inc bc
    inc e
    inc de
    nop
    ld e, a
    rst $38
    sub $e1
    pop hl
    rst $10
    jr nz, jr_005_78f6

    dec bc
    sbc h

jr_005_78f6:
    ld bc, $3f6e
    ld [bc], a
    pop hl
    xor $07
    xor h
    ld [bc], a
    dec bc
    add hl, hl
    dec b
    nop
    ld e, a
    ret c

    pop hl
    pop hl
    reti


    ld a, [de]
    ld b, b
    ld [bc], a
    ld [c], a
    ld [hl], b
    ld [bc], a
    rst $38
    ld [hl+], a
    pop hl
    xor $21
    add hl, bc
    add hl, bc
    add hl, bc
    ld hl, $12c4
    nop
    rra
    ld bc, $4fda
    ld [bc], a
    ld l, $02
    ld e, [hl]
    nop
    rst $20
    pop hl
    push bc
    rlca
    ld a, a
    ld bc, $c1e8
    ld b, $1f
    nop
    xor [hl]
    dec b
    inc e
    rst $38
    reti


    ld [$103b], a
    jr nz, jr_005_7938

jr_005_7938:
    xor $ef
    ld b, c
    ld d, $da
    ld d, e
    dec hl
    rst $38
    pop hl
    inc sp
    ld [bc], a
    db $db
    ret nz

    ld [bc], a
    ld [$015a], a
    ld e, h
    nop
    ld c, e
    pop hl
    rst $28
    rra
    inc bc
    dec bc
    ld e, d
    nop
    jr nz, jr_005_7958

    pop hl
    ret nz

    dec b

jr_005_7958:
    ld [hl], d
    cp a
    nop
    inc l
    ld h, d
    nop
    add hl, hl
    ld [bc], a
    dec bc
    inc e
    nop
    ld e, l
    inc bc
    sub e
    pop hl
    xor e
    ret nz

    ld [bc], a
    ld b, c
    nop
    db $eb
    dec hl
    ld bc, $0283
    add sp, -$61
    call c, $1cdd
    dec bc
    pop hl
    ld a, $06
    ld b, b
    nop

Jump_005_797c:
    ld h, $f6
    ld bc, $0b00
    rst $20
    ld [de], a
    inc bc
    add sp, -$11
    db $ec
    pop hl
    or a
    pop hl
    dec bc
    inc e
    jr nz, jr_005_7993

    db $e3
    db $e4
    ld h, b
    inc d
    daa

jr_005_7993:
    ei
    pop hl
    pop hl
    sbc $02
    rst $28
    db $ec
    db $ec
    ldh [$ffe0], a
    and a
    inc e
    ld d, l
    nop
    ld [bc], a
    ld b, $00
    ld de, $1ee3
    inc de
    pop hl
    sub l
    inc l
    ld a, $00
    rst $38
    ld [hl], d
    inc b
    rst $38
    halt
    inc de
    or c
    nop
    dec bc
    or a
    db $e3
    rst $20
    pop hl
    ld bc, $ff03
    pop hl
    ld a, [hl]
    ld de, $bcaf
    or d
    ld bc, $011e
    ld h, l
    rst $38
    pop hl
    xor $c0
    ld bc, $7dee
    pop hl
    ccf
    inc bc
    pop hl
    rlca
    rst $28
    rst $28
    push hl
    ld b, b
    ld b, $d3
    and $e7
    ei
    db $10
    pop af
    ld bc, $010a
    rlca
    ld [hl+], a
    db $ec
    push bc
    db $ec
    or d
    inc d
    rst $38
    ld [hl], l
    dec b
    add hl, bc
    ld de, $0501
    rst $28
    add sp, -$5d
    push hl
    rst $38
    add h
    dec d
    inc de
    db $10
    ld d, a
    ld bc, $20e7
    add hl, bc
    pop hl
    ld e, d
    add b
    ld [bc], a
    rlca
    sbc l
    ld [bc], a
    ld [$40eb], a
    ld bc, $20ee
    dec bc
    reti


    rst $28
    jr nz, jr_005_7a16

    ld [hl+], a
    ld bc, $eeeb
    ld h, b
    dec bc
    pop hl

jr_005_7a16:
    pop hl
    and d
    ret nz

    ld hl, $de07
    rlca
    ret nz

    ld [bc], a
    add b
    add hl, bc
    rst $28
    ld hl, $0700
    rst $00
    rst $38
    ld bc, $9f27
    ld [bc], a
    add c
    nop
    nop
    ld de, $0201
    call c, $0a01
    rrca
    ld bc, $ff27
    and $16
    inc b
    daa
    rst $38
    inc sp
    rst $38
    ld h, $01
    rrca
    ld bc, $ff08
    rst $38
    xor b
    rst $10
    jp c, $bb80

    db $db
    add b
    ld a, $dc
    and d
    adc h
    db $dd
    ld a, a
    sub b
    db $dd
    nop
    nop
    dec de
    ld c, $c8

Call_005_7a5a:
    nop
    nop
    nop
    ld l, l
    ld bc, $0f01
    ld bc, $01ff
    ld [$2701], sp
    ld [bc], a
    inc bc
    rst $08
    rlca
    rst $38
    rlca
    daa
    inc c
    dec b
    jr nz, jr_005_7a7b

    dec bc
    pop hl
    ccf
    pop hl
    pop hl
    xor $e8
    db $ed
    rst $38

jr_005_7a7b:
    jr nz, jr_005_7a7d

jr_005_7a7d:
    rrca
    ld bc, $e65f
    xor $e1
    pop hl
    dec bc
    jr nz, jr_005_7a90

    inc e
    jr nz, jr_005_7a8a

jr_005_7a8a:
    rst $30
    rst $28
    jp hl


    rst $38
    jr nz, jr_005_7a96

jr_005_7a90:
    rst $20
    xor $e1
    inc e
    cp b
    ld b, b

jr_005_7a96:
    inc c
    ccf
    ld bc, $0520
    rst $38
    ld [$40ee], a
    inc c
    rst $28
    or a
    add sp, $55
    nop
    ld [bc], a
    add hl, bc
    db $eb
    rst $28
    ld b, b
    dec bc
    add sp, -$01
    db $ec
    ld h, c
    rst $38
    and l
    di
    db $f4
    db $f4
    di
    ld l, a
    db $f4
    di
    di
    db $f4
    dec bc
    nop
    ld [$40e7], a
    dec bc
    ei
    db $ec
    rst $38
    dec d
    nop
    push af
    or $f6
    push af
    or $b7
    push af
    push af
    or $0b
    nop
    rst $38
    db $eb
    ld b, b
    dec bc
    rst $38
    cp $20
    ld bc, $f8f7
    ld hl, sp-$09
    ld hl, sp-$09
    rst $30
    dec [hl]
    ld hl, sp+$20
    ld bc, $40ff
    dec bc
    ld bc, $1527
    nop
    ld a, l
    dec b
    ld [hl], $0b
    nop
    ld bc, $4027
    dec bc
    rst $30
    db $f4
    dec [hl]
    ld [bc], a
    ld bc, $6203
    adc e
    ld bc, $40f3
    dec bc
    ld [hl], l
    inc bc
    jr nz, jr_005_7b0a

    push af
    push af
    ld b, b
    inc c
    call $20f8

jr_005_7b0a:
    dec bc
    rst $30
    rst $30
    ld b, b
    rrca
    jr nz, jr_005_7b11

jr_005_7b11:
    ld [c], a
    db $e3
    sub e
    db $e4
    push hl
    ld b, b
    rrca
    ld b, b
    ld [bc], a
    ld h, e
    jr nz, jr_005_7b1d

jr_005_7b1d:
    ld e, b
    db $10
    rst $28
    db $eb
    add sp, -$17
    jr nz, jr_005_7b25

jr_005_7b25:
    and a
    ld b, b
    rrca
    db $e4
    push hl
    and a
    rst $38
    rst $38
    ld [c], a
    rst $20
    ld d, l
    nop
    add sp, -$1b
    rst $38
    ld h, a
    ld h, e
    ld [c], a
    db $e3
    ld b, b
    rrca
    jr c, jr_005_7b3c

jr_005_7b3c:
    ld d, l
    nop
    cp b
    db $10
    rst $00
    rst $28
    ld d, l
    nop
    ld c, b
    nop
    ld b, b
    dec c
    rst $30
    ld bc, $e5e4
    rst $38
    and $e7
    pop hl
    pop hl
    add sp, -$17
    ld [c], a
    db $e3
    nop
    ld c, $01
    ld b, b
    ld a, [bc]
    jp nz, $dac0

    cp [hl]
    dec e
    db $db
    ld a, a
    ld e, $dc
    nop
    nop
    inc c
    ld d, $64
    nop
    nop
    nop
    dec l
    daa
    ld bc, $270f
    rst $38
    ld bc, $5608
    ld bc, $0c04
    dec c
    ld hl, sp+$24
    dec c
    ld [$2009], sp
    rrca
    ld d, [hl]
    ld d, [hl]
    push de
    sbc [hl]
    rst $38
    ld a, l
    ret c

    jr nz, jr_005_7b97

    rst $38
    rst $38
    sub $d7
    ret c

    jr nz, jr_005_7b91

    rst $28
    reti


jr_005_7b91:
    rst $38
    rst $38
    jp c, $0220

    push de

jr_005_7b97:
    ret c

    push de
    or $20
    add hl, bc
    ld b, e
    ld b, e
    sbc d
    add hl, bc
    ld d, l
    nop
    ld d, l
    nop
    ei
    ld b, e
    ld b, e
    jr nz, @+$0b

    ret nc

    call $d0ce
    call $5afa
    ld bc, $47c4
    ld bc, $ced5
    rlca
    call $fdce
    rst $08
    jr nz, jr_005_7bc6

    ld d, e
    rst $38
    jp nc, $d1d4

    jp c, Jump_005_797c

    ld [bc], a

jr_005_7bc6:
    ld h, [hl]
    ld bc, $07d2
    pop de
    jp nc, $82d3

Call_005_7bce:
    dec bc
    db $f4
    ld b, d
    nop
    ld b, b
    ld bc, $25d9
    ld bc, $d0d5

Jump_005_7bd9:
    rlca
    rst $08
    ld c, e
    ret nc

    call $091e
    jp nc, $0375

    add l
    add hl, bc
    pop de
    ld a, $0c
    ld l, a
    rst $08
    ret nc

    rlca
    ret c

    add hl, de
    inc de
    rst $30
    ld hl, sp+$3e
    nop
    db $fd
    xor a
    add b
    ld a, [bc]
    ld h, l
    rst $38
    jp nc, $dad3

    rlca
    db $fd
    jp c, $0320

    ldh a, [$f1]
    db $d3
    call nc, $ffd1
    ld l, [hl]
    add b
    inc c
    ret c

    rst $38
    rst $38
    ld b, b
    dec b
    ld a, [c]
    di
    ld c, [hl]
    ld bc, $80ac
    ld a, [bc]
    ld [hl], b
    nop
    ld d, [hl]
    ld d, [hl]
    ld bc, $271b
    add b
    dec c
    ret c

    ld a, e
    push de
    adc $fe
    ld bc, $d0d5
    ld a, [c]
    di
    adc h
    nop
    cp d
    nop
    dec de
    call nc, $00f0
    ld a, c
    rst $38
    jp nc, $01fe

    reti


    push bc
    call nc, $0180
    rlca
    nop
    dec de
    ld [hl], b
    inc bc
    ld b, e
    ld [de], a
    push de
    adc $df
    db $f4
    or $cd
    adc $07
    add b
    dec bc
    ld bc, $0002
    ld [bc], a
    rrca
    jr nz, jr_005_7c5c

    ld a, a
    ld d, [hl]
    call c, $ff00
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_7c5c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7d07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_005_7d0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7d54:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7ed0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_005_7ee0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7f02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_005_7fdb:
    rst $38

Jump_005_7fdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
