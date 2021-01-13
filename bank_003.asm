; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

Call_03_4000:
    jp Jump_003_76eb

Call_03_4003:
    call Call_003_45a9
    call Call_003_7739
    jp Jump_003_481e


    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_4010:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $0c
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Jump_003_4022:
    inc de
    ld a, [$c83c]
    cp $02
    jr nz, jr_003_403c

    push hl
    ld hl, $c83f
    ld a, [hl+]
    ld b, [hl]
    ld c, $05
    add c
    ld c, a
    pop hl
    ld a, [de]
    ld [bc], a
    inc bc
    inc de
    ld a, [de]
    ld [bc], a
    inc de

jr_003_403c:
    ld a, l
    add $16
    ld l, a
    ld a, [de]
    ld c, a
    and $c0
    ld [hl], a
    ld a, l
    sub $14
    ld l, a
    ld a, c
    and $3f
    ld c, [hl]
    or c
    ld [hl], a
    ld a, l
    add $03
    ld l, a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, [$c841]
    ld l, a
    inc de
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_003_4062:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $06
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Jump_003_4074:
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $18
    ld l, a
    ld a, $08
    ld [hl+], a
    inc l
    ld a, $80
    ld [hl], a
    ld a, l
    sub $17
    ld l, a
    ld a, [hl]
    and $3f
    ld [hl], a
    ld a, l
    add $05
    ld l, a
    ld e, [hl]
    ld a, l
    sub $06
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    ret


Jump_003_4098:
    ld a, [de]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ld e, a
    ld a, [$c83c]
    cp $03
    jp z, Jump_003_4102

    ld a, e
    and $01
    ld c, a
    ld a, e
    and $fe
    ld e, a
    ld d, $00
    ld hl, $43b0
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    ld a, [hl]
    and $01
    jr z, jr_003_40c8

    dec de
    dec de

jr_003_40c8:
    ld a, l
    add $16
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, l
    sub $17
    ld l, a
    ld a, c
    and $01
    jr z, jr_003_40f5

    push hl
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld c, $00
    ld a, l
    add $08
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_003_40ef

    ld c, $40
    inc l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_003_40ef:
    pop hl
    ld a, [hl]
    or $80
    or c
    ld [hl], a

jr_003_40f5:
    ld a, l
    add $05
    ld l, a
    ld e, [hl]
    ld a, l
    sub $06
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a

Jump_003_4101:
    ret


Jump_003_4102:
    ld d, $00
    dec e
    sla e
    rl d
    sla e
    rl d
    ld hl, $445c
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    ld a, [hl]
    or $80
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld e, [hl]
    ld a, l
    sub $06
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    ret


Jump_003_4131:
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $08
    ld l, a
    ld e, [hl]
    ld a, l
    sub $06
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    ret


Jump_003_4142:
    ld a, l
    add $07
    ld l, a
    ld c, [hl]
    ld a, l
    sub $06

Jump_003_414a:
    ld l, a
    ld a, [hl]
    add c
    ret c

    ret z

    cp $ef
    ret nc

    ld [hl], a
    inc de
    ld a, l
    sub $01
    ld l, a
    ld [hl], d
    dec l
    ld [hl], e
    ret


Jump_003_415c:
    ld a, l
    add $01
    ld l, a
    inc de
    ld a, [de]
    ld b, [hl]
    add b
    ld [hl], a
    ld a, l
    add $13
    ld l, a
    inc de
    ld a, [de]
    push af
    ld b, a
    ld c, $06

jr_003_416f:
    dec c
    jr z, jr_003_417c

    inc hl
    srl b
    jr nc, jr_003_416f

    inc de
    ld a, [de]
    ld [hl], a
    jr jr_003_416f

jr_003_417c:
    push hl
    ld hl, $c83f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc l
    inc l
    srl b
    jr nc, jr_003_418c

    inc de
    ld a, [de]
    ld [hl], a

jr_003_418c:
    inc l
    srl b
    jr nc, jr_003_4194

    inc de
    ld a, [de]
    ld [hl], a

jr_003_4194:
    srl b
    jr nc, jr_003_41a0

    inc l
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a

jr_003_41a0:
    pop hl
    pop af
    and $84
    jr z, jr_003_41aa

    ld a, [hl]
    or $80
    ld [hl], a

jr_003_41aa:
    ld c, $00
    ld a, [$c841]
    add $0d
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_003_41b8

    ld c, $40

jr_003_41b8:
    ld a, [$c841]
    add $03
    ld l, a
    ld a, [hl]
    and $7f
    or c
    ld [hl], a
    ld a, l
    add $0b
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c841]
    ld l, a
    inc de
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_003_41d5:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld [bc], a
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ret


Jump_003_41e3:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld [hl], d
    dec l
    ld [hl], e

Jump_003_41ed:
    ld hl, $c83f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Jump_003_41f7:
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $03
    ld l, a
    xor a
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_003_4209:
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    and $0f
    ld e, a
    ld d, $00
    ld hl, $c83f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, [hl]
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $08
    ld l, a
    ld [hl], e
    ret


Jump_003_4229:
    ld a, l
    add $08
    ld l, a
    dec [hl]
    jr nz, jr_003_4233

    inc de
    jr jr_003_4237

jr_003_4233:
    inc l
    ld e, [hl]
    inc l
    ld d, [hl]

jr_003_4237:
    ld a, [$c841]
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_003_423f:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $09
    ld l, a
    ld [hl], c
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_003_4250:
    xor a
    ld [bc], a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $02
    ld l, a
    ld [hl], c
    ret


Jump_003_425f:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld [hl], a
    dec l
    ld [hl], c
    ret


Call_003_4268:
    ld a, l
    add $0d
    ld l, a
    ld a, [hl]
    and a
    jp nz, Jump_003_430f

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_003_42d9

    push hl
    dec l
    dec l
    dec l
    ld a, [hl]
    inc [hl]
    sla a
    sla a
    ld e, a
    dec l
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld d, $00
    add hl, de
    pop de
    ld a, [hl+]
    ld [de], a
    cp $ff
    jr z, jr_003_42ca

    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push de
    ld a, [hl]
    and a
    jr z, jr_003_42c7

    and $7f
    ld b, a
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $19
    ld l, a
    ld a, [hl+]
    and $f0
    swap a
    ld e, a
    ld a, [hl]
    and $07
    swap a
    or e
    ld e, a
    ld a, $7f
    sub e
    srl a
    srl a
    jr nz, jr_003_42c0

    ld a, $01

jr_003_42c0:
    ld d, a

jr_003_42c1:
    dec b
    jr z, jr_003_42c7

    add d
    jr jr_003_42c1

jr_003_42c7:
    pop hl
    ld [hl], a
    ret


jr_003_42ca:
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    ld a, [hl]
    and $bf
    ld [hl], a
    ret


jr_003_42d9:
    dec l
    dec l
    dec l
    ld a, [hl]
    xor $80
    ld [hl], a
    ld e, a
    ld a, l
    add $06
    ld l, a
    push hl
    bit 7, e
    jr z, jr_003_42eb

    dec hl

jr_003_42eb:
    dec hl
    ld b, [hl]
    pop hl
    ld a, [hl]
    bit 7, b
    jr nz, jr_003_42f9

    bit 7, a
    jr z, jr_003_42ff

    jr jr_003_42fd

jr_003_42f9:
    bit 7, a
    jr nz, jr_003_42ff

jr_003_42fd:
    cpl
    inc a

jr_003_42ff:
    ld [hl], a
    ld a, l
    sub $04
    ld l, a
    ld a, b
    and $7f
    ld [hl], a
    inc hl
    bit 7, e
    jr nz, jr_003_430e

    dec [hl]

jr_003_430e:
    dec hl

Jump_003_430f:
    dec [hl]
    ld a, l
    add $04
    ld l, a
    ld c, [hl]
    ld b, $00
    bit 7, c
    jr z, jr_003_431d

    ld b, $ff

jr_003_431d:
    add $05
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld b, h
    pop hl
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_003_432c:
    ld a, [$c83c]
    cp $03
    jr z, jr_003_438f

    push hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld b, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, c
    ld c, $ff
    ld d, c
    ld a, [hl+]
    inc b
    cp $fd
    jr nz, jr_003_434c

    ld c, [hl]
    inc b
    inc hl
    ld a, [hl+]
    inc b

jr_003_434c:
    cp $fe
    jr nz, jr_003_4372

    ld a, [$c83c]
    cp $02
    jr nz, jr_003_436d

    push hl
    ld hl, $c83f
    ld a, [hl+]
    ld d, [hl]
    ld e, $05
    add e
    ld e, a
    pop hl
    ld a, [hl+]
    inc b
    ld [de], a
    inc de
    ld a, [hl+]
    inc b
    ld [de], a
    ld d, $ff
    jr jr_003_4370

jr_003_436d:
    ld d, [hl]
    inc b
    inc hl

jr_003_4370:
    ld a, [hl+]
    inc b

jr_003_4372:
    ld e, [hl]
    inc b
    pop hl
    ld [hl+], a
    ld [hl], b
    ld a, l
    add $11
    ld l, a
    ld a, $ff
    cp c
    jr z, jr_003_4381

    ld [hl], c

jr_003_4381:
    inc hl
    cp d
    jr z, jr_003_4386

    ld [hl], d

jr_003_4386:
    inc hl
    ld [hl], e
    inc hl
    inc hl
    ld a, [hl]
    or $80
    ld [hl], a
    ret


jr_003_438f:
    push hl
    inc hl
    ld a, [hl+]
    sla a
    sla a
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [hl+], a
    inc [hl]
    ld a, l
    add $13
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    ret


    nop
    nop
    inc l
    nop
    sbc h
    nop
    ld b, $01
    ld l, e
    ld bc, $01c9
    inc hl
    ld [bc], a
    ld [hl], a
    ld [bc], a
    add $02
    ld [de], a
    inc bc
    ld d, [hl]
    inc bc
    sbc e
    inc bc
    jp c, $1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    ld a, [bc]
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca

jr_003_4414:
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    call nz, $c807
    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    rst $38
    ld [$8000], sp
    ld bc, $5ef1
    add b
    rst $38
    inc h
    ld l, [hl]
    add b
    ld bc, $5ec1
    add b
    rst $38
    inc h
    ld l, [hl]
    add b
    ld bc, $5e08
    add b
    ld bc, $5ee1
    add b
    rst $38
    inc h
    ld l, [hl]
    add b
    ld [bc], a
    ld [$805e], sp
    ld bc, $5ee1
    add b
    rst $38
    inc h
    ld l, [hl]
    add b
    ld [bc], a
    ld [$803f], sp
    inc b
    and c
    ccf
    add b
    rst $38
    ld b, [hl]
    jr nz, jr_003_4414

    inc b
    add c
    ccf
    add b
    rst $38
    ld h, $20
    add b
    ld bc, $0008
    add b
    inc b
    add c
    ccf
    add b
    rst $38
    ld h, $20
    add b
    inc b
    ld h, c
    ccf
    add b
    rst $38
    ld h, $10
    add b
    ld [bc], a
    ld h, c
    ccf
    add b
    rst $38
    ld h, $10
    add b
    ld bc, $2d41
    add b
    rst $38
    inc h
    db $10
    add b
    ld bc, $05b1
    add b
    ld [bc], a
    ld h, c
    inc b
    add b
    rst $38
    ld [$8000], sp
    rst $38
    ld h, c
    inc b
    add b
    ld bc, $0008
    add b
    rst $38
    ld h, c
    inc b
    add b
    ld [bc], a
    ld [$8000], sp
    rst $38
    ld h, c
    inc b
    add b
    rst $38
    ld b, c
    dec b
    add b
    ld bc, $0008
    add b
    rst $38
    ld b, c
    dec b
    add b
    ld [bc], a
    ld [$8000], sp
    rst $38
    ld b, c
    dec b
    add b
    ld bc, $0571
    add b
    rst $38
    ld b, d
    inc b
    add b
    rrca
    jp nc, $8011

    rst $38

Jump_003_4501:
    ld [$8000], sp
    rrca
    and e
    ld b, d
    add b
    rst $38
    ld [$8000], sp
    jr nz, @+$4f

    nop
    add b
    rst $38
    and h
    ld bc, $0280
    xor b
    ld a, [bc]
    add b
    rst $38
    add h
    add hl, bc
    add b
    ld [bc], a
    ld c, b
    ld d, c
    add b
    ld [bc], a
    ld c, b
    ld b, d
    add b
    ld [bc], a
    ld c, b
    ld b, c
    add b
    rst $38
    ld c, b
    ld d, b
    add b
    ld bc, $0402
    ld [$2010], sp
    inc bc
    ld b, $0c
    jr jr_003_4538

    inc bc

jr_003_4538:
    dec b
    ld a, [bc]
    rlca
    add hl, bc
    ld bc, $0603
    inc c
    jr jr_003_4572

    inc b
    add hl, bc
    ld [de], a

Jump_003_4545:
    inc h
    ld [bc], a
    inc b
    ld [$0510], sp
    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    ld b, $0c
    jr jr_003_4585

    inc bc
    dec b
    dec bc
    dec d
    ld [bc], a
    ld b, $0a
    inc bc
    dec b
    ld a, [bc]
    inc d
    jr z, jr_003_45b2

    ld [$1e0f], sp
    inc a
    inc bc
    rlca
    dec c
    dec de
    inc b
    ld b, $0e
    inc bc
    ld b, $0c
    jr jr_003_45a2

jr_003_4572:
    ld h, b
    add hl, bc
    ld [de], a
    inc h
    ld c, b
    inc b
    ld [$2010], sp
    inc b
    ld [$0603], sp
    dec c
    ld a, [de]
    inc [hl]
    ld l, b
    rlca
    inc de

jr_003_4585:
    daa
    ld c, [hl]
    inc bc
    rlca
    ld c, $1c
    jr c, jr_003_45fd

    ld a, [bc]
    dec d
    ld a, [hl+]
    ld d, h
    inc b
    add hl, bc
    ld [de], a
    dec h
    ld b, $0a
    inc d
    inc b
    ld [$2010], sp
    ld b, b
    add b
    inc c
    jr @+$32

    ld h, b

jr_003_45a2:
    dec b
    ld a, [bc]
    dec d
    jr z, @+$08

    inc c
    db $16

Call_003_45a9:
    ld a, [$c838]
    cp $80
    ret z

    ld a, [$c836]

jr_003_45b2:
    and a
    jr nz, jr_003_45c8

    ld a, [$c837]
    and a
    ret z

    cp $29
    ret nc

    ld hl, $c83f
    ld [hl], $07
    inc l
    ld [hl], $df
    jp Jump_003_4632


jr_003_45c8:
    cp $80
    jr nz, jr_003_45d6

    xor a
    ld [$c836], a
    ld [$c837], a
    jp Jump_003_47ad


jr_003_45d6:
    cp $29
    ret nc

    ld [$c837], a
    xor a
    ld [$c836], a
    ld hl, $c83f
    ld [hl], $07
    inc l
    ld [hl], $df
    call Call_003_47ad
    ld a, [$c837]
    dec a
    jp Jump_003_45f2


Jump_003_45f2:
    ld hl, $48f1
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl

jr_003_45fd:
    ld d, [hl]
    ld hl, $df07
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld hl, $df12
    ld c, $08

jr_003_460c:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_003_460c

    ld hl, $c841
    ld [hl], $86
    inc hl
    ld [hl], $df
    xor a

jr_003_461b:
    ld [$c83c], a
    call Call_003_46e5
    ld a, [$c841]
    add $1b
    ld [$c841], a
    ld a, [$c83c]
    inc a
    cp $04
    ret z

    jr jr_003_461b

Jump_003_4632:
    xor a
    ld [$c83c], a
    ld a, [$df13]
    and a
    jp z, Jump_003_46d8

    ld hl, $c841
    ld [hl], $86
    inc hl
    ld [hl], $df
    ld hl, $df88
    ld bc, $c84d
    jr jr_003_4694

Jump_003_464d:
    ld hl, $c841
    ld [$c83c], a
    cp $02
    jr z, jr_003_466f

    cp $03
    jr z, jr_003_4683

    ld a, [$df15]
    and a
    jp z, Jump_003_46d8

    ld [hl], $a1
    inc hl
    ld [hl], $df
    ld hl, $dfa3
    ld bc, $c84e
    jr jr_003_4694

jr_003_466f:
    ld a, [$df17]
    and a
    jp z, Jump_003_46d8

    ld [hl], $bc
    inc hl
    ld [hl], $df
    ld hl, $dfbe
    ld bc, $c84f
    jr jr_003_4694

jr_003_4683:
    ld a, [$df19]
    and a
    jr z, jr_003_46d8

    ld [hl], $d7
    inc hl
    ld [hl], $df
    ld hl, $dfd9
    ld bc, $c850

jr_003_4694:
    ld a, [hl]
    and a
    jr z, jr_003_469c

    cp $f0
    jr c, jr_003_46a4

jr_003_469c:
    push hl
    call Call_003_4730
    pop hl
    dec [hl]
    jr jr_003_46d8

jr_003_46a4:
    dec [hl]
    inc l
    ld a, [hl]
    and $40
    jr z, jr_003_46b3

    ld a, $01
    ld [bc], a
    push hl
    call Call_003_4268
    pop hl

jr_003_46b3:
    ld a, [hl]
    and $80
    jr z, jr_003_46d8

    inc l
    ld a, [hl]
    and a
    jr z, jr_003_46cb

    cp $ff
    jr z, jr_003_46c4

    dec [hl]
    jr jr_003_46d8

jr_003_46c4:
    dec l
    ld a, [hl]
    and $7f
    ld [hl], a
    jr jr_003_46d8

jr_003_46cb:
    call Call_003_432c
    ld hl, $c84d
    ld a, [$c83c]
    add l
    ld l, a
    ld [hl], $01

Jump_003_46d8:
jr_003_46d8:
    ld a, [$c83c]
    inc a
    cp $04
    ret z

    jp Jump_003_464d


Jump_003_46e2:
    ld a, $00
    ld [bc], a

Call_003_46e5:
Jump_003_46e5:
    ld a, [$c83c]
    sla a
    ld hl, $df12
    add l
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    dec l
    xor a
    cp d
    ret z

jr_003_46f6:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec de
    xor a
    cp b
    jr z, jr_003_4714

    ld a, $ff
    cp b
    jr z, jr_003_4726

    inc de
    inc de
    ld [hl], e
    inc l
    ld [hl], d
    ld a, [$c841]
    ld l, a
    ld a, [$c842]
    ld h, a
    jr jr_003_4722

jr_003_4714:
    push hl
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    xor a
    ld [hl], a
    pop hl

jr_003_4722:
    ld [hl], c
    inc l
    ld [hl], b
    ret


jr_003_4726:
    inc de
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    jr jr_003_46f6

Call_003_4730:
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [de]
    cp $00
    jp z, Jump_003_46e2

    cp $01
    jp z, Jump_003_47a1

    cp $ca
    jp c, Jump_003_478c

    jp z, Jump_003_4131

    cp $eb
    jp c, Jump_003_4209

    cp $f0
    jp z, Jump_003_47a7

    cp $ed
    jp z, Jump_003_4022

    cp $f5
    jp z, Jump_003_4062

    cp $f1
    jp z, Jump_003_4010

    cp $f2
    jp z, Jump_003_41f7

    cp $eb
    jp z, Jump_003_423f

    cp $ec
    jp z, Jump_003_4229

    cp $f4
    jp z, Jump_003_4250

    cp $f3
    jp z, Jump_003_41d5

    cp $ee
    jp z, Jump_003_41e3

    cp $ff
    jp z, Jump_003_425f

jr_003_478a:
    jr jr_003_478a

Jump_003_478c:
    push hl
    ld hl, $c849
    ld a, [$c83c]
    add l
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jp nz, Jump_003_4131

    ld a, $01
    ld [bc], a
    jp Jump_003_4098


Jump_003_47a1:
    ld a, $01
    ld [bc], a
    jp Jump_003_4074


Jump_003_47a7:
    ld a, $01
    ld [bc], a
    jp Jump_003_415c


Call_003_47ad:
Jump_003_47ad:
    xor a
    ld [$dfd4], a
    ld a, $08
    ld [$df9e], a
    ld [$dfb9], a
    ld [$dfef], a
    ld a, $80
    ld [$dfd2], a
    ld [$dfa0], a
    ld [$dfbb], a
    ld [$dfd6], a
    ld [$dff1], a
    xor a
    ld [$df86], a
    ld [$df87], a
    ld [$dfa1], a
    ld [$dfa2], a
    ld [$dfbc], a
    ld [$dfbd], a
    ld [$dfd7], a
    ld [$dfd8], a
    ld [$df88], a
    ld [$dfa3], a
    ld [$dfbe], a
    ld [$dfd9], a
    ld [$df89], a
    ld [$dfa4], a
    ld [$dfbf], a
    ld [$dfda], a
    ld [$df93], a
    ld [$dfae], a
    ld [$dfc9], a
    ld [$dfe4], a
    ld a, $01
    ld [$c84d], a
    ld [$c84e], a
    ld [$c84f], a
    ld [$c850], a
    ld a, $ff
    ld [$df0a], a
    ret


Jump_003_481e:
    ldh a, [rTIMA]
    cp $be
    ret nc

    ld a, [$c838]
    cp $80
    ret z

    ld a, [$c837]
    and a
    ret z

    cp $29
    ret nc

    xor a
    ld [$c83e], a
    ld hl, $c83f
    ld [hl], $07
    inc l
    ld [hl], $df
    ld hl, $c841

Jump_003_4840:
jr_003_4840:
    ld a, [$c83e]
    inc a
    cp $02
    ret z

    ld [$c83e], a
    ld a, [$c83d]
    inc a
    cp $04
    jr nz, jr_003_4853

    xor a

jr_003_4853:
    ld [$c83d], a
    ld [$c83c], a
    and a
    jr z, jr_003_48a0

    cp $01
    jr z, jr_003_488c

    cp $02
    jr z, jr_003_4878

    ld a, [$df19]
    and a
    jr z, jr_003_4840

    ld a, [$c850]
    cp $01
    jr z, jr_003_4840

    ld [hl], $d7
    inc hl
    ld [hl], $df
    jr jr_003_48b2

jr_003_4878:
    ld a, [$df17]
    and a
    jr z, jr_003_4840

    ld a, [$c84f]
    cp $01
    jr z, jr_003_4840

    ld [hl], $bc
    inc hl
    ld [hl], $df
    jr jr_003_48b2

jr_003_488c:
    ld a, [$df15]
    and a
    jr z, jr_003_4840

    ld a, [$c84e]
    cp $01
    jr z, jr_003_4840

    ld [hl], $a1
    inc hl
    ld [hl], $df
    jr jr_003_48b2

jr_003_48a0:
    ld a, [$df13]
    and a
    jr z, jr_003_4840

    ld a, [$c84d]
    cp $01
    jr z, jr_003_4840

    ld [hl], $86
    inc hl
    ld [hl], $df

jr_003_48b2:
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [de]
    cp $00
    jp z, Jump_003_46e5

    cp $ca
    jp z, Jump_003_4142

    cp $d0
    jp c, Jump_003_4840

    cp $eb
    jp c, Jump_003_4209

    jp z, Jump_003_423f

    cp $ed
    jp z, Jump_003_4022

    cp $f5
    jp z, Jump_003_4062

    cp $f1
    jp z, Jump_003_4010

    cp $f2
    jp z, Jump_003_41f7

    cp $ec
    jp z, Jump_003_4229

    cp $ff
    jp z, Jump_003_425f

    jp Jump_003_4840


    jp $3c4a


    ld e, l
    cp b
    ld c, c
    adc a
    ld e, c
    db $fc
    ld e, h
    ld e, $5d
    adc [hl]
    ld h, a
    push hl
    ld h, c
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld h, l
    call nc, Call_003_4f71
    halt
    ld a, [c]
    ld d, [hl]
    and c
    ld [hl], d
    ld bc, $0f56
    ld c, l
    or a
    ld e, e
    ld d, [hl]
    ld h, c
    ld c, h
    ld e, [hl]

jr_003_4917:
    ld [hl], $6b
    ld bc, $576f
    ld [hl], b
    or d
    ld e, d
    rst $20
    ld d, h
    bit 2, a
    ld [hl], a
    ld e, a
    xor e
    ld l, h
    db $ec
    ld c, l
    sbc b
    ld d, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld l, e
    ld h, a
    ld d, h
    ld e, a
    add h
    ld l, h
    jp Jump_003_414a


    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c

Jump_003_4941:
    ld c, e
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    nop
    db $10
    add h
    rlca
    add c
    ldh a, [$ff84]
    inc b
    add c
    rst $38
    ld bc, $0808
    nop
    ld bc, $0584
    add c
    ldh a, [$ff84]
    inc b
    add c
    rst $38
    ld bc, $0101
    nop
    ld bc, $0303
    add c
    ld bc, $0a0a
    nop
    ld bc, $0383
    add c
    ld bc, $0101
    add c
    ldh a, [$ff84]
    inc b
    add d
    rst $38
    ld bc, $0606
    nop
    ld [bc], a
    add h
    inc b
    add d
    ld [bc], a
    add d
    add d
    add [hl]
    ldh a, [rDIV]
    add h
    add h
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    jr nz, jr_003_4917

    add d
    add e
    rst $38
    db $fd
    ld e, $fe
    add b
    ld bc, $ffa8
    scf
    db $fd
    ld e, $fe
    add b
    ld [bc], a
    adc b
    rst $38
    inc [hl]
    db $fd
    ld e, $fe
    add b
    ld bc, $ff88
    inc h
    db $fd
    ld e, $fe
    add b
    ld bc, $ffa8
    inc [hl]
    ld c, e
    ld b, l
    jp nz, $c649

    ld c, c
    jp z, $cc49

    ld c, c
    adc $49
    nop
    nop
    ld [bc], a
    ld c, d
    nop
    nop
    ld [de], a
    ld c, d
    xor l
    ld c, d
    ldh a, [rP1]
    ld b, c
    nop
    db $fd
    push af
    or $49
    jp nc, Jump_003_4941

    ld c, l
    ld c, a
    ld bc, $554f
    jp z, $cad5

    nop
    cp $00
    ld bc, $fe81
    add b
    rst $38
    ld b, h
    cp $00
    ld bc, $fea8
    add b
    ld [bc], a
    add d
    ld [bc], a
    jr z, @+$01

    ld d, h
    cp $00
    inc b
    ret c

    cp $80
    ld [bc], a
    add h
    ld [bc], a
    jr z, @+$01

    ld h, h
    push af
    ld [$d249], a
    ld c, c
    ld c, a
    ld d, e
    ld d, l
    ld bc, $6155
    jp z, $cad5

    ld bc, $ed00
    or b
    ld a, b
    nop
    sbc a
    ld c, d
    jp nc, Jump_003_4941

    ld c, l
    ld c, a
    ld bc, $554f
    push af
    xor c
    ld c, d
    jp z, $2525

    dec hl
    dec h
    ld bc, $2125
    dec h
    dec h
    dec h
    dec hl
    dec h
    ld bc, $2125
    dec h
    dec h
    dec h
    dec hl
    dec h
    ld bc, $2125
    dec h
    dec h
    dec h
    dec hl
    dec h
    ld bc, $2125
    dec h
    daa
    daa
    dec l
    daa
    ld bc, $2327
    daa
    daa
    daa
    dec l
    daa
    ld bc, $2327
    daa
    daa
    daa
    dec l
    daa
    ld bc, $2327
    daa
    daa
    daa
    dec l
    daa
    ld bc, $2327
    daa
    add hl, hl
    add hl, hl
    cpl
    add hl, hl
    ld bc, $2529
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    add hl, hl
    ld bc, $2529
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    add hl, hl
    ld bc, $2529
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    add hl, hl
    ld bc, $2529
    add hl, hl
    dec hl
    dec hl
    ld c, c
    dec hl
    ld bc, $272b
    dec hl
    dec hl
    dec hl
    ld c, c
    dec hl
    ld bc, $272b
    dec hl
    dec hl
    dec hl
    ld c, c
    dec hl
    ld bc, $272b
    dec hl
    rst $38
    add h
    ld c, d
    dec b
    jr nz, jr_003_4aa4

    nop
    inc b

jr_003_4aa4:
    ld b, b
    ld [$ff60], sp
    nop
    inc bc
    jr nz, @+$01

    nop
    push de
    ld bc, $02d2
    ld bc, $0114
    ld [bc], a
    inc b
    inc d
    ld bc, $0102
    inc d
    ld bc, $0402
    inc d
    ld bc, $b0ff
    ld c, d
    inc a
    ld b, l
    call $cf4a
    ld c, d
    pop de
    ld c, d
    db $d3
    ld c, d
    push de
    ld c, d
    ld [hl], e
    ld c, e
    db $eb
    ld c, e
    and d
    ld c, h
    ldh a, [rP1]
    ld b, c
    nop
    db $fd
    push af
    or $49
    jp nc, Jump_003_4545

    ld bc, $ca45
    jp z, Jump_003_4b4b

    ld bc, $ca4b
    jp z, Jump_003_5151

    ld bc, $ca51
    jp z, Jump_003_5757

    ld bc, $ca57
    jp z, $e2f5

    ld c, c
    push de
    ld bc, $caca
    jp z, $45d2

    ld b, l

Jump_003_4b01:
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    sbc $45
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    sub $4b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e

Jump_003_4b4b:
    ld c, e
    ld c, e
    ld c, e
    ld c, e

Jump_003_4b4f:
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    rst $38
    ld b, c
    ld c, e
    push af
    ld [$d249], a
    ld c, e
    ld c, e
    ld bc, $ca4b
    jp z, Jump_003_5151

    ld bc, $ca51
    jp z, Jump_003_5757

    ld bc, $ca57
    jp z, Jump_003_5d5d

    ld bc, $ca5d
    jp z, $f6f5

    ld c, c
    push de
    ld bc, $caca
    jp z, $ebd2

    inc b
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    db $ec
    db $eb
    ld [bc], a
    sbc $4b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    db $ec
    sub $51
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    rst $38
    ret c

    ld c, e
    db $ed
    or b
    ld a, b
    nop
    sbc a
    ld c, d
    jp nc, $45d2

    ld b, l
    ld bc, $ca45
    jp z, Jump_003_4b4b

    ld bc, $ca4b
    jp z, Jump_003_5151

    ld bc, $ca51
    jp z, Jump_003_5757

    ld bc, $ca57
    push af
    xor c
    ld c, d
    jp z, $2d2d

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    sbc $2d
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    sub $2d
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    rst $38
    ld [hl], b
    ld c, h
    push de
    ld bc, $caca
    jp nc, $02eb

    ld [bc], a
    ld bc, $0114
    ld [bc], a
    inc b
    inc d
    ld bc, $0102
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $1404
    ld bc, $deec
    ld [bc], a
    ld bc, $0114
    ld [bc], a
    inc b
    inc d
    ld bc, $0102
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $1404
    ld bc, $02d6
    ld bc, $0114
    ld [bc], a
    inc b
    inc d
    ld bc, $0102
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    ld bc, $0402
    inc d
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $1404
    ld bc, $ecff
    ld c, h
    ld e, h
    ld b, l
    add hl, de
    ld c, l
    dec de
    ld c, l
    dec e
    ld c, l
    rra
    ld c, l
    ld hl, $434d
    ld c, l
    ld l, e
    ld c, l
    or a
    ld c, l
    ldh a, [rSB]
    ld b, c
    nop
    db $fd
    db $ed
    ld b, b
    dec a
    ld c, l
    pop af
    ld e, b
    ld c, c
    push de
    ld e, l
    jp z, $ca5b

    ld d, a
    jp z, $ca55

    rst $38
    ld l, $4d
    ld [bc], a
    and d
    rst $38
    add a
    ld [$204c], sp
    ld a, b
    rst $38
    ld [hl], a
    db $ed
    ret nz

    add hl, sp
    ld c, l
    pop af
    ld e, b
    ld c, c
    ret c

    ld b, l
    ld b, a
    db $d3
    ccf
    jp z, Jump_003_5147

    ld c, a
    ret c

    ld c, l
    ld c, a
    db $d3
    ld b, a
    jp z, Jump_003_574f

    ld d, l
    ret c

    ld d, l
    ld d, a
    db $d3
    ld c, a
    jp z, Jump_003_5d57

    ld e, e
    push de
    ld e, l
    jp z, $4aff

    ld c, l
    db $ed
    jr nz, jr_003_4de7

    nop
    or l
    ld c, l
    jp nc, $012d

    jp z, $012d

    jp z, $012d

    jp z, $012d

    jp z, $012d

    dec hl
    ld bc, $0135
    jp z, $0135

    jp z, $0135

jr_003_4d8a:
    jp z, $0135

    jp z, $0135

    inc sp
    ld bc, $013d
    jp z, $013d

    jp z, $013d

    ld bc, $013d
    jp z, $013d

    dec sp
    ld bc, $012d
    jp z, $012d

    jp z, $012d

    jp z, $012d

    jp z, $012d

    dec hl
    ld bc, $72ff
    ld c, l
    rst $38
    jr nz, jr_003_4d8a

    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    dec e

jr_003_4de7:
    ld [hl+], a
    ld a, [de]
    rst $38
    cp c
    ld c, l
    inc a
    ld b, l
    or $4d
    ld [bc], a
    ld c, [hl]
    inc c
    ld c, [hl]
    ld c, $4e
    db $10
    ld c, [hl]
    dec e
    ld c, [hl]
    ld b, e
    ld c, [hl]
    dec e
    ld c, [hl]
    rst $38
    rst $38
    ld hl, sp+$4d
    add [hl]
    ld c, [hl]
    ld d, $4f
    sub d
    ld c, [hl]
    rst $38
    rst $38
    inc b
    ld c, [hl]
    xor $4f
    jr nc, jr_003_4e61

    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    push af
    ld l, [hl]
    ld c, [hl]
    push de
    ld bc, $0101

jr_003_4e1c:
    ld bc, $ebdd
    ld [bc], a
    dec sp
    ccf
    ld b, c
    ld c, c
    jp z, $ecca

    db $eb
    ld [bc], a
    inc sp
    scf
    dec sp
    ld b, c
    jp z, $ecca

    db $eb
    ld [bc], a
    scf
    dec sp
    ccf
    ld b, l
    jp z, $ecca

    db $eb
    ld [bc], a
    ld sp, $3735
    ccf
    jp z, $ecca

    nop
    call c, $04eb
    ld bc, $013b
    dec sp
    jp z, $ec3b

    db $eb
    inc b
    ld bc, $0137
    scf
    jp z, $ec37

    db $eb
    inc b
    ld bc, $013b
    dec sp
    jp z, $ec3b

    db $eb
    ld [bc], a

jr_003_4e61:
    ld bc, $013f
    ccf
    jp z, $ec3f

    call nc, $4549
    ld b, c
    ccf
    nop
    cp $80
    ld [bc], a
    xor b
    cp $00
    ld [bc], a
    ld l, b
    cp $80
    ld b, b
    ld c, b
    rst $38
    ld b, a
    cp $00
    ld bc, $fec8
    add b
    jr nc, jr_003_4e1c

    rst $38
    add a
    db $ed
    ld b, b
    ld a, h
    ld c, [hl]
    pop af
    ld l, l
    ld c, c
    push de
    ld bc, $0101
    ld bc, $49dd
    ld b, l
    ld b, c
    push de
    dec sp
    jp z, $3bdd

    ccf
    ld b, c
    ld b, l
    ld b, c
    ccf
    push de
    dec sp
    jp z, $ddca

    ld b, l
    ld b, c
    ccf
    push de
    scf
    jp z, $37dd

    dec sp
    ccf
    ld b, c
    ccf
    ld b, c
    push de
    ld b, l
    jp z, $ddca

    ld h, c
    ld e, l
    ld e, c
    push de
    ld d, e
    jp z, Jump_003_53dd

    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    push de
    ld l, d
    jp z, $ddca

    ld e, l
    ld e, c
    ld d, a
    push de
    ld c, a
    jp z, $67dd

    ld l, e
    ld l, a
    ld [hl], c
    ld l, a
    ld [hl], c
    push de
    ld [hl], l
    jp z, $d4ca

    ldh a, [rP1]
    ld [bc], a
    nop
    pop af
    ld h, l
    ld c, c
    ld l, a
    jp z, $f1ca

    ld l, l
    ld c, c
    ldh a, [rP1]
    ld [bc], a
    nop
    ld h, a
    push de
    ld h, e
    call nc, Call_003_6361
    call c, Call_003_6665
    jp z, $cad5

    call c, $ca61
    ld e, c
    push de
    jp z, Jump_003_57dd

    ld d, a

Jump_003_4f01:
    ld e, c
    call nc, $ca5d
    jp z, Jump_003_615d

    jp z, $ca63

    ld h, c
    jp z, Jump_003_61ca

    ld l, c
    jp z, $6fdd

    ld l, a
    ld [hl], l
    nop
    ld h, c
    ld e, l
    ld e, c
    push de
    ld d, e
    jp z, Jump_003_53dd

    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    push de
    pop af
    ld h, l
    ld c, c
    ld h, l
    jp z, Jump_003_5bdc

    ld h, c
    pop af
    ld l, l
    ld c, c
    ld l, e
    ld h, a
    ld h, c
    ld e, a
    ld e, l
    ld e, c
    ld d, a
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld d, e
    ld c, a
    ld b, c
    ld a, $37
    push de
    jp z, Jump_003_4fdc

    ld c, a
    db $dd
    ld d, e
    ld d, a
    ld e, c
    ld d, a
    ld e, c
    call c, Call_003_595d
    ld e, l
    ld e, a
    ld h, c
    ld l, e

Jump_003_4f51:
    ld h, a
    ld h, c
    ld e, a
    ld e, l
    ld e, c
    ld h, c
    ld e, l
    ld e, c
    ld d, e
    ld e, h
    ld e, a
    ld h, c
    call c, $f25f
    ld h, c

Jump_003_4f61:
    ld l, e
    ld e, a
    ld h, c
    ld l, e
    ld e, a
    ld h, c
    ld l, e
    ld e, a
    ld h, c
    ld l, e
    ld e, a
    ld h, c
    ld l, e
    ld e, a
    ld h, c
    ld l, e

Call_003_4f71:
    ld e, a
    ld h, c
    ld l, e
    ld e, a
    ld h, c
    ld l, e
    db $eb
    inc b
    ld [hl], c
    ld l, e
    ld h, a
    ld [hl], c
    ld l, e
    ld h, a
    db $ec
    db $db
    db $eb
    ld [$ca71], sp
    ld [hl], c
    ld l, e
    ld h, [hl]
    ld h, c
    db $ec
    db $eb
    inc b
    ld [hl], c
    ld l, e
    ld [hl], c
    ld l, e
    ld h, [hl]
    ld h, c
    db $ec
    ld h, a
    ld h, b
    ld h, a
    ld h, b
    ld e, a
    ld e, h
    ld e, c
    ld d, e
    ld e, h
    ld e, c
    ld d, e
    ld d, c
    call c, Call_003_615f
    ld l, e
    ld h, a
    ld h, c
    ld e, l
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld e, l
    ld e, l
    ld e, c
    ld c, a
    ld d, a
    ld e, c
    ld e, l
    ld h, c
    ld e, l
    ld e, c
    ld e, c
    ld e, l
    ld h, c
    ld h, e
    ld h, c
    ld e, l
    ld e, l
    ld h, c
    ld h, e
    pop af
    ld a, [hl]
    ld c, c
    ld h, a
    push de
    ld l, d
    call c, $caca
    ld h, a
    pop af
    ld l, l
    ld c, c
    jp z, $d467

    jp z, $caca

    call c, $4749
    ld b, l
    ld e, e
    push de
    ld e, h
    db $dd
    jp z, $dc59

Jump_003_4fdc:
    ld e, c
    call nc, $caca
    jp z, $3bdc

    jp z, $d539

    ld [hl], $49
    call nc, $4661
    jp z, $00ca

    db $ed
    ret nz

    ld a, b
    nop
    ld e, b
    ld h, l
    call c, $0123
    inc hl
    inc hl
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $1923
    dec e
    rra
    inc hl
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $1923
    dec e
    rra
    dec de
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    add hl, de
    dec de
    rra
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    dec e
    dec de
    add hl, de
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $2319
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $2323
    ld bc, $1923
    dec e
    rra
    dec de
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    add hl, de
    dec de
    rra
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    ld bc, $1f1f
    dec e
    dec de
    add hl, de
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1b19
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $1b1b
    ld bc, $171b
    dec d
    inc de
    ld de, $1101
    ld de, $1101
    ld de, $1101
    ld de, $1101
    ld de, $1101
    ld de, $1101
    ld de, $1101
    ld de, $1101
    dec d
    ld bc, $1515
    ld bc, $1515
    ld bc, $1515
    ld bc, $1515
    ld bc, $1515
    ld bc, $1515
    ld bc, $1515
    ld bc, $1915
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $1919
    ld bc, $ff19
    dec c
    ld d, b
    call c, $0102
    ld [bc], a
    rrca
    dec e
    ld [bc], a
    ld [bc], a
    ld bc, $0f02
    dec e
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    dec e
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    rrca

Jump_003_5147:
    rrca
    ldh a, [rP1]
    ld b, b
    cp $02
    ld [bc], a
    ld [hl+], a
    ldh a, [rP1]

Jump_003_5151:
    ld b, b
    rst $28
    ld [bc], a
    rrca
    ldh a, [rP1]
    ld b, b
    cp $1d
    ld [bc], a
    ldh a, [rP1]
    ld b, b
    rst $28
    ld [bc], a
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    cp $02
    rrca
    ldh a, [rP1]
    ld b, b
    rst $28
    dec e
    ld [bc], a
    ldh a, [rP1]
    ld b, b
    cp $02
    inc b
    ldh a, [rP1]
    ld b, b
    rst $28
    ld [bc], a
    rrca
    ldh a, [rP1]
    ld b, b
    cp $1d
    ld [bc], a
    ldh a, [rP1]
    ld b, b
    rst $28
    ld [bc], a
    rrca
    ldh a, [rP1]
    ld b, b
    cp $02
    rrca
    ldh a, [rP1]
    ld b, b
    rst $28
    rrca
    ldh a, [rP1]
    ld b, b
    cp $02
    rst $38
    ld c, l
    ld d, c
    ld c, e
    ld b, l
    and d
    ld d, c
    cp b
    ld d, c
    adc $51
    sbc $51
    ld [c], a
    ld d, c
    dec [hl]
    ld d, d
    dec hl
    ld d, d
    ld d, l
    ld d, d
    dec hl
    ld d, d
    dec [hl]
    ld d, d
    dec [hl]
    ld d, d
    ld [$8e52], sp
    ld d, d
    rst $38
    rst $38
    and h
    ld d, c
    rla
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, b
    ld d, e
    ld h, [hl]
    ld d, e
    ld b, b
    ld d, e
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld d, e
    dec l
    ld d, e
    adc a
    ld d, e
    rst $38
    rst $38
    cp d
    ld d, c
    or a
    ld d, e
    db $e4
    ld d, e
    dec h
    ld d, h
    db $e4
    ld d, e
    db $e4
    ld d, e
    ld h, [hl]
    ld d, h
    rst $38
    rst $38
    ret nc

    ld d, c
    or a
    ld d, h
    call nc, $f054
    nop
    ld b, c
    ld [$edff], sp
    ret nz

    rst $38
    ld d, d
    reti


    dec l
    db $d3
    ld sp, $33d4
    dec l
    pop de
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    push de
    ld b, l
    rst $38
    or [hl]
    ld d, d
    push af
    rrca
    ld d, e
    db $d3
    ld [hl], l
    jp z, $7901

    ld a, e
    jp z, $0175

    pop de
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    adc e
    adc c
    push af
    rlca
    ld d, e
    push de
    adc l
    nop
    push de
    ld bc, $f001
    nop
    ld b, b
    sbc $ff
    or [hl]
    ld d, d
    pop af
    ld e, b
    ld c, c
    jp nc, Jump_003_4501

    ld c, e
    ld c, c
    call nc, $d247
    ld b, l
    ld bc, $0101
    call nc, $d201
    ld bc, $7b75
    ld a, c
    call nc, $d277
    ld [hl], l
    ld bc, $0101
    call nc, $0001
    jp nc, $3701

    dec a
    dec sp
    call nc, $d239
    scf
    ld h, a
    ld l, l
    ld l, e
    call nc, $d269
    ld h, a
    scf
    dec a
    dec sp
    call nc, $d239
    scf
    ld h, a
    ld l, l
    ld l, e
    call nc, $d369
    dec l
    jp z, $3101

    inc sp
    jp z, $012d

    pop de
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    push de
    dec l
    nop
    jp nc, Jump_003_6161

    ld bc, $5f5f
    ld bc, $6767
    ld bc, $6565
    ld bc, $6d6d
    ld bc, $6b6b
    ld bc, $7575
    ld bc, $7373
    ld bc, $ca79
    ld [hl], a
    jp z, $f1d4

    adc a
    ld c, c
    ld a, l
    push de
    jp z, $ff01

    or [hl]
    ld d, d
    ld a, [c]
    ldh a, [rP1]
    ld b, b
    cp $f5
    sbc b
    ld c, c
    db $d3
    ld a, a
    ldh a, [rP1]
    ld b, b
    rst $38
    pop de
    ld a, c
    ld bc, $6771
    ldh a, [rP1]
    ld b, b
    rst $28
    jp nc, Jump_003_4f61

    ldh a, [rP1]
    ld b, b
    rst $38
    ld e, c
    ld c, a
    ldh a, [rP1]
    ld b, b
    cp $79
    ld a, c
    ldh a, [rP1]
    ld b, b
    rst $38
    ld bc, $f071
    nop
    ld b, b
    rst $28
    ld e, c
    ld c, a
    ldh a, [rP1]
    ld b, b
    rst $38
    ld e, c
    ld c, a
    ldh a, [rP1]
    ld b, c
    ld [$f5fe], sp
    rlca
    ld d, e
    nop
    cp $00
    ld [bc], a
    ld hl, sp-$02
    ret nz

    rst $38
    rst $30
    cp $00
    ld [bc], a
    ld hl, sp-$02
    ld b, b
    rst $38
    rst $30
    cp $00
    ld [bc], a
    xor b
    cp $80
    rst $38
    add a
    cp $00
    ld bc, $fec8
    add b
    rst $38
    add h
    push af
    rst $30
    ld d, d
    pop af
    ld e, b
    ld c, c
    reti


    dec l
    db $d3
    ld sp, $33d4
    dec l
    push de
    ld b, e
    ld b, l
    ld bc, $f501
    rlca
    ld d, e
    nop
    push af
    rrca
    ld d, e
    db $d3
    ld [hl], l
    jp z, $7901

    ld a, e
    jp z, $0175

    push af
    rlca
    ld d, e
    push de
    adc e
    adc l
    nop
    push de
    ld bc, $0101
    ld bc, $f100
    ld e, b
    ld c, c
    jp nc, $3b01

    ld b, c
    ccf
    call nc, $d23d
    dec sp
    ld bc, $0101
    call nc, $d201
    ld bc, $716b
    ld l, a
    call nc, $d26d
    ld l, e
    ld bc, $0101
    call nc, $0001
    jp nc, $2d01

    inc sp
    ld sp, $2fd4
    jp nc, $5d2d

    ld h, e
    ld h, c
    call nc, $d25f
    ld e, l
    dec l
    inc sp
    ld sp, $2fd4
    jp nc, $5d2d

    ld h, e
    ld h, c
    call nc, $d35f
    dec l
    jp z, $3101

    inc sp
    jp z, $012d

    push de
    dec hl
    dec l
    nop
    jp nc, $5b5b

    ld bc, $5959
    ld bc, $6161
    ld bc, $5f5f
    ld bc, $6767
    ld bc, $6565
    ld bc, $6f6f
    ld bc, $6d6d
    ld bc, $ca73
    ld [hl], c
    jp z, $f1d4

    adc a
    ld c, c
    ld [hl], e
    push de
    jp z, $01ca

    ld bc, $ed00
    or b
    ld a, b
    nop
    and a
    ld d, h
    pop af
    ld e, b
    ld c, c
    reti


    dec d
    db $d3
    add hl, de
    call nc, $151b
    push de
    dec hl
    jp nc, $ed15

    ret nz

    ld a, b
    nop
    or c
    ld d, h
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    db $eb
    ld [bc], a
    dec d
    dec d
    dec d

Jump_003_53dd:
    dec d
    dec d
    dec d
    dec d
    dec d
    db $ec
    nop
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    nop
    inc hl
    jp z, $2301

    inc hl
    jp z, $ca23

    ld bc, $2323
    jp z, $ca23

    ld bc, $2323
    jp z, $ca23

    ld bc, $2323
    jp z, $ca23

    ld hl, $23ca
    inc hl
    inc hl
    inc hl
    dec c
    rrca
    ld de, $1513
    rla
    add hl, de
    dec de
    dec e
    rra
    ld hl, $2523
    daa
    add hl, hl
    dec hl
    dec l
    cpl
    ld sp, $3533
    scf
    scf
    add hl, sp
    dec sp
    dec sp
    add hl, sp
    add hl, sp
    scf
    scf
    dec [hl]
    inc sp
    nop
    inc c
    jr nz, jr_003_54c2

    ld b, b
    db $10
    ld h, b
    jr nc, jr_003_54ef

    rst $38
    jr nz, jr_003_54b4

    jr nz, jr_003_54b8

jr_003_54b4:
    ld h, b
    rst $38
    nop
    push de

jr_003_54b8:
    ld bc, $0101
    jp nc, $0201

    inc d
    ld bc, $0102

jr_003_54c2:
    rrca
    ld bc, HeaderLogo
    inc d
    ld bc, $0402
    inc d
    ld [bc], a
    ld bc, $1402
    ld bc, $0102
    rrca
    ld bc, HeaderLogo
    inc d
    ld bc, $0402
    inc d
    ld [bc], a
    ld bc, $1402
    ld bc, $0102
    rrca
    ld bc, $d4ff
    ld d, h
    ld e, h
    ld b, l
    nop
    nop
    pop af
    ld d, h
    di
    ld d, h

jr_003_54ef:
    push af
    ld h, c
    dec bc
    ld d, l
    and [hl]
    ld d, l
    xor h
    ld d, l
    rst $18
    ld d, l
    xor h
    ld d, l
    rst $38
    rst $38
    push af
    ld d, h
    ld [bc], a
    add d
    rst $38
    ld b, a
    cp $00
    ld bc, $fec1
    add b
    rst $38
    ld h, e
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    ret nz

    rst $38
    ld d, h
    pop af
    ld e, b
    ld c, c
    db $eb
    ld [bc], a
    db $d3
    ld e, l
    ld bc, $0165
    rst $10
    ld h, c
    pop de
    ld h, c
    rst $10
    ld bc, $61d1
    db $d3
    ld e, l
    ld h, c
    rst $10
    ld h, l
    pop de
    ld h, e
    rst $10
    ld h, l
    pop de
    ld e, l
    db $d3
    jp z, $f501

    inc bc
    ld d, l
    db $d3
    ld a, l
    ld a, c
    rst $10
    ld [hl], l
    pop de
    ld [hl], l
    db $d3
    ld bc, $c0ed
    rst $38
    ld d, h
    db $d3
    ld h, a
    ld bc, $016f
    rst $10
    ld l, e
    pop de
    ld l, e
    rst $10
    ld bc, $6bd1
    db $d3
    ld h, a
    ld l, e
    rst $10
    ld l, a

Jump_003_5555:
    pop de
    ld l, l
    rst $10
    ld l, a

Jump_003_5559:
    pop de
    ld [hl], l
    db $d3
    jp z, $f501

    inc bc
    ld d, l
    rst $10
    add a
    pop de
    add l
    rst $10
    add e
    pop de
    ld a, a
    call nc, $ed01
    ret nz

    rst $38
    ld d, h
    db $ec
    rst $10
    ld [hl], e
    pop de
    ld [hl], c
    rst $10
    ld [hl], e
    pop de
    ld l, e
    db $d3
    ld bc, $73d7
    pop de
    ld [hl], c
    rst $10
    ld [hl], e
    pop de
    ld l, e
    push af
    inc bc
    ld d, l
    db $d3
    ld bc, $6b67
    db $ed
    ret nz

    rst $38
    ld d, h
    rst $10
    ld [hl], e
    pop de
    ld [hl], c
    rst $10
    ld [hl], e
    pop de
    ld l, e
    db $d3
    ld bc, $73d7
    pop de
    ld l, e
    rst $10
    ld bc, $6bd1
    db $d3
    ld bc, $797d
    rst $38
    ld d, $55
    db $ed
    ret nz

    ld a, b
    nop
    ld sp, hl
    ld d, l
    db $eb
    ld [bc], a
    db $d3
    dec l
    rst $10
    ld bc, $2dd3
    pop de
    daa
    db $d3
    inc hl
    rst $10
    dec l
    pop de
    dec l
    rst $10
    ld bc, $2dd3
    pop de
    daa
    db $d3
    inc hl
    db $ec
    db $eb
    ld [bc], a
    db $d3
    scf
    rst $10
    ld bc, $37d3
    pop de
    ld sp, $2dd3
    rst $10
    scf
    pop de
    scf
    rst $10
    ld bc, $37d3
    pop de
    ld sp, $2dd3
    db $ec
    nop
    db $eb
    ld [bc], a
    db $d3
    dec sp
    rst $10
    ld bc, $3bd3
    pop de
    dec [hl]
    db $d3
    ld sp, $3bd7
    pop de
    dec sp
    rst $10
    ld bc, $3bd3
    pop de
    dec [hl]
    db $d3
    ld sp, $00ec
    inc b
    jr nz, jr_003_5602

    ld b, b
    ld [$ff60], sp
    nop
    ld c, e

jr_003_5602:
    ld b, l
    dec bc
    ld d, [hl]
    inc de
    ld d, [hl]
    dec d
    ld d, [hl]
    adc b
    ld h, l
    rla
    ld d, [hl]
    sbc $65
    rst $38
    rst $38
    dec c
    ld d, [hl]
    dec h
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ldh a, [rSB]
    ld b, c
    nop
    cp $00
    cp $00
    ld bc, $fe81
    add b
    rst $38
    ld b, h
    db $ed
    ld b, b
    dec e
    ld d, [hl]
    push de
    ld bc, $caca
    jp z, $caca

    jp z, $01d3

    ld h, e
    ld h, l
    ld h, a
    push de
    ld l, c
    jp z, $ca6f

    ld [hl], a
    jp z, $d3ca

    ld bc, $7577
    ld [hl], e
    push de
    ld [hl], c
    jp z, $ca63

    ld [hl], a
    jp z, $d3ca

    ld bc, $7d7b
    ld a, a
    push de
    add c
    jp z, $ca6f

    ld l, c
    jp z, $d3ca

    ld bc, $6769
    ld h, l
    push de
    ld h, e
    rst $38
    dec hl
    ld d, [hl]
    db $ed
    db $10
    ld a, c
    nop
    db $ec
    ld d, [hl]
    jp nc, $1b1b

    dec de
    dec de
    ld bc, $0119
    jp z, $0117

    jp z, $0115

    jp z, $ca13

    dec de
    dec de
    dec de
    dec de
    ld bc, $0119
    jp z, $0117

    jp z, $0115

Jump_003_5686:
    jp z, $ca13

    dec de
    dec de
    dec de
    dec de
    ld bc, $0119
    jp z, $0117

    jp z, $0115

    jp z, $ca13

    dec de
    dec de
    dec de
    dec de
    ld bc, $0119
    jp z, $0117

    jp z, $0115

    jp z, $ca13

    ld hl, $2121
    ld hl, $1f01
    ld bc, $1dca
    ld bc, $1bca
    ld bc, $19ca
    jp z, $2121

    ld hl, $0121
    rra
    ld bc, $1dca
    ld bc, $1bca
    ld bc, $19ca
    jp z, $2121

    ld hl, $0121
    rra
    ld bc, $1dca
    ld bc, $1bca
    ld bc, $19ca
    jp z, $2121

    ld hl, $0121
    rra
    ld bc, $1dca
    ld bc, $1bca
    ld bc, $19ca
    jp z, Jump_003_69ff

    ld d, [hl]
    inc b
    jr nz, @+$0a

    ld h, b
    rst $38
    nop
    ld c, e
    ld b, l
    db $fc
    ld d, [hl]
    cp $56
    nop
    ld d, a
    ld [bc], a
    ld d, a
    inc b
    ld d, a
    ccf
    ld d, a
    ld h, d
    ld d, a
    or h
    ld d, a
    ldh a, [rP1]
    ld b, c
    ld [$edff], sp
    ld b, b
    scf
    ld d, a
    jp nc, $0175

    ld [hl], l
    ld bc, $7575
    ld bc, $0175
    ld [hl], l
    ld bc, $0175
    ld [hl], l
    ld [hl], l
    ld bc, $0175
    ld [hl], l
    ld bc, $7575
    ld bc, $0175
    ld [hl], l
    ld bc, $0175
    ld [hl], l
    ld [hl], l
    ld bc, $0eff
    ld d, a
    inc b
    adc c
    ld b, b
    adc b
    rst $38
    add a
    cp $00
    ld bc, $fe81
    add b
    rst $38
    ld b, h
    db $ed
    ret nz

    ld sp, $f157
    ld e, b
    ld c, c
    push de
    ld d, l
    jp z, $ca53

    ld d, c
    jp z, $ca4f

Jump_003_574f:
    ld d, l
    jp z, $ca53

Call_003_5753:
    ld d, c
    jp z, $ca4f

Jump_003_5757:
    ld d, l
    jp z, $ca53

    ld d, c
    jp z, $ca4f

    rst $38
    ld b, a
    ld d, a
    db $ed
    or b
    ld a, b
    nop
    xor h
    ld d, a
    jp nc, $2d2d

    dec l
    dec l
    ld bc, $012d
    dec l
    ld bc, $012d
    dec l
    scf
    jp z, $ca39

    dec l
    dec l
    dec l
    dec l
    ld bc, $012d
    dec l
    ld bc, $012d
    dec l
    add hl, hl
    ld bc, $caca
    dec l
    dec l
    dec l
    dec l
    ld bc, $012d
    dec l
    ld bc, $012d
    dec l
    scf
    jp z, $ca39

    dec l
    dec l
    dec l
    dec l
    dec l
    add hl, hl
    ld bc, $01ca
    add hl, hl
    dec hl
    add hl, hl
    dec hl
    add hl, hl
    inc sp
    ld sp, $69ff
    ld d, a
    inc b
    jr nz, jr_003_57b3

    ld b, b
    inc b
    ld h, b
    rst $38

jr_003_57b3:
    nop
    jp nc, $3131

    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $ff31
    or l

Jump_003_57ca:
    ld d, a
    ld e, h
    ld b, l
    push de
    ld d, a
    rst $10
    ld d, a
    reti


    ld d, a
    db $db
    ld d, a
    db $dd
    ld d, a
    ld b, l
    ld e, b
    di
    ld e, b
    ld c, e
    ld e, c

Jump_003_57dd:
    ldh a, [rP1]
    ld b, c
    ld [$edff], sp
    add c
    dec h
    ld e, b
    pop af
    ld e, b
    ld c, c
    push de
    dec d
    jp z, $caca

    jp nc, $04eb

    jp nc, Jump_003_4b01

    ld c, c
    ld b, a
    call nc, $ca45
    jp z, $ebec

    inc bc
    jp nc, Jump_003_4f01

    ld c, l
    ld c, e
    call nc, $ca49
    jp z, $d2ec

    ld c, a
    ld c, l
    ld c, e
    ld d, e
    ld d, c
    ld c, a
    ld d, l
    ld d, e
    ld d, c
    ld e, c
    ld d, a
    ld d, l
    ld e, l
    ld e, e
    ld h, c
    ld e, a
    rst $38
    rst $28
    ld d, a
    cp $80
    ld [bc], a
    ld hl, sp-$02
    ld b, b
    inc b
    and h
    rst $38
    ld h, a
    dec b
    xor b
    dec b
    adc b
    dec b
    adc b
    dec b
    ld l, b
    dec b
    ld c, b
    dec b
    ld c, b
    dec b
    ld c, b
    dec b
    ld c, b
    dec b
    ld c, b
    dec b
    jr c, @+$07

    jr c, @+$07

    jr c, @+$07

    jr z, jr_003_5845

    jr z, jr_003_5847

    jr z, @+$01

    rla

jr_003_5845:
    db $ed
    add b

jr_003_5847:
    add sp, $5f
    push af
    dec de
    ld e, b
    pop af
    ld e, b
    ld c, c
    jp nc, $1515

    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    ld de, $110f
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc de
    dec d
    inc de
    dec d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc de
    dec d
    inc de
    dec d
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc de
    dec d
    inc de
    dec d
    add hl, de
    add hl, de
    add hl, de
    dec de
    dec de
    dec de
    dec e
    dec e
    dec e
    rra
    rra
    rra
    ld hl, $1f21
    rra
    rst $38
    ld [hl], b
    ld e, b
    db $ed
    or b
    ld a, b
    nop
    dec hl
    ld e, c
    push de
    jp z, $caca

    jp z, $ebd2

    inc b

Jump_003_5901:
    jp nc, Jump_003_4b01

    ld c, c
    ld b, a
    call nc, $ca45
    jp z, $ebec

    inc bc
    jp nc, Jump_003_4f01

    ld c, l
    ld c, e
    call nc, $ca49
    jp z, $d2ec

    ld c, a
    ld c, l
    ld c, e
    ld d, e
    ld d, c
    ld c, a
    ld d, l
    ld d, e
    ld d, c
    ld e, c
    ld d, a
    ld d, l
    ld e, l
    ld e, e
    ld h, c
    ld e, a
    rst $38
    rst $38
    ld e, b
    dec b
    ld b, b
    dec b
    ld b, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b

Jump_003_593b:
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    dec b
    ld h, b
    rst $38
    nop
    jp nc, $0102

    rrca
    ld bc, $0402
    rrca
    dec e
    ld [bc], a
    ld bc, $040f
    ld bc, $0f04
    dec e
    ld [bc], a

Call_003_595d:
    ld bc, $010f
    ld [bc], a
    inc b
    rrca
    dec e
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    ld [bc], a
    ld bc, $010f
    ld [bc], a
    inc b
    rrca
    dec e
    ld [bc], a
    ld bc, $040f
    ld bc, $0f04
    dec e
    ld [bc], a
    ld bc, $010f
    ld [bc], a
    inc b
    rrca
    dec e
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rst $38
    ld l, h
    ld e, c
    ld e, h
    ld b, l
    sbc c
    ld e, c
    sbc e
    ld e, c
    sbc l
    ld e, c
    sbc a
    ld e, c
    and c
    ld e, c
    ei
    ld e, c
    ld b, e
    ld e, d
    sbc [hl]
    ld e, d
    ldh a, [rP1]
    ld b, c
    nop
    cp $ed
    ld b, b
    di
    ld e, c
    jp nc, $7575

    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], l
    rst $38
    xor h
    ld e, c
    ld [bc], a
    ld a, b
    rst $38
    ld b, h
    cp $00
    ld bc, $fe88
    add b
    rst $38
    ld h, e
    db $ed
    ret nz

    rst $28
    ld e, c
    jp nc, $ca01

    ld l, e
    ld l, e
    ld l, c
    ld l, c
    ld bc, $6567
    ld h, l
    ld h, l
    ld h, e
    jp z, Jump_003_6363

    ld h, e
    ld bc, $6bca
    ld l, e
    ld l, c
    ld l, c
    ld bc, $6567
    ld h, l
    ld h, l
    ld h, e
    jp z, Jump_003_6363

    ld h, e
    ld bc, $6fca
    ld l, a
    ld l, l
    ld l, l
    ld bc, $696b
    ld l, c
    ld l, c
    ld h, a
    jp z, Jump_003_6767

    ld h, a
    ld bc, $6fca
    ld l, a
    ld l, l
    ld l, l
    ld bc, $696b
    ld l, c
    ld l, c
    ld h, a
    jp z, Jump_003_6767

    ld h, a
    rst $38
    nop
    ld e, d
    db $ed
    or b
    ld a, b
    nop
    sub [hl]
    ld e, d
    jp nc, $2d2d

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $2d31
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    rst $38
    ld d, e
    ld e, d
    ld bc, $0220
    ld b, b
    inc b
    ld h, b
    rst $38
    nop
    jp nc, $0102

    inc d
    ld bc, $0402
    rrca
    inc b
    inc b
    inc b
    inc d
    dec e
    inc b
    ld bc, $1d14
    rst $38
    sbc a
    ld e, d
    ld e, h
    ld b, l
    cp h
    ld e, d
    cp [hl]
    ld e, d
    ret nz

    ld e, d
    jp nz, $c45a

    ld e, d
    ldh a, [$ff5a]
    ld l, $5b
    add b
    ld e, e
    ldh a, [rP1]
    ld b, c
    nop
    cp $ed
    ld b, b
    add sp, $5a
    jp nc, $07eb

    ld bc, $0163
    ld h, e
    ld bc, $0163
    ld h, e
    db $ec
    ld bc, $015d
    ld e, l
    ld bc, $015d
    ld e, l
    rst $38
    adc $5a
    ld [bc], a
    add d
    rst $38
    ld b, a
    cp $00
    ld bc, $fec1
    add b
    rst $38
    ld h, e
    db $ed
    ret nz

    db $e4
    ld e, d
    pop af
    ld e, b
    ld c, c
    jp nc, $02eb

    ld b, l
    jp z, $534b

    ld bc, $4b45
    ld d, e
    ld d, c
    jp z, Jump_003_4b4f

    ld bc, $caca
    jp z, $01ec

    ld e, l
    ld e, e
    ld e, c
    ld d, e
    jp z, Jump_003_4f51

    ld d, e
    ld d, c
    ld c, a
    ld c, e
    ld bc, $caca
    jp z, $5d01

    ld e, e
    ld e, c
    ld d, e
    jp z, Jump_003_4f51

    ld d, e
    ld d, c
    ld c, a
    ld b, l
    ld bc, $caca
    jp z, $f8ff

    ld e, d
    db $ed
    or b
    ld a, b
    nop
    ld a, b
    ld e, e
    jp nc, $232d

    ld bc, $0123
    inc hl
    ld bc, $2123
    inc hl
    ld hl, $2923
    jp z, $2327

    dec l
    inc hl
    ld bc, $0123
    inc hl
    ld bc, $2123
    inc hl
    ld hl, $2923
    jp z, $caca

    ld bc, $393b
    scf
    ld bc, $2937
    dec hl
    dec l
    ld hl, $2723
    add hl, hl
    jp z, $2327

    ld bc, $393b
    add hl, sp
    dec [hl]
    inc sp
    ld sp, $2d2f
    daa
    add hl, hl
    dec hl
    dec l
    jp z, $01ca

    rst $38
    dec [hl]
    ld e, e
    ld [bc], a
    jr nz, jr_003_5b7e

    ld b, b
    ld a, [bc]
    ld h, b

jr_003_5b7e:
    rst $38
    nop
    jp nc, $02eb

    ld [bc], a
    ld [hl+], a
    inc d
    ld [hl+], a
    rrca
    ld [hl+], a
    inc b
    dec e
    ld [bc], a
    ld [hl+], a
    inc d
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    dec e
    ld [hl+], a
    db $ec
    rrca
    dec e
    inc d
    dec e
    inc b
    dec e
    inc b
    rrca
    ld [bc], a
    dec e
    inc d
    dec e
    inc b
    dec e
    rrca
    dec e
    rrca
    ld [hl+], a
    inc d
    dec e
    inc b
    ld [hl+], a
    inc b
    rrca
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    ld a, [de]
    dec e
    ld a, [de]
    rrca
    rst $38
    add c
    ld e, e
    inc a
    ld b, l
    pop bc
    ld e, e
    jp $c55b


    ld e, e
    rst $00
    ld e, e
    ret


    ld e, e
    ld [de], a
    ld e, h
    ld a, l
    ld e, h
    jp nc, $f05c

    ld [bc], a
    ld b, c
    nop
    cp $ed
    ld b, c
    ld c, $5c
    db $dd
    ld d, e
    ld e, c
    ld e, c
    ld d, e

Jump_003_5bd7:
    ld e, c
    ld e, c
    ld d, e
    ld e, c
    ld e, c

Jump_003_5bdc:
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld e, c
    ld e, c
    ld c, a
    ld e, c
    ld e, c
    ld c, a
    ld e, c
    ld e, c
    ld c, a
    ld e, c
    ld e, c
    ld c, a
    ld e, c
    ld e, c
    ld c, l
    ld e, c
    ld e, c
    ld c, l
    ld e, c
    ld e, c
    ld c, l
    ld e, c
    ld e, c
    ld c, a
    ld e, c
    ld e, c
    rst $38
    db $d3
    ld e, e
    cp $00
    ld bc, $fe78
    add b
    rst $38
    ld d, d
    inc b
    adc b
    rst $38
    ld [hl], a
    db $ed
    ret nz

    ld b, $5c
    pop af
    ld e, b
    ld c, c
    call c, Call_003_5753
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, c
    ld e, c
    ld d, a
    ld d, e
    ld d, a
    ld e, c
    ld h, e
    ld e, c
    ld d, a
    ld c, a
    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    ld c, a
    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    ld c, a
    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    ld c, a
    ld d, a
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    ld c, l
    ld d, e
    ld e, c
    ld e, l
    ld e, c
    ld d, e
    ld c, l
    ld d, e
    ld e, c
    ld e, l
    ld e, c
    ld d, e
    ld c, l
    ld d, e
    ld e, c
    ld e, l
    ld e, c
    ld d, e
    ld c, a
    ld d, e
    ld e, c
    ld h, c
    ld e, c
    ld d, e
    rst $38
    ld a, [de]
    ld e, h
    db $ed
    ret nz

    ld a, b
    nop
    cp d
    ld e, h
    push de
    pop af
    ld e, b
    ld c, c
    inc hl
    jp z, $1fca

    dec de
    jp z, $19ca

    dec d
    jp z, $11ca

    rrca
    jp z, $1fca

    inc hl
    jp z, $1fca

    dec de
    jp z, $19ca

    dec d
    jp z, $11ca

    rrca
    jp z, $1fca

    inc hl
    jp z, $1fca

    dec de
    jp z, $29ca

jr_003_5caf:
    daa
    jp z, $15ca

    add hl, de
    jp z, $1fca

    rst $38
    add a
    ld e, h
    inc c
    jr nz, jr_003_5cc9

    jr nz, jr_003_5ccb

    jr nz, jr_003_5ccd

    jr nz, jr_003_5ccf

    jr nz, jr_003_5cd1

    jr nz, jr_003_5cd3

    jr nz, jr_003_5cd5

jr_003_5cc9:
    jr nz, @+$0e

jr_003_5ccb:
    jr nz, jr_003_5cd9

jr_003_5ccd:
    jr nz, jr_003_5cdb

jr_003_5ccf:
    jr nz, @+$01

jr_003_5cd1:
    jr nz, jr_003_5caf

jr_003_5cd3:
    ldh a, [rP1]

jr_003_5cd5:
    ld b, b
    cp $02
    dec e

jr_003_5cd9:
    ldh a, [rP1]

jr_003_5cdb:
    ld b, b
    rst $38
    ld [hl+], a
    ld a, [de]
    ldh a, [rP1]
    ld b, b
    rst $28
    dec e
    ld [hl+], a
    inc b
    dec e
    ldh a, [rP1]
    ld b, b
    rst $38
    ld [hl+], a
    ld a, [de]
    ldh a, [rP1]
    ld b, b
    cp $1d
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    cp $02
    dec e
    rst $38
    reti


    ld e, h
    ld e, h
    ld b, l
    nop
    nop
    ld b, $5d
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld e, l
    rst $38
    add d
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    add b
    ld [$d25d], sp
    dec de
    ld a, [de]
    ld bc, $0123
    add hl, hl
    dec l
    add hl, hl
    rst $38
    inc de
    ld e, l
    ld c, e
    ld b, l
    nop
    nop
    jr z, jr_003_5d81

    nop
    nop
    nop
    nop
    inc l
    ld e, l
    rst $38
    add d
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    add b
    ld a, [hl+]
    ld e, l
    jp nc, $0123

    dec de
    dec de
    rst $38
    dec [hl]
    ld e, l
    inc l
    ld b, l
    nop
    nop
    ld b, [hl]
    ld e, l
    nop
    nop
    ld c, d
    ld e, l
    ld c, [hl]
    ld e, l
    nop
    nop
    push hl
    ld e, l
    nop
    nop
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    ld b, b
    call $de5d

Jump_003_5d57:
    ld d, l
    ld bc, $4fca
    ld b, a
    ld b, [hl]

Jump_003_5d5d:
    ld bc, $534f
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $554b
    ld bc, $4fca
    ld b, a
    ld b, [hl]
    ld bc, $534f
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $554b
    ld bc, $4fca
    ld b, a
    ld b, [hl]
    ld bc, $f54f
    push de

jr_003_5d81:
    ld e, l
    rst $10
    ld d, e
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $dc4b
    ld d, l
    ld bc, $4fca
    ld b, a
    ld b, [hl]
    ld bc, $f54f
    db $dd
    ld e, l
    di
    ld l, $c8
    jr z, @-$0b

    dec [hl]
    ret z

    ld bc, $53d2
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $db4b
    ld d, l
    ld bc, $4fca
    ld b, a
    ld b, [hl]
    ld bc, $d14f
    ld d, e
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $554b
    ld bc, $4fca
    ld b, a
    ld b, [hl]
    ld bc, $534f
    ld bc, $4bca
    ld b, c
    ld b, b
    ld bc, $d24b
    ld bc, $fe00
    add b
    ld bc, $fed8
    ld b, b
    rst $38
    ld h, e

Jump_003_5dd5:
    cp $80
    ld bc, $fee8
    ld b, b
    rst $38
    add e
    cp $80
    ld bc, $fef8
    ld b, b
    rst $38
    and e
    sbc $1d
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    rst $10
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    call c, $011d
    jp z, $27ca

    ld bc, $22ca
    jp nc, $011d

    jp z, $27ca

    ld bc, $22ca
    db $db
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    pop de
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    dec e
    ld bc, $caca
    daa
    ld bc, $22ca
    nop
    ld e, h
    ld b, l
    ld d, [hl]
    ld e, [hl]
    ld e, b
    ld e, [hl]
    nop
    nop
    ld e, d
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ldh [$ff5e], a
    ld c, b
    ld e, a
    ldh a, [rSC]
    ld b, c
    nop
    rst $18
    pop af
    ld c, e
    ld c, c
    push de
    ld bc, $80ed
    or [hl]
    ld e, [hl]
    call nc, $d201
    ld bc, $7971
    ld [hl], a
    push de
    ld l, a
    jp z, $caca

    jp z, $ca01

    ld [hl], a
    call nc, $d2ca
    ld bc, $7775
    ld a, l
    call nc, Call_003_737b
    push de
    jp z, $caca

    jp z, $ed01

    ld b, c
    or [hl]
    ld e, [hl]
    jp nc, Jump_003_6967

    ld bc, $015d
    ret c

    ld [hl], c
    db $d3
    ld l, a
    call nc, $d363
    ld bc, $cad5
    jp z, $caca

    db $ed
    ret nz

    or [hl]
    ld e, [hl]
    push de
    ld e, a
    ld d, l
    jp z, $d5ca

    jp z, $01ca

    jp z, $caca

    jp z, $ffca

    ld h, [hl]
    ld e, [hl]
    ld [bc], a
    ld h, d
    ld a, [bc]
    ld e, b
    inc c
    ld c, b
    ld c, $38
    db $10
    jr c, @+$14

    jr z, jr_003_5ed7

    jr jr_003_5edd

    jr @+$22

    jr @+$01

    rla
    ld [bc], a
    ld a, [c]
    ld b, $d4
    ld a, [bc]
    xor b
    inc c
    adc b
    ld c, $78
    db $10
    ld e, b
    ld [de], a

jr_003_5ed7:
    ld c, b
    inc d
    jr c, jr_003_5ef3

    jr z, @+$22

jr_003_5edd:
    jr @+$01

    rla
    db $ed
    ret nz

    jp z, $d55e

    ld bc, $00f0
    ld b, b
    rst $18
    pop af
    ld e, b
    ld c, c
    call nc, $d201
    ld bc, $7971

jr_003_5ef3:
    ld [hl], a
    push de
    ld l, a
    jp z, $caca

    jp z, $ca01

    ldh a, [rP1]
    ld b, b
    db $fd
    ld [hl], a
    call nc, $d2ca
    ld bc, $7775
    ld a, l
    ldh a, [rP1]
    ld b, b
    rst $18
    call nc, Call_003_737b
    push de
    jp z, $caca

    jp z, $f001

    nop
    ld b, b
    db $fd
    jp nc, Jump_003_6967

    ld bc, $015d
    ret c

    ld [hl], c
    db $d3
    ld l, a
    call nc, $d363
    ld bc, $cad5
    jp z, $caca

    ldh a, [rP1]
    ld b, b
    rst $18
    pop af
    ld c, e
    ld c, c
    push de
    ld e, a
    ldh a, [rP1]
    ld b, b
    db $fd
    ld d, l
    jp z, $d5ca

    jp z, $01ca

    jp z, $caca

    jp z, $ffca

    and $5e
    jp nc, $221a

    dec e
    ld [hl+], a
    dec e
    ld [hl+], a
    dec e
    ld [hl+], a
    rst $38
    ld c, c
    ld e, a
    ld e, h

Jump_003_5f55:
    ld b, l
    add c
    ld e, a
    add e
    ld e, a
    add l
    ld e, a
    ld e, [hl]
    ld e, a
    ld h, b
    ld e, a
    pop de
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $61ff
    ld e, a
    ld e, h
    ld b, l
    add c
    ld e, a
    add e
    ld e, a
    add l
    ld e, a
    add a
    ld e, a
    adc c
    ld e, a
    db $ec
    ld e, a
    ld d, b
    ld h, b
    ld [bc], a
    ld h, c
    ldh a, [rP1]
    ld b, c
    ld [$edff], sp
    ret nz

    call z, $f15f
    ld e, b
    ld c, c
    push de
    dec de
    jp z, $ca01

    db $ed
    ret nz

    call z, $eb5f
    ld [bc], a
    jp nc, $211b

    dec h
    daa
    call nc, $d5ca
    jp z, $01d2

    dec de
    ld hl, $2725
    add hl, hl
    daa
    dec h
    push de
    jp z, $0101

    db $ec
    db $ed
    pop bc
    call nc, $d85f
    ld h, a
    ld h, l
    db $d3
    ld e, l
    push de
    ld e, c
    ret c

    ld c, e
    ld c, c
    db $d3
    ld b, c
    push de
    dec a
    rst $38
    sbc d
    ld e, a
    cp $00
    ld [bc], a
    ld a, [c]
    cp $80
    rst $38
    and e
    ld [bc], a
    jp nc, $880a

    inc c
    ld a, b
    ld c, $68
    db $10
    ld e, b
    ld [de], a
    ld c, b
    inc d
    jr c, jr_003_5ffb

    jr z, @+$22

    jr @+$01

    rla
    ld [$fff8], sp
    add a
    db $ed
    ld b, c
    call nc, $f15f
    ld e, b
    ld c, c
    push de
    dec de
    jp z, $ca01

    ldh a, [rP1]
    ld b, b

jr_003_5ffb:
    db $fd
    db $eb
    ld [bc], a
    db $ed
    ld b, b
    call z, $d25f
    dec de
    ld hl, $2725
    call nc, $d5ca
    jp z, Jump_003_41ed

    call nc, $d85f
    ld e, c
    call nc, $d257
    jp z, $00f0

    ld b, b
    rst $18
    ret c

    ld h, c
    call nc, $d25f
    jp z, $00f0

    ld b, b
    db $fd
    ret c

    ld l, e
    call nc, $d269
    jp z, $cad5

    db $ec
    ldh a, [rP1]
    ld b, b
    rst $18
    ret c

    ld h, a
    ld h, l
    db $d3
    ld e, l
    ldh a, [rP1]
    ld b, b
    db $fd
    ret c

    ld e, c
    ld d, a
    db $d3
    ld c, a
    ldh a, [rP1]
    ld b, b
    rst $18
    push de
    ld c, e
    ldh a, [rP1]
    ld b, b
    db $fd
    ret c

    dec a
    dec sp
    db $d3
    inc sp
    rst $38
    db $fc
    ld e, a
    db $ed
    or b
    ld a, b
    nop
    ld a, [$d260]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rst $38
    ld [hl], a
    ld h, b
    inc b
    jr nz, jr_003_6101

    ld b, b
    inc b
    ld h, b
    rst $38

Jump_003_6101:
jr_003_6101:
    nop
    jp nc, $0204

    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    inc b
    ld [bc], a
    ld bc, $020f
    ld bc, $1d14
    rst $38
    inc hl
    ld h, c
    ld e, h
    ld b, l
    nop
    nop
    nop
    nop
    ld h, b

Jump_003_615d:
    ld h, c
    ld l, [hl]

Call_003_615f:
    ld h, c
    ld a, h

Jump_003_6161:
    ld h, c
    adc c

Jump_003_6163:
    ld h, c
    and d
    ld h, c
    adc c
    ld h, c
    adc c
    ld h, c
    rst $38
    rst $38
    ld h, d
    ld h, c
    cp l
    ld h, c
    bit 4, c
    sub $61
    bit 4, c
    bit 4, c
    rst $38
    rst $38
    ld [hl], b
    ld h, c
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    or b
    ld a, b
    nop
    or a
    ld h, c
    push de
    ld bc, $d300
    inc sp
    rst $10
    add hl, hl
    pop de
    cpl
    call nc, $d501
    ld bc, $33d3
    rst $10
    add hl, hl
    pop de
    dec l
    rst $10
    ld bc, $2fd1
    db $d3
    ld bc, $01d5
    nop
    db $d3
    inc sp
    rst $10
    add hl, hl
    pop de
    cpl
    call nc, $d501
    ld bc, $33d3
    rst $10
    add hl, hl
    pop de
    dec l
    call nc, $d501
    ld bc, $0500
    jr nz, jr_003_61c4

    ld h, b
    rst $38
    nop
    pop de
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a

jr_003_61c4:
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a

Jump_003_61ca:
    nop
    pop de
    db $eb
    ld [$d71d], sp
    ld bc, $d127
    ld [hl+], a
    db $ec
    nop
    pop de

Jump_003_61d7:
    db $eb
    dec b
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a
    db $ec
    call nc, $d501
    ld bc, $5c00
    ld b, l
    rst $28
    ld h, c
    pop af
    ld h, c
    di
    ld h, c
    push af
    ld h, c
    rst $30
    ld h, c
    or e
    ld h, d
    ld a, [hl+]
    ld h, h
    ld h, b
    ld h, l
    ldh a, [rP1]
    ld bc, $ed00
    ld b, b
    sbc [hl]
    ld h, d
    pop af
    xor d
    ld h, d
    push de
    ld bc, $caca
    jp z, $01d5

    jp z, $caca

    jp z, $caca

    jp z, $cad5

    jp z, $d4ca

    ld bc, $01d7
    pop de
    ld a, e
    rst $10
    ld bc, $7bd1
    push de
    ld bc, $d7ca
    ld l, l
    db $d3
    ld [hl], c
    pop de
    ld [hl], e
    db $d3
    ld [hl], l
    ld [hl], c
    db $d3
    ld l, l
    ld bc, $caca
    push de
    jp z, $caca

    jp z, $caca

    jp z, $d5ca

    ld bc, $d9ca
    ld bc, $01d7
    pop de
    ld [hl], c
    rst $10
    ld [hl], l
    pop de
    ld bc, $71d7
    pop de
    ld bc, $6ddb
    ld [hl], c
    rst $18
    ld l, l
    db $db
    ld l, e
    ld bc, $69df
    db $d3
    ld l, b
    ld bc, $caca
    push de
    jp z, $caca

    db $eb
    ld [bc], a
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $75d1
    call nc, $d701
    ld bc, $77d1
    rst $10
    ld bc, $71d1
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $75d1
    call nc, $d701
    ld [hl], a
    pop de
    ld [hl], l
    rst $10
    ld [hl], a
    pop de
    ld [hl], c
    rst $10
    ld bc, $7bd1
    db $d3
    ld bc, $ffec
    rlca
    ld h, d
    cp $c0
    ld bc, $fe88
    add b
    inc bc
    ld l, b
    rst $38
    ld b, d
    cp $80
    ld bc, $fe88
    ret nz

    inc bc
    ld c, b
    ld a, [bc]
    jr @+$01

    rla
    ld bc, $0202
    nop
    ld bc, $0481
    add c
    rst $38
    ldh a, [rSB]
    ld b, b
    rst $38
    push de
    ld bc, $caca
    jp z, $c0ed

    sub h
    ld h, d
    rst $10
    ld bc, $5dd3
    pop de
    ld bc, $55d3
    ld c, e
    rst $10
    ld e, a
    pop de
    ld e, l
    rst $10
    ld e, a
    call nc, $d159
    ld bc, $01d7
    db $d3
    ld e, l
    pop de
    ld bc, $55d3
    ld c, e
    db $d3
    ld c, a
    rst $10
    ld d, l
    call nc, $d159
    ld bc, $01d7
    db $d3
    ld e, l
    pop de
    ld bc, $55d3
    ld c, e
    rst $10
    ld e, a
    pop de
    ld e, l
    rst $10
    ld e, a
    call nc, $d159
    ld bc, $55d7
    db $d3
    ld e, c
    pop de
    ld e, e
    db $d3
    ld e, l
    ld e, c
    db $d3

Jump_003_6301:
    ld d, l
    rst $10
    ld bc, $6dd3
    pop de
    ld bc, $01d3
    db $ed
    ld b, b
    sbc [hl]
    ld h, d
    push de
    jp z, $caca

    call nc, $d701
    ld bc, $7bd1
    rst $10
    ld bc, $7bd1
    push de
    ld bc, $f0ca
    nop
    ld b, b
    db $fd
    rst $10
    ld l, l
    db $d3
    ld [hl], c
    pop de
    ld [hl], e
    db $d3
    ld [hl], l
    ld [hl], c
    db $d3
    ld l, l
    ld bc, $caca
    ldh a, [rP1]
    ld b, b
    rst $38
    ld a, [c]
    db $ed
    ret nz

    sub h
    ld h, d
    rst $10
    ld bc, $5dd3
    pop de
    ld bc, $55d3
    ld c, e
    rst $10
    ld e, a
    pop de
    ld e, l
    rst $10
    ld e, a
    call nc, $d159
    ld bc, $01d7
    db $d3
    ld e, l

Jump_003_6351:
    pop de
    ld bc, $55d3
    ld c, e
    db $d3
    ld c, a
    rst $10
    ld d, l
    call nc, $d159
    ld bc, $01d7
    db $d3

Call_003_6361:
    ld e, l
    pop de

Jump_003_6363:
    ld bc, $55d3
    ld c, e
    rst $10
    ld e, a
    pop de
    ld e, l
    rst $10
    ld e, a
    call nc, $d159
    ld bc, $55d7
    db $d3
    ld e, c
    pop de
    ld e, e
    db $d3
    ld e, l
    ld e, c
    db $d3
    ld d, l
    rst $10
    ld d, e
    call nc, $d151
    ld bc, $4fd3
    rst $10
    ld bc, $4fd1
    rst $10
    ld d, e
    pop de
    ld d, l
    db $d3
    ld bc, $4bd7
    pop de
    ld c, e
    rst $10
    ld d, e
    call nc, $d155
    ld bc, $4fd3
    rst $10
    ld bc, $4fd1
    rst $10
    ld d, e
    pop de
    ld d, l
    db $d3
    ld bc, $4bd3
    ld bc, $caca
    db $d3
    ld c, a
    rst $10
    ld bc, $4fd1
    rst $10
    ld d, e
    pop de
    ld d, l
    db $d3
    ld bc, $4bd7
    pop de
    ld c, e
    rst $10
    ld d, e
    call nc, $d155
    ld bc, $59d7
    pop de
    ld e, e
    rst $10
    ld e, c
    pop de
    ld e, e
    rst $10
    ld e, l
    pop de
    ld e, c
    db $d3
    ld bc, $55d3
    rst $10
    ld bc, $6dd3
    pop de
    ld bc, $01d3
    db $eb
    ld [bc], a
    ldh a, [rP1]
    ld b, b
    db $fd
    push af
    sbc [hl]
    ld h, d
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $75d1
    call nc, $f001
    nop
    ld b, b
    rst $18
    rst $10
    ld bc, $77d1
    rst $10
    ld bc, $71d1
    ldh a, [rP1]
    ld b, b
    rst $38
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $7bd1
    ldh a, [rP1]
    ld b, b
    rst $18
    rst $10
    ld bc, $7bd1
    rst $10
    ld bc, $75d1
    call nc, $f001
    nop
    ld b, b
    db $fd
    rst $10
    ld [hl], a
    pop de
    ld [hl], l
    rst $10
    ld [hl], a
    pop de
    ld [hl], c
    ldh a, [rP1]
    ld b, b
    rst $38
    rst $10
    ld bc, $7bd1
    db $d3
    ld bc, $ffec
    cp h
    ld h, d
    db $ed
    ret nz

    ld a, b
    nop
    ld e, b
    ld h, l
    db $d3
    dec h
    rst $10
    ld bc, $25d1
    db $d3
    dec de
    rst $10
    ld bc, $1bd1
    rst $10
    add hl, hl
    db $d3
    add hl, hl
    dec de
    pop de
    dec de
    rst $10
    rra
    pop de
    inc hl
    db $d3
    dec h
    rst $10
    ld bc, $25d1
    db $d3
    dec de
    rst $10
    ld bc, $1bd1
    rst $10
    add hl, hl
    db $d3
    add hl, hl
    dec de
    pop de
    dec de
    rst $10
    rra
    pop de
    inc hl
    push de
    dec h
    ld bc, $25d5
    db $d3
    ld bc, $01d7
    pop de
    dec de
    rst $10
    ld bc, $1bd1
    rst $10
    rra
    pop de
    inc hl
    push de
    dec h
    reti


    ld bc, $01d7
    pop de
    inc hl
    rst $10
    dec h
    pop de
    add hl, hl
    rst $10
    ld bc, $2bd1
    db $d3
    dec l
    add hl, hl
    push de
    dec h
    db $d3
    dec h
    rst $10
    ld bc, $1bd1
    rst $10
    ld bc, $1bd1
    db $d3
    dec h
    db $d3
    add hl, hl
    rst $10
    ld bc, $1bd1
    rst $10
    ld bc, $1bd1
    db $d3
    add hl, hl
    db $d3
    dec h
    rst $10
    ld bc, $1bd1
    rst $10
    ld bc, $1bd1
    db $d3
    dec h
    rst $10
    add hl, hl
    pop de
    inc hl
    rst $10
    ld bc, $1bd1
    call nc, $d301
    dec h
    rst $10
    ld bc, $1bd1
    rst $10
    ld bc, $1bd1
    db $d3
    dec h
    db $d3
    add hl, hl
    rst $10
    ld bc, $1bd1
    rst $10
    ld bc, $1bd1
    db $d3
    add hl, hl
    rst $10
    dec h
    pop de
    add hl, hl
    rst $10
    ld bc, $2bd1
    db $d3
    dec l
    add hl, hl
    push de
    dec h
    call nc, $1f25
    db $d3
    add hl, hl
    reti


    ld bc, $25d4
    rra
    db $d3
    add hl, hl
    db $d3
    ld bc, $01d7
    pop de
    dec de
    rst $10
    rra
    pop de
    inc hl
    call nc, $1f25
    db $d3
    add hl, hl
    ld bc, $caca
    rst $10
    dec h
    pop de
    add hl, hl
    rst $10
    ld bc, $2bd1
    db $d3
    dec l
    add hl, hl
    push de
    dec h
    call nc, $251f
    rst $10
    dec de
    pop de
    dec de
    rst $10
    rla
    call nc, $d115
    ld bc, $1fd4
    db $d3
    dec h
    rst $10
    ld bc, $29d1
    rst $10
    dec l
    pop de
    ld bc, $29d7
    pop de
    ld bc, $25db
    add hl, hl
    rst $18
    dec h
    db $db
    inc hl
    ld bc, $21df
    call nc, $251f
    rst $10
    dec de
    pop de
    dec de
    rst $10
    rla
    call nc, $d115
    ld bc, $29d5
    ld bc, $04eb
    db $d3
    dec h
    rst $10
    ld bc, $25d1
    db $d3
    dec de
    rst $10
    ld bc, $1bd1
    rst $10
    add hl, hl
    db $d3
    add hl, hl
    dec de
    pop de
    dec de
    rst $10
    rra
    pop de
    inc hl
    db $ec
    rst $38
    ld e, [hl]
    ld h, h
    dec b
    jr nz, @+$04

    nop
    ld [$ff60], sp
    nop
    pop de
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a
    rst $38
    ld h, c
    ld h, l
    ld c, e
    ld b, l
    ld a, d
    ld h, l
    add h
    ld h, l
    add [hl]
    ld h, l
    adc b
    ld h, l
    sbc [hl]
    ld h, l
    sbc $65
    and e
    ld h, l
    rst $38
    rst $38
    ld a, h
    ld h, l
    ld a, [bc]
    ld h, [hl]
    add hl, sp
    ld h, [hl]
    jp nz, $e466

    ld h, [hl]
    jp $0566


    ld h, a
    jp $e466


    ld h, [hl]
    jp $3a66


    ld h, a
    jp $ff66


    rst $38
    adc d
    ld h, l
    ldh a, [rSB]
    ld b, c
    nop
    cp $ed
    ld b, b
    inc b
    ld h, [hl]
    pop af
    ld e, b
    ld c, c
    ldh a, [rP1]
    ld bc, $d508
    ld a, e
    jp z, $d8ca

    ld h, e
    ld e, a
    db $d3
    ld [hl], l
    reti


    ld d, a
    db $d3
    ld [hl], c
    push de
    jp z, $01ca

    ld l, a
    jp z, $d8ca

    ld e, c
    ld d, a
    db $d3
    ld d, c
    push de
    ld h, e
    jp z, $cad4

    ld bc, $f5f2
    sbc b
    ld c, c
    db $d3
    ld h, a
    pop de
    ld h, c
    ld bc, $4f59
    jp nc, $3749

    ld b, c
    scf
    nop
    push de
    ld bc, $caca
    jp z, $caca

    jp z, $caca

    jp z, $caca

    jp z, $caca

    push af
    sbc b
    ld c, c
    db $d3
    ld h, a
    pop de
    ld h, c
    ld bc, $4f59
    jp nc, $3749

    ld b, c
    scf
    nop
    db $10
    ld c, h
    ld b, b
    xor b
    rst $38
    add l
    db $10
    cpl
    ld b, b
    ld e, b
    rst $38
    scf
    db $ed
    ret nz

    cp $65
    pop af
    ld e, b
    ld c, c
    push de
    ld h, e
    jp z, $d8ca

    ld h, e
    ld e, a
    db $d3
    ld e, l
    reti


    ld d, a
    db $d3
    ld e, c
    push de
    jp z, $caca

    ld d, a
    jp z, $d8ca

    ld e, c
    ld d, a
    db $d3
    ld d, c
    push de
    ld c, e
    jp z, $caca

    db $eb
    inc b
    jp z, $caca

    jp z, $ffec

    ld [de], a
    ld h, [hl]
    db $ed
    db $10
    ld a, c
    nop
    cp d
    ld h, [hl]
    ldh a, [rP1]
    ld b, b
    rst $18
    ret c

    dec de
    ld hl, $29d4
    db $d3
    daa
    dec h
    ld hl, $00f0
    ld b, b
    db $fd
    ret c

    dec de
    ldh a, [rP1]
    ld b, b
    rst $18
    ld hl, $00f0
    ld b, b
    db $fd
    call nc, $f029
    nop
    ld b, b
    rst $18
    db $d3
    daa
    ldh a, [rP1]

Call_003_6665:
    ld b, b
    db $fd
    dec h
    ldh a, [rP1]
    ld b, b
    rst $18
    ld hl, $00f0
    ld b, b
    db $fd
    ret c

    dec de
    ld hl, $00f0
    ld b, b
    rst $18
    call nc, $d329
    daa
    dec h
    ld hl, $1bd8
    ld hl, $29d4
    db $d3
    daa
    dec h
    ld hl, $17d8
    dec e
    call nc, $d325
    inc hl
    ld hl, $d81d
    rla
    dec e
    call nc, $f025
    nop
    ld b, b
    db $fd
    db $d3
    inc hl
    ldh a, [rP1]
    ld b, b
    rst $18
    ld hl, $00f0
    ld b, b
    db $fd
    dec e
    ret c

    dec de
    ld hl, $29d4
    db $d3
    daa
    dec h
    ld hl, $1bd8
    ld hl, $29d4
    db $d3
    daa
    dec h
    ld hl, $3fff
    ld h, [hl]
    ld [$0420], sp
    ld b, b
    ld a, [bc]
    ld h, b
    rst $38
    nop
    jp nc, $010f

    jp z, $0f14

    inc b
    ld [bc], a
    ld [hl+], a
    ld bc, $0114
    inc d
    rrca
    inc b
    rrca
    ld bc, $010f
    jp z, $0f14

    inc b
    ld [bc], a
    inc d
    ld bc, $0f14
    inc d
    ld [bc], a
    inc b
    ld bc, $0014
    rrca
    ld bc, $14ca
    rrca
    inc b
    ld [bc], a
    ld [hl+], a
    ld bc, $0114
    inc d
    rrca
    inc b
    rrca
    ld bc, $010f
    jp z, $0f14

    inc b
    ld [bc], a
    ld [hl+], a
    rrca
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    rrca
    ld bc, $14ca
    rrca
    inc b
    ld [bc], a
    ld [hl+], a
    ld bc, $0114
    inc d
    rrca
    inc b
    rrca
    ld bc, $010f
    jp z, $0f14

    inc b
    ld [bc], a
    inc d
    ldh a, [rP1]
    ld b, b
    rst $28
    ld [bc], a
    pop de
    jr @+$1a

    ldh a, [rP1]
    ld b, b
    cp $18
    ld bc, $0fd2
    ldh a, [rP1]
    ld b, b
    rst $28
    ld [hl+], a
    rrca
    ldh a, [rP1]
    ld b, b
    cp $22
    rrca
    nop
    dec e
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $1d04
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $1d04
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $f004
    nop
    ld b, b
    rst $28
    dec e
    inc b
    ldh a, [rP1]
    ld b, b
    cp $0f
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    rst $28
    inc d
    inc d
    ldh a, [rP1]
    ld b, b

Jump_003_6767:
    cp $14
    inc d
    nop
    ld c, e
    ld b, l
    sbc b
    ld h, a
    cp d
    ld h, a
    add $67
    ld [hl], l
    ld h, a
    ld [hl], a
    ld h, a
    pop de
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $78ff
    ld h, a
    ld c, e
    ld b, l
    sbc b
    ld h, a
    cp d
    ld h, a
    add $67
    call nc, $f667
    ld h, a
    ei
    ld h, a
    ld c, c
    ld l, b
    ei
    ld h, a
    sub e
    ld l, b
    ei
    ld h, a
    ld c, c
    ld l, b
    ei
    ld h, a
    ld c, c
    ld l, b
    ei
    ld h, a
    sub e
    ld l, b
    add hl, de
    ld l, c
    add hl, de
    ld l, c
    ei
    ld h, a
    call z, $ff68
    rst $38
    sbc d
    ld h, a
    ld b, c
    ld l, c
    ld c, [hl]
    ld l, c
    ld b, c
    ld l, c
    ld h, c
    ld l, c
    rst $38
    rst $38
    cp d
    ld h, a
    jp z, $d169

    ld l, c

Jump_003_67ca:
    ld d, $6a
    pop de
    ld l, c
    inc a
    ld l, d
    rst $38
    rst $38
    ret z

    ld h, a
    sub h

Jump_003_67d5:
    ld l, d
    sub [hl]
    ld l, d
    cp d
    ld l, d
    sub [hl]
    ld l, d
    sbc $6a
    sub [hl]
    ld l, d
    cp d
    ld l, d
    sub [hl]
    ld l, d
    cp d
    ld l, d
    sub [hl]
    ld l, d
    sbc $6a
    sub [hl]
    ld l, d
    cp d
    ld l, d
    ld [de], a
    ld l, e
    ld [de], a
    ld l, e
    rst $38
    rst $38
    sub $67
    ldh a, [rP1]
    ld b, b
    rst $38
    nop
    push af
    xor b
    ld c, c
    pop de
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    ld c, a
    jp z, $ca01

    jp z, $caca

    jp z, $ca33

    ld bc, $a0f5
    ld c, c
    ld h, e
    jp z, $ca01

    jp z, $a8f5

    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    scf
    jp z, $ca01

    jp z, $caca

    jp z, $ca33

    ld bc, $a0f5
    ld c, c
    ld c, a
    jp z, $ca01

    jp z, $f500

    xor b
    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    ld c, a
    jp z, $ca01

    jp z, $caca

    jp z, $ca33

    ld bc, $a0f5
    ld c, c
    ld h, e
    jp z, $ca01

    jp z, $a8f5

    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    scf
    jp z, $ca01

    rra
    ld bc, $caca
    ld c, a
    jp z, $ca01

    rra
    ld bc, $caca
    nop
    push af
    xor b
    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, Jump_003_6301

    jp z, $ca01

    jp z, $ca4f

    ld bc, $1fca
    ld bc, $caca
    inc sp
    jp z, $ca01

    push af
    sbc b
    ld c, c
    ld l, e
    jp z, $ca01

    jp nc, $0159

    ld d, l
    ld bc, $53d1
    ld d, c
    ld c, a
    ld c, a
    ld d, e
    ld bc, $4fca
    db $d3
    ld c, e
    reti


    ld bc, $f500
    xor b
    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    ld c, a
    jp z, $ca01

    jp z, $caca

    jp z, $ca33

    ld bc, $a0f5
    ld c, c
    ld h, e
    jp z, $ca01

    jp z, $a8f5

    ld c, c
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    push af
    and b
    ld c, c
    ld h, a
    jp z, Jump_003_6101

    jp z, Jump_003_5901

    ld c, a
    ld c, c
    jp z, Jump_003_4101

    jp z, $3701

    add hl, hl
    nop
    push af
    xor b
    ld c, c
    pop de
    db $eb
    inc b
    ld d, e
    jp z, $ca01

    rra
    ld bc, $caca
    inc sp
    jp z, $ca01

    ld c, a
    jp z, $ca01

    db $ec
    nop
    cp $00
    ld bc, $fe61
    add b
    rst $38
    ld b, h
    cp $00
    ld bc, $fea8
    add b
    rst $38
    add d
    push de
    db $eb
    ld [bc], a
    ld bc, $caca
    jp z, $caca

    jp z, $ecca

    nop
    push af
    ld sp, $eb69
    ld [bc], a
    push de
    ld bc, $caca
    call nc, $d7ca
    jp z, Jump_003_7bd3

    pop de
    jp z, $00ec

    db $ed
    nop
    add hl, sp
    ld l, c
    db $d3
    ld b, l

Jump_003_6967:
    rst $10
    jp z, $45d1

    rst $10
    ld c, c
    db $d3
    ld c, e
    pop de
    ld bc, $41d7
    pop de
    ld b, c
    rst $10
    ld c, c
    call nc, $d14b
    ld bc, $3dd3
    rst $10
    jp z, $3dd1

    rst $10
    ld c, c
    db $d3
    ld c, e
    pop de
    ld bc, $3bd5
    db $d3
    ld b, l
    rst $10
    jp z, $45d1

    rst $10
    ld c, c
    db $d3
    ld c, e
    pop de
    ld bc, $41d7
    pop de
    ld b, c
    rst $10
    ld c, c
    call nc, $d14b
    ld bc, $59d3
    rst $10
    ld d, l
    pop de
    ld e, c
    rst $10
    ld d, e
    pop de
    ld c, a
    jp z, $ca01

    ld c, e
    db $d3
    jp z, $01d7

    push af
    ld sp, $d169
    ld a, e
    call nc, $d5ca
    ld bc, $caca
    call nc, $d7ca
    jp z, Jump_003_7bd3

    pop de
    jp z, $01d5

    jp z, $caca

    nop

Jump_003_69ca:
    db $ed
    or b
    ld a, b
    nop
    adc h
    ld l, d
    nop
    db $eb
    inc bc
    rst $10
    inc sp
    db $d3
    ld bc, $33d1
    rst $10
    add hl, sp
    db $d3
    dec sp
    dec l
    ld bc, $caca
    pop de
    jp z, $33d7

    db $d3
    ld bc, $33d1
    rst $10
    add hl, sp
    pop de
    dec sp
    rst $10
    ld bc, $2fd3
    pop de
    cpl
    db $d3
    add hl, hl
    dec l
    ld sp, $d7ec
    inc sp
    db $d3
    ld bc, $33d1
    rst $10

Jump_003_69ff:
    add hl, sp
    db $d3
    dec sp
    dec l
    pop de
    ld bc, $01d3
    jp z, Jump_003_593b

    dec a
    rst $10
    dec sp
    db $d3
    scf
    inc sp
    ld bc, $caca
    pop de
    jp z, $eb00

    ld [bc], a
    db $d3
    inc sp
    dec l
    rst $10
    cpl
    pop de
    ld sp, $01d7
    db $d3
    inc sp
    pop de
    inc sp
    db $d3
    dec l
    cpl
    ld sp, $33d3
    dec l
    rst $10
    cpl
    pop de
    ld sp, $01d7
    db $d3
    inc sp
    pop de
    inc sp
    db $d3
    dec l
    add hl, hl
    jp z, $00ec

    db $d3
    dec l
    ld bc, $2dd7
    pop de
    inc sp
    db $d3
    dec l
    rst $10
    add hl, hl
    pop de
    add hl, hl
    rst $10
    ld bc, $23d3
    ld bc, $01d1
    db $d3
    dec h
    ld bc, $25d7
    pop de
    add hl, hl
    db $d3
    dec h
    db $d3
    inc hl
    dec h
    daa
    add hl, hl
    db $d3
    dec l
    ld bc, $2dd7
    pop de
    inc sp
    db $d3
    dec l
    rst $10
    add hl, hl
    pop de
    add hl, hl
    rst $10
    ld bc, $23d3
    ld bc, $01d1
    db $d3
    dec sp
    scf
    rst $10
    dec sp
    pop de
    scf
    jp z, $ca01

    inc sp
    db $d3
    jp z, $ca01

    jp z, $cad5

    jp z, $caca

    jp z, $caca

    jp z, $0200

    jr nz, jr_003_6a91

    ld b, b
    ld a, [bc]

jr_003_6a91:
    ld h, b
    rst $38
    nop
    pop de
    nop
    db $eb
    inc bc
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    db $ec
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    nop
    db $eb
    inc bc
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    db $ec
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    jr jr_003_6af0

    jr jr_003_6ae9

    ld bc, $0fca
    nop
    db $eb
    ld [bc], a
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b

jr_003_6ae9:
    ld bc, $caca
    dec e
    ld bc, $22ca

jr_003_6af0:
    db $ec
    inc b
    ld bc, $caca
    inc b
    ld bc, $22ca
    inc b
    ld bc, $caca
    inc b
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    nop
    db $eb
    ld [bc], a
    inc d
    jr @+$1a

    jr jr_003_6b28

    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $1dca
    inc d
    jr jr_003_6b3f

    ld [bc], a

jr_003_6b28:
    rrca
    ld bc, $22ca
    inc b
    ld bc, $02ca
    inc d
    ld bc, $0fca
    db $ec
    nop
    ld l, l
    ld b, l
    ld b, b
    ld l, e
    ld b, d
    ld l, e
    ld b, h
    ld l, e
    ld b, [hl]

jr_003_6b3f:
    ld l, e
    ld c, b
    ld l, e
    add $6b
    cp $6b
    ld h, l
    ld l, h
    ldh a, [rSC]
    ld b, c
    ld [$edfd], sp
    ret nz

    add [hl]
    ld l, e
    pop af
    ld e, b
    ld c, c
    push de
    ld bc, $ebca
    inc b
    ld bc, $caca
    jp z, $d3ec

    ld bc, $71d7
    pop de
    ld l, a
    db $d3
    jp z, $6dd7

    pop de
    ld l, e
    push de
    jp z, $cad3

    rst $10
    ld l, c
    pop de
    ld h, a
    db $d3
    jp z, $65d7

    pop de
    ld h, e
    reti


    jp z, $5fd7

    pop de
    ld e, l
    push de
    jp z, $01ca

    jp z, $57ff

    ld l, e
    cp $80
    ld bc, $fe78
    ret nz

    ld [bc], a
    ld a, b
    db $10
    jr z, @+$10

    jr c, @+$0e

    ld c, b
    ld a, [bc]
    ld e, b
    ld [$0668], sp
    ld a, b
    inc b
    adc b
    ld [bc], a
    sbc b
    cp $00
    jr nz, jr_003_6bca

    jr nc, jr_003_6bbc

    rst $38
    rla
    cp $00
    ld bc, $fe78
    ld b, b
    ld [bc], a
    ld a, b
    db $10
    jr z, @+$10

    jr c, @+$0e

    ld c, b
    ld a, [bc]
    ld e, b
    ld [$0668], sp
    ld a, b
    inc b
    adc b

jr_003_6bbc:
    ld [bc], a
    sbc b
    cp $00
    jr nz, jr_003_6bea

    jr nc, jr_003_6bdc

    rst $38
    rla
    db $ed
    ret nz

    and [hl]
    ld l, e

Jump_003_6bca:
jr_003_6bca:
    pop af
    ld e, b
    ld c, c
    push de
    ld bc, $caca
    jp z, $caca

    jp z, $d3ca

    ld bc, $6dd7
    pop de
    ld l, e

jr_003_6bdc:
    db $d3
    jp z, $69d7

    pop de
    ld h, a
    push de
    jp z, $01d3

    rst $10
    ld h, l
    pop de
    ld h, e

jr_003_6bea:
    db $d3
    jp z, Jump_003_61d7

    pop de
    ld e, a
    reti


    jp z, Jump_003_5bd7

    pop de
    ld e, c
    push de
    jp z, $01ca

    jp z, $ceff

    ld l, e
    db $ed
    or b
    ld a, b
    nop
    ld e, l
    ld l, h
    jp nc, $d11b

    ld bc, $d21b
    dec h
    ld bc, $0123
    ld hl, $1f01
    ld bc, $011d
    dec de
    ld bc, $d119
    ld bc, $d217
    ld d, $d1
    ld bc, $d217
    dec d
    ld bc, $0113
    ld de, $0f01
    ld bc, $010d
    dec bc
    ld bc, $d109
    ld bc, $d207
    ld b, $d1
    ld bc, $d207
    add hl, bc
    ld bc, $010b
    dec c
    ld bc, $010f
    ld de, $1301
    ld bc, $d115
    ld bc, $d217
    ld d, $d1
    ld bc, $d217
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2301
    ld bc, $0125
    rst $38
    dec b
    ld l, h
    inc bc
    jr nz, @+$05

    nop
    ld [$ff60], sp
    nop
    db $eb
    inc bc
    db $d3
    dec e
    rst $10
    ld [hl+], a
    pop de
    ld [hl+], a
    db $d3
    dec e
    rst $10
    ld [hl+], a
    pop de
    ld [hl+], a
    db $ec
    db $d3
    dec e
    rst $10
    ld [hl+], a
    pop de
    ld [hl+], a
    jp nc, $011d

    db $db
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld h, l
    ld l, h
    ld e, h
    ld b, l
    or l
    ld l, h
    or a
    ld l, h
    cp c
    ld l, h
    adc [hl]
    ld l, h
    sub b
    ld l, h
    pop de
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $ff31
    sub c
    ld l, h
    ld e, h
    ld b, l
    or l
    ld l, h
    or a
    ld l, h
    cp c
    ld l, h
    cp e
    ld l, h
    cp l
    ld l, h
    ld l, e
    ld l, l
    dec b
    ld l, [hl]
    sbc e
    ld l, [hl]
    ldh a, [rP1]
    ld b, c
    nop
    cp $f5
    ld c, e
    ld l, l
    db $d3
    ld bc, $4bd2
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld b, a
    ld c, c
    ld c, e
    ld bc, HeaderOldLicenseeCode
    ld c, e
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld b, a
    ld c, c
    ld c, e
    ld bc, $4041
    ld bc, $45ca
    ld b, a
    ld c, c
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld b, a
    ld c, c
    ld c, e
    ld bc, HeaderOldLicenseeCode
    ld c, e
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    ld b, a
    ld c, c
    ld c, e
    ld bc, $4041
    ld bc, $45ca
    ld b, a
    ld c, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld c, l
    ld c, a
    ld d, c
    ld bc, $0151
    ld d, c
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld c, l
    ld c, a
    ld d, c
    ld bc, $4747
    ld b, [hl]
    ld bc, $4b49
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld c, l
    ld c, a
    ld d, c
    ld bc, $0151
    ld d, c
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld c, l
    ld c, a
    ld d, c
    ld bc, $5351
    ld d, l
    ld d, a
    ld e, c
    ld e, e
    ld e, l
    rst $38
    ret z

    ld l, h
    cp $00
    ld bc, $feb1
    add b
    rst $38
    ld h, h
    cp $00
    ld bc, $fed8
    add b
    ld [bc], a
    and d
    ld [bc], a
    jr z, @+$01

    ld h, h
    cp $00
    inc b
    ld hl, sp-$02
    add b
    ld [bc], a
    call nc, $2802
    rst $38
    add h
    push af
    ld d, e
    ld l, l
    db $d3
    ld bc, $00f0
    ld b, b
    db $fd
    jp nc, Jump_003_5555

    ld d, l
    ld d, l
    ld d, l
    ld c, a
    ld d, c
    ld d, e
    ld bc, $0155
    ld d, l
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld c, a
    ld d, c
    ld d, e
    ld bc, $4e4f
    ld bc, $45ca
    ld b, a
    ld c, c
    ldh a, [rP1]
    ld b, b
    rst $18
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld c, a
    ld d, c
    ld d, e
    ld bc, $0155
    ld d, l
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld c, a
    ld d, c
    ld d, e
    ld bc, $4e4f
    ld bc, $45ca
    ld b, a
    ld c, c
    ldh a, [rP1]
    ld b, b
    db $fd
    jp nc, $5959

    ld e, c
    ld e, c
    ld e, c
    ld d, e
    ld d, l
    ld e, c
    ld bc, $0155
    ld d, l
    ld h, c
    ld h, d
    ld h, c
    ld h, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld d, e
    ld d, l
    ld e, c
    ld bc, $5955
    ld e, b
    ld bc, $5553
    ld d, a
    ldh a, [rP1]
    ld b, b
    rst $18
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld d, e
    ld d, l
    ld e, c
    ld bc, $0155
    ld d, l
    ld h, a
    ld l, b
    ld h, a
    ld l, b
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld d, e
    ld d, l
    ld e, c
    ld bc, $5351
    ld d, l
    ld d, a
    ld e, c
    ld e, e
    ld e, l
    rst $38
    ld [hl], b
    ld l, l
    db $ed
    or b
    ld a, b
    nop
    sub c
    ld l, [hl]
    db $d3
    ld bc, $1bd2
    dec de
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    rlca
    add hl, bc
    dec de
    dec de
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    dec d
    ld de, Call_000_1115
    ld bc, $1bca
    dec de
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    rlca
    add hl, bc
    dec de
    dec de
    dec d
    ld de, $1b1b
    dec d
    ld de, $1b1b
    dec d
    ld de, Call_000_1115
    ld bc, $21ca
    ld hl, $171b
    ld hl, $1b21
    rla
    ld hl, $1b21
    rla
    ld hl, $2721
    add hl, hl
    ld hl, $1b21
    rla
    ld hl, $1b21
    rla
    ld hl, $1b21
    rla
    dec de
    rla
    ld bc, $21ca
    ld hl, $171b
    ld hl, $1b21
    rla
    ld hl, $1b21
    rla
    ld hl, $2721
    add hl, hl
    ld hl, $1b21
    rla
    ld hl, $1b21
    rla
    ld hl, $2321
    dec h
    daa
    add hl, hl
    dec hl
    dec l
    rst $38
    ld c, $6e
    dec b
    jr nz, jr_003_6e96

    nop
    inc b

jr_003_6e96:
    ld b, b
    ld [$ff60], sp
    nop
    db $d3
    ld bc, $02d2
    ld bc, $010f
    ld [bc], a
    inc b
    rrca
    ld bc, $0102
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    inc b
    ld bc, $0102
    ld [bc], a
    inc b
    ld [bc], a
    rrca
    ld bc, $0102
    rrca
    ld bc, $0402
    rrca
    ld bc, $0102
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    inc b
    ld bc, $0102
    ld [bc], a
    inc b
    ld [bc], a
    rrca
    ld bc, $0102
    rrca
    ld bc, $0402
    rrca
    ld bc, $0102
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    ld bc, $0402
    rrca
    inc b
    ld bc, $0102
    ld [bc], a
    inc b
    ld [bc], a
    rrca
    ld bc, $9eff
    ld l, [hl]
    ld e, h
    ld b, l
    dec bc
    ld l, a
    dec c
    ld l, a
    rrca
    ld l, a
    ld de, $136f
    ld l, a
    ld b, l
    ld l, a
    and e
    ld l, a
    db $10
    ld [hl], b
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    push af
    dec [hl]
    ld l, a
    push de
    ld bc, $cad4
    rst $10
    jp z, $00f0

    ld b, b
    cp $d1
    ld [hl], l
    rst $10
    ld bc, $75d1
    ldh a, [rP1]
    ld b, b
    rst $38
    push de
    ld bc, $ffca
    dec de
    ld l, a
    cp $00
    ld bc, $fe61
    add b
    rst $38
    ld b, h
    cp $00
    ld bc, $fe88
    add b
    rst $38
    ld h, d
    db $ed
    add b
    dec a
    ld l, a
    pop af
    ld e, b
    ld c, c
    db $d3
    ld h, l
    ld h, a
    ld l, e
    pop de
    ld bc, $caca
    ld h, l
    jp z, $caca

    ld h, l
    db $d3
    ld h, a
    pop de
    ld l, e
    jp z, Jump_003_6bca

    ld bc, $caca
    ld l, e
    ld h, l
    jp z, $65ca

    ld h, a
    jp z, Jump_003_69ca

    ld l, e
    ld bc, $63ca
    jp z, $caca

    jp z, Jump_003_5dd5

    db $d3
    ld l, e
    ld l, l
    ld l, a
    pop de
    ld bc, $caca
    ld l, e
    jp z, $caca

    ld l, e
    db $d3
    ld l, l
    pop de
    ld l, a
    jp z, Jump_003_67ca

    ld bc, $caca
    ld h, a
    ld l, e
    jp z, Jump_003_6bca

    ld l, l
    jp z, Jump_003_6fca

    ld [hl], c
    ld bc, $75ca
    jp z, $caca

    jp z, Jump_003_67d5

    rst $38
    ld c, h
    ld l, a
    db $ed
    ret nz

    ld a, b
    nop
    ld [$d770], sp
    dec l
    pop de
    dec l
    rst $10
    dec [hl]
    pop de
    ld bc, $31d7
    pop de
    daa
    rst $10
    ld bc, $27d1
    rst $10
    dec l
    pop de
    dec l
    rst $10
    dec [hl]
    pop de
    ld sp, $01d4
    rst $10
    dec l
    pop de
    dec l
    rst $10
    dec [hl]
    pop de

Jump_003_6fca:
    ld bc, $31d7
    pop de
    daa
    rst $10
    ld bc, $2dd1
    push de
    ld bc, $37d7
    pop de
    scf
    rst $10
    ccf
    pop de
    ld bc, $3bd7
    pop de
    ld sp, $01d7
    pop de
    ld sp, $37d7
    pop de
    scf
    rst $10
    ccf
    pop de
    dec sp
    call nc, $d701
    scf
    pop de
    scf
    rst $10
    ccf
    pop de
    ld bc, $3bd7
    pop de
    ld sp, $01d7
    pop de
    scf
    reti


    ld bc, $35d7
    pop de
    ld sp, $a9ff
    ld l, a
    dec b
    jr nz, jr_003_700d

    nop
    ld a, [bc]

jr_003_700d:
    ld h, b
    rst $38
    nop
    pop de
    ld [bc], a
    ld bc, $1dca
    rrca
    ld bc, $1dca
    ld [bc], a
    ld bc, $1dca
    rrca
    ld bc, $1dca
    ld [bc], a
    ld bc, $1dca
    rrca
    ld bc, $1dca
    inc b
    ld bc, $1dca
    inc b
    ld bc, $1dca
    pop de
    ld [bc], a
    ld bc, $1dca
    rrca
    ld bc, $1dca
    ld [bc], a
    ld bc, $1dca
    rrca
    ld bc, $1dca
    inc d
    ld bc, $caca
    rrca
    ld bc, $caca
    rst $18
    inc d
    db $db
    inc d
    inc d
    pop de
    dec e
    ld bc, $04ca
    rst $38
    db $10
    ld [hl], b
    ld c, e
    ld b, l
    ld h, c
    ld [hl], b
    ld h, e
    ld [hl], b
    ld h, l
    ld [hl], b
    ld h, a
    ld [hl], b
    ld l, c
    ld [hl], b
    ld a, h
    ld [hl], b
    ld a, [bc]
    ld [hl], c
    ld e, c
    ld [hl], c
    ldh a, [rSB]
    ld b, b
    rst $38
    db $ed
    add c
    xor b
    ld c, c
    rst $38
    add e
    ld [hl], b
    cp $00
    ld bc, $fe61
    add b
    rst $38
    ld b, h
    ldh a, [rP1]
    ld b, b
    cp $f5
    ld [hl], h
    ld [hl], b
    jp nc, $ca01

    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $caca
    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $6bca
    ld bc, $caca
    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $caca
    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $dbca
    ld bc, $df69
    jp z, $01d2

    ld l, e
    jp z, $ca01

    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $caca
    ld [hl], l
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $75ca
    ld bc, $6bca
    ld bc, $01d2
    jp z, $0175

    jp z, $0175

    jp z, $0175

    jp z, $0175

    jp z, $0175

    ld [hl], c
    ld bc, $0171
    rst $10
    ld [hl], c
    pop de
    ld l, a
    rst $10
    ld [hl], c
    pop de
    ld [hl], l
    push de
    jp z, $83ff

    ld [hl], b
    db $ed
    or b
    ld a, b
    nop
    ld d, c
    ld [hl], c
    db $eb
    inc bc
    jp nc, $012d

    jp z, $0133

    jp z, $caca

    dec l
    ld bc, $33ca
    ld bc, $caca
    jp z, $012d

    jp z, $0133

    jp z, $2c2d

    call nc, $2b29
    db $ec
    jp nc, $012d

    jp z, $0133

    jp z, $caca

    dec l
    ld bc, $33ca
    ld bc, $caca
    jp z, $013b

    scf
    ld bc, $33d7
    pop de
    dec l
    rst $10
    add hl, hl
    pop de
    dec l
    push de
    jp z, $10ff

    ld [hl], c
    dec b
    jr nz, jr_003_7156

    nop
    ld a, [bc]

jr_003_7156:
    ld h, b
    rst $38
    nop
    pop de
    db $eb
    inc bc
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $1dca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $1dca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    db $db
    inc d
    inc d
    rst $18
    inc d
    rst $10
    inc d
    pop de
    inc d
    db $ec
    inc d
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $1dca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc b
    ld bc, $caca
    dec e
    ld bc, $22ca
    inc d
    jr @+$1a

    jr jr_003_71e0

    ld bc, $22ca
    inc b
    ld bc, $1dca
    rrca
    ld bc, $14ca
    push de
    ld bc, $ffd1
    ld e, d
    ld [hl], c
    sbc b
    ld b, l
    nop
    nop
    sbc $71
    ldh [$ff71], a
    ld [$ec71], a
    ld [hl], c

jr_003_71e0:
    add hl, bc
    ld [hl], d
    ld d, $72
    ld [hl], $72
    rst $38
    rst $38
    ld [c], a
    ld [hl], c
    ld a, c
    ld [hl], d
    ldh a, [rP1]
    ld b, b
    sbc $f5
    rst $38
    ld [hl], c
    pop de
    dec de
    dec de
    ld bc, $111b
    inc de
    dec d
    rla
    rst $38
    db $f4
    ld [hl], c
    cp $80
    ld [bc], a
    and c
    cp $40
    inc b
    add h
    rst $38
    ld b, a
    db $ed
    ret nc

    ld a, b
    nop
    ld [hl], c
    ld [hl], d
    pop af
    ld c, e
    ld c, c
    push de
    ld bc, $00ca
    db $eb
    ld [bc], a
    db $d3
    ld c, e
    pop de
    ld c, e
    ld c, l
    ld d, e
    ld bc, $55d3
    pop de
    ld e, c
    ld d, l
    ld d, e
    ld bc, $55d3
    pop de
    ld d, l
    ld d, e
    ld c, l
    ld bc, $4bd3
    pop de
    ld bc, $43ca
    ld c, c
    db $ec
    nop
    db $d3
    ld h, e
    pop de
    ld h, e
    ld h, c
    ld e, e
    ld bc, $61d3
    pop de
    ld h, e
    ld l, e
    ld l, l
    ld l, e
    db $d3
    ld h, e
    pop de
    ld h, e
    ld h, c
    ld e, e
    ld h, c
    db $d3
    ld h, e
    pop de
    ld bc, $5bca
    ld h, c
    db $d3
    ld h, e
    pop de
    ld h, e
    ld h, c
    ld e, e
    ld h, c
    db $d3
    ld h, e
    pop de
    ld h, e
    ld h, l
    ld l, e
    ld l, l
    pop de
    ld l, e
    ld h, l
    ld h, e
    ld h, c
    ld h, e
    ld h, l
    ld l, e
    ld l, l
    db $d3
    ld l, e
    pop de
    ld bc, $41ca
    ld c, c
    nop
    ld b, $20
    ld b, $40
    db $10
    ld h, b
    rst $38
    nop
    pop de
    ldh a, [rP1]
    ld b, b
    cp [hl]
    ld [bc], a
    ldh a, [rP1]
    ld b, b
    db $eb
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    cp [hl]
    dec e
    ldh a, [rP1]
    ld b, b
    db $eb
    ld [hl+], a
    rrca
    ldh a, [rP1]
    ld b, b
    cp [hl]
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    db $eb
    dec e
    ldh a, [rP1]
    ld b, b
    cp [hl]
    ld [hl+], a
    rst $38
    ld a, d
    ld [hl], d
    add a
    ld b, l
    xor e
    ld [hl], d
    xor l
    ld [hl], d
    xor a
    ld [hl], d
    or c
    ld [hl], d
    or e
    ld [hl], d
    add sp, $72
    inc hl
    ld [hl], e
    ld d, h
    ld [hl], e
    ldh a, [rSB]
    ld b, c
    nop
    sbc $ed
    ld b, c
    db $e4
    ld [hl], d
    jp nc, $ca63

    ld e, a
    jp z, $ca5b

    ld d, a
    jp z, $ca5f

    ld e, e
    jp z, $ca57

    ld d, e
    jp z, $ca63

    ld e, a
    jp z, $ca5b

    ld d, a
    jp z, $ca5f

    ld e, e
    jp z, $ca57

    ld d, e
    jp z, $bdff

    ld [hl], d
    ld [bc], a
    and d
    rst $38
    ld b, a
    inc b
    db $d3
    rst $38
    ld h, a
    db $ed
    ret nz

    ldh [$ff72], a
    pop af
    ld e, b
    ld c, c
    jp nc, Jump_003_6163

    jp z, $ca5d

    ld e, c
    jp z, Jump_003_5f55

    ld e, l
    jp z, $ca59

    ld d, l
    jp z, Jump_003_6351

    ld h, c
    jp z, $ca5d

    ld e, c
    jp z, Jump_003_5f55

    ld e, l
    jp z, $ca59

    ld d, l
    jp z, Jump_003_6351

    ld h, c
    jp z, $ca5d

    ld e, c
    jp z, Jump_003_5f55

    ld e, l
    jp z, $ca59

    ld d, l
    jp z, $ff51

    ldh a, [$ff72]
    db $ed
    jr nz, @+$7b

    nop
    ld c, b
    ld [hl], e
    pop af
    ld e, b
    ld c, c
    push de

jr_003_732d:
    cpl
    jp z, $ca2d

    dec hl
    jp z, $ca29

    cpl
    jp z, $ca2d

    dec hl
    jp z, $ca29

    cpl
    jp z, $ca2d

    dec hl
    jp z, $ca29

    rst $38
    dec l
    ld [hl], e
    ld a, [hl+]
    jr nz, jr_003_7375

    jr nz, jr_003_7369

    jr nz, jr_003_7379

    jr nz, jr_003_737b

    jr nz, @+$01

    jr nz, jr_003_732d

    cpl
    cpl
    db $d3
    cpl
    ret c

    cpl
    cpl
    db $d3
    cpl
    ret c

    cpl
    cpl
    db $d3
    cpl
    ret c

    cpl
    cpl
    db $d3
    cpl
    ret c

jr_003_7369:
    cpl
    cpl
    db $d3
    cpl
    rst $38
    ld d, h
    ld [hl], e
    ld l, l
    ld b, l
    ld a, d
    ld [hl], e
    ld a, h

jr_003_7375:
    ld [hl], e
    ld a, [hl]
    ld [hl], e
    add b

jr_003_7379:
    ld [hl], e
    add d

Call_003_737b:
jr_003_737b:
    ld [hl], e
    ld b, $74
    add l
    ld [hl], h
    call z, $f075
    nop
    ld b, b
    cp $f5
    pop af
    ld [hl], e
    pop af
    db $fd
    ld [hl], e
    push de
    ld bc, $caca
    call nc, $d2ca
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    push de
    ld bc, $f201
    push af
    or b
    ld c, c
    call nc, $d101
    ld a, e
    ld [hl], c
    ld bc, $6367
    ld bc, $4f59
    call nc, $d1ca
    ld a, e
    ld [hl], l
    ld l, l
    ld bc, $0175
    ld [hl], c
    ld c, a
    ldh a, [rP1]
    ld b, b
    sbc $d5
    ld bc, $00f0
    ld b, b
    db $ed
    ld bc, $f001
    nop
    ld b, b
    sbc $01
    push de
    ld bc, $00f0
    ld b, b
    db $ed
    ld bc, $00f0
    ld b, b
    sbc $01
    ldh a, [rP1]
    ld b, b
    db $ed
    pop de
    ld bc, $6d71
    ld h, e
    ld l, l
    ld l, l
    ld [hl], c
    ld bc, $757b
    ld bc, $0171
    ld [hl], c
    ld h, e
    ld bc, $82ff
    ld [hl], e
    cp $00
    ld [bc], a
    adc b
    cp $80
    rst $38
    scf
    db $fd
    ld [$80fe], sp
    inc bc
    add d
    cp $00
    ld [bc], a
    jr z, @+$01

    ld h, e
    ld bc, $0182
    add h
    ld bc, $0302
    add l
    rst $38
    ld a, [c]
    push af
    jp hl


    ld [hl], e
    pop de
    ld bc, $5d59
    ld e, c
    ld d, l
    ld bc, $ca53
    ld c, a
    ld bc, $53ca
    ld d, l
    ld bc, $014f
    push de
    ld c, e
    pop de
    ld bc, $5d59
    ld e, c
    ld d, l
    ld bc, $ca53
    ld c, a
    ld bc, $53ca
    ld d, l
    ld bc, $015d
    push de
    ld e, c
    pop de
    ld bc, $5d59
    ld e, c
    ld d, l
    ld bc, $5253
    ld c, a
    ld bc, $53ca
    ld d, l
    ld bc, $014f
    push de
    ld c, e
    pop de
    ld bc, $5d59
    ld e, c
    ld d, l
    ld bc, $5253
    ld c, a
    jp z, Jump_003_4f01

    jp z, Jump_003_4b01

    jp z, $cad5

    push af
    pop af
    ld [hl], e
    pop af
    db $fd
    ld [hl], e
    jp nc, Jump_003_5559

    ld e, c
    ld d, l
    ld e, c
    ld d, l
    ld e, c
    ld d, l
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld d, l
    ld e, c
    ld d, l
    ld e, c
    push de
    ld bc, $01d4
    jp nc, $5959

    ld e, c
    ld e, c
    push de
    ld bc, $01d4
    jp nc, $5959

    ld d, l
    ld e, c
    push de
    ld bc, $ffca
    ld b, $74
    db $ed
    or b
    ld a, b
    nop
    jp nz, $d175

    inc sp
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $0137
    jp z, $0129

    add hl, hl
    ld sp, $f301
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $0133
    jp z, $0129

    add hl, hl
    dec l
    ld bc, $2937
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $0137
    jp z, $0129

    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $f337
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $0129
    add hl, hl
    ld bc, $3129
    ld bc, $0133
    jp z, $0129

    add hl, hl
    dec l
    ld bc, $0137
    jp z, $0129

    add hl, hl
    ld sp, $f301
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $0133
    jp z, $0129

    add hl, hl
    dec l
    ld bc, $2937
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $f337
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $ca01
    scf
    ld bc, $33ca
    ld bc, $01d5
    pop de
    inc sp
    ld bc, $29ca
    ld bc, $f329
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $012d
    scf
    add hl, hl
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $0137
    ld bc, $0129
    add hl, hl
    ld sp, $f301
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $0133
    jp z, $0129

    add hl, hl
    dec l
    ld bc, $2937
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $2d37
    ld bc, $0129
    jp z, $caca

    inc sp
    ld bc, $29ca
    ld bc, $f329
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $012d
    scf
    add hl, hl
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $f337
    inc [hl]
    ret z

    ld h, e
    di
    dec [hl]
    ret z

    ld bc, $0101
    add hl, hl
    ld bc, $3129
    ld bc, $0133
    jp z, $0129

    add hl, hl
    dec l
    ld bc, $2937
    ld bc, $0129
    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $2d37
    ld bc, $0129
    jp z, $caca

    rst $38
    adc h
    ld [hl], h
    dec b
    jr nz, jr_003_75c7

    nop
    inc b

jr_003_75c7:
    ld b, b
    ld [$ff60], sp
    nop
    pop de
    inc d
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $010f
    jp z, HeaderLogo

    inc b
    dec e
    ld [bc], a
    ld [bc], a
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $1414
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $010f
    jp z, HeaderLogo

    inc b
    dec e
    ld [bc], a
    ld [bc], a
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $1414
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $010f
    jp z, HeaderLogo

    inc b
    dec e
    ld [bc], a
    ld [bc], a
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $1414
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $010f
    jp z, $010f

    jp z, $0102

    db $d3
    ld bc, $18d1
    jr jr_003_765b

    inc d
    inc d
    inc b
    inc d
    inc b
    inc d
    inc b
    inc d
    inc b
    rst $38
    call $6d75
    ld b, l
    nop
    nop
    ld e, c
    halt
    ld e, e
    halt
    ld e, l
    halt
    ld e, a
    halt

jr_003_765b:
    sub h
    halt
    ldh [rPCM12], a
    ldh a, [rP1]
    ld b, b
    rst $38
    push af
    adc d
    halt
    jp nc, $1b1b

    dec e
    inc hl
    jp z, $caca

    dec e
    dec de
    dec de
    dec e
    inc hl
    jp z, $1dca

    dec de
    dec de
    dec de
    dec e
    inc hl
    jp z, $caca

    dec e
    dec de
    dec de
    dec e
    inc hl
    jp z, $1dca

    dec de
    rst $38

Jump_003_7688:
    ld [hl], a
    halt
    cp $80
    ld [bc], a
    ld hl, sp-$02
    ld b, b
    inc b
    adc b
    rst $38
    ld h, a
    db $ed
    ret nc

    ld a, b
    nop
    jp c, $f176

    ld c, e
    ld c, c
    push de
    ld bc, $d2ca
    db $eb
    ld [bc], a
    ld h, e
    ld e, e
    ld d, a
    ld d, l
    jp z, $53ca

    ld c, l
    ld h, c
    jp z, Jump_003_57ca

    ld bc, $5355
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld bc, $4bca
    ld c, l
    ld c, e
    ld c, l
    ld bc, $caca
    jp z, $ca49

    db $ec
    ld c, e
    jp z, $01ca

    ld c, e
    ld c, l
    ld d, e
    ld d, l
    ld e, c
    jp z, $01ca

    ld d, l
    ld e, c
    ld e, e
    ld h, l
    push de
    ld h, e
    ld bc, $a0ff
    halt
    ld b, $40
    db $10
    ld h, b
    rst $38
    nop
    push de
    dec l
    jp z, $ca2d

    dec l
    jp z, $ffca

    pop hl
    halt

Jump_003_76eb:
    xor a
    ldh [rNR52], a
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld [$df02], a
    ld [$df09], a
    ld a, $ff
    ldh [rNR51], a
    xor a
    ldh [rNR51], a
    ld [$df03], a
    ld [$df0a], a
    ldh [rNR30], a
    ldh [rNR32], a
    xor a
    ld [$c83d], a
    ld [$c83a], a
    ld [$c843], a
    ld a, $20
    ld [$c839], a
    xor a
    ld [$c844], a
    ld [$c845], a
    ld hl, $452c
    ld a, l
    ld [$df00], a
    ld a, h
    ld [$df01], a
    ld a, $80
    ld [$df66], a
    ld a, $ff
    ld [$df0a], a
    ret


Call_003_7739:
    xor a
    ld [$df03], a
    ld a, [$c849]
    and a
    jr z, jr_003_775c

    ld b, a
    xor a
    ld [$c84d], a
    ld a, $11
    ld [$df03], a
    bit 7, b
    jr nz, jr_003_7777

    ld a, b
    or $80
    ld [$c849], a
    ld de, $df30
    jr jr_003_776e

jr_003_775c:
    ld a, [$c84d]
    bit 7, a
    jr nz, jr_003_7777

    and a
    jr z, jr_003_7777

    or $80
    ld [$c84d], a
    ld de, $df9c

jr_003_776e:
    ld bc, $ff10
    ld hl, $c846
    call Call_003_787a

jr_003_7777:
    ld a, [$c84a]
    and a
    jr z, jr_003_7799

    ld b, a
    xor a
    ld [$c84e], a
    ld a, [$df03]
    or $22
    ld [$df03], a
    bit 7, b
    jr nz, jr_003_77b1

    ld a, b
    or $80
    ld [$c84a], a
    ld de, $df4c
    jr jr_003_77ab

jr_003_7799:
    ld a, [$c84e]
    bit 7, a
    jr nz, jr_003_77b1

    and a
    jr z, jr_003_77b1

    or $80
    ld [$c84e], a
    ld de, $dfb8

jr_003_77ab:
    ld bc, $ff16
    call Call_003_7882

jr_003_77b1:
    ld a, [$c84b]
    and a
    jr z, jr_003_77d6

    ld b, a
    xor a
    ld [$c84f], a
    ld a, [$df03]
    or $44
    ld [$df03], a
    bit 7, b
    jr nz, jr_003_7833

    ld a, b
    or $80
    ld [$c84b], a
    ld de, $df66
    ld hl, $df05
    jr jr_003_77eb

jr_003_77d6:
    ld a, [$c84f]
    bit 7, a
    jr nz, jr_003_7833

    and a
    jr z, jr_003_7833

    or $80
    ld [$c84f], a
    ld de, $dfd2
    ld hl, $df0c

jr_003_77eb:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c844]
    cp l
    jr nz, jr_003_780d

    ld a, [$c845]
    cp h
    jr nz, jr_003_780d

    push de
    ld a, e
    add $04
    ld e, a
    ld a, [de]
    pop de
    and $80
    jr z, jr_003_782a

    xor a
    ldh [rNR30], a
    ld [$c847], a
    jr jr_003_782a

jr_003_780d:
    xor a
    ldh [rNR30], a
    ld [$c847], a
    push de
    ld e, l
    ld a, l
    ld [$c844], a
    ld d, h
    ld a, h
    ld [$c845], a
    ld hl, $ff30
    ld c, $10

jr_003_7823:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_003_7823

    pop de

jr_003_782a:
    ld bc, $ff1a
    ld hl, $c847
    call Call_003_787a

jr_003_7833:
    ld a, [$c84c]
    and a
    jr z, jr_003_785d

    ld b, a
    xor a
    ld [$c850], a
    ld a, [$df03]
    or $88
    ld [$df03], a
    bit 7, b
    jp nz, Jump_003_78a0

    ld a, b
    or $80
    ld [$c84c], a
    ld de, $df82
    ld bc, $ff20
    call Call_003_7882
    jp Jump_003_78a0


jr_003_785d:
    ld a, [$c850]
    bit 7, a
    jp nz, Jump_003_78a0

    and a
    jp z, Jump_003_78a0

    or $80
    ld [$c850], a
    ld de, $dfee
    ld bc, $ff20
    call Call_003_7882
    jp Jump_003_78a0


Call_003_787a:
    ld a, [de]
    cp [hl]
    jr z, jr_003_7880

    ld [hl], a
    ld [bc], a

jr_003_7880:
    inc c
    inc e

Call_003_7882:
    ld a, [de]
    ld [bc], a
    inc e
    inc e
    inc e
    ld a, [de]
    dec e
    dec e
    inc c
    and $80
    jr z, jr_003_7891

    ld a, [de]
    ld [bc], a

jr_003_7891:
    inc c
    inc e
    ld a, [de]
    ld [bc], a
    inc c
    inc e
    ld a, [de]
    ld [bc], a
    bit 7, a
    ret z

    and $7f
    ld [de], a
    ret


Jump_003_78a0:
    ldh a, [rNR51]
    ld c, a
    ld a, [$df0a]
    ld b, a
    ld a, [$df03]
    or b
    cp c
    ret z

    ldh [rNR51], a
    ret


    ld d, c
    xor $31
    ld de, $1153
    ld d, e
    sbc c
    ld [hl], a
    cp e
    ld d, l
    ld sp, $1155
    xor $91
    ld [bc], a
    inc [hl]
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    xor d
    cp e
    call z, $2200
    ld b, h
    ld h, b
    ld [bc], a
    inc h
    ld b, [hl]
    rst $38
    rst $38
    rrca
    dec c
    ld [$0204], sp
    ld b, d
    add [hl]
    jp z, $c8fd

    add h
    ld b, d
    ld [bc], a
    ld c, b
    ld de, $5533
    ld [hl], a
    sbc c
    cp e
    db $dd
    rst $38
    xor $cc
    xor d
    adc b
    ld h, [hl]
    ld b, h
    ld [hl+], a
    nop
    ld [bc], a
    ld b, [hl]
    adc d
    adc $fe
    jp z, Jump_003_5686

    adc d
    res 5, b
    ld h, l
    ld l, b
    sbc b
    ld h, h
    ld hl, $de08
    db $fd
    db $ed
    db $ed
    jp z, Jump_003_7688

    ld h, d
    ld b, [hl]
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, d
    ld hl, $8ef0
    and [hl]
    inc d
    ld a, d
    db $db
    sub a
    ld d, e
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    sbc b
    add a
    ld [hl], a
    ld a, b
    db $fc
    or [hl]
    ld a, b
    sub [hl]
    ld [hl-], a
    dec [hl]
    ld h, h
    ld bc, $4523
    ld d, h
    ld d, [hl]
    ld h, a
    adc c
    sbc e
    rst $18
    xor b
    adc c
    xor h
    sbc $ff
    xor b
    adc c
    xor h
    sbc $ff
    xor b
    adc c
    xor h
    sbc $ee
    rst $38
    rst $38
    rst $38
    rrca
    dec c
    ld [$0204], sp
    ld b, d
    add [hl]
    jp z, $c8fd

    add h
    ld b, d
    ld [bc], a
    ld c, b
    add l
    adc l
    add d
    adc a
    add b
    adc l
    add d
    adc e
    add l
    adc d
    add [hl]
    adc c
    add a
    adc c
    add a
    adc c
    adc c
    add a
    adc d
    add [hl]
    adc e
    add l
    adc l
    add d
    adc a
    add b
    adc l
    add d
    adc e
    add l
    adc d
    add [hl]
    add l
    adc l
    add d
    adc a
    add b
    adc l
    add d
    adc e
    add l
    adc d
    add [hl]
    adc c
    add a
    adc c
    add a
    adc c
    adc c
    add a
    adc d
    add [hl]
    adc e
    add l
    adc l
    add d
    adc a
    add b
    adc l
    add d
    adc e
    add l
    adc d
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7bd3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
