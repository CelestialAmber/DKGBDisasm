; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    rst $38
    rst $38
    rst $38
    
Call_02_4003:
    call Call_002_45a9
    jp Jump_002_6212


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_4010:
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


Jump_002_4022:
    inc de
    ld a, [$c83c]
    cp $02
    jr nz, jr_002_403c

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

jr_002_403c:
    ld a, l
    add $16
    ld l, a
    ld a, [de]
    ld c, a
    and $c0
    ld [hl], a

Jump_002_4045:
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


Jump_002_4062:
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


Jump_002_4074:
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


Jump_002_4098:
    ld a, [de]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ld e, a
    ld a, [$c83c]
    cp $03
    jp z, Jump_002_4102

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
    jr z, jr_002_40c8

    dec de
    dec de

jr_002_40c8:
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
    jr z, jr_002_40f5

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
    jr z, jr_002_40ef

    ld c, $40
    inc l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_002_40ef:
    pop hl
    ld a, [hl]
    or $80
    or c
    ld [hl], a

jr_002_40f5:
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


Jump_002_4102:
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


Jump_002_4131:
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, l
    add $08
    ld l, a
    ld e, [hl]
    ld a, l

Jump_002_413b:
    sub $06
    ld l, a
    ld a, [hl]
    add e
    ld [hl], a
    ret


    ld a, l

Jump_002_4143:
    add $07
    ld l, a
    ld c, [hl]
    ld a, l
    sub $06
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

Call_002_4159:
    dec l
    ld [hl], e
    ret


Jump_002_415c:
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

jr_002_416f:
    dec c
    jr z, jr_002_417c

    inc hl
    srl b
    jr nc, jr_002_416f

    inc de
    ld a, [de]
    ld [hl], a
    jr jr_002_416f

jr_002_417c:
    push hl
    ld hl, $c83f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc l
    inc l
    srl b
    jr nc, jr_002_418c

    inc de
    ld a, [de]
    ld [hl], a

jr_002_418c:
    inc l
    srl b
    jr nc, jr_002_4194

    inc de
    ld a, [de]
    ld [hl], a

jr_002_4194:
    srl b
    jr nc, jr_002_41a0

    inc l
    inc l
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a

jr_002_41a0:
    pop hl
    pop af
    and $84
    jr z, jr_002_41aa

    ld a, [hl]
    or $80
    ld [hl], a

jr_002_41aa:
    ld c, $00
    ld a, [$c841]
    add $0d
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_002_41b8

    ld c, $40

jr_002_41b8:
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

Jump_002_41ca:
    ld [hl+], a
    ld [hl], a
    ld a, [$c841]
    ld l, a
    inc de
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_002_41d5:
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


Jump_002_41e3:
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
    ld hl, $c83f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Jump_002_41f7:
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


Jump_002_4209:
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


Jump_002_4229:
    ld a, l
    add $08
    ld l, a
    dec [hl]
    jr nz, jr_002_4233

    inc de
    jr jr_002_4237

jr_002_4233:
    inc l
    ld e, [hl]
    inc l
    ld d, [hl]

jr_002_4237:
    ld a, [$c841]
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ret


Jump_002_423f:
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


Jump_002_4250:
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


Jump_002_425f:
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld [hl], a
    dec l
    ld [hl], c
    ret


Call_002_4268:
    ld a, l
    add $0d
    ld l, a
    ld a, [hl]
    and a
    jp nz, Jump_002_430f

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_002_42d9

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
    jr z, jr_002_42ca

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
    jr z, jr_002_42c7

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
    jr nz, jr_002_42c0

    ld a, $01

jr_002_42c0:
    ld d, a

jr_002_42c1:
    dec b
    jr z, jr_002_42c7

    add d
    jr jr_002_42c1

jr_002_42c7:
    pop hl
    ld [hl], a
    ret


jr_002_42ca:
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    ld a, [hl]
    and $bf
    ld [hl], a
    ret


jr_002_42d9:
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
    jr z, jr_002_42eb

    dec hl

jr_002_42eb:
    dec hl
    ld b, [hl]
    pop hl
    ld a, [hl]
    bit 7, b
    jr nz, jr_002_42f9

    bit 7, a
    jr z, jr_002_42ff

    jr jr_002_42fd

jr_002_42f9:
    bit 7, a
    jr nz, jr_002_42ff

jr_002_42fd:
    cpl
    inc a

jr_002_42ff:
    ld [hl], a
    ld a, l
    sub $04
    ld l, a
    ld a, b
    and $7f
    ld [hl], a
    inc hl
    bit 7, e
    jr nz, jr_002_430e

    dec [hl]

jr_002_430e:
    dec hl

Jump_002_430f:
    dec [hl]
    ld a, l
    add $04
    ld l, a
    ld c, [hl]
    ld b, $00
    bit 7, c
    jr z, jr_002_431d

    ld b, $ff

jr_002_431d:
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


Call_002_432c:
    ld a, [$c83c]
    cp $03
    jr z, jr_002_438f

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
    jr nz, jr_002_434c

    ld c, [hl]
    inc b
    inc hl
    ld a, [hl+]
    inc b

jr_002_434c:
    cp $fe
    jr nz, jr_002_4372

    ld a, [$c83c]
    cp $02
    jr nz, jr_002_436d

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
    jr jr_002_4370

jr_002_436d:
    ld d, [hl]
    inc b
    inc hl

jr_002_4370:
    ld a, [hl+]
    inc b

jr_002_4372:
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
    jr z, jr_002_4381

    ld [hl], c

jr_002_4381:
    inc hl
    cp d
    jr z, jr_002_4386

    ld [hl], d

jr_002_4386:
    inc hl
    ld [hl], e
    inc hl
    inc hl
    ld a, [hl]
    or $80
    ld [hl], a
    ret


jr_002_438f:
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

jr_002_4414:
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
    jr nz, jr_002_4414

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
    jr jr_002_4538

    inc bc

jr_002_4538:
    dec b
    ld a, [bc]
    rlca
    add hl, bc
    ld bc, $0603
    inc c
    jr jr_002_4572

    inc b
    add hl, bc
    ld [de], a
    inc h
    ld [bc], a
    inc b
    ld [$0510], sp
    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    ld b, $0c
    jr jr_002_4585

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
    jr z, @+$52

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
    jr jr_002_45a2

jr_002_4572:
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

jr_002_4585:
    daa
    ld c, [hl]
    inc bc
    rlca
    ld c, $1c
    jr c, @+$72

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
    jr jr_002_45d1

    ld h, b

jr_002_45a2:
    dec b
    ld a, [bc]
    dec d
    jr z, jr_002_45ad

    inc c
    db $16

Call_002_45a9:
    ld a, [$c835]
    and a

jr_002_45ad:
    jr z, jr_002_45be

    xor a
    ld [$c835], a
    ld hl, $c83f
    ld [hl], $00
    inc l
    ld [hl], $df
    jp Jump_002_4677


jr_002_45be:
    ld hl, $c83f
    ld [hl], $00
    inc l
    ld [hl], $df
    xor a
    ld [$c83c], a
    ld a, [$df0e]
    and a
    jp z, Jump_002_466d

Jump_002_45d1:
jr_002_45d1:
    ld hl, $c841
    ld [hl], $1a
    inc l
    ld [hl], $df
    ld hl, $df1c
    ld bc, $c849
    jr jr_002_4629

Jump_002_45e1:
    ld hl, $c841
    ld [$c83c], a
    cp $02
    jr z, jr_002_4603

    cp $03
    jr z, jr_002_4617

    ld a, [$df0f]
    and a
    jp z, Jump_002_466d

    ld [hl], $35
    inc l
    ld [hl], $df
    ld hl, $df37
    ld bc, $c84a
    jr jr_002_4629

jr_002_4603:
    ld a, [$df10]
    and a
    jp z, Jump_002_466d

    ld [hl], $50
    inc l
    ld [hl], $df
    ld hl, $df52
    ld bc, $c84b
    jr jr_002_4629

jr_002_4617:
    ld a, [$df11]
    and a
    jp z, Jump_002_466d

    ld [hl], $6b
    inc l
    ld [hl], $df
    ld hl, $df6d
    ld bc, $c84c

jr_002_4629:
    ld a, [hl]
    and a
    jr z, jr_002_4631

    cp $f0
    jr c, jr_002_4639

jr_002_4631:
    push hl
    call Call_002_4744
    pop hl
    dec [hl]
    jr jr_002_466d

jr_002_4639:
    dec [hl]
    inc l
    ld a, [hl]
    and $40
    jr z, jr_002_4648

    ld a, $02
    ld [bc], a
    push hl
    call Call_002_4268
    pop hl

jr_002_4648:
    ld a, [hl]
    and $80
    jr z, jr_002_466d

    inc l
    ld a, [hl]
    and a
    jr z, jr_002_4660

    cp $ff
    jr z, jr_002_4659

    dec [hl]
    jr jr_002_466d

jr_002_4659:
    dec l
    ld a, [hl]
    and $7f
    ld [hl], a
    jr jr_002_466d

jr_002_4660:
    call Call_002_432c
    ld hl, $c849
    ld a, [$c83c]
    add l
    ld l, a
    ld [hl], $02

Jump_002_466d:
jr_002_466d:
    ld a, [$c83c]
    inc a
    cp $04
    ret z

    jp Jump_002_45e1


Jump_002_4677:
    ld c, $00
    ld b, $09
    jr jr_002_4683

Jump_002_467d:
jr_002_467d:
    ld a, b
    sub $02
    ret z

    inc c
    dec b

jr_002_4683:
    ld hl, $c82d
    ld a, c
    add l
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_002_467d

    dec a
    sla a
    ld e, a
    ld d, $00
    ld [hl], d
    ld hl, $47fc
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and a
    jr z, jr_002_46c4

    ld d, a
    ld a, [$df0e]
    cp b
    jr nc, jr_002_46c4

    ld a, b
    dec a
    ld [$df0e], a
    ld a, e
    ld [$df1a], a
    ld a, d
    ld [$df1b], a
    xor a
    ld [$df1c], a
    ld [$df1d], a
    ld [$df27], a
    ld a, $01
    ld [$df23], a

jr_002_46c4:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and a
    jr z, jr_002_46ed

    ld d, a
    ld a, [$df0f]
    cp b
    jr nc, jr_002_46ed

    ld a, b
    dec a
    ld [$df0f], a
    ld a, e
    ld [$df35], a
    ld a, d
    ld [$df36], a
    xor a
    ld [$df37], a
    ld [$df38], a
    ld [$df42], a
    ld a, $01
    ld [$df3e], a

jr_002_46ed:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and a
    jr z, jr_002_4716

    ld d, a
    ld a, [$df10]
    cp b
    jr nc, jr_002_4716

    ld a, b
    dec a
    ld [$df10], a
    ld a, e
    ld [$df50], a
    ld a, d
    ld [$df51], a
    xor a
    ld [$df52], a
    ld [$df53], a
    ld [$df5d], a
    ld a, $01
    ld [$df59], a

jr_002_4716:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and a
    jp z, Jump_002_467d

    ld d, a
    ld a, [$df11]
    cp b
    jp nc, Jump_002_467d

    ld a, b
    dec a
    ld [$df11], a
    ld a, e
    ld [$df6b], a
    ld a, d
    ld [$df6c], a
    xor a
    ld [$df6d], a
    ld [$df6e], a
    ld [$df78], a
    ld a, $01
    ld [$df74], a
    jp Jump_002_467d


Call_002_4744:
jr_002_4744:
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [de]
    cp $f0
    jp z, Jump_002_47f6

    cp $00
    jp z, Jump_002_47bc

    cp $01
    jp z, Jump_002_47f0

    cp $ca
    jp c, Jump_002_47ea

    jp z, Jump_002_4131

    cp $eb
    jp c, Jump_002_4209

    cp $ef
    jp z, Jump_002_47a5

    cp $ed
    jp z, Jump_002_4022

    cp $f5
    jp z, Jump_002_4062

    cp $f1
    jp z, Jump_002_4010

    cp $f2
    jp z, Jump_002_41f7

    cp $eb
    jp z, Jump_002_423f

    cp $ec
    jp z, Jump_002_4229

    cp $f4
    jp z, Jump_002_4250

    cp $f3
    jp z, Jump_002_41d5

    cp $ee
    jp z, Jump_002_41e3

    cp $ff
    jp z, Jump_002_425f

jr_002_47a3:
    jr jr_002_47a3

Jump_002_47a5:
    push bc
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld [hl], a
    dec l
    ld [hl], c
    pop bc
    inc de
    ld a, l
    add $09
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    jr jr_002_4744

Jump_002_47bc:
    xor a
    ld [bc], a
    ld hl, $df0e
    ld a, [$c83c]
    add l
    ld l, a
    xor a
    ld [hl], a
    ld c, $11

Jump_002_47ca:
    ld a, [$c83c]
    sub $01
    jr c, jr_002_47df

    sla c
    sub $01
    jr c, jr_002_47df

    sla c
    sub $01
    jr c, jr_002_47df

    sla c

jr_002_47df:
    ld a, c
    cpl
    ld c, a
    ld a, [$df03]
    and c
    ld [$df03], a
    ret


Jump_002_47ea:
    ld a, $02
    ld [bc], a
    jp Jump_002_4098


Jump_002_47f0:
    ld a, $02
    ld [bc], a
    jp Jump_002_4074


Jump_002_47f6:
    ld a, $02
    ld [bc], a
    jp Jump_002_415c


    ld a, l
    ld d, e
    push af
    ld e, d
    pop bc
    ld e, c
    ret


    ld e, c
    ld de, $435a
    ld e, d
    ld h, a
    ld e, d
    adc d
    ld e, d
    cp h
    ld e, d
    ld [hl+], a
    ld e, e

Jump_002_4810:
    db $eb
    ld e, e
    ld de, $585c
    ld e, e
    adc [hl]
    ld e, e
    xor l
    ld e, e
    jp z, $e85c

    ld e, h
    ld [hl+], a
    ld e, l
    ld e, d
    ld e, l
    ret z

    ld e, l
    daa
    ld e, [hl]
    ld b, h
    ld e, [hl]
    ld h, c
    ld e, [hl]
    ld l, c
    ld e, [hl]
    and a
    ld e, a
    or $5f
    add l
    ld e, [hl]
    ld [de], a
    ld h, b
    ld h, e
    ld h, b
    add l
    ld h, b
    jp c, $f15e

    ld e, [hl]
    rrca
    ld e, a
    dec l
    ld e, a
    ld b, h
    ld e, a
    ld h, d
    ld e, a
    dec de
    ld e, c
    inc hl
    ld e, c
    ld [hl], d
    ld e, c
    ld [c], a
    ld e, b
    db $e3
    ld h, b
    sbc a
    ld d, a
    call nc, $3757
    ld d, a
    ld l, b
    ld d, a
    add hl, bc
    ld e, b
    ld d, [hl]
    ld e, b
    and e
    ld e, b
    sub a
    ld d, a
    ld de, $e957
    ld d, [hl]
    add $56
    sub d
    ld d, [hl]
    sub l
    ld c, e
    ld e, $55
    ld b, d
    ld d, l
    ld d, [hl]
    ld d, l
    ld [hl], c
    ld d, l
    and b
    ld d, l
    ret c

    ld d, l
    inc hl
    ld d, [hl]
    sbc $54
    ld a, c
    ld e, a
    jp $b354


    ld d, h
    inc b
    ld c, c
    ld a, b
    ld d, h
    add b
    ld d, h
    ld c, l
    ld d, h
    ld [de], a
    ld e, [hl]
    ld [bc], a
    ld d, h
    jp z, Jump_002_5553

    ld d, e
    pop de
    ld c, e
    ld sp, $1553
    ld h, c
    db $fc
    ld d, d
    sub [hl]
    ld h, c
    add $51
    jr nc, jr_002_48ee

    db $ec
    ld d, d
    ld c, [hl]
    ld d, c
    ld l, h
    ld d, c
    adc d
    ld d, c
    xor b
    ld d, c
    ld de, $ed51
    ld d, b
    push af
    ld d, b
    or e
    ld c, a
    sub [hl]
    ld d, b
    call z, $f450
    ld d, d
    ld [hl], b
    ld d, b
    ld b, e
    ld d, b
    db $eb
    ld c, a
    ld e, h
    ld c, a
    or d
    ld c, [hl]
    dec bc
    ld c, a
    halt
    ld c, [hl]
    ld c, a
    ld c, [hl]
    db $fc
    ld c, l
    dec sp
    ld c, l
    and l
    ld c, l
    ld l, h
    ld c, l
    ld [bc], a
    ld c, l
    adc e
    ld c, h
    jr nz, jr_002_491e

    adc l
    ld c, e
    add l
    ld c, e
    reti


    ld c, d
    inc [hl]
    ld c, e
    ld hl, $ed4a
    ld c, c
    add c
    ld c, c
    and d
    ld c, c
    adc $49
    ld h, b
    ld c, c
    ld b, l
    ld c, c
    inc b
    ld c, c
    ld bc, $0808
    nop

jr_002_48ee:
    ld bc, $0584
    add c
    ldh a, [$ff84]
    inc b
    add c
    rst $38
    ld bc, $0201
    nop
    inc b
    add [hl]
    ld [bc], a
    add d
    ldh a, [$ff86]
    inc b
    add c
    rst $38
    inc c
    ld c, c
    ld [de], a
    ld c, c
    nop
    nop
    nop
    nop
    ldh a, [$ff03]
    dec d
    ld [$8008], sp
    ldh a, [rSB]
    inc d
    ld [$d280], sp
    db $ed
    add c
    inc sp
    ld c, c
    adc l
    adc e

jr_002_491e:
    adc c
    push af
    add hl, sp
    ld c, c
    adc l
    adc e
    adc c
    push af
    ccf
    ld c, c
    adc l
    adc e
    adc c
    jp z, $f0ca

    nop

jr_002_492f:
    inc d
    ld [$0080], sp
    ld [bc], a
    xor b
    ld bc, $ff28
    ld d, a
    ld [bc], a
    ld c, b
    ld bc, $ff18
    daa
    ld [bc], a
    jr z, @+$03

    ld [$17ff], sp
    nop
    nop
    nop
    nop
    ld c, l
    ld c, c
    sbc h
    ld d, l
    ldh a, [rSB]
    add c
    add b
    ret nc

    ld a, b
    push af
    sub [hl]
    ld d, l
    jp nc, $2b29

    ld b, l
    dec l
    ldh a, [rP1]
    ld bc, $0000
    nop
    nop
    ld l, b
    ld c, c
    nop
    nop
    nop
    nop
    db $ed
    add b
    ld l, a
    ld c, c
    rst $38
    or d
    ld c, c
    db $10
    jr jr_002_4982

    jr z, jr_002_4984

    jr c, jr_002_49a6

    ld c, a
    jr jr_002_492f

    db $10
    jr c, jr_002_498c

    jr z, jr_002_498e

    jr @+$01

    rla
    adc c

jr_002_4982:
    ld c, c
    nop

jr_002_4984:
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    inc bc

jr_002_498c:
    nop
    add b

jr_002_498e:
    pop af
    sbc l
    ld c, c
    ldh a, [$ff80]
    inc e
    xor b
    adc $87
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ldh a, [$ff8f]
    adc a
    add c
    rst $38
    xor d
    ld c, c
    nop
    nop

jr_002_49a6:
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    ld bc, $ed08
    add b
    jp nz, $f149

    sbc l
    ld c, c
    push de
    add e
    jp z, $caca

    jp z, $caca

    jp z, $caca

    jp z, $1a00

    or a
    ld b, b
    ld a, b
    ld b, b
    ld e, b
    ld b, b
    jr c, jr_002_4a0b

    jr z, @+$01

    rla
    sub $49
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    ld bc, $ed08
    add b
    pop hl
    ld c, c
    rst $38
    or d
    ld c, c
    ld b, b
    jr jr_002_4a24

    jr z, jr_002_4a06

    jr c, jr_002_49f8

    ld c, b
    ld b, b
    ld e, h
    rst $38
    ld [$49f5], sp
    ei
    ld c, c
    nop
    nop
    nop
    nop
    ldh a, [rTAC]
    dec d

jr_002_49f8:
    ld [$8008], sp
    ldh a, [rSB]
    inc d
    ld [$ed80], sp
    add b
    cp c
    ld c, d
    db $db
    dec de

jr_002_4a06:
    inc hl
    ld b, c
    ld b, l
    push af
    pop bc

jr_002_4a0b:
    ld c, d
    ld c, e
    ld d, e
    ld [hl], c
    ld [hl], l
    push af
    ret


    ld c, d
    ld a, e
    add e
    and d
    and [hl]
    ld a, d
    add d
    and d
    and [hl]
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    add hl, hl
    ld c, d
    cpl

jr_002_4a24:
    ld c, d
    nop
    nop
    nop
    nop
    ldh a, [rNR22]
    dec d
    ld [$8008], sp
    ldh a, [rNR11]
    inc d
    ld [$ed80], sp
    add b
    and c
    ld c, d
    pop de
    ld a, e
    add d
    adc b
    adc h
    db $f4
    rla
    ld a, e
    add d
    adc b
    adc h
    db $f4
    inc de
    ld a, e
    add d
    adc b
    adc h
    db $f4
    rrca
    ld a, e
    add d
    adc b
    adc h
    db $f4
    dec bc
    ld a, e
    add d
    adc b
    adc h
    db $f4
    rlca
    ld a, e
    add d
    adc b
    adc h
    db $f4
    inc bc
    ld a, e
    add d
    adc b
    db $f4
    ld bc, $f47b
    ld bc, $03eb
    ld a, e
    ld a, e
    ld a, e
    add e
    add e
    adc c
    adc c
    db $ec
    push af
    and c
    ld c, d
    db $db
    and a
    and d
    sbc d
    sub d
    push af
    or c
    ld c, d
    pop de
    adc l
    adc b
    add d
    ld a, d
    ld [hl], h
    ld [hl], b
    ld l, d
    ld h, d
    push af
    or c
    ld c, d
    db $db
    ld e, l
    ld e, b
    ld d, d
    ld c, d
    push af
    pop bc
    ld c, d
    jp nc, Jump_002_4045

    ld a, [hl-]
    ld [hl-], a
    push af
    pop bc
    ld c, d
    rst $10
    dec l
    jr z, @+$24

    ld a, [de]
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    inc bc
    ld c, b
    ld bc, $0318
    ld l, b
    ld [bc], a
    jr @+$05

    adc b
    ld bc, $0328
    sbc b
    ld [bc], a
    jr z, @+$05

    xor b
    ld bc, $0348
    sbc b
    ld [bc], a
    ld c, b
    inc bc
    adc b
    ld bc, $0328
    ld l, b
    ld [bc], a
    jr z, @+$05

    ld c, b
    ld bc, $0318
    jr c, jr_002_4aca

    jr @+$05

jr_002_4aca:
    jr z, @+$03

    jr @+$05

    jr jr_002_4ad2

    jr @+$05

jr_002_4ad2:
    ld [de], a
    ld bc, $0308
    ld de, $08ff
    pop hl
    ld c, d
    ld [bc], a
    ld c, e
    add hl, hl
    ld c, e
    ld l, $4b
    ldh a, [rP1]
    ld bc, $ed00
    ret nz

    cp $4a
    call nc, $ca15
    jp z, $1b19

    jp z, $ca15

    dec hl
    jp z, $caca

    dec l
    jp z, $01f0

    inc d
    ld [$0080], sp
    ld [hl], $a8
    rst $38
    ld d, a
    db $ed
    add b
    cp $4a
    call nc, $ca2d
    jp z, $3331

    jp z, $ca2d

    jp nc, Jump_002_4143

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
    call nc, $ca45
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ldh a, [$ffe0]
    ld bc, $0000
    ldh a, [$ffe0]
    inc d
    ld [$0080], sp
    inc a
    ld c, e
    ld h, b
    ld c, e
    ld a, d
    ld c, e
    ld a, a
    ld c, e
    ldh a, [rP1]
    ld bc, $ed00
    ld b, b
    ld e, [hl]
    ld c, e
    reti


    inc sp
    dec h
    inc sp
    dec h
    ret c

    dec h
    rst $10
    add hl, hl
    dec l
    cpl
    inc sp
    scf
    dec sp
    call nc, $ca3d
    jp z, $01f0

    inc d
    ld [$0080], sp
    rst $38
    and d
    rst $38
    add d
    db $ed
    add b
    ld e, h

Call_002_4b63:
    ld c, e
    ret c

    ld b, c
    rst $10
    jp z, $d845

    ld bc, $4a4b
    ld b, l
    ld b, c
    ld b, l
    call nc, $ca3d
    jp z, $01f0

    inc d
    ld [$0080], sp
    ldh a, [$ffc0]
    ld bc, $0000
    ldh a, [$ffc0]
    inc d
    ld [$0080], sp
    jr c, jr_002_4bd9

    nop
    nop
    nop
    nop
    ld h, d
    ld e, l
    pop af
    ld d, [hl]
    nop

jr_002_4b90:
    nop
    nop
    nop
    jp nz, $0052

    nop
    nop
    nop
    nop
    nop
    sbc l
    ld c, e
    ldh a, [rSB]
    inc e
    ld hl, sp+$07
    add b
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld bc, $a11c
    inc [hl]
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    inc b
    inc e
    rla
    ld [hl-], a
    add b
    ldh a, [rSB]
    inc e
    inc l
    ld [bc], a
    add b
    ldh a, [rSB]
    inc e
    ld c, e
    inc b
    add b
    ldh a, [rTMA]
    inc e
    ld c, e
    inc h

Jump_002_4bca:
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp

jr_002_4bd1:
    reti


    ld c, e
    nop
    nop
    ret z

    ld e, b
    nop
    nop

jr_002_4bd9:
    rst $28
    ld l, a
    ld c, h
    ldh a, [$ff03]

jr_002_4bde:
    rra
    ld b, [hl]
    ret nz

    ld hl, sp+$39
    add a
    ldh a, [$ff03]
    jr @+$5b

    add a
    ldh a, [$ff03]
    inc e
    ret c

    add e
    add a
    ldh a, [$ff03]
    jr jr_002_4b90

    add a

jr_002_4bf4:
    ldh a, [$ff03]
    jr @-$52

    add a
    ldh a, [rSC]
    inc e
    adc b
    pop bc

jr_002_4bfe:
    add a
    ldh a, [rSC]
    jr jr_002_4bd1

    add a

jr_002_4c04:
    ldh a, [rSC]
    jr jr_002_4bde

    add a
    ldh a, [rSC]
    inc e
    ld c, b
    pop hl
    add a
    ldh a, [rSC]
    jr @-$17

    add a
    ldh a, [rSC]
    inc e
    jr z, jr_002_4c04

    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    jr z, @+$4e

    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    ld l, a
    ld c, h
    ldh a, [rSC]
    rra
    ld c, [hl]
    ret nz

    ld hl, sp-$15
    add a
    ldh a, [rSC]
    jr @-$17

    add a
    ldh a, [rSC]
    inc e
    ret c

    pop bc
    add a
    ldh a, [rSC]
    jr @-$28

    add a
    ldh a, [rSC]
    jr @-$30

    add a
    ldh a, [$ff03]
    inc e
    xor b
    pop bc
    add a
    ldh a, [$ff03]
    jr jr_002_4bfe

    add a
    ldh a, [$ff03]
    jr jr_002_4bf4

    add a
    ldh a, [$ff03]
    inc e
    ld l, b
    add e
    add a
    ldh a, [$ff03]
    jr @+$5b

    add a
    ldh a, [$ff03]
    inc e
    jr z, @+$3b

    add a
    ldh a, [rSB]
    inc d

Jump_002_4c6c:
    ld [$0080], sp
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    ldh a, [rSB]
    ld e, $bb
    ld hl, sp-$2a
    rst $00
    db $f4
    ld b, $f0
    ld bc, $3b1e
    ld hl, sp-$54
    rst $00
    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    sub e
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    rra
    ld d, a
    add b
    ld h, d
    db $eb
    add a
    ldh a, [rSC]
    jr @-$17

    add a

jr_002_4ca0:
    ldh a, [$ff03]
    ld e, $00
    ld sp, $87e1
    ldh a, [rDIV]
    ld e, $80
    ld hl, $87ce
    ldh a, [rSC]
    ld e, $80
    add d
    db $eb
    add a
    ldh a, [rSC]
    jr jr_002_4ca0

    add a

jr_002_4cba:
    ldh a, [$ff03]
    ld e, $00
    ld h, c
    pop hl
    add a
    ldh a, [rDIV]
    ld e, $80
    ld b, c
    adc $87
    ldh a, [rSC]
    ld e, $80
    ld h, c
    db $eb
    add a
    ldh a, [rSC]
    jr jr_002_4cba

    add a

jr_002_4cd4:
    ldh a, [$ff03]
    ld e, $00
    ld sp, $87e1
    ldh a, [rDIV]
    ld e, $80
    ld hl, $87ce
    ldh a, [rSC]
    ld e, $80
    ld b, c
    db $eb
    add a
    ldh a, [rSC]
    jr jr_002_4cd4

    add a
    ldh a, [$ff03]
    ld e, $00
    ld hl, $87e1
    ldh a, [rDIV]
    ld e, $80
    ld de, $87ce
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld a, [bc]
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    db $eb
    inc bc
    ldh a, [rDIV]
    rra
    ld b, [hl]
    ret nz

    ld hl, sp-$32
    add a
    ldh a, [$ff03]
    rra
    ld b, a
    add b
    ret c

    sub $87
    ldh a, [$ff03]
    rra
    ld d, a
    nop
    and h
    pop hl
    add a
    ldh a, [$ff03]
    rra
    ld d, a
    add b
    ld h, h
    rst $20
    add a
    ldh a, [$ff03]
    rra
    ld h, a
    nop
    ld b, h
    db $eb
    add a
    db $ec
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld b, e
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    rra
    daa
    add b
    ld hl, sp-$76
    add a
    ldh a, [$ff03]
    dec de
    ccf
    ld b, b
    sbc l
    add a
    ldh a, [rTMA]
    inc d
    ld [$f080], sp
    ld [bc], a
    rra
    daa
    add b
    ld l, b
    ld l, e
    add a
    ldh a, [$ff03]
    dec de
    ccf
    ld b, b
    add e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld [hl], h
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    pop af
    sbc b
    ld c, l
    push af
    adc [hl]
    ld c, l
    pop de
    db $f4
    inc b
    ld h, a
    ld [hl], c
    jp z, $caca

    ldh a, [rP1]
    inc d
    ld [$0080], sp
    cp $40
    ld [bc], a
    ret z

    ld [bc], a
    ld [$80fe], sp
    rst $38
    ld [hl], a
    ld bc, $0101
    add d
    ld bc, $8202
    add d
    inc b
    add h
    inc b
    add d
    rst $38
    xor l
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    rst $10
    pop af
    pop de
    ld c, l
    push af
    add sp, $4d
    ld c, a
    ld d, l
    push af
    sbc $4d
    ld c, a
    ld d, l
    push af
    add sp, $4d
    ld c, a
    ld d, l
    push af
    ld a, [c]
    ld c, l
    ld c, a
    ld d, l
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    ld bc, $0101

jr_002_4dd4:
    adc b
    ld bc, $8181
    adc b
    ld [bc], a
    add d
    add d
    add h
    rst $38
    cp $80
    ld bc, $fe88
    ld b, b
    ld bc, $ff28
    ld de, $80fe
    ld bc, $fe38
    ld b, b
    ld bc, $ff08
    ld de, $80fe
    ld bc, $fe28
    ld b, b
    ld bc, $ff08
    ld de, $4e04
    nop
    nop
    nop
    nop
    nop

jr_002_4e03:
    nop
    ldh a, [rDIV]
    rra
    ld b, h
    ret nz

jr_002_4e09:
    ret z

    push hl
    add h
    ldh a, [rDIV]
    jr @+$65

    add l
    ldh a, [rSC]
    rra
    ld b, h

jr_002_4e15:
    nop
    sbc b
    ld [hl], d

jr_002_4e18:
    add [hl]
    ldh a, [rSC]
    jr @-$4c

    add [hl]
    ldh a, [rSC]
    jr jr_002_4e28

jr_002_4e22:
    add a
    ldh a, [rSC]
    jr jr_002_4e60

    add a

jr_002_4e28:
    ldh a, [rSC]
    jr @+$5b

    add a
    ldh a, [rSC]
    inc e
    ld e, b
    add e
    add a
    ldh a, [rSC]
    jr jr_002_4dd4

    add a
    ldh a, [rSC]
    jr @-$52

    add a
    ldh a, [rSC]
    inc e
    jr z, jr_002_4e03

    add a
    ldh a, [rSC]
    jr jr_002_4e15

    add a
    ldh a, [rSB]
    inc e
    inc d
    sub $87
    nop
    ld d, a
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    push af
    ld l, [hl]
    ld c, [hl]

jr_002_4e60:
    rst $10
    ld bc, $7d7b
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    cp $80
    ld [bc], a
    xor b
    cp $00
    rst $38
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld c, [hl]
    ldh a, [$ff08]
    inc e
    daa
    ld b, d
    add b
    ldh a, [$ff08]
    inc d
    jr c, jr_002_4e09

    ldh a, [$ff0c]
    inc d
    ld c, b
    add b
    ldh a, [$ff08]
    inc d
    ld h, a
    add b
    ldh a, [$ff0a]
    inc d
    jr c, jr_002_4e18

    ldh a, [$ff08]
    inc d
    scf
    add b
    ldh a, [rNR10]
    inc d
    jr z, jr_002_4e22

    ldh a, [$ff08]
    inc d
    daa
    add b
    ldh a, [$ff08]
    inc d
    inc d
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    cp d
    ld c, [hl]
    jp c, $004e

    nop
    nop
    nop
    pop af
    ld sp, hl
    ld c, [hl]
    ldh a, [rNR10]
    rra
    ld [$a980], sp
    add b
    add [hl]
    pop af
    cp $4e
    ldh a, [rNR12]
    inc e
    rst $10
    ld [hl], b
    add [hl]
    ldh a, [rNR12]
    inc e
    ld h, a
    ld h, b
    add [hl]
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    pop af
    ld sp, hl
    ld c, [hl]
    ldh a, [rNR10]
    ld e, $00
    ld l, c
    add h
    add [hl]
    pop af
    cp $4e
    ldh a, [rNR23]
    inc e
    rst $10
    ld [hl], h
    add [hl]
    ldh a, [rNR23]
    inc e
    ld h, a
    ld [hl], h
    add [hl]
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld b, b
    adc b
    inc b
    add d
    rst $38
    ld bc, $068a
    add d
    ld bc, $0892
    add e
    db $10
    sbc b
    ld a, [bc]
    add h
    rst $38
    nop
    nop
    nop
    nop
    inc de
    ld c, a
    ccf
    ld c, a
    ldh a, [rP1]
    dec d
    add b
    nop
    add b
    db $ed
    ret nc

    ld a, b
    nop
    add hl, sp
    ld c, a
    pop af
    inc [hl]
    ld c, a
    jp nc, $8d75

    and a
    sbc e
    ld d, e
    ld bc, $7501
    adc l
    and a
    sbc e
    ld d, e
    ldh a, [rP1]
    ld bc, $0000
    inc b
    add c
    add c
    add h
    rst $38
    dec b
    jr nz, jr_002_4f4c

    ld b, b
    rst $38
    ld h, b
    db $eb
    ld [bc], a
    ldh a, [rDIV]
    inc e
    ld e, h
    inc b
    add b
    ldh a, [rDIV]
    ld [$f003], sp

jr_002_4f4c:
    ld [$841c], sp
    ld [bc], a
    add b
    ldh a, [rDIV]
    ld [$f000], sp
    ld [$0814], sp
    add b
    db $ec
    nop
    ld h, h
    ld c, a
    ld a, l
    ld c, a
    adc a
    ld c, a
    nop
    nop
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    db $ed
    add b
    xor e
    ld c, a
    pop af
    rst $30
    ld c, b
    db $dd
    ld bc, $ca37
    jp z, $10f0

    inc d
    ld [$ec80], sp
    nop
    db $f4
    ld bc, $00ed
    xor l
    ld c, a
    db $dd
    add hl, hl
    rra
    add hl, hl
    jp z, $10f0

    inc d
    ld [$ec80], sp
    nop
    ldh a, [rSB]
    add c
    add b
    ret nc

    ld a, b
    pop af
    rst $30
    ld c, b
    push af
    xor a
    ld c, a
    db $dd
    ld de, $1137
    jp z, $b1f5

    ld c, a
    call nc, $f011
    nop
    ld bc, $ec00
    nop
    rst $38
    and l
    rst $38
    push af
    rst $38
    jr nz, @+$01

    ld h, b
    cp e
    ld c, a
    bit 1, a
    db $db
    ld c, a
    nop
    nop
    db $f4
    add hl, bc
    rst $28
    ld h, h
    ld c, a
    db $f4
    ld [$64ef], sp
    ld c, a
    db $f4
    ld [$64ef], sp
    ld c, a
    nop
    db $f4
    ld a, [bc]
    rst $28
    ld a, l
    ld c, a
    db $f4

Jump_002_4fd1:
    ld [$7def], sp
    ld c, a
    db $f4
    ld [$7def], sp
    ld c, a
    nop
    db $f4
    add hl, bc
    rst $28
    adc a

Jump_002_4fdf:
    ld c, a
    db $f4
    ld [$8fef], sp
    ld c, a
    db $f4
    ld [$8fef], sp
    ld c, a
    nop

Jump_002_4feb:
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ld c, a
    ldh a, [rSC]
    inc c
    ld hl, sp+$37
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld bc, $e41c
    dec [hl]
    add b
    ldh a, [rSC]
    ld [$f047], sp
    ld [bc], a
    ld [$f035], sp
    ld bc, $0814
    add b
    ldh a, [rSB]
    inc e
    jp $8035


    ldh a, [rSB]
    ld [$f047], sp
    ld [bc], a
    ld [$f025], sp
    ld [bc], a
    ld [$f045], sp
    ld bc, $0814
    add b
    ldh a, [rSB]
    inc e
    add d
    dec [hl]
    add b
    ldh a, [rSB]
    ld [$f027], sp
    ld [bc], a
    ld [$f045], sp
    ld [bc], a
    ld [$f035], sp
    ld [bc], a
    ld [$f027], sp
    inc b
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld d, b
    ldh a, [rSB]
    inc e
    ld [$8065], sp
    ldh a, [rSC]
    inc c
    ld hl, sp+$47
    ldh a, [rSC]
    ld [$f023], sp
    ld [bc], a
    ld [$f043], sp
    ld [bc], a
    ld [$f045], sp
    ld [bc], a
    ld [$f055], sp
    ld [bc], a
    ld [$f065], sp
    ld bc, $0814
    add b
    nop
    nop
    nop
    ld a, b
    ld d, b
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc d
    ld [$ed80], sp
    add b
    cp [hl]
    ld d, [hl]
    pop af
    cp c
    ld d, [hl]
    db $d3
    ld bc, $0175
    ld [hl], l
    ld bc, $0101
    ld bc, $0175
    ld [hl], l
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    sbc [hl]
    ld d, b
    nop
    nop
    nop
    nop
    jp $eb50


    ld [bc], a
    ldh a, [rSC]
    rra
    ld a, [de]
    add b
    ld hl, sp-$54
    add l
    ldh a, [rDIV]
    inc d
    ld [$f080], sp
    inc b
    rra
    dec e
    nop
    ld hl, sp-$54
    add l
    ldh a, [$ff08]
    dec e
    nop
    ld b, h
    db $10
    add b
    ldh a, [rSC]
    inc d
    ld [$ec80], sp
    nop
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    inc b
    rst $28
    ld a, [hl+]
    ld e, l
    nop
    call nc, TimerOverflowInterrupt
    nop
    nop
    nop
    jp c, $eb50

    inc b
    rst $38
    and b
    ld d, b
    nop
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    inc b
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    inc b
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    inc b
    rst $28
    ld a, [hl+]
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    inc bc
    nop
    add b
    pop af
    add b
    ld h, b
    ldh a, [rNR41]
    inc e
    and h
    sbc l
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    add hl, de
    ld d, c
    nop
    nop
    ldh a, [rP1]
    ld bc, $ed80
    ld b, b
    ld a, c
    nop
    ld b, d
    ld d, c
    pop af
    ld b, e
    ld e, e
    jp nc, $3d3b

    dec sp
    ld b, c
    dec sp
    push af
    ld b, [hl]
    ld d, c
    dec sp
    dec a
    dec sp
    ld b, c
    dec sp
    push af
    ld c, d
    ld d, c
    dec sp
    dec a
    dec sp
    ld b, c
    dec sp
    jp z, $00f0

    ld bc, $0000
    ld [$ff20], sp
    ld b, b
    ld [$ff40], sp
    ld h, b
    dec c
    ld h, b
    rst $38
    nop
    ld d, [hl]
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rra
    ld l, $40
    sbc b
    ld [hl], e
    add a
    ldh a, [$ff03]
    rra
    nop
    add b
    ld h, d
    ld l, e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld [hl], h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rra
    ld l, $00
    sbc b
    ld a, e
    add a
    ldh a, [$ff03]
    rra
    nop
    ld b, b
    ld h, [hl]
    add e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    sub d
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rra
    ld l, $40
    xor b
    ld [hl], e
    add a
    ldh a, [$ff03]
    rra
    daa
    add b
    ld [hl], d
    ld l, e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    or b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rra
    ld l, $00
    xor b
    ld a, e
    add a
    ldh a, [$ff03]
    rra
    daa
    ld b, b
    ld [hl], d
    add e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    adc $51
    nop
    nop

Jump_002_51ca:
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra
    ccf
    nop
    ld hl, sp-$4e
    add [hl]
    ldh a, [$ff03]
    inc e
    add sp, -$4e
    add [hl]
    ldh a, [$ff03]
    inc e
    ret c

    rst $30
    add [hl]
    ldh a, [$ff03]
    rra
    rla
    ld b, b
    cp b
    inc d
    add a
    ldh a, [$ff03]
    inc e
    sbc b
    dec l
    add a
    ldh a, [rDIV]
    inc e
    add a
    ld b, h
    add a
    ldh a, [rDIV]
    inc e
    ld [hl], a
    add hl, sp
    add a
    ldh a, [rDIV]
    rra
    daa
    add b
    ld h, a
    ld c, a
    add a
    ldh a, [rDIV]
    inc e
    ld d, a
    ld b, h
    add a
    ldh a, [rDIV]
    inc e
    ld b, a
    ld e, c
    add a
    ldh a, [rDIV]
    ld e, $40
    scf
    ld b, h
    add a
    ldh a, [rDIV]
    inc e
    daa
    ld h, d
    add a
    ldh a, [rDIV]
    ld e, $80
    daa
    ld c, a
    add a
    ldh a, [$ff08]
    inc e
    inc d
    ld l, e
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    jr c, jr_002_5284

    nop
    nop
    nop
    nop
    jp nz, $f052

    ld [bc], a
    rra
    ld e, $00
    ld hl, sp-$77
    add [hl]
    ldh a, [rSC]
    inc e
    ld hl, sp+$72
    add [hl]
    ldh a, [rSB]
    inc e
    ld hl, sp+$5b
    add [hl]
    ldh a, [rDIV]
    rra
    ld d, $40
    ld hl, sp-$2a
    add [hl]
    ldh a, [$ff03]
    inc e
    cp b
    ld b, $87
    ldh a, [$ff03]
    inc e
    add a
    ld hl, $f087
    inc b
    inc e
    ld hl, sp+$39
    add a
    ldh a, [$ff03]
    inc e
    ret c

    ld c, a
    add a
    ldh a, [$ff03]
    inc e
    xor b
    ld h, d
    add a
    ldh a, [$ff03]
    inc e
    sbc b
    ld [hl], e
    add a
    ldh a, [$ff03]
    inc e
    adc b
    add e
    add a
    ldh a, [rDIV]
    rra
    rla
    add b
    add a

jr_002_5284:
    adc d
    add a
    ldh a, [rSC]
    inc e
    ld h, a
    sub b
    add a
    ldh a, [rDIV]
    inc e
    add a
    sub a
    add a
    ldh a, [rSC]
    inc e
    ld h, a
    sbc l
    add a
    ldh a, [rSC]
    inc e
    ld b, a
    and d
    add a
    ldh a, [$ff03]
    inc e
    ld h, a
    and a
    add a
    ldh a, [rSC]
    inc e
    ld b, a
    xor h
    add a
    ldh a, [$ff03]
    inc e
    ld b, a
    or c
    add a
    ldh a, [rSC]
    inc e
    daa
    or [hl]
    add a
    ldh a, [$ff08]
    inc e
    inc d
    cp d
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ldh a, [rSB]
    inc e
    ld hl, sp+$07
    ret nz

    ldh a, [rSB]
    inc e
    ld hl, sp+$24
    ret nz

    ldh a, [rSB]
    inc e
    and h
    inc b
    add b
    ldh a, [rSB]
    inc e
    add h
    dec hl
    add b
    ldh a, [rSB]
    inc e
    ld h, h
    ld [bc], a
    add b
    ldh a, [$ff08]
    inc e
    ld b, d
    nop
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    cp h
    ld d, e
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
    cp h
    ld d, e
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    nop
    nop
    ldh a, [rP1]
    ld bc, $ed80
    ret nc

    ld a, b
    nop
    dec hl
    ld d, e
    pop af
    ld a, [de]
    ld d, e
    jp nc, $d401

    add hl, sp
    ldh a, [rP1]
    ld bc, $0000
    ld bc, $0201
    adc c
    ld bc, $0101
    nop
    ld bc, $8282
    adc b
    inc b
    ld [bc], a
    add d
    add d
    rst $38
    ld b, $20
    inc b
    ld h, b
    rst $38
    nop
    add hl, sp
    ld d, e
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    ldh a, [rSB]
    ld e, $bd
    ld hl, sp-$2a
    rst $00
    db $f4
    ld b, $f0
    ld bc, $3e1e
    ret c

    xor h
    rst $00

Jump_002_534f:
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld e, l
    ld d, e
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    ld l, a
    ld c, h
    pop af
    ld [hl], b
    ld d, e
    ldh a, [$ff08]
    ld e, $80
    jp nc, $8642

    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld [bc], a
    ld bc, $8301
    ld [bc], a
    ld [bc], a
    ld bc, $0284
    ld bc, $8201
    rst $38
    add l
    ld d, e
    sbc a
    ld d, e
    or l
    ld d, e
    cp h
    ld d, e
    ldh a, [rP1]
    ld bc, $ed00
    add c
    jp nz, $d153

    ld [hl], l
    ld a, d
    ld a, [hl]
    add h
    ld a, e
    ld a, [hl]
    add h
    adc b
    adc h
    call nc, $f092
    nop
    inc d
    ld [$0080], sp
    db $ed
    add b
    jp nz, $d153

    ld [hl], l
    ld a, d
    ld a, [hl]
    add h
    ld a, d
    ld a, [hl]
    add l
    adc b
    adc h
    call nc, $f092
    nop
    inc d
    ld [$0080], sp
    ldh a, [rSB]
    add c
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    inc bc
    ld e, b
    ld bc, $0518
    jr z, @+$01

    rla
    nop
    nop
    nop
    nop
    jp nc, $f453

    ld d, e
    ldh a, [rP1]
    ld bc, $ed80
    ld b, b
    ld a, c
    nop
    db $ec
    ld d, e
    pop af
    ld b, e
    ld e, e
    db $d3
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld bc, $0800
    jr nz, @+$0a

    ld b, b
    db $10
    ld h, b
    rst $38
    nop
    db $f4
    ld e, b
    ldh a, [$ff0a]
    inc e
    ld hl, sp+$54
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld d, h
    ldh a, [$ff0a]
    inc e
    ld hl, sp+$55
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    inc b
    inc e
    ld hl, sp+$63
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    inc bc
    inc e
    ld hl, sp+$64
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld bc, $f81c
    ld h, h
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld [bc], a
    inc e
    ld hl, sp+$64
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld [bc], a
    inc e
    ld hl, sp+$64
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld d, l
    ld d, h
    ld h, a
    ld d, h
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    ld bc, $ed08
    add b
    ld a, [hl-]
    ld d, l
    db $d3
    ld l, e
    call nc, $f0ca
    nop
    inc d
    ld [$0080], sp
    db $ed
    add b
    ld a, [hl-]
    ld d, l
    pop af
    ld [$d348], a
    ld l, e
    call nc, $f063
    nop
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    ld d, h
    sbc [hl]
    ld d, h
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    ld bc, $ed08
    add b
    ld a, [hl-]
    ld d, l
    db $d3
    ld c, e
    ld c, a
    ld d, e
    ld l, l
    jp z, $ca6d

    ldh a, [rP1]
    inc d
    ld [$0080], sp
    db $ed
    add b
    ld a, [hl-]
    ld d, l
    pop af
    ld [$d348], a
    ld a, e
    ld [hl], c
    ld l, e
    ld a, e
    jp z, $ca75

    ldh a, [rP1]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    ld d, h
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    ld [$bbff], sp
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    bit 2, h
    rst $28
    ld a, [hl+]
    ld e, l
    db $f4
    ld [$2aef], sp
    ld e, l
    db $f4
    ld [$2aef], sp
    ld e, l
    db $f4
    ld [$2aef], sp
    ld e, l
    nop
    nop
    nop
    nop
    nop
    and $54
    nop
    nop
    ldh a, [rSB]
    dec d
    add b
    nop
    add b
    db $ed
    jr nc, @+$7b

    nop
    cp $54
    pop af
    add hl, bc
    ld d, l
    push de
    ld [hl], c
    jp z, $f0ca

    nop
    ld bc, $0000
    ld [$fe20], sp
    jr nz, jr_002_557c

    ld [de], a
    jr nz, jr_002_550c

    ld b, b
    rst $38
    nop
    ld bc, $0101

jr_002_550c:
    add h
    ld bc, $0504
    add d
    ld bc, $0404
    nop
    ld bc, $8302
    add c
    inc bc
    add e
    add d
    add d
    rst $38
    ld h, $55
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    add b
    ld a, [hl-]
    ld d, l
    db $d3
    ld l, e
    ld [hl], c
    add e
    ld a, e
    ld a, a
    adc c
    jp z, $00ec

    inc bc
    ret z

    ld bc, $0528
    ld h, a
    rst $38
    daa
    ld c, d
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld h, $55
    ld l, e
    ld [hl], c
    add e
    ld a, e
    ld a, a
    adc c

Jump_002_5553:
    jp z, $00ca

    ld e, [hl]
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld h, $55
    ld l, e
    ld [hl], c
    add e
    ld a, e
    ld a, a
    adc c
    jp z, Jump_002_716b

    add e
    ld a, e
    ld a, a
    adc c
    jp z, $00ca

    nop
    nop
    nop
    nop
    ld a, c
    ld d, l
    sbc h
    ld d, l
    ldh a, [rSB]
    add c

jr_002_557c:
    add b
    ret nc

    ld a, b
    push af
    sub [hl]
    ld d, l
    jp nc, $2b29

    dec l
    cpl
    dec l
    ld sp, $3937
    scf
    dec l
    add hl, hl
    inc hl
    inc hl
    ld bc, $00f0
    ld bc, $0000
    db $10
    jr nz, jr_002_55a1

    ld b, b
    rst $38
    ld h, b
    db $d3
    ld [bc], a
    ld bc, $0000

jr_002_55a1:
    nop
    nop
    nop
    xor b
    ld d, l
    nop
    nop
    ldh a, [rSB]
    add c
    add b
    ret nc

    ld a, b
    push af
    sub [hl]
    ld d, l
    jp nc, $334b

    ld c, c
    ld sp, $2d47
    ld b, l
    ld b, l
    ld b, c
    dec hl
    ld b, c
    ccf
    ld b, l
    ld b, a
    ld b, l
    ld b, c
    ccf

jr_002_55c3:
    dec a
    dec sp
    add hl, sp
    inc sp
    dec l
    add hl, hl
    inc hl

Jump_002_55ca:
    inc h
    ld [hl+], a
    ld [hl+], a
    ld h, $22
    inc h
    ld [hl+], a
    jr nz, @+$24

    ldh a, [rP1]

jr_002_55d5:
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh [rHDMA5], a
    nop
    nop
    ldh a, [rSB]
    add c
    nop
    ld h, b
    ld a, c
    ldh a, [rSB]
    rra
    add b
    ei
    jr nz, jr_002_55c3

    add $f4
    ld b, $f0
    ld bc, $fb9e
    jr nz, jr_002_560a

    rst $00
    ld d, b
    ld a, c
    ldh a, [rSB]
    sbc [hl]
    ei
    jr nz, jr_002_55d5

    add $60
    ld a, c
    db $f4
    ld b, $f0
    ld bc, $fb9e
    jr nz, @+$16

jr_002_560a:
    rst $00
    ld d, b
    ld a, c
    db $f4
    inc c
    db $ed
    or b
    ld a, b
    nop
    rra
    ld d, [hl]
    rst $10
    inc bc
    dec b
    rra
    inc bc
    ldh a, [rP1]
    ld bc, $0000
    ld bc, $ff20
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, [hl]
    ldh a, [rSB]
    inc e
    ld [$8065], sp
    ldh a, [rSC]
    inc c
    ld hl, sp+$70
    ldh a, [rSC]
    ld [$f045], sp
    ld [bc], a
    ld [$f047], sp
    ld [bc], a
    ld [$f065], sp
    ld [bc], a
    ld [$f045], sp
    ld [bc], a
    inc c
    ret c

    ld b, a
    ldh a, [rSC]
    inc c
    ld a, b
    ld b, l
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld [bc], a
    inc c
    ret c

    ld b, a
    ldh a, [rSC]
    inc c
    ld a, b
    ld b, l
    ldh a, [rSC]
    inc c
    ld e, b
    ld b, a
    ldh a, [rSC]
    inc c
    ld c, b
    ld d, l
    ldh a, [rSC]
    inc c
    jr c, jr_002_56d3

    ldh a, [rSC]
    inc c
    jr z, @+$47

    ldh a, [rSC]
    inc c
    jr jr_002_56bf

    ldh a, [rDIV]
    inc d
    ld [$f080], sp
    ld [bc], a
    inc c
    jr c, @+$67

    ldh a, [rSC]
    inc c
    jr z, jr_002_56cc

    ldh a, [rSC]
    inc c
    jr jr_002_56d3

    ldh a, [rSB]
    inc d
    ld [$0080], sp
    sbc d
    ld d, [hl]
    nop
    nop
    nop
    nop
    sub [hl]
    ld e, e
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    db $f4
    ld [$80ed], sp
    cp [hl]
    ld d, [hl]
    pop af
    cp c
    ld d, [hl]
    db $d3
    ld [hl], l
    ld bc, $0175
    ld bc, $7501
    ld bc, $f075
    nop
    inc d
    ld [$0080], sp
    inc b
    add d
    add d
    add d
    rst $38
    inc b

jr_002_56bf:
    ld hl, sp+$02
    jr c, jr_002_56c9

    and a
    rst $38
    ld [$56ce], sp
    nop

jr_002_56c9:
    nop
    nop
    nop

jr_002_56cc:
    nop
    nop
    ldh a, [rSC]
    rra
    ld b, l
    add b

jr_002_56d3:
    ret z

    ld b, d
    add [hl]
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    inc b
    rra
    dec l
    nop
    ld hl, sp-$63
    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    pop af
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    pop de
    db $ed
    add c
    add hl, bc
    ld d, a
    ld [hl], l
    ld a, d
    ld a, [hl]
    add h
    adc b
    call nc, $f08c
    nop
    inc d
    ld [$0080], sp
    inc bc
    ret z

    ld bc, $0538
    ld a, b
    rst $38
    ld b, a
    add hl, de
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff03]
    rra
    dec l
    nop
    ld hl, sp+$72
    add [hl]
    ldh a, [rTIMA]
    rra
    dec d
    add b
    add sp, $42
    add [hl]
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld b, $1f
    ld d, $00
    ld h, a
    or d
    add [hl]
    nop
    ccf
    ld d, a
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    db $ed
    ld b, b
    ld d, e
    ld d, a
    pop af
    ld e, e
    ld d, a
    push de
    dec de
    jp z, $f0ca

    nop
    inc d
    ld [$0080], sp
    ld [$08f8], sp
    jp nc, Jump_002_4810

    rst $38
    scf
    inc b
    ld [bc], a
    add c
    add l
    inc b
    ld [bc], a
    add c
    add l
    db $10
    add c
    ld bc, $ff82
    ld [hl], b
    ld d, a
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    db $ed
    ld b, b
    add h
    ld d, a
    pop af
    adc d
    ld d, a
    push de
    inc sp
    jp z, $f0ca

    nop
    inc d
    ld [$0080], sp
    jr @+$6e

    inc b
    ld hl, sp-$01
    ld b, l
    inc b
    add c
    ld bc, $0482
    add e
    ld bc, $0286
    add d
    ld bc, $ff86
    cp h
    ld d, e
    nop
    nop
    or l
    ld d, e
    nop
    nop
    and a
    ld d, a
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    db $f4
    ld [$01f0], sp
    dec d
    ld [$8008], sp
    db $eb
    rlca
    ldh a, [rSB]
    ld e, $bd
    ld hl, sp+$70
    add $f4
    ld [bc], a
    ldh a, [rSB]
    ld e, $3d
    xor b
    ldh a, [$ffc7]
    ldh a, [rSB]
    ld e, $3b
    adc b
    ld d, b
    add $f4
    ld bc, $f0ec
    ld bc, $0814
    add b
    nop
    call c, $0057
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    db $f4
    ld [$01f0], sp
    dec d
    ld [$8008], sp
    db $eb
    ld b, $f0

jr_002_57ea:
    ld bc, $3b1e
    adc b
    ld d, b
    add $f0
    ld bc, $3d1e
    xor b
    ldh a, [$ffc7]
    db $f4
    ld [bc], a
    ldh a, [rSB]
    ld e, $bd
    ld hl, sp+$70
    add $f4
    rlca
    db $ec
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld de, $0058
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    ldh a, [rDIV]
    rra
    ld b, h
    ret nz

    ret c

    push hl
    add h
    ldh a, [rDIV]
    jr jr_002_5883

    add l
    ldh a, [rDIV]
    add hl, de
    ld b, l
    ld a, [bc]
    add [hl]
    ldh a, [rDIV]
    jr jr_002_589d

    add [hl]
    ldh a, [rDIV]
    jr @-$4c

    add [hl]
    ldh a, [rDIV]
    dec e
    ld b, [hl]
    adc b
    ld b, $87
    ldh a, [rDIV]
    jr @+$3b

    add a
    ldh a, [rDIV]
    jr jr_002_589a

    add a
    ldh a, [rDIV]
    dec e
    ld b, a
    ld c, b
    add e
    add a
    ldh a, [rDIV]
    jr jr_002_57ea

    add a
    ldh a, [rSB]
    dec e
    ld d, a
    daa
    xor h
    add a
    nop
    ld e, [hl]
    ld e, b
    nop
    nop
    ret z

    ld e, b
    nop
    nop
    rst $28
    xor e
    ld e, b
    ldh a, [rDIV]
    rra
    ld c, l
    ret nz

    ret c

    xor h
    add a
    ldh a, [rDIV]
    jr @-$61

    add a
    ldh a, [rDIV]
    add hl, de
    ld c, h
    add e
    add a
    ldh a, [rDIV]
    jr jr_002_58d1

    add a
    ldh a, [rDIV]
    jr @+$3b

    add a
    ldh a, [rDIV]
    dec e
    inc a
    adc b

jr_002_5883:
    ld b, $87
    ldh a, [rDIV]
    jr @-$4c

    add [hl]
    ldh a, [rDIV]
    jr jr_002_5900

    add [hl]
    ldh a, [rDIV]
    dec e
    inc l
    ld c, b
    ld a, [bc]
    add [hl]
    ldh a, [rDIV]
    jr @+$65

jr_002_589a:
    add l
    ldh a, [rSB]

jr_002_589d:
    dec e
    dec hl
    daa
    push hl
    add h
    nop
    xor e
    ld e, b
    nop
    nop
    ret z

    ld e, b
    nop
    nop

jr_002_58ab:
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    ldh a, [rSB]
    ld e, $bb
    ld hl, sp-$3f
    rst $00
    db $f4
    ld b, $f0
    ld bc, $3b1e
    ld hl, sp-$3c
    rst $00
    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    nop
    ldh a, [rSB]
    add c
    nop
    ld h, b
    ld a, c
    ldh a, [rSB]
    rra

jr_002_58d1:
    add b
    ei
    jr nz, jr_002_58ab

    add $f4
    ld b, $f0
    ld bc, $fb9e
    jr nz, jr_002_58f2

    rst $00
    ld d, b
    ld a, c
    nop
    ld [$0058], a
    nop
    nop
    nop
    nop
    nop
    db $eb
    inc bc
    ldh a, [rDIV]
    rra
    ld b, [hl]
    ret nz

    ret z

jr_002_58f2:
    sbc l
    add a
    ldh a, [$ff03]
    rra
    ld b, a
    add b
    xor b
    xor h
    add a
    ldh a, [$ff03]
    rra
    ld d, a

Jump_002_5900:
jr_002_5900:
    nop
    add h
    pop bc
    add a
    ldh a, [$ff03]
    rra
    ld d, a
    add b
    ld d, h
    adc $87
    ldh a, [$ff03]
    rra
    ld h, a
    nop
    inc h
    sub $87
    db $ec
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff08]
    rra
    ld c, l
    ret nz

    cp b
    xor h
    add a
    ldh a, [$ff08]
    jr @-$61

    add a
    ldh a, [$ff08]
    add hl, de
    ld c, h
    add e
    add a
    ldh a, [$ff08]
    jr jr_002_599b

    add a
    ldh a, [$ff08]
    jr jr_002_5980

    add a

jr_002_5948:
    ldh a, [$ff08]
    dec e
    inc a
    sbc b
    ld b, $87
    ldh a, [$ff08]
    jr @-$4c

    add [hl]
    ldh a, [$ff08]
    jr jr_002_59ca

    add [hl]

Jump_002_5959:
    ldh a, [$ff08]
    dec e
    inc l
    ld e, b
    ld a, [bc]
    add [hl]
    ldh a, [$ff08]
    jr jr_002_59c7

    add l
    ldh a, [$ff08]
    dec e
    dec hl
    jr z, @-$19

    add h
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld a, d
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff08]
    rra
    ld b, h
    ret nz

    cp b

jr_002_5980:
    push hl
    add h
    ldh a, [$ff08]
    jr jr_002_59e9

    add l
    ldh a, [$ff08]
    add hl, de
    ld b, l
    ld a, [bc]
    add [hl]
    ldh a, [$ff08]
    jr jr_002_5a03

    add [hl]
    ldh a, [$ff08]
    jr jr_002_5948

    add [hl]
    ldh a, [$ff08]
    dec e
    ld b, [hl]

jr_002_599b:
    sbc b
    ld b, $87
    ldh a, [$ff08]
    jr jr_002_59db

    add a
    ldh a, [$ff08]
    jr @+$5b

    add a
    ldh a, [$ff08]
    dec e
    ld b, a
    ld e, b
    add e
    add a
    ldh a, [$ff08]
    jr @-$61

    add a
    ldh a, [$ff08]
    dec e
    ld d, a
    jr z, @-$52

    add a
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    cp h
    ld d, e
    cp h
    ld d, e
    or l
    ld d, e

jr_002_59c7:
    cp h
    ld d, e
    pop de

Jump_002_59ca:
jr_002_59ca:
    ld e, c
    nop
    nop
    nop
    nop
    db $ed
    ld e, c
    ldh a, [rDIV]
    dec d
    nop
    ld [$f080], sp
    ld bc, $3e1e

jr_002_59db:
    pop de
    ld h, b
    rst $00
    db $f4
    ld [bc], a
    ldh a, [rSB]
    ld e, $3e
    pop de
    ld l, b
    rst $00
    ldh a, [rSB]

jr_002_59e9:
    inc d
    ld [$0080], sp
    ldh a, [rSB]
    inc e
    ld [$8000], sp
    ldh a, [rSC]
    inc e
    adc c
    inc b
    add b
    ldh a, [rSB]
    inc e
    and c
    ld b, $80
    ldh a, [rSB]
    inc e
    and c

jr_002_5a03:
    dec hl
    add b
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld bc, $331c
    inc b
    add b
    nop
    add hl, de
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_5a19:
    ldh a, [$ff03]
    rra
    nop
    cp d
    ld hl, sp-$68
    rst $00
    ldh a, [rSC]
    ld e, $3a
    ld l, b
    xor b
    rst $00
    ldh a, [$ff03]
    ld e, $bd
    add sp, -$38
    rst $00
    ldh a, [rSC]
    ld e, $3d
    xor b
    ret c

    rst $00
    ldh a, [rSB]
    ld e, $bd
    ld l, b
    db $e4
    rst $00
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld c, e
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    rra
    nop
    cp d
    ld hl, sp-$60
    rst $00
    ldh a, [rSC]
    ld e, $3a
    jr z, jr_002_5a19

    rst $00
    ldh a, [rSB]
    ld e, $bd
    ret c

    or b
    rst $00
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld e, d
    ldh a, [rSC]
    ld e, $3d
    ld hl, sp+$10
    ret nz

    ldh a, [rSC]
    ld e, $3d
    jr z, jr_002_5a7c

jr_002_5a7c:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    ld hl, sp+$20
    ret nz

    ldh a, [rSB]
    inc d
    ld [$0080], sp
    sub d
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSC]
    rra
    nop
    cp l
    ld a, b
    db $e4
    rst $00
    ldh a, [rSC]
    ld e, $3d
    adc b
    ret c

    rst $00
    ldh a, [$ff03]
    ld e, $bd
    add sp, -$38
    rst $00
    ldh a, [rSC]
    ld e, $3a
    ld e, b
    xor b
    rst $00
    ldh a, [rSB]
    ld e, $ba
    ld hl, sp-$68
    rst $00
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    call nz, $dd5a
    ld e, d
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    add b
    jp hl


    ld e, d
    jp nc, $02f4

    ld [hl], c
    ld l, e
    ld [hl], c
    ld l, e
    jp z, $f0ca

    nop
    inc d
    ld [$0080], sp
    ldh a, [rP1]
    inc d
    ld [$ed80], sp
    ld b, c
    pop af
    ld e, d
    rst $38
    adc $5a
    cp $80
    ld [bc], a
    ld hl, sp-$02
    nop
    rst $38
    add h
    ld [bc], a
    ld hl, sp-$01
    add h
    db $fd
    ld e, d
    rrca
    ld e, e
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    ld bc, $5b20
    reti


    scf
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    ldh a, [rP1]
    inc d
    ld [$ed80], sp
    add b
    jr nz, @+$5d

    reti


    rra
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    rst $38
    ld hl, sp+$2a
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    nop
    ccf
    ld e, e
    pop af
    ld b, e
    ld e, e
    reti


    dec de
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    ld [$fff8], sp
    ld a, [c]
    ld bc, $0101
    nop
    ld bc, $0101
    add d
    ld [bc], a
    ld bc, $8301
    ld [bc], a
    ld [bc], a
    ld bc, $0284
    ld bc, $8201
    rst $38
    ld h, b
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    add b
    ld [hl], l
    ld e, e
    pop af
    ld a, c
    ld e, e
    push de
    ld e, c
    ldh a, [rP1]
    inc d
    ld [$0080], sp
    ld b, $a9
    rst $38
    jp nc, $8101

    add c
    add c
    ld bc, $8181
    add d
    ld [bc], a
    add c
    add c
    add e
    ld [bc], a
    add d

jr_002_5b87:
    add c
    add h
    ld [$8181], sp
    add d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    ld e, e
    ldh a, [rSB]
    inc e
    ld hl, sp+$07
    add b
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld bc, $d81c
    inc [hl]
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    or l
    ld e, e
    nop
    nop
    pop de
    ld e, e
    nop
    nop
    ldh a, [rSB]
    dec d
    nop
    ld [$f080], sp
    ld bc, $3d1e
    ld hl, sp+$70
    rst $00
    db $f4
    ld [bc], a
    ldh a, [rSB]
    ld e, $3d
    ld hl, sp+$60
    rst $00
    ldh a, [rSB]
    inc d

jr_002_5bce:
    ld [$0080], sp
    ldh a, [rSB]
    add c
    nop
    ld [hl], b
    ld a, c
    ldh a, [rSB]
    rra
    add b
    db $fd
    jr nz, jr_002_5bce

    push bc
    db $f4
    ld [bc], a
    ldh a, [rSB]
    sbc [hl]
    db $fd
    jr nz, jr_002_5b87

    push bc
    add b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    di
    ld e, e
    nop
    nop
    ldh a, [rP1]
    dec d
    add b
    nop
    add b
    db $ed
    ld b, b
    ld a, c
    nop
    add hl, bc
    ld e, h
    pop af
    ld b, e
    ld e, e
    reti


    dec sp
    ldh a, [rP1]
    ld bc, $0000
    ld b, $20
    ld [$0840], sp
    ld h, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld e, h
    db $eb
    ld [bc], a
    ldh a, [rSC]
    ld e, $3d
    ld hl, sp+$10
    ret nz

    ldh a, [rSC]
    ld e, $3d
    ld c, b
    nop
    ret nz

jr_002_5c29:
    ldh a, [rSB]
    ld e, $3a
    ld hl, sp+$20
    ret nz

    ldh a, [rSC]
    ld e, $3d
    jr c, jr_002_5c36

jr_002_5c36:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    ret c

    ret nz

    ret nz

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c44

jr_002_5c44:
    ret nz

    db $ec
    ldh a, [rSC]
    ld e, $3a
    xor b
    jr nz, @-$3e

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c53

jr_002_5c53:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    adc b
    ret nz

    ret nz

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c61

jr_002_5c61:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    xor b

jr_002_5c67:
    jr nz, jr_002_5c29

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c6f

jr_002_5c6f:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    adc b
    ret nz

    ret nz

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c7d

jr_002_5c7d:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    ld l, b
    ret nz

jr_002_5c84:
    ret nz

    ldh a, [rSB]
    ld e, $3d
    jr z, jr_002_5c8b

jr_002_5c8b:
    ret nz

jr_002_5c8c:
    ldh a, [rSB]
    ld e, $3a
    ld e, b
    jr nz, jr_002_5c53

    ldh a, [rSB]
    ld e, $3a
    ld c, b
    ret nz

    ret nz

    ldh a, [rSB]
    ld e, $3d
    ld [$c000], sp
    ldh a, [rSB]
    ld e, $3a
    jr z, jr_002_5c67

    ret nz

    ldh a, [rSB]
    ld e, $3d
    jr jr_002_5cae

jr_002_5cae:
    ret nz

    ldh a, [rSB]
    ld e, $3a
    jr c, jr_002_5cd5

    ret nz

    ldh a, [rSB]
    ld e, $3d
    ld [$c000], sp
    ldh a, [rSC]
    ld e, $3a
    rla
    jr nz, jr_002_5c84

    ldh a, [rSB]
    inc d
    ld [$0080], sp
    jp nc, $005c

    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra

jr_002_5cd5:
    ccf
    add b
    pop af
    ld b, $87
    ldh a, [rDIV]
    dec e
    daa
    or c
    add hl, sp
    add a
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff5c]
    ldh a, [rSC]
    inc e
    ld hl, sp+$44
    add b
    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld [bc], a
    inc e
    ret c

    nop
    ret nz

    ldh a, [rSB]
    inc d
    ld [$f080], sp
    inc bc
    inc e
    add c
    jr nz, jr_002_5c8c

    ldh a, [rSC]
    inc d
    inc [hl]
    add b
    ldh a, [rSC]
    inc e
    inc h
    db $10
    add b
    ldh a, [rSC]
    inc d
    inc d
    add b
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld e, l
    ldh a, [rSC]
    inc e
    ld hl, sp+$65
    add b
    ldh a, [rSC]
    inc c
    ld hl, sp+$47
    ldh a, [rSC]
    inc c
    adc b
    ld b, l
    ldh a, [rSC]
    inc c
    ld l, b
    ld b, a
    ldh a, [rSC]
    inc c
    ld e, b
    ld d, l
    ldh a, [rSC]
    inc c
    jr c, jr_002_5dae

    ldh a, [rSC]
    inc c
    jr z, jr_002_5d93

    ldh a, [rSC]
    inc c
    jr jr_002_5d9a

    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_5d5f:
    nop
    ld h, d
    ld e, l
    ldh a, [rSB]
    inc e
    ld [$8065], sp
    ldh a, [rSC]
    inc c
    ld hl, sp+$47
    ldh a, [rSC]
    ld [$f023], sp
    ld [bc], a
    ld [$f065], sp
    ld [bc], a
    ld [$f043], sp
    ld [bc], a
    ld [$f070], sp
    ld [bc], a
    ld [$f045], sp
    ld [bc], a
    ld [$f047], sp
    ld [bc], a
    ld [$f055], sp
    ld [bc], a
    ld [$f065], sp
    ld [bc], a
    ld [$f065], sp
    ld [bc], a

jr_002_5d93:
    ld [$f045], sp
    ld [bc], a
    inc c
    ret c

    ld b, a

jr_002_5d9a:
    ldh a, [rSC]
    inc c
    cp b
    ld d, l
    ldh a, [rSC]
    inc c
    sbc b
    ld h, l
    ldh a, [rSC]
    inc c
    ld a, b
    ld b, l
    ldh a, [rSC]
    inc c
    ld e, b
    ld b, a

jr_002_5dae:
    ldh a, [rSC]
    inc c
    ld c, b
    ld d, l
    ldh a, [rSC]
    inc c
    jr c, jr_002_5e1d

    ldh a, [rSC]
    inc c
    jr z, jr_002_5e02

    ldh a, [rSC]
    inc c
    jr jr_002_5e09

    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ret nc

    ld e, l

Jump_002_5dca:
    nop
    nop
    nop
    nop
    rst $30
    ld e, l
    ldh a, [rSC]
    rra
    ld a, [de]
    add b
    ld hl, sp+$16
    add h
    ldh a, [rDIV]
    inc d
    ld [$f080], sp
    inc b
    rra
    dec e
    nop
    ld hl, sp+$16
    add h
    ldh a, [$ff08]
    dec e
    nop
    add h
    db $10
    add b
    ldh a, [rSC]
    inc d
    ld [$f080], sp
    ld bc, $0814
    add b
    nop
    ldh a, [rSB]
    inc e
    ld hl, sp+$42
    add b
    ldh a, [rSB]
    inc c
    xor b
    ld b, [hl]

jr_002_5e02:
    ldh a, [rSB]
    inc c
    adc b
    ld h, h
    ldh a, [rSB]

jr_002_5e09:
    inc c
    ld l, b
    ld [hl], d
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    ld e, [hl]
    rst $28
    cpl
    ld e, [hl]

jr_002_5e1d:
    db $f4
    inc c
    rst $28
    ld c, h
    ld e, [hl]
    db $f4
    inc c
    rst $38
    ld a, [de]
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ld e, [hl]
    ldh a, [rSB]
    ld e, $3e
    ret c

    ld a, [hl+]
    ret nz

    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld [bc], a
    ld e, $3d
    adc b
    ld a, [de]
    ret nz

    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld e, [hl]
    ldh a, [rSB]
    ld e, $3e
    ret c

    ld a, [de]
    ret nz

    ldh a, [rSB]
    inc d
    ld [$f080], sp
    ld bc, $3d1e
    adc b
    ld a, [bc]
    ret nz

    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rra
    cpl
    add b
    adc b
    ld l, e
    add a
    ldh a, [rSB]
    add hl, de
    daa
    ld l, e
    rlca
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    adc l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra
    scf
    ld b, b
    rst $20
    rst $20
    add [hl]
    ldh a, [$ff03]
    dec e
    ccf
    rst $00
    ld hl, $f087
    inc b
    dec e
    ld b, a
    or a
    rst $30
    add [hl]
    ldh a, [$ff03]
    dec e
    ld c, a
    sub a
    ld hl, $f087
    inc b
    dec e
    ld b, a
    ld [hl], a
    rst $30
    add [hl]
    ldh a, [$ff03]
    dec e
    ld c, a
    ld d, a
    ld hl, $f087
    inc b
    dec e
    ld h, a
    ld b, a
    rst $30
    add [hl]
    ldh a, [$ff03]
    dec e
    ld l, a
    scf
    inc d
    add a
    ldh a, [rDIV]
    dec e
    ld [hl], a
    daa
    rst $30
    add [hl]
    ldh a, [$ff03]
    dec e
    ld a, a
    rla
    ld b, $87
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    ld [c], a
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra
    cpl
    ret nz

    and d
    rst $30
    add [hl]
    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    nop
    ld sp, hl
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff03]
    rra
    cpl
    ret nz

    and h
    rst $20
    add [hl]

Jump_002_5f01:
    ldh a, [$ff03]
    dec e
    ld b, a
    ld b, c
    ld b, $87
    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    nop
    rla
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff03]
    rra
    cpl
    ret nz

    and h
    ld hl, $f087
    inc bc
    dec e
    ld b, a
    ld b, c
    ld hl, $f087
    ld bc, $0814
    add b
    db $ec
    nop
    dec [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra
    rra
    ret nz

    and d
    ld hl, $f087
    ld bc, $0814
    add b
    db $ec
    nop
    ld c, h
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff03]
    rra
    rra
    ret nz

    and h
    ld c, a

Jump_002_5f53:
    add a
    ldh a, [$ff03]
    dec e
    ld b, a
    ld b, c

Jump_002_5f59:
    ld [hl], e
    add a
    ldh a, [rSB]

Jump_002_5f5d:
    inc d
    ld [$ec80], sp
    nop
    ld l, d
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    rra
    rra
    ret nz

    and d
    ld e, c
    add a
    ldh a, [rSB]
    inc d
    ld [$ec80], sp
    nop
    add c
    ld e, a
    nop
    nop

jr_002_5f7d:
    nop
    nop
    nop
    nop
    rst $28
    ld [c], a
    ld e, [hl]
    db $f4

jr_002_5f85:
    dec b
    rst $28
    ld sp, hl
    ld e, [hl]
    db $f4
    inc bc
    rst $28
    rla
    ld e, a
    db $f4
    inc bc
    rst $28
    ld l, d
    ld e, a
    db $f4
    dec b
    rst $28
    dec [hl]
    ld e, a
    db $f4
    dec b
    rst $28

jr_002_5f9b:
    ld c, h
    ld e, a
    db $f4
    inc bc
    rst $28
    dec [hl]
    ld e, a
    db $f4
    dec b
    rst $38
    add c
    ld e, a
    xor a
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff08]
    rra
    ld b, h
    add b
    xor b
    push hl
    add h
    ldh a, [$ff08]
    jr jr_002_601e

    add l
    ldh a, [$ff08]
    add hl, de
    ld b, l
    ld a, [bc]
    add [hl]
    ldh a, [$ff08]
    jr jr_002_6038

    add [hl]
    ldh a, [$ff08]
    jr jr_002_5f7d

    add [hl]
    ldh a, [$ff08]
    dec e
    ld b, [hl]
    adc b
    ld b, $87
    ldh a, [$ff08]
    jr jr_002_6010

    add a
    ldh a, [$ff08]
    jr jr_002_6035

    add a
    ldh a, [$ff08]
    dec e
    ld b, a
    ld c, b
    add e

jr_002_5fe3:
    add a
    ldh a, [$ff08]
    jr jr_002_5f85

    add a
    ldh a, [$ff08]
    dec e
    ld d, a
    jr z, jr_002_5f9b

    add a

jr_002_5ff0:
    ldh a, [rSB]
    inc d
    ld [$0080], sp
    cp $5f
    nop
    nop
    nop
    nop

jr_002_5ffc:
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    add b
    db $10

jr_002_6007:
    ld h, b
    jp nc, $4f4b

    ld d, e
    ret c

    ld e, l

jr_002_600e:
    ld d, l
    nop

jr_002_6010:
    rst $38
    and e
    nop
    nop
    nop
    nop
    ld a, [de]
    ld h, b
    nop
    nop

jr_002_601a:
    ldh a, [rSB]
    add c
    nop

jr_002_601e:
    ldh [$ff78], a
    ldh a, [rSB]
    dec e
    add b
    jr nz, jr_002_5ffc

    add [hl]
    ldh a, [rSB]
    jr jr_002_604c

    rlca
    ldh a, [rSB]
    jr jr_002_609b

    rlca
    ldh a, [rSB]
    jr @-$6e

jr_002_6035:
    rlca
    ldh a, [rSB]

jr_002_6038:
    jr jr_002_5ff0

    rlca
    ldh a, [rSB]
    jr jr_002_6007

    rlca
    ldh a, [rSB]
    jr jr_002_601a

    ld b, $f0
    ld bc, $2118
    rlca
    ldh a, [rSB]

jr_002_604c:
    jr jr_002_60b9

    rlca
    ldh a, [rSB]
    jr jr_002_5fe3

    rlca
    ldh a, [rSB]
    jr jr_002_600e

    rlca
    ldh a, [rSB]
    jr @-$36

    rlca
    ldh a, [rSB]
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld l, e
    ld h, b
    nop
    nop
    ldh a, [rSB]
    add c
    nop
    ldh [$ff78], a
    pop af
    add b
    ld h, b
    ldh a, [$ff30]
    dec e
    add b
    jr nz, @-$30

    add a
    ldh a, [rP1]
    ld bc, $0000
    inc hl
    add c
    add c
    add d
    rst $38
    adc l
    ld h, b
    jp JoypadTransitionInterrupt


    nop
    nop
    nop
    ldh a, [rP1]
    dec d
    ld [$8008], sp
    db $ed
    add c
    db $dd
    ld h, b
    jp nc, Jump_002_6d5f

    ld h, a

jr_002_609b:
    ld [hl], l
    ld h, e
    ld [hl], c
    ld h, c
    ld l, a
    ld e, l
    ld l, l
    ld e, l
    ld l, c
    ld e, c
    ld h, a
    ld d, a
    ld h, l
    ld d, l
    ld h, c
    ld d, c
    ld [hl], a
    ld c, a
    ld e, l
    ld c, l
    ld e, e
    ld c, e
    ld e, c
    ld c, c
    ld d, l
    ldh a, [rP1]
    ld bc, $ed00

jr_002_60b9:
    add b
    pop hl
    ld h, b
    ret c

    dec sp
    reti


    ld b, c
    add hl, hl
    inc sp
    nop
    ldh a, [rP1]
    inc d
    ld [$ed80], sp
    add b
    db $dd
    ld h, b
    push de
    ld bc, $0101
    call nc, $ed01
    ld b, b
    pop hl
    ld h, b
    ret c

    inc hl
    reti


    add hl, hl
    ld de, $001b
    ld [bc], a
    xor b
    rst $38
    ld [$a5ff], sp
    nop
    nop
    db $eb
    ld h, b
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc d
    ld [$ed80], sp
    add b
    inc de
    ld h, c
    call c, $0133
    inc sp
    inc sp
    inc sp
    ld bc, $0133
    db $dd
    dec sp
    inc sp
    dec sp
    inc sp
    call c, $013b
    dec sp
    dec sp
    dec sp
    ld bc, $013b
    db $dd
    ld b, c
    dec sp
    ld b, c
    dec sp
    rst $38
    db $f4
    ld h, b
    rst $38
    and d
    cp h
    ld d, e
    dec e
    ld h, c
    or l
    ld d, e
    cp h
    ld d, e
    ldh a, [rP1]
    inc d
    ld [$d580], sp
    ld bc, $0101
    db $ed
    add b
    adc [hl]
    ld h, c
    db $d3
    ld bc, $0101
    reti


    ld c, c
    rst $10
    ld b, c
    jp z, $37ca

    add hl, sp
    jp z, $3bca

    ld bc, $0101
    ld b, c
    ld c, c
    jp z, Jump_002_47ca

    ld c, c
    jp z, Jump_002_41ca

    call nc, $0101
    ld bc, $49d9
    rst $10
    ld b, c
    jp z, $37ca

    dec sp
    jp z, Jump_002_41ca

    ld bc, $0101
    ld b, l
    reti


    ld b, a
    jp z, $d7ca

    ld bc, $0101
    ld bc, $49d9
    rst $10
    ld b, c
    jp z, $37ca

    add hl, sp
    jp z, $3bca

    ld bc, $0101
    ld b, c
    ld c, c
    jp z, Jump_002_47ca

    ld c, c
    jp z, Jump_002_41ca

    reti


    ld bc, $d737
    add hl, sp
    jp z, $3bca

    ld bc, $0101
    ld b, c
    reti


    ld c, c
    ld b, l
    ld b, c
    scf
    dec sp
    ccf
    rst $38
    ld l, $61

jr_002_618e:
    cp $80
    ld bc, $fea8
    ret nz

    rst $38
    ld h, e
    sbc [hl]
    ld h, c
    cp e
    ld h, c
    call nc, $0061

jr_002_619d:
    nop
    ldh a, [rSB]
    dec d
    ld [$8008], sp
    db $ed
    add b
    di
    ld h, c
    pop af
    ei
    ld c, b
    db $dd
    ld bc, $4159
    jp z, $cad5

    jp z, $cad4

    ldh a, [rNR10]
    inc d
    ld [$0080], sp
    db $f4
    ld bc, $00ed
    rst $30
    ld h, c
    pop af
    ei
    ld c, b
    db $dd
    inc sp
    inc sp
    dec de
    jp z, $cad5

    jp z, $cad4

    ldh a, [rNR10]
    inc d
    ld [$0080], sp
    ldh a, [rSB]
    add c
    add b
    ret nc

    ld a, b
    pop af
    ei

Jump_002_61dc:
    ld c, b
    push af
    inc c
    ld h, d
    db $dd
    dec de
    inc sp
    dec de
    dec de
    pop af
    ei
    ld h, c
    push de
    dec de
    jp z, $d4ca

    jp z, $00f0

    ld bc, $0000
    jr nz, jr_002_619d

    rst $38
    and a
    jr nz, @-$06

    rst $38
    rst $30
    ld [bc], a
    add d
    add d
    add d
    ld bc, $0203
    adc d
    ld bc, $8283
    adc b
    jr nz, jr_002_618e

    dec b
    add e
    rst $38
    jr nz, @+$22

    db $10
    ld b, b
    rst $38
    ld h, b

Jump_002_6212:
    ld a, [$c836]
    and a
    jr nz, jr_002_622b

    ld a, [$c837]
    and a
    ret z

    cp $29
    ret c

    ld hl, $c83f
    ld [hl], $07
    inc l
    ld [hl], $df
    jp Jump_002_6297


jr_002_622b:
    cp $80
    jr nz, jr_002_6239

    xor a
    ld [$c836], a
    ld [$c837], a
    jp Jump_002_6421


jr_002_6239:
    cp $29
    ret c

    ld [$c837], a
    xor a
    ld [$c836], a
    ld hl, $c83f
    ld [hl], $07
    inc l
    ld [hl], $df
    call Call_002_6421
    ld a, [$c837]
    dec a
    sub $28
    jp Jump_002_6257


Jump_002_6257:
    ld hl, $6492
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
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

jr_002_6271:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6271

    ld hl, $c841
    ld [hl], $86
    inc hl
    ld [hl], $df
    xor a

jr_002_6280:
    ld [$c83c], a
    call Call_002_6359
    ld a, [$c841]
    add $1b
    ld [$c841], a
    ld a, [$c83c]
    inc a
    cp $04
    ret z

    jr jr_002_6280

Jump_002_6297:
    xor a
    ld [$c83c], a
    ld a, [$df13]
    and a
    jp z, Jump_002_634c

    ld hl, $c841
    ld [hl], $86
    inc hl
    ld [hl], $df
    ld hl, $df88
    ld bc, $c84d
    jr jr_002_62f9

Jump_002_62b2:
    ld hl, $c841
    ld [$c83c], a
    cp $02
    jr z, jr_002_62d4

    cp $03
    jr z, jr_002_62e8

    ld a, [$df15]
    and a
    jp z, Jump_002_634c

    ld [hl], $a1
    inc hl
    ld [hl], $df
    ld hl, $dfa3
    ld bc, $c84e
    jr jr_002_62f9

jr_002_62d4:
    ld a, [$df17]
    and a
    jp z, Jump_002_634c

    ld [hl], $bc
    inc hl
    ld [hl], $df
    ld hl, $dfbe
    ld bc, $c84f
    jr jr_002_62f9

jr_002_62e8:
    ld a, [$df19]
    and a
    jr z, jr_002_634c

    ld [hl], $d7
    inc hl
    ld [hl], $df
    ld hl, $dfd9
    ld bc, $c850

jr_002_62f9:
    ld a, [hl]
    and a
    jr nz, jr_002_6318

jr_002_62fd:
    push bc
    push hl
    call Call_002_63a4
    pop hl
    pop bc
    ld a, [hl]
    and a
    jr nz, jr_002_6318

    ld a, [$c83c]
    sla a
    ld de, $df13
    add e
    ld e, a
    ld a, [de]
    and a
    jr z, jr_002_634c

    jr jr_002_62fd

jr_002_6318:
    dec [hl]
    inc l
    ld a, [hl]
    and $40
    jr z, jr_002_6327

    ld a, $01
    ld [bc], a
    push hl
    call Call_002_4268
    pop hl

jr_002_6327:
    ld a, [hl]
    and $80
    jr z, jr_002_634c

    inc l
    ld a, [hl]
    and a
    jr z, jr_002_633f

    cp $ff
    jr z, jr_002_6338

    dec [hl]
    jr jr_002_634c

jr_002_6338:
    dec l
    ld a, [hl]
    and $7f
    ld [hl], a
    jr jr_002_634c

jr_002_633f:
    call Call_002_432c
    ld hl, $c84d
    ld a, [$c83c]
    add l
    ld l, a
    ld [hl], $01

Jump_002_634c:
jr_002_634c:
    ld a, [$c83c]
    inc a
    cp $04
    ret z

    jp Jump_002_62b2


Jump_002_6356:
    ld a, $00
    ld [bc], a

Call_002_6359:
Jump_002_6359:
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

Jump_002_6369:
    ret z

jr_002_636a:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    dec de
    xor a
    cp b
    jr z, jr_002_6388

    ld a, $ff
    cp b
    jr z, jr_002_639a

    inc de
    inc de
    ld [hl], e
    inc l
    ld [hl], d
    ld a, [$c841]
    ld l, a
    ld a, [$c842]
    ld h, a
    jr jr_002_6396

jr_002_6388:
    push hl
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    add $03
    ld l, a
    xor a
    ld [hl], a
    pop hl

jr_002_6396:
    ld [hl], c
    inc l
    ld [hl], b
    ret


jr_002_639a:
    inc de
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    jr jr_002_636a

Call_002_63a4:
    ld a, [$c842]
    ld h, a
    ld a, [$c841]
    ld l, a
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [de]
    cp $00
    jp z, Jump_002_6356

    cp $01
    jp z, Jump_002_6415

    cp $ca
    jp c, Jump_002_6400

    jp z, Jump_002_4131

    cp $eb
    jp c, Jump_002_4209

    cp $f0
    jp z, Jump_002_641b

    cp $ed
    jp z, Jump_002_4022

    cp $f5
    jp z, Jump_002_4062

    cp $f1
    jp z, Jump_002_4010

    cp $f2
    jp z, Jump_002_41f7

    cp $eb
    jp z, Jump_002_423f

    cp $ec
    jp z, Jump_002_4229

    cp $f4
    jp z, Jump_002_4250

    cp $f3
    jp z, Jump_002_41d5

    cp $ee
    jp z, Jump_002_41e3

    cp $ff
    jp z, Jump_002_425f

jr_002_63fe:
    jr jr_002_63fe

Jump_002_6400:
    push hl
    ld hl, $c849
    ld a, [$c83c]
    add l
    ld l, a
    ld a, [hl]
    pop hl
    and a
    jp nz, Jump_002_4131

    ld a, $01
    ld [bc], a
    jp Jump_002_4098


Jump_002_6415:
    ld a, $01
    ld [bc], a
    jp Jump_002_4074


Jump_002_641b:
    ld a, $01
    ld [bc], a
    jp Jump_002_415c


Call_002_6421:
Jump_002_6421:
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


    ld sp, $f26f
    ld l, e
    xor e
    ld l, a
    push hl
    ld h, l
    sbc l
    ld [hl], c
    jp nz, $9064

    ld h, a
    db $dd
    ld [hl], c
    jr nz, jr_002_6516

    xor b
    ld l, e
    ld l, c
    ld [hl], d
    jp nz, $c164

    ld [hl], d
    jp nz, $ac64

    ld [hl], e
    cpl
    ld [hl], h
    adc $74
    ld b, h
    ld h, a
    ld [$c264], a
    ld h, h
    jp nz, $c264

    ld h, h
    jp nz, $e564

    ld h, l
    inc l
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0707
    nop
    ld bc, $0584
    add c
    ldh a, [$ff84]
    inc b
    add c
    rst $38
    ld bc, $0a0a
    nop
    ld bc, $0384
    add c
    ld bc, $0101
    add c

jr_002_64e5:
    ldh a, [$ff84]
    inc b
    add d
    rst $38
    ld l, l
    ld b, l
    db $f4
    ld h, h
    ld hl, sp+$64
    db $fc
    ld h, h
    nop
    ld h, l
    inc b
    ld h, l
    nop
    nop
    ld c, a
    ld h, l
    nop
    nop
    add d
    ld h, l
    nop
    nop
    or a
    ld h, l
    nop
    nop
    ldh a, [rSB]
    ld b, c
    nop
    rst $38
    call nc, $ed01
    ld b, b
    ld b, l
    ld h, l
    pop af
    reti


    ld h, h
    pop de
    ccf
    ccf
    push de

jr_002_6516:
    ccf
    jp z, $61d2

    ld e, a
    ld e, l
    ld e, c
    ld bc, $0159
    ld e, c
    ld e, l
    ld e, c
    ld d, a
    ld l, e
    ld bc, $caca
    jp z, Jump_002_61dc

    ld e, a
    ld h, c
    ld h, e
    ld bc, $6363
    ld bc, $ca67
    jp z, $ca41

    jp z, $01ca

    nop
    cp $00
    ld bc, $fec8
    add b
    jr nc, @-$66

    rst $38
    add a
    cp $80
    ld bc, $fec8
    nop
    jr nc, jr_002_64e5

    rst $38
    add a
    db $ed
    ret nz

    dec sp
    ld h, l
    call nc, $f101
    reti


    ld h, h
    pop de
    scf
    scf
    push de
    scf
    jp z, $59d2

    ld e, c
    ld e, c
    ld h, c
    ld bc, $0161
    ld h, c

Jump_002_6567:
    ld e, l
    ld e, l
    ld e, l
    ld h, e
    ld bc, $caca
    jp z, Jump_002_67dc

    ld h, l
    ld h, a
    ld l, e
    ld bc, $6f69
    ld bc, $ca71
    jp z, $ca59

    jp z, $01ca

    nop
    nop
    db $ed
    ret nz

    ld a, b
    nop
    or c
    ld h, l
    call nc, $d101
    rra
    rra
    push de
    rra
    jp z, $29d2

    ld bc, $29ca
    ld bc, $27ca
    add hl, hl
    dec l
    ld bc, $1fca
    ld bc, $1dca
    rra
    call c, $011f
    jp z, $011f

    jp z, $2d31

    add hl, hl
    jp z, $2901

    jp z, $0001

    ld [$0820], sp
    ld b, b
    rst $38
    ld h, b
    call nc, $d101
    ld bc, $d501
    ld bc, $02d2
    ld bc, $0214
    ld bc, $1404
    inc b
    ld [bc], a
    ld bc, $1d14
    ld [hl+], a
    ld [bc], a
    inc d
    dec e
    ld [bc], a
    ld bc, $0214
    ld bc, $1404
    inc b
    call c, $0102
    dec e
    inc b
    ld bc, $1d02
    inc d
    ld [bc], a
    ld bc, $041d
    nop
    ld l, l
    ld b, l
    rst $28
    ld h, l
    di
    ld h, l
    push af
    ld h, l
    ld sp, hl
    ld h, l
    db $fd
    ld h, l
    nop
    nop
    ld b, c
    ld h, [hl]
    db $ed
    ld h, [hl]
    nop
    nop
    jr jr_002_6662

    nop
    nop
    ldh a, [rSB]
    ld b, c
    ld [$f5ff], sp
    inc hl
    ld h, [hl]
    call c, $635f
    ld h, a
    ld l, c
    ld h, a
    ld l, c
    ld l, l
    ld l, e
    ld l, l
    rst $10
    ld [hl], c
    ld l, a
    ld [hl], c
    db $d3
    ld [hl], l
    ld [hl], c
    ld [hl], l
    jp z, $d9ca

    ld [hl], a
    jp nc, Jump_002_5f01

    push de
    ld e, a
    jp z, $0001

    cp $00
    ld [bc], a
    ld hl, sp-$02
    add b
    ld h, b
    adc b
    rst $38
    ld h, a
    cp $80
    ld [bc], a
    ld hl, sp-$02
    ld b, b
    ld h, b
    adc b
    rst $38
    ld h, a
    cp $00
    ld bc, $fe88
    add b
    ld [bc], a
    ld l, b
    rst $38
    ld b, a
    push af
    dec l
    ld h, [hl]
    pop af
    call z, $dc64
    ld b, a
    ld c, e
    ld c, a
    ld d, c
    ld c, a
    ld d, c
    ld d, l
    ld d, e
    ld d, l
    rst $10
    ld e, c
    ld d, a
    ld e, c
    db $d3
    ld e, l
    ld e, c
    ld e, l
    jp z, $d9ca

    ld e, a
    jp nc, $4701

    push de
    ld b, a

jr_002_6662:
    jp z, $37f5

    ld h, [hl]
    call c, Call_002_6d01
    jp z, Jump_002_7f77

    add l
    adc a
    sub e
    adc l
    ld [hl], l
    ld [hl], a
    ld [hl], c
    ld a, l
    add e
    adc a
    sub e
    adc a
    add e
    ld l, l
    ld [hl], c
    ld [hl], a
    add c
    ld [hl], c
    jp z, $8177

    add c
    ld a, a
    jp z, Jump_002_7b81

    jp z, Jump_002_6d71

    jp z, $ca7f

    add l
    adc a
    sub e
    adc l
    ld a, l
    ld a, a
    ld [hl], c
    ld [hl], a
    ld a, a
    adc c
    adc a
    adc c
    ld l, l
    ld l, l
    add c
    ld [hl], a
    add c
    ld a, a
    jp z, $818f

    add c
    ld a, a
    jp z, $8581

    jp z, $8171

    ld l, c
    add l
    ld [hl], l
    ld [hl], a
    add l
    add l
    ld [hl], l
    ld [hl], a
    ld [hl], l
    ld [hl], c
    add l
    jp z, $898b

    ld a, a
    jp z, $ca81

    ld [hl], c
    ld [hl], l
    ld a, e
    add c
    ld a, e
    ld [hl], a
    ld [hl], l
    ld l, l
    add l
    jp z, $8589

    ld a, e
    jp z, Jump_002_6d7f

    ld [hl], c
    ld [hl], a
    ld a, a
    add c
    add l
    jp z, $ca77

    jp z, $ca01

    jp z, Jump_002_7577

    ld [hl], e
    ld [hl], c
    ld [hl], a
    add c
    add c
    jp z, Jump_002_7b8f

    jp z, $ca77

    add c
    ld [hl], l
    jp z, Jump_002_7189

    jp z, $6aff

    ld h, [hl]
    db $ed
    ret nz

    ld a, b
    nop
    ld [de], a
    ld h, a
    call c, $1b17
    rra
    rla
    rla
    jp z, $1b1f

    rra
    rst $10
    rra
    rra
    jp z, $21d3

    inc hl
    dec h
    jp z, $d901

    cpl
    jp nc, $1701

    push de
    rla
    db $d3
    jp z, $0001

    dec b
    jr nz, jr_002_6735

    ld b, b
    rst $38
    ld h, b
    call c, $2204
    ld [hl+], a
    inc b
    ld [hl+], a
    ld [hl+], a
    inc b
    inc d
    inc d
    rst $10
    ld [bc], a
    rrca
    inc d
    db $d3
    rrca
    rrca
    rrca
    ld bc, $d9ca
    ld [bc], a
    jp nc, $0f01

    push de
    ld bc, $00ca

jr_002_6735:
    call c, $ca01
    jp z, $221d

    ld [hl+], a
    ld [hl+], a
    dec e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    add hl, sp
    ld h, a
    ld l, l
    ld b, l
    ld c, [hl]
    ld h, a
    nop
    nop
    ld e, b
    ld h, a
    ld h, b
    ld h, a
    ld l, b
    ld h, a
    xor $67
    add hl, bc
    ld l, b
    rst $38
    rst $38
    ld d, b
    ld h, a
    ld a, l
    ld h, a
    and d
    ld l, d
    rst $38

Jump_002_675d:
    rst $38
    ld e, d
    ld h, a
    adc l

Jump_002_6761:
    ld h, a
    adc e
    ld l, e
    rst $38
    rst $38
    ld h, d

Jump_002_6767:
    ld h, a
    ldh a, [rSB]
    ld b, c
    ld [$f5fe], sp
    ld [hl], e
    ld h, a
    push de
    ld bc, $fe00
    add b
    ld bc, $fe88
    nop
    ld [bc], a
    add d
    rst $38
    daa
    db $ed
    ret nz

    ld a, b
    nop
    add a
    ld h, a
    push de
    ld bc, $00d2
    dec b
    ld b, b
    jr nz, @+$62

    rst $38
    nop
    push de
    ld bc, $5c00
    ld b, l
    sbc d
    ld h, a
    cp b
    ld h, a
    call z, $e267
    ld h, a
    and $67
    add hl, bc
    ld l, b
    xor $67
    add hl, bc
    ld l, b
    adc $68
    xor $67
    add hl, bc
    ld l, b
    adc $68
    ld a, [hl-]
    ld l, b
    xor $67
    add hl, bc
    ld l, b
    adc $68
    ld l, l
    ld l, b
    adc $68
    nop
    nop
    ld a, [hl-]
    ld l, c
    dec d
    ld l, d
    ld d, c
    ld l, c
    dec d
    ld l, d
    adc a
    ld l, c
    ld d, c
    ld l, c
    dec d
    ld l, d
    ret nc

    ld l, c
    ld d, b
    ld l, d

Jump_002_67ca:
    nop
    nop
    sbc e
    ld l, d
    and d
    ld l, d
    ld b, a
    ld l, e
    and d
    ld l, d
    ld b, a
    ld l, e
    db $e3
    ld l, d
    and d
    ld l, d
    ld b, a
    ld l, e

Jump_002_67dc:
    ld b, $6b
    ld b, a
    ld l, e
    nop
    nop
    adc e
    ld l, e
    nop
    nop
    ldh a, [rSB]
    ld b, c
    ld [$f5fe], sp
    jr z, jr_002_6857

    pop de
    ld b, a
    ld bc, $4f47
    jp nc, $5f55

    ld bc, $015f
    ld d, l
    pop de
    ld b, c
    ld bc, $4d41
    jp nc, Jump_002_5f53

    ld bc, $015f
    ld d, e
    rst $38
    ld hl, $d168
    ld b, a
    ld bc, $4f47
    jp nc, $5f55

    ld bc, $015f
    ld d, l
    pop de
    add hl, sp
    ld bc, $4f47
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    add hl, sp
    ld bc, $5147
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    ld b, l
    ld bc, $5145
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    nop
    pop de
    ld b, l
    ld bc, $554b
    jp nc, Jump_002_675d

    ld bc, $0167
    ld e, l
    pop de
    add hl, sp
    ld bc, $5147
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    ld b, c
    ld bc, $5147

jr_002_6857:
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    pop de
    ld b, l
    ld bc, $5145
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    rst $38
    add hl, bc
    ld l, b
    pop de
    ld b, l
    ld bc, $554b
    jp nc, Jump_002_675d

    ld bc, $0167
    ld e, l
    pop de
    add hl, sp
    ld bc, $5147
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    ld b, c
    ld bc, $5147
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    pop de
    ld b, l
    ld bc, $594d
    jp nc, $6b61

    ld bc, $016b
    ld h, c
    pop de
    ld c, a
    ld bc, $574f
    jp nc, Jump_002_675d

    ld bc, $0167
    ld e, l
    pop de
    ld b, c
    ld bc, $574f
    jp nc, Jump_002_6761

    ld bc, $0167
    ld h, c
    pop de
    ld b, c
    ld bc, $594f
    jp nc, Jump_002_6761

    ld bc, $0167
    ld h, c
    pop de
    ld c, l
    ld bc, $594d
    jp nc, $6b61

    ld bc, $016b
    ld h, c
    nop
    pop de
    add hl, sp
    ld bc, $5147
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    dec sp
    ld bc, $4d47
    jp nc, Jump_002_5f59

    ld bc, $015f
    ld e, c
    pop de
    ld b, l
    ld bc, $554b
    jp nc, Jump_002_675d

    ld bc, $0167
    ld e, l
    pop de
    ld b, c
    ld bc, $5549
    jp nc, Jump_002_675d

    ld bc, $0167
    ld e, l
    pop de
    ld b, c
    ld bc, $5147
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    pop de
    ld b, l
    ld bc, $5145
    jp nc, Jump_002_6359

    ld bc, $0163
    ld e, c
    pop de
    ld b, a
    ld bc, $4f47
    jp nc, $5f55

    ld bc, $015f
    ld d, l
    jp nc, HeaderCartridgeType

    reti


    ld bc, $fe00
    add b
    ld bc, $fea8
    nop
    ld [bc], a
    and d
    rst $38
    daa
    cp $00
    ld [bc], a
    ret c

    cp $80
    rst $38
    and h
    di
    ld b, $ff
    xor c
    push af
    ld [hl-], a
    ld l, c
    pop af
    call z, $d564
    ld bc, $0101
    ld bc, $0101
    ld bc, $01d9
    jp nc, $0155

    ld e, a
    call nc, $d201
    jp z, Jump_002_5f5d

    ld e, c
    call nc, $d201
    jp z, $5555

    ld e, c
    ld bc, $59ca
    jp z, $69ca

    ld l, c
    ld h, a
    jp z, Jump_002_6369

    jp z, Jump_002_55ca

    ld bc, $d467
    ld bc, $cad2
    ld h, l
    ld h, a
    ld e, c
    ld bc, $59ca
    jp z, Jump_002_55ca

    ld d, l
    ld l, c
    ld bc, $67ca
    jp z, $69ca

    ld l, c
    ld h, a
    ld bc, $6d69
    jp z, Jump_002_67ca

    ld l, c
    nop
    ld l, l
    ld bc, $5fca
    ld e, a
    ld e, l
    jp z, Jump_002_59ca

    ld l, l
    jp z, Jump_002_7173

    ld h, a
    jp z, $ca69

    jp z, $6301

    ld h, e
    ld e, a
    jp z, Jump_002_5dca

    ld l, l
    jp z, Jump_002_6d71

    ld h, e
    jp z, $ca67

    jp z, $6701

    ld l, c
    ld l, l
    ld bc, $ca5f
    jp z, $ca01

    jp z, Jump_002_5d5f

    ld e, e
    ld e, c
    jp z, $69ca

    jp z, $63ca

    jp z, $5f5f

    ld bc, $ca5d
    jp z, $0159

    nop
    ld l, l
    ld bc, $5fca
    ld e, a
    ld e, l
    jp z, Jump_002_59ca

    ld l, l
    jp z, Jump_002_7173

    ld h, a
    jp z, $ca69

    jp z, $6301

    ld h, e
    ld e, a
    jp z, $f3ca

    ld b, $ff
    xor b
    ld e, l
    ld [hl], c
    jp z, $7175

    ld l, e
    jp z, $ca6f

    jp z, $6f01

    ld [hl], c
    ld [hl], l
    ld bc, $ca67
    jp z, $ca01

    jp z, Jump_002_6567

    ld h, e
    ld h, c
    jp z, $71ca

    jp z, Jump_002_6bca

    jp z, Jump_002_6767

    ld bc, $ca65
    jp z, $0161

    nop
    ld [hl], a
    jp z, $7101

    jp z, Jump_002_7501

    ld [hl], a
    ld [hl], a
    jp z, $6f01

    jp z, $6f01

    ld l, a
    ld l, l
    ld h, a
    ld bc, $ca67
    ld bc, $6765
    ld e, c
    ld e, c
    ld bc, $016d
    ld h, a
    jp z, Jump_002_6dca

    ld l, e
    ld l, c
    ld h, a
    jp z, $5fca

    ld h, e
    ld h, a
    jp z, Jump_002_67ca

    jp z, $635f

    ld bc, $63d8
    ld e, a
    db $d3
    ld bc, $01d9
    jp nc, $0155

    nop
    di
    ld b, $ff
    and a
    ld [hl], a
    jp z, $7101

    jp z, Jump_002_7501

    ld [hl], a
    di
    ld b, $ff
    xor b
    ld [hl], a
    jp z, $6f01

    jp z, $6f01

    ld l, a
    ld l, l
    ld h, a
    ld bc, $ca67
    ld bc, $6765
    ld e, c
    ld e, c
    ld bc, $016d
    ld h, a
    jp z, $f3ca

    ld b, $ff
    and l
    ld l, l
    ld l, e
    ld l, c
    ld h, a
    jp z, $5fca

    ld h, e
    di
    ld b, $ff
    and e
    ld h, a
    jp z, Jump_002_67ca

    jp z, $635f

    ld bc, $06f3
    rst $38
    and c
    ret c

    ld h, e
    ld e, a
    jp nc, $0101

    nop
    db $ed
    ret nz

    ld a, b
    nop
    add l
    ld l, e
    jp nc, $012f

    jp z, $012f

    cpl
    dec l
    add hl, hl
    add hl, hl
    ld bc, $29ca
    jp z, $2529

    ld bc, $0121
    jp z, $ca21

    ld hl, $211f
    dec h
    ld bc, $25ca
    ld bc, $2d29
    jp z, $012f

    jp z, $012f

    cpl
    dec l
    add hl, hl
    add hl, hl
    ld bc, $29ca
    jp z, $2529

    ld bc, $0121
    jp z, $ca21

    ld hl, $211f
    dec h
    ld bc, $25ca
    ld bc, $2d29
    add hl, hl
    nop
    rra
    jp z, $1f01

    jp z, $2d2f

    jp z, $ca21

    ld bc, $ca21
    dec h
    daa
    add hl, hl
    add hl, hl
    jp z, $2901

    jp z, $292d

    jp z, $ca25

    ld bc, $ca29
    dec hl
    dec l
    jp z, $c2ff

    ld l, d
    rra
    jp z, $1f01

    jp z, $2d2f

    jp z, $ca21

    ld bc, $ca21
    dec h
    daa
    add hl, hl
    add hl, hl
    jp z, $2901

    jp z, $292d

    jp z, $1425

    ld bc, $ca19
    dec de
    dec e
    jp z, $011f

    jp z, $011f

    rra
    dec e
    add hl, de
    add hl, de
    ld bc, $19ca
    ld bc, $1519
    ld bc, $0111
    jp z, $0111

    ld de, $110f
    dec d
    ld bc, $15ca
    ld bc, $1d19
    add hl, de
    nop
    ld hl, $01ca
    ld hl, $21ca
    rra
    ld hl, $ca23
    ld bc, $ca23
    inc hl
    ld hl, $2523
    jp z, $2501

    jp z, $2325

    dec h
    add hl, hl
    jp z, $2501

    jp z, $1f01

    jp z, $0129

    jp z, $0129

    add hl, hl
    daa
    add hl, hl
    dec h
    ld bc, $25ca
    ld bc, $2925
    dec l
    cpl
    ld bc, $2fca
    ld bc, $2d2f
    cpl
    cpl
    ld bc, $cad9
    jp nc, $0500

    jr nz, jr_002_6ba8

    ld h, b
    rst $38
    nop
    jp nc, Jump_002_4feb

    ld [bc], a
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    cp $1d
    inc b
    ldh a, [rP1]
    ld b, b
    rst $28
    ld a, [de]
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    cp $14
    ld [hl+], a
    ldh a, [rP1]
    ld b, b
    rst $28
    db $ec
    nop

jr_002_6ba8:
    ld e, h
    ld b, l
    or d
    ld l, e
    or [hl]
    ld l, e
    nop
    nop
    nop
    nop
    cp d
    ld l, e
    nop
    nop
    rst $10
    ld l, e
    nop
    nop
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    db $ed
    add b
    push de
    ld l, e
    jp nc, $5353

    ld c, a
    ld c, a
    ld c, e
    ld c, e

Jump_002_6bca:
    ld c, c
    ld c, c
    db $d3
    dec de
    ld de, $111b
    db $d3
    rra
    ld bc, $ff00
    and h
    db $ed
    add b
    push de
    ld l, e
    jp nc, Jump_002_5959

    ld d, l
    ld d, l
    ld d, e
    ld d, e
    ld c, a
    ld c, a
    db $d3
    inc sp
    jp nc, $d101

    inc sp
    scf
    db $d3
    dec sp
    inc sp
    db $d3
    scf
    ld bc, $5c00
    ld b, l
    db $fc
    ld l, e
    ld c, $6c
    ld [hl+], a
    ld l, h
    inc [hl]
    ld l, h
    inc a
    ld l, h
    ld c, h
    ld l, h
    jp Jump_002_4c6c


    ld l, h
    ret


    ld l, h
    jp nc, $4e6c

    ld l, l
    rst $38
    rst $38
    cp $6b
    cp a
    ld l, l
    ret z

    ld l, l
    ld bc, $c86e
    ld l, l
    ld a, [bc]
    ld l, [hl]
    inc de
    ld l, [hl]
    ret z

    ld l, l
    ld bc, $ff6e
    rst $38
    db $10
    ld l, h
    ld e, h
    ld l, [hl]
    ld h, [hl]
    ld l, [hl]
    and b
    ld l, [hl]
    ld h, [hl]
    ld l, [hl]
    xor c
    ld l, [hl]
    or d
    ld l, [hl]
    or $6e
    rst $38
    rst $38
    inc h
    ld l, h
    ld [$106f], sp
    ld l, a
    rst $38
    rst $38
    ld [hl], $6c
    ldh a, [rP1]
    ld b, c
    nop
    cp $ed
    pop bc
    and h
    ld l, l
    db $d3
    ld bc, $caca
    jp z, $00d2

    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    cp $7f
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [rP1]
    ld b, b
    rst $28
    push af
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca55

    ld a, [c]
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    pop bc
    and h
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $00f0
    ld b, b
    cp $f5
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca59

    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [rP1]
    ld b, b
    rst $28
    push af
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca55

    ld a, [c]
    ldh a, [rP1]
    ld b, b
    rst $38
    db $ed
    pop bc
    and h
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    nop
    ld a, a
    ld bc, $cad9
    jp nc, Jump_002_7f00

    ld a, a
    ld bc, $7f7f
    ld bc, $017f
    nop
    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    cp $7f
    ld a, a
    ld a, a
    ld a, a
    push af
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca55

    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ldh a, [rP1]
    ld b, b
    rst $28
    ld a, a
    ld a, a
    ld a, a

Call_002_6d01:
    ld a, a
    push af
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca55

    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    cp $7f
    ld a, a
    ld a, a
    ld a, a
    push af
    xor h
    ld l, l
    pop af
    or [hl]
    ld l, l
    ld e, c
    jp z, $ca55

    ld a, [c]
    db $ed
    pop bc
    and h
    ld l, l
    ldh a, [rP1]
    ld b, b
    rst $38
    db $eb
    inc bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    db $ec
    ld a, a
    ld bc, $cad9
    jp nc, $f000

    nop
    ld b, b
    cp $f2
    db $ed
    pop bc
    and h
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a

Jump_002_6d5f:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $caca
    jp z, Jump_002_7f7f

    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, a
    ld a, a

Jump_002_6d71:
    ld a, a
    ld bc, $caca
    jp z, Jump_002_7fca

    ld a, a
    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a

Jump_002_6d7f:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $caca
    jp z, Jump_002_7f7f

    ld a, a
    ld a, a
    ld bc, $017f
    ld a, a
    ld a, a
    di
    inc [hl]
    ret z

    ld h, b
    di
    dec [hl]
    ret z

    ld bc, $ca01
    jp z, $caca

    jp z, $00ca

    ld [bc], a
    add d
    rst $38
    ld b, a
    cp $00
    ld bc, $fea1
    add b
    rst $38
    ld d, [hl]
    cp $80
    ld b, $d2
    cp $00
    inc b
    jr c, @+$01

    and e
    ld bc, $0284
    add d
    ld [bc], a
    ld [bc], a
    inc bc
    add e
    rst $38
    db $ed
    add b
    and b
    ld l, l
    call nc, $ca01
    jp nc, Jump_002_5900

    ld e, c

Jump_002_6dca:
    ld e, c
    ld h, c
    ld bc, $0161
    ld h, c
    ld e, l
    ld e, l
    ld e, l
    ld h, e
    ld bc, $caca
    jp z, $6161

    ld h, c
    ld h, a
    ld bc, $0167
    ld h, a
    ld h, e
    ld h, a
    ld h, e
    ld e, l
    ld bc, $caca
    jp z, Jump_002_5959

    ld e, c
    ld h, c
    ld bc, $0161
    ld h, c
    ld e, l
    ld e, l
    ld e, l
    ld h, e
    ld bc, $caca
    jp z, Jump_002_6567

    ld h, e
    ld h, c
    ld bc, $5d59
    ld bc, $5900
    ld bc, $caca
    jp z, $caca

    jp z, Jump_002_5900

    ld h, c
    ld bc, $6f67
    ld bc, $016d
    nop
    ld l, e
    ld a, c
    ld [hl], l
    ld [hl], c
    ld bc, $6f71
    ld bc, $635d
    ld bc, $6f6b
    ld bc, $016b
    ld e, l
    ld [hl], c
    ld l, a
    ld l, e
    ld bc, $676b
    ld bc, $6761
    ld bc, $716f
    ld bc, $016f
    ld l, e
    ld a, c
    ld [hl], l
    ld [hl], c
    ld bc, $6f71
    ld bc, $7575
    ld [hl], c
    ld l, a
    ld bc, $6f6b
    ld bc, $6567
    ld h, e
    ld h, c
    ld bc, $5d59
    ld bc, $4d4f
    ld c, e
    ld c, c
    ld bc, $4541
    ld bc, $0141
    jp z, $caca

    jp z, $caca

    nop
    db $ed
    or b
    ld a, b
    nop
    nop
    ld l, a
    call nc, $ca01
    nop
    jp nc, $0129

    jp z, $0129

    jp z, $2927

    dec l
    ld bc, $1fca
    ld bc, $1dca
    rra
    ld sp, $ca01
    ld sp, $ca01
    cpl
    ld sp, $011f
    jp z, $012d

    rra
    dec h
    daa
    add hl, hl
    ld bc, $29ca
    ld bc, $27ca
    add hl, hl
    dec l
    ld bc, $1fca
    ld bc, $1dca
    rra
    ld sp, $ca01
    ld sp, $1f01
    daa
    ld bc, $2900
    ld bc, $caca
    jp z, $25ca

    daa
    nop
    add hl, hl
    ld bc, $caca
    jp z, $291f

    ld bc, $d200
    dec l
    ld bc, $1fca
    ld bc, $27ca
    add hl, hl
    dec l
    ld bc, $2dca
    ld bc, $2927
    ld bc, $0131
    jp z, $0129

    jp z, $312f

    ld sp, $ca01
    ld sp, $3101
    dec l
    ld bc, $0133
    jp z, $012d

    jp z, $2f31

    dec l
    ld bc, $2dca
    ld bc, $2dca
    jp z, $0131

    jp z, $0131

    rra
    daa
    ld bc, $0131
    jp z, $0131

    rra
    daa
    ld bc, $29d5
    nop
    push de
    ld bc, $caca
    jp z, $caca

    jp z, $00ca

    ld b, $20
    ld b, $40
    inc c
    ld h, b
    rst $38
    nop
    call nc, $d201
    ld bc, $14ca
    inc d
    nop
    ld [bc], a
    ld bc, $0214
    ld bc, $1404
    inc b
    ld [bc], a
    ld bc, $041d
    ld bc, $1d02
    inc d
    ld [bc], a
    ld bc, $0214
    ld bc, $1404
    inc b
    ld [bc], a
    ld bc, $1d14
    ld [hl+], a
    ld [bc], a
    inc d
    dec e
    nop
    ld e, h
    ld b, l
    dec sp
    ld l, a
    ccf
    ld l, a
    ld b, e
    ld l, a
    nop
    nop
    ld b, a
    ld l, a
    nop
    nop
    ld [hl], b
    ld l, a
    nop
    nop
    adc c
    ld l, a
    nop
    nop
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    db $ed
    ret nz

    ld h, [hl]
    ld l, a
    push de
    ld bc, $cad8
    jp nc, $635d

    ld h, c
    call nc, $f55f
    ld l, [hl]
    ld l, a
    push de
    ld e, a
    jp z, $0001

    ld [bc], a
    add d
    rst $38
    ld b, a
    cp $00
    ld bc, $fea1
    add b
    rst $38
    ld d, [hl]
    rst $38
    rrca
    db $ed
    add b
    ld h, d
    ld l, a
    push de
    ld bc, $cad8
    jp nc, Jump_002_413b

    ccf
    call nc, $f53d
    ld l, [hl]
    ld l, a
    pop af
    call z, $d564
    ld [hl], e
    jp z, $0001

    db $ed
    or b
    ld a, b
    nop
    and c
    ld l, a
    pop af
    call z, $d564
    ld bc, $cad8
    jp nc, $332d

    ld sp, $2fd4
    push de
    jp z, $01ca

    nop
    inc c
    jr nz, jr_002_6fbc

    ld b, b
    db $10
    ld h, b
    jr nc, jr_002_6fe9

    rst $38
    jr nz, jr_002_7008

    ld b, l
    or l
    ld l, a
    jp $d16f


    ld l, a
    rst $18
    ld l, a
    pop hl
    ld l, a
    dec de
    ld [hl], b
    db $ed
    ld l, a
    ld c, c

jr_002_6fbc:
    ld [hl], b
    db $ed
    ld l, a
    rst $38
    rst $38
    or a
    ld l, a
    adc d
    ld [hl], b
    cp d
    ld [hl], b
    adc [hl]
    ld [hl], b
    and $70
    adc [hl]
    ld [hl], b
    rst $38
    rst $38
    push bc
    ld l, a
    rla
    ld [hl], c
    ld b, [hl]
    ld [hl], c
    dec e
    ld [hl], c
    ld l, d
    ld [hl], c
    dec e
    ld [hl], c
    rst $38
    rst $38
    db $d3
    ld l, a
    adc l
    ld [hl], c
    ldh a, [rSB]
    ld b, c
    nop
    cp $ed
    ld b, b
    add d

jr_002_6fe9:
    ld [hl], b
    pop af
    call z, $d164
    ld b, l
    jp z, Jump_002_47ca

    ld c, c
    jp z, Jump_002_4bca

    jp z, $01d7

    ld d, l
    pop de
    ld e, c
    rst $10
    ld e, e
    ld e, l
    jp z, $d3ca

    ld bc, $55d1
    jp z, Jump_002_59ca

jr_002_7008:
    ld e, e
    jp z, Jump_002_5dca

    ld e, l
    jp z, Jump_002_55ca

    ld e, c
    jp z, Jump_002_55ca

    jp z, $caca

    ld bc, $cad9
    nop
    pop de
    ld c, a
    jp z, Jump_002_51ca

    ld d, e
    jp z, Jump_002_55ca

    jp z, $01d7

    ld e, a
    pop de
    ld h, e
    rst $10
    ld h, l
    ld h, a
    jp z, $d3ca

    ld bc, $5fd1
    jp z, $63ca

    ld h, l
    jp z, Jump_002_67ca

    ld h, a
    jp z, $5fca

    ld h, e
    jp z, $5fca

    jp z, $caca

    ld bc, $cad9
    nop
    jp nc, $d145

    ld bc, $d25d
    jp z, Jump_002_59ca

    ld bc, $ca55
    ld d, e
    ld bc, $d155
    jp z, $d86d

    jp z, $01d2

    ld e, l
    ld bc, $0155
    ld e, l
    pop de
    ld bc, $5953
    jp z, Jump_002_55ca

    db $d3
    jp z, $01d7

    pop de
    ld l, l
    jp z, $d801

    jp z, $fe00

    add b
    ld bc, $feb8
    nop
    inc b
    ld h, h
    dec b
    jr @+$01

    daa
    cp $00
    ld bc, $fec8
    add b
    rst $38
    ld h, [hl]
    db $ed
    ret nz

    halt
    ld [hl], b
    pop de
    ld b, l
    jp z, Jump_002_47ca

    ld c, c
    jp z, Jump_002_4bca

    jp z, $01d7

    ld b, l
    pop de
    ld b, a
    rst $10
    ld c, c
    ld c, e
    jp nc, $d401

    jp z, Jump_002_45d1

    jp z, Jump_002_47ca

    ld c, c
    jp z, Jump_002_4bca

    ld b, l
    jp z, $3dca

    ld b, c
    jp z, $3dca

    db $d3
    jp z, $01d9

    nop
    pop de
    ld c, a
    jp z, Jump_002_51ca

    ld d, e
    jp z, Jump_002_55ca

    jp z, $01d7

    ld c, a
    pop de
    ld d, c
    rst $10
    ld d, e
    ld d, l
    jp nc, $d401

    jp z, Jump_002_4fd1

    jp z, Jump_002_51ca

    ld d, e
    jp z, Jump_002_55ca

    ld c, a
    jp z, Jump_002_47ca

    ld c, e
    jp z, Jump_002_47ca

    db $d3
    jp z, $01d9

    nop
    jp nc, $d145

    ld bc, $d25d
    jp z, $5fca

    ld bc, $0161
    ld h, e
    ld bc, $d15d
    jp z, $d255

    jp z, $d301

    jp z, $5dd1

    ld bc, $cad2
    ld e, l
    ld bc, $d15d
    ld bc, $595b
    jp z, Jump_002_55ca

    rst $10
    jp z, $d101

    jp z, $ca5d

    ld bc, $cad8
    nop
    db $ed
    or b
    ld a, b
    nop
    add l
    ld [hl], c
    pop de
    dec h
    jp z, $29ca

    dec hl
    jp z, $2dca

    jp z, $01d7

    dec h
    pop de
    add hl, hl
    rst $10
    dec hl
    dec l
    jp nc, $2d01

    ld bc, $012d
    jp nc, $d12d

    ld bc, $d32d
    dec hl
    jp nc, $0129

    db $d3
    daa
    inc hl
    ld hl, $1d1f
    nop
    pop de
    cpl
    jp z, $31ca

    rst $10
    dec [hl]
    scf
    jp nc, $2f01

    pop de
    jp z, $d731

    dec [hl]
    scf
    jp nc, $d301

    scf
    scf
    pop de
    scf
    jp z, $3701

    db $d3
    dec [hl]
    inc sp
    cpl
    dec l
    dec hl
    add hl, hl
    daa
    nop
    pop de

Jump_002_716b:
    dec l
    jp z, $2d01

    db $d3
    dec hl
    add hl, hl
    daa

Jump_002_7173:
    inc hl
    ld hl, $1d1f
    dec h
    dec h
    dec h
    pop de
    add hl, hl
    jp z, $25ca

    db $d3
    dec h
    inc hl
    rra
    inc hl
    nop
    dec b
    jr nz, jr_002_718a

    nop

Jump_002_7189:
    ld a, [bc]

jr_002_718a:
    ld h, b
    rst $38
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
    adc [hl]
    ld [hl], c
    ld e, h
    ld b, l
    and a
    ld [hl], c
    xor e
    ld [hl], c
    nop
    nop
    nop
    nop
    xor a
    ld [hl], c
    nop
    nop
    call nz, $0071
    nop
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    db $ed
    ret nz

    ret nz

    ld [hl], c
    jp nc, $ca15

    ld hl, $cad5
    ld bc, $0800
    ld hl, sp-$01
    add a
    db $ed
    add b
    ret nz

    ld [hl], c
    pop af
    call z, $d264
    dec d
    dec de
    jp z, $23d5

    ld bc, $d1ca
    jp z, $cad2

    jp z, $36f3

    ret z

    inc b
    nop
    ld l, l
    ld b, l
    rst $20
    ld [hl], c
    db $eb
    ld [hl], c
    nop
    nop
    nop
    nop
    rst $28
    ld [hl], c
    nop
    nop
    inc c
    ld [hl], d
    nop
    nop
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    db $ed
    ld b, b
    ld a, [bc]
    ld [hl], d
    pop de
    inc hl
    inc hl
    ret c

    inc hl
    db $eb
    ld [bc], a
    pop de
    inc hl
    dec h
    jp nc, $d329

    inc hl
    db $ec
    nop
    rst $38
    and h
    rst $38
    add h
    db $ed
    add b
    ld [$d172], sp
    inc sp
    inc sp
    ret c

    inc sp
    db $eb
    ld [bc], a
    pop de
    ld b, c
    ld b, l
    jp nc, $d349

    ld b, c
    db $ec
    nop
    ld e, h
    ld b, l
    ld a, [hl+]
    ld [hl], d
    ld l, $72
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld [hl], d
    nop
    nop
    ld d, e
    ld [hl], d
    nop
    nop
    ldh a, [rP1]
    ld b, c
    nop
    rst $38
    db $ed
    ld b, b
    ld c, l
    ld [hl], d
    jp nc, $0b11

    ld de, $110b
    dec bc
    ld de, $d20b
    ld de, $110b
    dec bc
    ld de, $010b
    nop
    rst $38
    and h
    db $10
    xor b
    rst $38
    add h
    db $ed
    add b
    ld c, l
    ld [hl], d
    jp nc, $2329

    add hl, hl
    inc hl
    add hl, hl
    inc hl
    add hl, hl
    inc hl
    jp nc, $2329

    add hl, hl
    inc hl
    add hl, hl
    inc hl
    ld bc, $5c00
    ld b, l
    ld [hl], e
    ld [hl], d
    ld a, c
    ld [hl], d
    nop
    nop
    ld a, a
    ld [hl], d
    add e
    ld [hl], d
    sbc d
    ld [hl], d
    nop
    nop
    and [hl]
    ld [hl], d
    or b
    ld [hl], d
    nop
    nop
    or h
    ld [hl], d
    nop
    nop
    ldh a, [rSB]
    ld b, c
    nop
    cp $ed
    ld b, c
    and d
    ld [hl], d
    db $d3
    ld bc, $4f4b
    ld d, c
    ld d, e
    rst $10
    ld d, l
    pop de
    ld b, c
    rst $10
    ld b, l
    jp nc, $f000

    nop
    ld b, b
    rst $38
    ld c, a
    pop de
    ld bc, $0400
    and e
    rst $38
    add a
    db $ed
    ret nz

    and d
    ld [hl], d
    pop af
    call z, $ff64
    adc h
    ld [hl], d
    ld b, a
    pop de
    ld bc, $d300
    ld bc, $ebd1
    inc bc
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a
    db $ec
    nop
    ld l, l
    ld b, l
    bit 6, d
    rst $08
    ld [hl], d
    db $d3
    ld [hl], d
    db $db
    ld [hl], d
    db $e3
    ld [hl], d
    nop
    nop
    db $10
    ld [hl], e
    nop
    nop
    jr z, @+$75

    ld b, d
    ld [hl], e
    rst $38
    rst $38
    push de
    ld [hl], d
    ld l, e
    ld [hl], e
    adc e
    ld [hl], e
    rst $38
    rst $38
    db $dd
    ld [hl], d
    ldh a, [rP1]
    ld b, c
    ld [$f5fe], sp
    nop
    ld [hl], e
    pop de
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld bc, $0155
    ld e, c
    ld bc, $5355
    ld bc, $59ca
    jp nc, $d459

    ld e, b
    ld bc, $fe00
    ld b, b
    ld bc, $fed8
    add b
    rst $38
    and h
    cp $00
    ld [bc], a
    xor b
    cp $80
    rst $38
    ld b, a
    push af
    ld [$d173], sp
    ld e, c
    ld e, l
    ld e, e
    ld e, c
    ld bc, $015d
    ld h, c
    ld bc, $595d
    ld bc, $63ca
    jp nc, $d563

    ld h, d
    ld bc, $ed00
    or b
    ld a, b
    nop
    ld h, e
    ld [hl], e
    pop de
    add hl, hl
    dec l
    dec hl
    add hl, hl
    ld bc, $012d
    ld sp, $2d01
    add hl, hl
    ld bc, $33ca
    jp nc, $d533

    ld [hl-], a
    pop de
    inc sp
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $0137
    jp z, $0129

    add hl, hl
    ld sp, $3301
    ld bc, $29ca
    ld bc, $2d29
    ld bc, $2937
    ld bc, $0129
    add hl, hl
    ld sp, $0001
    dec b
    jr nz, jr_002_7369

    nop
    rlca
    ld h, b

jr_002_7369:
    rst $38
    nop
    pop de
    inc d
    inc d
    inc d
    inc d
    ld bc, $0114
    inc d
    ld bc, $1414
    ld bc, $14ca
    inc d
    ld bc, $01d3
    pop de
    jr jr_002_7399

    jr @+$16

    inc d
    inc b
    inc d
    inc b
    inc d
    inc b
    inc d
    inc b
    inc d
    ld bc, $04ca
    ld bc, $1d04
    ld bc, $010f
    jp z, HeaderLogo

    inc b

jr_002_7399:
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
    nop
    ld l, l
    ld b, l
    or [hl]
    ld [hl], e
    cp d
    ld [hl], e
    cp [hl]
    ld [hl], e
    jp nz, $c673

    ld [hl], e
    nop
    nop
    db $e3
    ld [hl], e
    nop
    nop
    ei
    ld [hl], e
    nop
    nop
    rla
    ld [hl], h
    nop
    nop
    ldh a, [rP1]
    ld b, c
    ld [$f5fe], sp
    nop
    ld [hl], e
    pop de
    ld d, e
    ld d, e
    call nc, $db4f
    ld d, e
    ld d, e
    ld d, e
    ld c, a
    ld c, a
    ld bc, $4f51
    ld bc, $0153
    jp nc, $0159

    nop
    push af
    ld [$d173], sp
    ld e, c
    ld e, l
    call nc, $db59
    ld e, c
    ld e, l
    ld e, e
    ld e, c
    ld e, e
    ld bc, $615d
    ld bc, $0159
    jp nc, $0163

    nop
    db $ed
    or b
    ld a, b
    nop
    ld h, e
    ld [hl], e
    pop de
    add hl, hl
    dec l
    db $d3
    add hl, hl
    ld bc, $29db
    dec l
    dec hl
    add hl, hl
    dec hl
    ld bc, $312d
    ld bc, $0129
    jp nc, $0133

    nop
    pop de
    inc d
    inc d
    inc d
    call nc, $db01
    inc d
    inc d
    inc d
    inc d
    inc b
    ld bc, $0414
    ld bc, $0114
    inc d
    inc d
    inc d
    inc d
    ld bc, $5c00
    ld b, l
    add hl, sp
    ld [hl], h
    dec a
    ld [hl], h
    ld b, c
    ld [hl], h
    ld b, l
    ld [hl], h
    ld c, c
    ld [hl], h
    nop
    nop
    add d
    ld [hl], h
    nop
    nop
    sbc e
    ld [hl], h
    nop
    nop
    or a
    ld [hl], h
    nop
    nop
    ldh a, [rSB]
    ld b, c
    nop
    cp $f5
    halt
    ld [hl], h
    pop af
    call z, $d164
    ld bc, $4b4b
    ld c, e
    db $d3
    ld c, e
    rst $10
    ld d, l
    pop de
    ld c, e
    jp nc, Jump_002_534f

    ld d, a
    ld e, c
    call nc, Call_002_4159
    pop de
    ld bc, $fe00
    nop
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
    ld l, d
    ld [hl], h
    pop de
    ld bc, $5553
    ld d, a
    db $d3
    ld e, c
    rst $10
    ld e, l
    pop de
    ld c, e
    jp nc, $5957

    ld e, l
    ld h, c
    call nc, Call_002_4b63
    pop de
    ld bc, $ed00
    or b
    ld a, b
    nop
    ld h, e
    ld [hl], e
    pop de
    ld bc, $2523
    daa
    db $d3
    add hl, hl
    rst $10
    dec l
    pop de
    dec de
    jp nc, $2927

    dec l
    ld sp, $33d4
    dec de
    pop de
    ld bc, $d100
    ld bc, $1414
    inc d
    db $d3
    inc b
    rst $10
    inc d
    pop de
    inc b
    jp nc, $1414

    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld [bc], a
    ld bc, $9800
    ld b, l
    ret c

    ld [hl], h
    call c, $0074
    nop
    ldh [$ff74], a
    db $e4
    ld [hl], h
    nop
    nop
    add hl, hl
    ld [hl], l
    nop
    nop
    ld d, b
    ld [hl], l
    nop
    nop
    db $f4
    jr nz, @-$0e

    ld bc, $0041
    cp $ed
    ld b, c
    ld hl, $db75
    ld h, e
    jp z, $63df

    ldh a, [rP1]
    ld b, b
    rst $28
    ld e, a
    db $db
    ld h, e
    ld e, a
    ldh a, [rP1]
    ld b, b
    cp $df

Jump_002_7501:
    ld e, l
    ld h, e
    db $db
    ld e, l
    ld e, e
    rst $18
    ld h, e
    ld e, e
    ldh a, [rP1]
    ld b, b
    rst $28
    db $db
    ld e, c
    jp z, Jump_002_4fdf

    ldh a, [rP1]
    ld b, b
    cp $4d
    db $db
    jp z, $00f0

    ld b, b
    rst $38
    ld b, c
    call nc, $00ca
    ld [bc], a
    ld [c], a
    rst $38

jr_002_7524:
    ld h, a
    inc b
    add e
    rst $38
    ld b, a
    db $f4
    jr nz, @-$11

    ret nz

    dec h
    ld [hl], l
    pop af
    call z, $db64
    ld h, e
    jp z, $63df

    ld e, a
    db $db
    ld h, e
    ld e, a
    rst $18
    ld e, l
    ld h, e
    db $db
    ld e, l
    ld e, e
    rst $18
    ld h, e
    ld e, e
    db $db
    ld e, c
    jp z, Jump_002_4fdf

    ld c, l
    db $db
    jp z, $d44b

    jp z, $f400

    jr nz, jr_002_7524

    db $eb
    ld [bc], a
    dec e
    rst $10
    ld bc, $d127
    ld [hl+], a
    db $ec
    dec e
    ld bc, $27ca
    dec e
    ld bc, $0fca
    jp z, $00ca

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7577:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7b81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7b8f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7f77:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7fca:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
