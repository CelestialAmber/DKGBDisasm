; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

Jump_017_4000:
    ld [hl], $40
    ld b, e
    ld b, b
    ld l, b
    ld b, b
    add a
    ld b, b
    sub h
    ld b, b
    xor d
    ld b, b
    or h
    ld b, b
    cp [hl]
    ld b, b
    ret z

    ld b, b
    ret c

    ld b, b
    push hl
    ld b, b
    cp $40
    dec bc
    ld b, c
    dec d
    ld b, c
    inc e
    ld b, c
    ld [hl-], a
    ld b, c
    ld b, l
    ld b, c
    ld e, b
    ld b, c
    ld l, e
    ld b, c
    ld a, b
    ld b, c
    sub c
    ld b, c
    sbc e
    ld b, c
    xor e
    ld b, c
    or l
    ld b, c
    jp nz, $d241

    ld b, c
    sub $41
    inc b
    nop
    and $41
    ld bc, $4322
    ld [bc], a
    ld h, h
    ld b, e
    inc bc
    ld a, h
    ld b, e
    inc c
    nop
    ld a, l
    ld b, e
    ld bc, $43ef
    ld [bc], a
    ld d, [hl]
    ld b, h
    inc bc
    ld l, d
    ld b, h
    inc b
    ld l, d
    ld b, h
    dec b
    ld l, d
    ld b, h
    ld b, $6a
    ld b, h
    rlca
    ld l, d
    ld b, h
    ld [$446a], sp
    add hl, bc
    ld l, d
    ld b, h
    ld a, [bc]
    ld l, d
    ld b, h
    dec bc
    sub l
    ld b, h
    ld a, [bc]
    nop
    ld d, [hl]
    ld b, l
    ld bc, $4605
    ld [bc], a
    ld c, b
    ld b, [hl]
    inc bc
    ld e, h
    ld b, [hl]
    inc b
    ld e, h
    ld b, [hl]
    dec b
    ld e, h
    ld b, [hl]
    ld b, $5c
    ld b, [hl]
    rlca
    ld e, h
    ld b, [hl]
    ld [$465c], sp
    add hl, bc
    ld e, h
    ld b, [hl]
    inc b
    nop
    ld a, a
    ld b, [hl]
    ld bc, $471f
    ld [bc], a
    or a
    ld b, a
    inc bc
    bit 0, a
    rlca
    nop
    and $47
    ld bc, $485d
    ld [bc], a
    xor d
    ld c, b
    inc bc
    cp [hl]
    ld c, b
    inc b
    push bc
    ld c, b
    dec b
    xor $48
    ld b, $f5
    ld c, b
    inc bc
    nop
    ccf
    ld c, c
    ld bc, $4a03
    ld [bc], a
    ld c, b
    ld b, [hl]
    inc bc
    nop
    ld e, d
    ld c, d
    ld bc, $4b1b
    ld [bc], a
    sbc h
    ld c, e
    inc bc
    nop
    or b
    ld c, e
    ld bc, $4c5a
    ld [bc], a
    ld d, [hl]
    ld b, h
    dec b
    nop
    ld a, [HeaderMaskROMVersion]
    sub c
    ld c, l
    ld [bc], a
    or a
    ld b, a
    inc bc
    jp $044d


    ldh [rKEY1], a
    inc b
    nop
    nop
    ld c, [hl]
    ld bc, $4e85
    ld [bc], a
    sbc d
    ld c, [hl]
    inc bc
    bit 1, [hl]
    ld [$e600], sp
    ld c, [hl]
    ld bc, $4fc9
    ld [bc], a
    ld [hl], $50
    inc bc
    cp d
    ld d, b
    inc b
    call nc, $0550
    ld b, h
    ld d, c
    ld b, $f5
    ld d, b
    rlca
    rrca
    ld d, c
    inc b
    nop
    ld e, a
    ld d, c
    ld bc, $51e1
    ld [bc], a
    inc b
    ld d, d
    inc bc
    ld l, a
    ld d, d
    inc bc
    nop
    sub h
    ld d, d
    ld bc, $5377
    ld [bc], a
    or a
    ld b, a
    ld [bc], a
    nop
    sub [hl]
    ld d, e
    ld bc, $540a
    rlca
    nop
    ld b, d
    ld d, h
    ld bc, $552e
    ld [bc], a
    ld b, a
    ld d, l
    inc bc
    adc e
    ld d, l
    inc b
    jp nc, $0555

    sub $55
    ld b, $dc
    ld d, l
    ld b, $00
    db $ec
    ld d, l
    ld bc, $5663
    ld [bc], a
    or d
    ld d, [hl]
    inc bc
    ldh a, [rRP]
    inc b
    dec l
    ld d, a
    dec b
    ld e, e
    ld d, a
    ld b, $00
    sub l
    ld d, a
    ld bc, $58cf
    ld [bc], a
    sbc d
    ld e, c
    inc bc
    and b
    ld e, c
    inc b
    xor b
    ld e, c
    dec b
    or b
    ld e, c
    ld b, $00
    dec l
    ld e, d
    ld bc, $5adf
    ld [bc], a
    sbc h
    ld c, e
    inc bc
    dec c
    ld e, e
    inc b
    inc de
    ld e, e
    dec b
    ld d, $5b
    inc b
    nop
    ld c, [hl]
    ld e, e
    ld bc, $5bd1
    ld [bc], a
    ld a, $5c
    inc bc
    ld b, c
    ld e, h
    ld [$6e00], sp
    ld e, h
    ld bc, $5d18
    ld [bc], a
    ld [hl], c
    ld e, l
    inc bc
    add l
    ld e, l
    inc b
    ret z

    ld e, l
    dec b
    ld [$065d], a
    add hl, sp
    ld e, [hl]
    rlca
    ld d, c
    ld e, [hl]
    inc bc
    nop
    add h
    ld e, [hl]
    ld bc, $5f77
    ld [bc], a
    or a
    ld b, a
    dec b
    nop
    sbc e
    ld e, a
    ld bc, $6046
    ld [bc], a
    sbc l
    ld e, c
    inc bc
    xor e
    ld e, c
    inc b
    adc $60
    inc bc
    nop
    and $60
    ld bc, $60ff
    ld [bc], a
    ld d, a
    ld h, c
    inc b
    nop
    di
    ld h, c
    ld bc, $632d
    ld [bc], a
    add b
    ld h, e
    inc bc
    xor h
    ld h, e
    dec b
    nop
    ld d, b
    ld h, h
    ld bc, $65a2
    ld [bc], a
    cp [hl]
    ld h, l
    inc bc
    ld hl, $0466
    sub c
    ld h, [hl]
    ld bc, $3b00
    ld h, a
    dec b
    nop
    and $66
    ld bc, $6722
    ld [bc], a
    scf
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc b
    jr nc, @+$69

    inc e
    ld l, [hl]
    jp z, $02ff

    db $10
    jp nz, $1a2a

    sbc h
    ld l, h
    ld [bc], a
    ld h, b
    jp nz, $3700

    ld b, $f1
    rst $00
    dec d
    ld b, e
    ld e, $f1
    rst $00
    dec hl
    cpl
    ret z

    inc de

jr_017_4202:
    ld [bc], a
    db $10
    jp nz, $1a06

    sbc h
    ld l, h
    ld c, c
    ld b, $00
    inc bc
    pop hl
    push bc
    rra
    ld b, e
    dec hl
    ld l, $c8
    dec a
    ld a, [bc]
    inc bc
    inc [hl]
    dec bc
    nop
    ld [hl], $0b
    pop hl
    push bc
    inc b
    jr nz, jr_017_4202

    push bc
    ld c, $18
    rst $38
    ret nc

    dec hl
    cpl
    ret z

    ld e, l
    ld a, [bc]
    ld [bc], a
    inc b
    ld b, $1a
    rlca
    ld c, $02
    ld l, h
    jp z, $0aff

    ld [bc], a
    inc b
    ld b, $1a
    rlca
    ld c, $2b
    ld l, $c8
    dec c
    jr jr_017_4242

jr_017_4242:
    nop
    ld c, c
    ld b, $06
    inc e
    ld l, h
    jp z, $4900

    ld bc, $0600
    db $10
    rlca
    ld b, $20
    rlca
    ld c, c
    ld bc, $1605
    db $fd
    ret nz

    jr @+$01

    ld b, b
    dec hl
    cpl
    ret z

    dec de
    ld a, [bc]
    dec c
    ld b, c
    dec b
    inc a
    nop
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $146c
    nop
    ld b, $20
    rlca
    ld c, c
    ld b, $07
    ld b, $10
    rlca
    ld [bc], a
    ld l, h
    jp z, $2bff

    cpl
    ret z

    ld [hl-], a
    inc b
    ld d, $01
    nop
    inc e
    inc bc
    jp nz, $1660

    nop
    nop
    inc b
    ld b, $08
    rlca
    dec hl
    cpl
    ret z

    ccf
    jr jr_017_4295

jr_017_4295:
    ret nz

    ld a, [bc]
    dec c
    inc b
    ld b, $03
    rlca

jr_017_429c:
    ld c, $2b
    cpl
    ret z

    ld d, c
    jr jr_017_42a3

jr_017_42a3:
    nop
    inc d
    rrca
    inc bc
    pop hl
    push bc
    rra
    ld b, e
    ld [bc], a
    ld l, [hl]
    jp z, $0a00

    ld [bc], a
    inc [hl]
    dec bc
    nop
    ld [hl], $0b
    pop hl
    push bc
    inc b
    jr nz, jr_017_429c

    push bc
    ld c, $06
    jr nz, jr_017_42c7

    inc b
    jr z, jr_017_42ca

    jp nz, RST_08

    scf

jr_017_42c7:
    inc b
    ld l, l
    ret z

jr_017_42ca:
    dec de
    ld b, e
    inc bc
    push af
    rst $00
    ld l, l
    ret z

    ld e, $f1
    rst $00
    ld [bc], a
    ld h, b
    jp nz, $1601

    rst $38
    ld b, b
    jr @+$01

    and b
    inc [hl]
    db $10
    inc c
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $046c
    ld b, $20
    rlca
    ld b, $01
    rlca
    dec hl
    cpl
    ret z

    ld d, b

jr_017_42f2:
    dec hl
    ld l, $c8
    inc de
    jr jr_017_42fb

    nop
    ld c, c
    nop

jr_017_42fb:
    ld bc, $0306
    rlca
    ld c, c
    nop
    inc bc
    inc b
    ld b, $02
    rlca
    jr jr_017_4308

jr_017_4308:
    nop
    dec d
    nop
    nop
    ld b, $40
    rlca
    inc l
    jr c, jr_017_4318

    add b
    rlca
    jr c, jr_017_4366

    sbc c
    ld [bc], a

jr_017_4318:
    ld [bc], a
    ld [hl], h
    nop
    ld [hl], c
    ld [hl], d
    ld b, h
    ld [hl], e
    ld [$4008], sp
    ld [bc], a
    jr nc, @-$3c

    ld c, $1a
    jp c, $026c

    ld l, [hl]

jr_017_432b:
    jp z, $02ff

    jr nc, jr_017_42f2

    add hl, bc
    ld a, [de]
    jp c, Jump_017_496c

    dec b
    nop
    inc bc
    db $e3
    push bc
    ld e, c
    ld b, e
    ld a, [bc]
    ld [$0b34], sp
    nop
    ld [hl], $0b
    db $e3
    push bc
    inc b
    jr nz, jr_017_432b

    push bc
    ld c, $15
    nop
    nop
    inc e
    ld l, [hl]
    jp z, $0600

    jr nz, @+$09

    dec hl
    cpl
    ret z

    inc a
    nop
    ld [$0808], sp
    ld [$0a18], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc e
    ld l, h

jr_017_4366:
    jp z, $16ff

    ld bc, $1c00
    ld b, e
    jp nz, $0260

    ld l, h
    jp z, $1600

    nop
    nop
    inc e
    ld l, h
    jp z, $12ff

    nop
    nop
    inc l
    inc b
    inc e
    ld l, h
    jp z, $06ff

    jr nz, jr_017_438d

    ld [bc], a
    db $10
    jp nz, $1a0e

    or a
    ld l, h

jr_017_438d:
    ld c, c
    adc b
    nop
    jr @+$01

    ld b, b
    ld a, [bc]
    ld [bc], a
    dec hl
    cpl
    ret z

    jr jr_017_43a0

    ld [$0e07], sp
    jr jr_017_439f

jr_017_439f:
    nop

jr_017_43a0:
    inc b
    ld a, [bc]
    inc b
    inc b
    ld b, $08
    rlca
    ld c, $49
    add b
    nop
    ld b, $20
    rlca
    ld c, c
    adc b
    inc b
    ld b, $20
    rlca

jr_017_43b4:
    inc b
    dec hl
    cpl
    ret z

    dec de
    ld d, $ff
    nop
    jr jr_017_43be

jr_017_43be:
    and b
    inc e
    inc bc
    jp nz, $1a48

    ld sp, $026c
    ld l, a
    jp z, $1cff

    ld l, [hl]
    jp z, $0200

    jr c, @-$36

    nop
    inc b
    ld d, $ff
    ret nz

    jr jr_017_43d8

jr_017_43d8:
    or b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    add b
    nop
    ld b, $48
    rlca
    ld [bc], a
    db $10
    jp nz, $1930

    ld l, d
    ld l, h
    ld [bc], a
    jr nc, jr_017_43b4

    ld d, $1a
    db $e3
    ld l, h
    ld b, $10
    rlca
    ld a, [de]
    inc bc
    ld l, l
    ld b, $10
    rlca
    ld c, c
    add a
    add hl, bc
    ld b, $20
    rlca
    ld [bc], a
    ld l, h
    jp z, $49ff

    add a
    nop
    dec hl
    ld l, $c8
    ld a, [bc]
    ld b, $10
    rlca
    inc b
    ld b, $0b
    rlca
    inc b
    ld b, $0c
    rlca
    ld [bc], a
    ld l, [hl]
    jp z, $2bff

    ld l, $c8
    inc de
    ld a, [bc]
    ld a, [bc]
    inc b
    ld b, $08
    rlca
    ld c, $49
    add a
    add hl, bc
    ld a, [bc]
    inc b
    inc b
    ld b, $08
    rlca
    ld c, $1a
    dec de
    ld l, l
    inc e
    ld l, [hl]
    jp z, $4900

    add d
    ld bc, $2e2b
    ret z

    ld b, c
    ld a, [bc]
    dec b
    jr @+$01

    ld b, b
    inc b
    ld b, $08
    rlca
    jr jr_017_444d

jr_017_444d:
    nop
    ld c, $2b
    ld l, $c8
    ld e, h
    ld [de], a
    nop
    nop
    scf
    ld [$c5e1], sp
    ld h, d
    ld b, h
    dec d
    ld b, b
    nop
    add hl, de
    ld h, c
    ld l, l
    ld [$2008], sp
    ld [$0808], sp
    ld [$1c20], sp
    ld l, [hl]
    jp z, $34ff

    dec bc
    nop
    ccf
    dec bc
    nop
    ld d, $00
    ret nz

    dec hl
    cpl
    ret z

    ld c, $35
    inc bc
    sub b
    ld d, $00
    nop
    inc e
    ld [hl], b
    jp z, $34ff

    dec bc
    nop
    ccf
    dec bc
    nop
    inc d
    ld bc, $6015
    nop
    ld [bc], a
    ld l, [hl]
    jp z, RST_00

    inc e
    ld l, a
    jp z, $03ff

    dec e
    adc $48
    ld c, b
    scf
    dec bc
    nop
    call nz, Call_017_4545
    scf
    ld b, $f1
    rst $00
    ld d, b
    ld b, l
    ld e, $f1
    rst $00
    dec hl
    ld l, $c8
    daa
    ld a, [de]
    cp l
    ld l, l
    ld b, $10
    rlca
    dec hl

jr_017_44b8:
    ld l, $c8
    daa
    ld a, [de]
    cp l
    ld l, l
    ld b, $10
    rlca
    dec hl
    ld l, $c8
    daa
    inc bc
    add hl, hl
    call nz, RST_00
    inc bc
    ld c, c
    call nz, RST_00
    inc bc
    ld l, c
    call nz, RST_00
    inc bc
    adc c
    call nz, RST_00
    inc bc
    dec h
    call nz, RST_00
    inc bc
    ld b, l
    call nz, RST_00
    inc bc
    ld h, l
    call nz, RST_00
    inc bc
    add l
    call nz, RST_00
    ld [bc], a
    nop
    call nz, $0200
    jr nz, jr_017_44b8

    nop
    ld [bc], a
    ld b, b
    call nz, $0200
    ld h, b
    call nz, $0200
    add b
    call nz, $1400
    ld [bc], a
    ld [bc], a
    jr c, @-$36

    add b
    dec hl
    jr nc, @-$36

    ld c, h
    dec d
    ld c, b
    nop
    rla
    ld e, b

Jump_017_4510:
    nop
    ld b, $40
    rlca
    ld a, [bc]
    inc bc
    dec sp
    inc bc
    ld [$2e2b], sp
    ret z

    rlca
    ld b, $18
    rlca
    ld c, $0a
    inc bc
    dec sp
    rlca
    ld [$2e2b], sp
    ret z

    rlca
    ld b, $18
    rlca
    ld c, $06
    jr nz, jr_017_4538

    inc bc
    dec e
    adc $9c
    ld e, $02
    ld [hl], b

jr_017_4538:
    jp z, $2bff

    jr nc, @-$36

    inc bc
    dec hl
    ld l, $c8
    daa
    ld [de], a
    nop
    nop

Call_017_4545:
    ld bc, $0739
    ld b, b
    nop
    nop
    nop
    ld a, b
    nop
    rst $38
    nop
    adc $98
    ld [bc], a
    ld [bc], a
    adc $00
    ld [bc], a
    ld [hl], b
    jp nz, $0200

    sub b
    jp nz, $0208

    or b
    jp nz, $0210

    ret nc

    jp nz, $0218

    ldh a, [$ffc2]
    jr nz, @+$04

    db $10
    jp $0228


    jr nc, @-$3b

    jr nc, jr_017_45aa

    inc c
    pop af
    rst $00
    ld sp, hl
    ld b, l
    inc l
    inc b
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a0e

    sbc h
    ld l, h
    ld c, c
    ld [$1800], sp
    nop
    ret nz

    dec hl
    cpl
    ret z

    jr @+$08

    ld [$2b07], sp
    cpl
    ret z

    jr jr_017_459d

    ld [$1807], sp
    nop
    nop
    inc b

jr_017_459d:
    ld a, [bc]
    inc b
    inc b
    ld b, $08
    rlca
    ld c, $49
    nop
    nop
    ld b, $20
    rlca

jr_017_45aa:
    ld c, c
    ld bc, $1c00
    ld [hl], c
    jp z, $06ff

    jr nc, jr_017_45bb

    ld c, c
    ld a, [bc]
    nop
    dec a
    rlca
    ld b, $06

jr_017_45bb:
    db $10
    rlca
    inc bc
    ei
    rst $00
    db $e4
    nop
    ld e, $f7
    rst $00
    inc b
    dec sp
    rlca
    inc bc
    ld b, $10
    rlca
    inc b
    dec sp
    rlca
    inc bc
    inc bc
    push af
    rst $00
    ldh a, [rP1]
    inc bc
    ei
    rst $00
    add sp, $00
    ld e, $f7
    rst $00
    ld e, $f1
    rst $00
    ld [bc], a
    ld [hl], c
    jp z, $2b00

    cpl
    ret z

    ld l, $06
    jr nz, jr_017_45f2

    inc e
    ld [hl], b
    jp z, $06ff

    jr nz, jr_017_45f9

jr_017_45f2:
    ld [bc], a
    db $10
    jp nz, $192c

    ld e, l
    ld l, h

jr_017_45f9:
    ld c, $99
    ld [bc], a
    ld [bc], a
    db $ec
    nop
    inc b
    sbc c
    ld [bc], a
    ld [bc], a

jr_017_4603:
    ldh [rP1], a
    ld [bc], a
    jr nc, @-$3c

    rla
    ld a, [de]
    jp c, $066c

    db $10
    rlca
    ld a, [de]
    db $fd
    ld l, h
    ld b, $10
    rlca
    ld [bc], a
    ld l, h
    jp z, $49ff

    add hl, bc
    nop
    ld b, $20
    rlca
    inc b
    dec hl
    ld l, $c8
    cpl
    ld e, $f1
    rst $00
    ld e, $f7
    rst $00
    ld [bc], a
    ld l, [hl]
    jp z, $06ff

    jr nz, jr_017_4638

    inc e
    ld [hl], b
    jp z, $06ff

    jr nz, jr_017_463f

jr_017_4638:
    ld a, [de]
    dec l
    ld l, l
    ld a, [de]
    dec d
    ld l, l
    ld [bc], a

jr_017_463f:
    jr nc, jr_017_4603

    ld [$da1a], sp
    ld l, h
    ld [de], a
    nop
    nop
    scf
    ld [$c5e1], sp
    ld d, h
    ld b, [hl]
    dec d
    ld b, b
    nop
    add hl, de
    ld d, a
    ld l, l
    jr nz, jr_017_465e

    jr nz, @+$0a

    ld [$0808], sp
    ld [$6e1c], sp

jr_017_465e:
    jp z, $34ff

    dec bc
    nop
    ccf
    dec bc
    db $10
    dec d
    nop
    nop
    ld [bc], a
    ld [hl], c
    jp z, $1cff

    ld [hl], c
    jp z, $3400

    dec bc
    nop
    ccf
    dec bc
    nop
    dec d
    ld h, b
    nop
    ld [bc], a
    ld [hl], b
    jp z, $00ff

    inc l
    inc b
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a0c

    or a
    ld l, h
    jr @+$01

    ld b, b
    ld d, $ff
    ret nz

    inc [hl]
    db $10
    ld [de], a
    ld a, [de]
    ld a, $6c
    dec a
    inc bc
    ld bc, $311a
    ld l, h
    inc d
    nop
    ld b, $1c
    rlca
    ld [bc], a
    db $10
    jp nz, $1a02

    or a
    ld l, h
    jr @+$01

    ld b, b
    ld c, c
    adc [hl]
    nop
    ld b, $06
    rlca
    jr jr_017_46b5

jr_017_46b5:
    nop
    inc b
    dec hl
    ld l, $c8
    ld l, h
    jr jr_017_46be

    nop

jr_017_46be:
    ld d, $fd
    ldh [$ff0b], a
    ld b, $34
    db $10
    inc bc
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    rrca
    dec sp
    inc bc
    ld bc, $311a
    ld l, h
    ld c, c
    add b
    nop
    ld b, $30
    rlca
    inc d
    dec b
    dec bc
    inc bc
    inc d
    dec b
    dec hl
    cpl
    ret z

    dec de
    ld d, $fe
    nop

jr_017_46e4:
    ld a, [bc]
    rrca
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    inc d
    nop
    ld b, $10
    rlca
    rrca
    ld b, $30
    rlca
    ld [bc], a
    db $10
    jp nz, $1a02

    or a
    ld l, h
    jr @+$01

    nop
    ld d, $ff

Jump_017_4706:
    ret nz

    inc [hl]
    db $10
    ld [de], a
    ld a, [de]
    ld a, $6c
    dec a
    inc bc
    ld bc, $311a
    ld l, h

jr_017_4713:
    inc d
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1918

    ld l, d
    ld l, h
    ld [bc], a
    jr nc, jr_017_46e4

    ld [$e31a], sp
    ld l, h
    dec hl
    ld l, $c8
    ld a, [bc]
    inc d
    inc b
    ld d, $ff
    ret nz

    jr @+$01

    nop
    ld a, [bc]
    ld [de], a
    ld b, c
    dec b
    jr nz, jr_017_4738

jr_017_4738:
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    ld bc, $311a
    ld l, h
    dec hl
    ld l, $c8
    dec a
    inc d
    ld bc, $1006
    rlca
    jr @+$01

    ld b, b
    ld [bc], a
    jr nc, jr_017_4713

    ld a, [bc]
    ld a, [de]
    db $e3
    ld l, h
    ld b, $10
    rlca
    ld a, [de]
    inc bc
    ld l, l
    ld [bc], a
    ld l, h
    jp z, $06ff

    db $10
    rlca
    ld c, c
    adc l
    nop
    ld b, $30
    rlca
    ld a, [bc]
    ld [$0604], sp
    inc b
    rlca
    dec hl
    ld l, $c8
    jr @+$10

    jr jr_017_4776

    add b

jr_017_4776:
    ld a, [bc]
    dec c
    inc b
    ld b, $04
    rlca
    dec hl
    ld l, $c8
    ld [de], a
    ld c, $18
    nop
    nop
    dec hl
    ld l, $c8
    inc de
    inc d
    ld b, $0a
    inc bc
    ld b, $07
    rlca
    inc b
    ld c, $06
    jr nz, jr_017_479b

    inc d
    ld a, [bc]
    jr @+$01

    and b
    ld [bc], a
    ld l, [hl]

jr_017_479b:
    jp z, $0aff

    inc c
    inc b
    ld b, $12
    rlca
    ld c, $18
    nop
    nop
    ld b, $10
    rlca
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, @-$3c

    dec b
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    scf
    ld [$c5e1], sp
    jp $1547


    ld d, b
    nop
    add hl, de
    ld h, c
    ld l, l
    jr nz, jr_017_47e5

    jr nz, jr_017_47e7

    ld [$0808], sp
    ld [$6e1c], sp
    jp z, $15ff

    ld d, b
    nop
    jr @+$01

    and b
    dec bc
    ld [bc], a
    dec hl
    cpl
    ret z

    dec [hl]
    ld a, [bc]
    ld [de], a
    inc b
    ld b, $06
    rlca
    ld c, $0f
    ld [de], a
    nop

jr_017_47e5:
    nop
    inc l

jr_017_47e7:
    inc b
    inc e
    ld l, h
    jp z, $06ff

    jr nc, jr_017_47f6

    ld [bc], a
    db $10
    jp nz, $1a0d

    sbc h
    ld l, h

jr_017_47f6:
    ld d, $fe
    add b
    jr jr_017_47fb

jr_017_47fb:
    ret nz

    inc [hl]
    db $10
    rla
    ld a, [de]
    jr c, @+$6e

    ld a, [de]
    ld sp, $496c
    inc c
    nop
    ld b, $10
    rlca
    inc b
    jr jr_017_480e

jr_017_480e:
    ld h, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld c, l
    ld l, h
    inc b
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    ld a, [de]
    ld sp, $066c
    jr c, jr_017_482d

    inc d
    rlca
    ld b, $10
    rlca
    inc d
    inc bc

jr_017_482d:
    ld b, $48
    rlca
    inc d
    rlca
    ld b, $10
    rlca
    inc d
    inc bc
    jr jr_017_4839

jr_017_4839:
    ld h, b
    ld a, [bc]
    ld b, $2b
    cpl
    ret z

    ld d, d
    inc b
    ld b, $0a
    rlca
    dec hl
    cpl
    ret z

    ld d, e
    inc b
    ld b, $0a
    rlca
    ld c, $2c
    jr c, @+$0c

    ld a, [bc]
    inc b
    ld b, $0a
    rlca
    ld c, $18
    nop
    nop
    ld b, $18
    rlca
    jr c, jr_017_4860

    jr nc, @-$3c

jr_017_4860:
    rla
    ld a, [de]
    jp c, $066c

jr_017_4865:
    db $10
    rlca
    ld a, [de]
    db $fd
    ld l, h
    ld [bc], a
    ld l, h
    jp z, $1aff

    dec de
    ld c, c
    dec hl
    cpl
    ret z

    dec c
    ld [bc], a
    ld l, [hl]
    jp z, $06ff

    jr nz, @+$09

    ld a, [de]
    dec de
    ld c, c
    ld [bc], a
    ld l, a
    jp z, $06ff

    jr nz, @+$09

    ld a, [de]
    dec de
    ld c, c
    ld [bc], a
    ld [hl], b
    jp z, $06ff

    jr nz, @+$09

    ld a, [de]
    dec de
    ld c, c
    ld [bc], a
    ld [hl], c
    jp z, $06ff

    db $10
    rlca
    ld a, [de]
    dec l
    ld l, l
    ld a, [de]
    dec d
    ld l, l
    ld [bc], a
    jr nc, jr_017_4865

    ld [$da1a], sp
    ld l, h
    ld [de], a
    nop
    nop
    scf
    ld [$c5e1], sp
    or [hl]
    ld c, b
    dec d
    inc [hl]
    nop
    add hl, de
    ld d, a
    ld l, l
    jr nz, jr_017_48c0

    ld [$0820], sp
    ld [$1010], sp
    inc e
    ld l, [hl]

jr_017_48c0:
    jp z, $19ff

    ret


    ld c, b
    inc e
    ld l, a
    jp z, $15ff

    ld d, b
    nop
    ld d, $ff
    nop
    jr @+$01

    nop
    dec bc
    inc b
    ld a, [de]
    inc sp
    ld c, c
    rrca
    dec hl
    ld l, $c8
    ld [de], a
    ld a, [bc]
    inc b
    ld d, $ff
    nop
    jr @+$01

    nop
    dec bc
    inc bc
    ld a, [de]
    inc sp
    ld c, c
    rrca
    ld c, $12
    nop
    nop
    inc e
    ld [hl], b
    jp z, $19ff

    ld sp, hl
    ld c, b
    inc e
    ld [hl], c
    jp z, $15ff

    ld d, b
    nop
    ld d, $ff
    nop
    jr @+$01

    nop
    dec bc

Jump_017_4903:
    inc bc
    ld a, [de]
    inc sp
    ld c, c
    rrca
    dec hl
    ld l, $c8
    inc [hl]
    ld d, $ff
    add b
    jr @+$01

    ldh [$ff0b], a
    dec b
    ld a, [de]
    inc sp
    ld c, c
    rrca
    ld [de], a
    nop
    nop
    ld c, c
    dec bc
    nop
    ld b, $10
    rlca
    inc b
    ld b, $0d
    rlca
    inc b
    ld b, $0a
    rlca
    inc b
    ld b, $0d
    rlca
    inc b
    dec hl
    jr nc, @-$36

    dec c
    dec de
    inc c
    ld b, $41
    dec b
    inc e
    nop
    ld b, $01
    rlca
    db $10
    inc b
    dec de
    inc l
    inc b
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a18

    sbc h
    ld l, h
    ld c, c
    ld [$1800], sp
    nop
    ret nz

    dec hl
    cpl
    ret z

    jr @+$08

    ld [$2b07], sp
    cpl
    ret z

    jr jr_017_4964

    ld [$1807], sp
    nop
    nop
    inc b

jr_017_4964:
    ld a, [bc]
    inc b
    inc b
    ld b, $08
    rlca
    ld c, $49

Jump_017_496c:
    nop
    nop
    ld b, $20
    rlca
    ld c, c
    ld bc, $0600
    db $10
    rlca
    ld c, c
    ld [$0604], sp
    jr nz, jr_017_4984

    ld [bc], a
    db $10
    jp nz, $1a06

    xor [hl]
    ld l, h

jr_017_4984:
    ld c, c
    nop
    dec b
    dec hl
    cpl
    ret z

    dec de
    jr @+$01

    nop
    ld d, $fe
    add b
    inc e
    inc bc
    jp nz, $1a58

    ld sp, $496c
    db $10
    ld a, [bc]
    dec a
    rlca
    dec c
    ld b, $30
    rlca
    inc d
    nop
    dec bc
    ld bc, $040a
    inc b
    ld b, $08
    rlca
    ld c, $2b
    cpl
    ret z

    inc b
    rrca
    dec bc
    ld [bc], a
    ld a, [bc]
    inc b
    inc b
    ld b, $04
    rlca
    ld c, $2b
    cpl
    ret z

    inc b
    rrca
    dec bc
    inc b
    ld a, [bc]
    ld [$0604], sp
    ld bc, $0e07

jr_017_49c8:
    dec hl
    cpl
    ret z

    inc b
    rrca
    jr jr_017_49d0

    add b

jr_017_49d0:
    ld d, $fe
    add b
    dec hl
    cpl
    ret z

    dec de
    ld a, [bc]
    rlca
    inc b
    ld b, $04
    rlca
    ld c, $16
    ld bc, $3b90
    rlca
    inc b
    dec sp
    inc bc
    ld bc, $0514
    ld a, [bc]
    ld b, $04
    ld b, $04
    rlca
    ld c, $3d
    inc bc
    inc bc
    ld a, [de]
    ld sp, $496c
    nop
    nop
    ld b, $30
    rlca
    ld [bc], a
    db $10
    jp nz, $1904

    ld e, l
    ld l, h
    ld [bc], a
    jr nc, jr_017_49c8

    ld c, $1a
    jp c, Jump_017_496c

    rrca
    nop
    ld b, $20
    rlca
    inc b
    dec hl
    ld l, $c8
    ld a, [bc]

jr_017_4a15:
    ld d, $fd
    add b
    jr jr_017_4a1b

    ret nz

jr_017_4a1b:
    ld a, [bc]
    ld de, $0541
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $2b
    ld l, $c8
    dec a
    inc d
    nop
    ld a, [de]
    ld sp, $066c
    db $10
    rlca
    ld a, [de]
    db $fd
    ld l, h
    ld [bc], a
    ld l, h
    jp z, $06ff

    jr nz, @+$09

    ld c, c
    rrca
    ld [bc], a
    ld a, [bc]
    db $10
    inc b
    ld b, $10
    rlca
    ld c, $14
    dec b
    ld b, $20
    rlca
    ld a, [de]
    dec l
    ld l, l
    ld a, [de]
    dec d
    ld l, l
    ld [bc], a
    jr nc, jr_017_4a15

    dec b
    ld a, [de]
    pop de
    ld l, h
    ld [de], a
    nop
    nop
    inc l
    inc b
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a1d

    or a
    ld l, h
    ld d, $ff
    ret nz

    jr @+$01

    ld b, b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld a, $6c
    ld c, c
    adc b
    nop
    jr @+$01

    ld b, b
    ld d, $00
    nop
    dec hl
    cpl
    ret z

    jr @+$08

    ld [$2b07], sp
    cpl
    ret z

    jr jr_017_4a8e

    inc b
    rlca
    jr jr_017_4a8c

jr_017_4a8c:
    nop
    ld c, c

jr_017_4a8e:
    add b
    nop
    ld b, $10
    rlca
    ld d, $fe
    add b
    inc [hl]
    db $10
    rla
    ld a, [de]
    ld a, $6c
    ld a, [de]
    ld sp, $496c
    add b
    nop
    ld b, $10
    rlca
    ld c, c
    add c
    nop
    ld b, $40
    rlca
    dec hl
    cpl
    ret z

    ccf
    ld c, c
    add b
    nop
    jr jr_017_4ab4

jr_017_4ab4:
    ld h, b
    ld a, [bc]
    add hl, bc
    inc b
    ld b, $06
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    jr jr_017_4ac2

jr_017_4ac2:
    nop
    ld c, c
    add b
    nop
    ld b, $10
    rlca
    ld c, c
    sub d
    nop
    ld b, $08
    rlca
    ld c, c
    sub d
    ld bc, $fe16
    add b
    jr @+$01

    and b
    inc [hl]
    db $10
    dec bc
    ld a, [de]
    ld c, l
    ld l, h
    inc b
    inc [hl]

jr_017_4ae0:
    db $10
    inc c
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    sub d
    inc bc
    ld b, $04
    rlca
    ld c, c
    sub d
    dec b
    dec hl
    cpl
    ret z

    ld d, b
    ld d, $fd
    ret nz

    jr @+$01

    and b
    dec bc
    ld [bc], a
    inc [hl]
    db $10
    rlca
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    rrca
    inc [hl]
    db $10
    ld c, $1a
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    add b
    nop
    ld b, $04
    rlca
    ld [bc], a
    db $10
    jp nz, $190a

    ld l, d
    ld l, h
    ld [bc], a
    jr nc, jr_017_4ae0

    ld c, $1a
    db $e3
    ld l, h
    dec hl
    ld l, $c8
    ld a, [bc]
    inc d
    inc b
    ld d, $ff
    or b
    jr @+$01

    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld b, c
    dec b
    jr nz, jr_017_4b34

jr_017_4b34:
    ld b, $01
    rlca
    ld c, $3b
    inc bc
    ld bc, $311a
    ld l, h
    ld c, c
    sub c
    ld [bc], a
    dec hl
    ld l, $c8
    dec a
    ld b, $10
    rlca
    ld c, c
    sub c
    nop
    ld b, $20
    rlca
    ld c, c
    sub c
    ld bc, $2e2b
    ret z

    ld a, [bc]
    ld d, $fd

jr_017_4b57:
    jr nc, jr_017_4b71

    cp $e0
    ld a, [bc]
    inc d
    ld b, c
    dec b
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    rlca
    ld a, [de]
    ld sp, $026c
    ld l, h
    jp z, $49ff

    sub c

jr_017_4b71:
    ld [bc], a
    dec hl
    ld l, $c8
    dec a
    ld b, $20
    rlca
    ld a, [de]
    inc bc
    ld l, l
    ld c, c
    sub c
    inc bc
    ld a, [bc]
    ld [$0604], sp
    db $10
    rlca
    ld c, $1a
    ld c, b
    ld l, l
    ld a, [de]
    ld c, e
    ld l, l
    ld a, [de]
    inc sp
    ld l, l
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, jr_017_4b57

    rlca
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    scf
    ld [$c5e1], sp
    xor b
    ld c, e
    dec d
    jr c, jr_017_4ba5

jr_017_4ba5:
    add hl, de
    ld h, c
    ld l, l
    ld [$1008], sp
    ld [$0808], sp
    jr nz, jr_017_4bd0

    inc l
    inc b
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a06

    or a
    ld l, h
    ld c, c
    adc b
    nop
    jr @+$01

    ld b, b
    ld d, $00
    nop
    dec hl
    cpl
    ret z

    jr @+$08

    ld [$2b07], sp
    cpl
    ret z

jr_017_4bd0:
    jr jr_017_4bd8

    inc b
    rlca
    jr jr_017_4bd6

jr_017_4bd6:
    nop
    ld c, c

jr_017_4bd8:
    add b
    nop
    ld b, $70
    rlca
    ld c, c
    sub d
    nop
    ld b, $08
    rlca
    ld c, c
    sub d
    ld bc, $ff18
    ld h, b
    ld d, $ff
    nop
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld c, l
    ld l, h
    inc b
    inc [hl]
    db $10
    add hl, bc
    ld a, [de]
    ld d, c
    ld l, h
    dec a
    inc bc
    ld bc, $311a
    ld l, h
    ld c, c
    sub d
    inc bc
    ld b, $04
    rlca
    ld c, c
    sub d
    dec b
    dec hl
    cpl
    ret z

    ld d, b
    ld d, $fe
    jr nc, @+$1a

    rst $38
    ld h, b
    inc [hl]
    db $10
    ld c, $1a
    ld d, c
    ld l, h
    inc b
    inc [hl]
    db $10
    inc b
    ld a, [de]
    ld d, c
    ld l, h

jr_017_4c1f:
    inc b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    sub d
    nop
    ld b, $04
    rlca
    ld c, c
    add b
    dec b
    dec hl
    cpl
    ret z

    ld l, l
    ld d, $fd
    ldh [rNR23], a
    rst $38
    ld h, b
    inc [hl]
    db $10
    ld hl, $511a
    ld l, h
    ld d, $00
    nop
    ld c, c
    sub d
    ld [$0406], sp
    rlca
    jr jr_017_4c4d

jr_017_4c4d:
    nop
    inc d
    add hl, bc
    ld b, $40
    rlca
    ld [bc], a
    db $10
    jp nz, $190a

    ld l, d
    ld l, h
    ld [bc], a
    jr nc, jr_017_4c1f

    dec b
    ld a, [de]
    db $e3
    ld l, h
    ld c, c
    sub c
    nop
    ld b, $20
    rlca
    ld c, c
    sub c
    ld bc, $2e2b
    ret z

    ld a, [bc]
    ld d, $fe
    and b

jr_017_4c71:
    jr jr_017_4c71

    ldh [$ff0a], a
    ld c, $41
    dec b
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    ld bc, $311a
    ld l, h
    dec hl
    ld l, $c8
    dec a
    ld c, c
    sub c
    nop
    ld b, $04
    rlca
    ld c, c
    sub c
    ld bc, $2e2b
    ret z

    ld a, [bc]
    ld d, $fe
    ld d, b

jr_017_4c98:
    jr jr_017_4c98

    ldh [$ff0a], a
    ld c, $41
    dec b
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $2b6c
    ld l, $c8
    dec a
    ld c, c
    sub c
    nop
    ld b, $04
    rlca
    ld c, c
    sub c
    ld bc, $2e2b
    ret z

    ld a, [bc]
    ld d, $fd
    jr nc, jr_017_4cd5

    cp $e0
    ld a, [bc]
    add hl, de
    ld b, c
    dec b
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    rlca
    ld a, [de]
    ld sp, $2b6c
    ld l, $c8
    dec a
    ld [bc], a
    ld l, h

jr_017_4cd5:
    jp z, $49ff

    sub c
    ld [bc], a
    ld b, $20
    rlca
    ld a, [de]
    inc bc
    ld l, l
    ld c, c
    sub c
    inc bc
    ld a, [bc]
    ld [$0604], sp
    db $10
    rlca
    ld c, $1a
    inc sp
    ld l, l
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, @-$3c

    rlca
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    inc l
    inc b
    inc e
    ld l, h
    jp z, $06ff

    ld [de], a
    rlca
    ld [bc], a
    db $10
    jp nz, $1a1b

    or a
    ld l, h
    ld [bc], a
    db $10
    jp nz, $0205

    ld de, $01c2
    inc d
    nop
    dec hl
    cpl
    ret z

    ld h, $0c
    inc b
    dec bc
    ld [bc], a
    cpl
    db $10
    jp nz, $0006

    rlca
    ld c, $02
    nop
    add $2e
    cpl
    ld de, $06c2
    nop
    rlca
    ld c, $02
    nop
    add $00
    rrca
    ld hl, $c210
    rra
    ld de, $10c2
    ld [bc], a
    nop
    add $2e
    dec bc
    ld [bc], a
    jr jr_017_4d42

jr_017_4d42:
    nop
    ld d, $fe
    add b
    inc [hl]
    db $10
    rla
    ld a, [de]
    ld a, $6c
    ld d, $00
    nop
    inc d
    nop
    ld b, $08
    rlca
    rrca
    ld [bc], a
    db $10
    jp nz, $1a0c

    or a

jr_017_4d5b:
    ld l, h
    ld [bc], a
    db $10
    jp nz, $0201

    ld de, $08c2
    dec hl
    cpl
    ret z

    daa
    inc c
    rlca
    dec bc
    ld [bc], a
    cpl
    db $10
    jp nz, $0006

    rlca
    ld c, $02
    nop
    add $2e
    cpl
    ld de, $06c2
    nop
    rlca
    ld c, $02
    nop
    add $00
    rrca
    rra
    db $10
    jp nz, $1121

    jp nz, $0210

    db $10
    jp nz, $190b

    ld l, d
    ld l, h
    inc d
    ld bc, $5806
    rlca
    ld [bc], a
    jr nc, jr_017_4d5b

    rla
    ld a, [de]
    db $e3
    ld l, h
    ld [bc], a
    ld l, h
    jp z, $1aff

    inc bc
    ld l, l
    ld c, c
    sub l
    nop
    ld b, $20
    rlca
    inc b
    ld b, $08
    rlca
    ld [bc], a
    ld l, [hl]
    jp z, $04ff

    ld b, $d0
    rlca
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, @-$3c

    dec b
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    ld c, c
    cp h
    nop
    jr @+$01

    add b
    ld a, [bc]
    ld d, $04
    ld b, $08
    rlca
    ld c, $18
    cp $e0
    ld a, [bc]
    dec d
    inc b
    ld b, $04
    rlca
    ld c, $18
    nop
    nop
    ld [de], a
    nop
    nop
    inc e
    ld l, [hl]
    jp z, $49ff

    sub l
    inc bc
    dec d
    ld d, b
    nop
    rla
    jr nc, jr_017_4ded

jr_017_4ded:
    ld d, $ff
    nop
    jr jr_017_4df3

    nop

jr_017_4df3:
    ld a, [bc]
    jr @+$43

    dec b
    inc e
    nop
    ld b, $01
    rlca
    ld c, $12
    nop
    nop
    inc l
    inc b
    dec hl
    cpl
    ret z

    ccf
    ld c, c
    jr jr_017_4e12

    jr jr_017_4e0b

jr_017_4e0b:
    ret nz

    ld a, [bc]
    ld de, $0604
    dec b
    rlca

jr_017_4e12:
    ld c, $2b
    cpl
    ret z

    ld d, c
    jr jr_017_4e19

jr_017_4e19:
    nop
    dec sp
    rlca
    ld bc, $0614
    ld a, [bc]
    inc b
    inc b
    ld b, $05
    rlca
    ld c, $02
    ld l, l
    jp z, $14ff

    nop
    ld d, $ff
    add b
    dec hl
    cpl
    ret z

    ld b, [hl]
    ld a, [bc]
    inc b
    inc b
    ld b, $06
    rlca
    ld c, $16
    nop
    nop
    dec a
    inc bc
    ld [bc], a
    dec hl
    cpl
    ret z

    ld e, h
    inc d
    inc bc
    ld b, $06
    rlca
    inc b
    ld b, $06
    rlca
    dec a
    inc bc
    ld [$0604], sp
    ld b, $07
    ld [bc], a

jr_017_4e55:
    ld l, h
    jp z, $14ff

    ld b, $0a
    ld [$0604], sp
    dec b
    rlca
    ld c, $14
    add hl, bc
    jr jr_017_4e65

jr_017_4e65:
    ret nz

    dec hl
    cpl
    ret z

    ccf
    ld a, [bc]
    db $10
    inc b
    ld b, $05
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    inc l
    jr c, @+$0c

    ld [$0604], sp
    dec b
    rlca
    ld c, $18
    nop
    nop
    ld b, $60
    rlca
    jr c, @+$4b

    rla
    nop
    inc e
    ld l, h
    jp z, $04ff

    ld b, $30
    rlca
    ld [bc], a
    jr nc, jr_017_4e55

    ld b, $1a
    jp c, $126c

    nop
    nop
    ld c, c
    inc a
    inc b
    inc e
    ld l, h
    jp z, $04ff

    dec hl
    ld l, $c8
    ld a, [bc]
    jr jr_017_4ea8

jr_017_4ea8:
    nop
    ld d, $ff
    nop
    ld a, [bc]
    rrca
    ld b, c
    dec b
    jr nz, jr_017_4eb2

jr_017_4eb2:
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $146c
    nop
    jr @+$03

    jr nz, jr_017_4ec9

    ld c, $04
    ld b, $04
    rlca
    ld c, $18
    nop
    nop
    ld [de], a

jr_017_4ec9:
    nop
    nop
    inc e
    ld l, l
    jp z, $15ff

    ld d, b
    nop
    rla
    ld c, b
    nop
    ld d, $ff
    nop
    ld a, [bc]
    jr jr_017_4f1c

    dec b
    stop
    inc b

jr_017_4edf:
    ld b, $01
    rlca
    ld c, $12
    nop
    nop
    inc l
    inc b
    scf
    ld b, $f1
    rst $00
    sbc e
    ld c, a
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a0d

    sbc h
    ld l, h
    inc d
    nop
    ld b, $10
    rlca
    jr jr_017_4f00

jr_017_4f00:
    nop
    ld d, $fe
    add b
    inc [hl]
    db $10
    rlca
    ld a, [de]
    jr c, jr_017_4f76

    ld [bc], a
    ld l, l
    jp z, $49ff

    ld a, [de]
    ld b, $1e
    pop af
    rst $00
    ld [bc], a
    jr c, jr_017_4edf

    add b
    ld b, $00
    rlca
    dec hl

jr_017_4f1c:
    ld l, $c8
    inc bc
    ld b, $00
    rlca
    dec hl
    ld l, $c8
    add hl, hl
    ld b, $00
    rlca

jr_017_4f29:
    inc [hl]
    db $10
    ld de, $511a
    ld l, h
    dec a
    inc bc
    ld bc, $311a
    ld l, h
    scf
    jr jr_017_4f29

    rst $00
    and c
    ld c, a
    scf
    db $10
    ld l, l
    ret z

    cp c
    ld c, a
    inc d
    add hl, bc
    jr jr_017_4f45

jr_017_4f45:
    or b
    dec hl
    cpl
    ret z

jr_017_4f49:
    ccf
    ld a, [bc]
    inc b
    inc b
    ld [bc], a
    ld l, [hl]
    jp z, $06ff

    dec b
    rlca
    inc b
    ld b, $05
    rlca
    inc b
    ld [bc], a
    ld [hl], b
    jp z, $06ff

    dec b
    rlca
    inc b
    ld b, $05
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    inc d
    ld b, $18
    nop
    nop
    ld a, [bc]
    inc bc
    inc b
    ld b, $05
    rlca
    ld c, $14

jr_017_4f76:
    add hl, bc
    ld b, $05
    rlca
    ld [bc], a
    ld l, a
    jp z, $02ff

    jr c, jr_017_4f49

    nop
    ld b, $00
    rlca
    dec hl
    dec l
    ret z

    inc bc
    ld b, $00
    rlca
    inc l
    inc b

jr_017_4f8e:
    ld c, c
    nop
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1910

    ld e, l
    ld l, h
    inc bc
    sbc c
    ld [bc], a
    ld [bc], a
    or $00
    ld b, h
    sbc c
    ld bc, $6d01
    ret z

    ld h, h
    sbc c
    ld bc, $6f01
    ret z

    ld b, l
    sbc c
    ld bc, $6e01
    ret z

    ld h, l
    sbc c
    ld bc, $7001
    ret z

    ld h, d

jr_017_4fba:
    ld h, e
    ld h, a
    ld l, b
    ld h, h
    ld h, l
    ld l, c
    ld l, d
    ld h, c
    ld h, d
    ld h, [hl]
    ld h, a
    ld h, e
    ld h, h
    ld l, b
    ld l, c
    ld [bc], a
    jr nc, jr_017_4f8e

    rlca
    ld a, [de]
    jp c, $146c

    inc b
    dec hl
    cpl
    ret z

    ld a, [bc]
    ld d, $fe
    db $10
    jr jr_017_4fdb

jr_017_4fdb:
    ret nz

    ld a, [bc]
    inc d
    ld b, c
    dec b
    jr nz, jr_017_4fe2

jr_017_4fe2:
    ld b, $01
    rlca
    ld c, $3b
    inc bc
    ld bc, $311a
    ld l, h
    inc d
    inc bc
    dec hl
    cpl
    ret z

jr_017_4ff1:
    dec a
    ld b, $10
    rlca
    ld [bc], a
    jr nc, jr_017_4fba

    ld [$da1a], sp
    ld l, h
    dec hl
    cpl
    ret z

    ld a, [bc]
    inc d
    inc b
    ld d, $ff
    or b
    jr jr_017_5007

jr_017_5007:
    ret nz

    ld a, [bc]
    db $10
    ld b, c
    dec b
    jr nz, jr_017_500e

jr_017_500e:
    ld b, $01
    rlca
    ld c, $3b
    inc bc
    ld bc, $311a
    ld l, h
    inc d
    inc bc
    dec hl
    cpl
    ret z

    dec a
    ld b, $10
    rlca
    ld c, c
    rla
    nop
    inc e
    ld l, l
    jp z, $04ff

    ld b, $20
    rlca
    ld [bc], a
    jr nc, jr_017_4ff1

    ld c, $1a
    pop de
    ld l, h
    ld [de], a
    nop
    nop
    inc d
    nop
    ld b, $30
    rlca
    jr jr_017_503d

jr_017_503d:
    ret nz

    ld a, [bc]
    ld c, $04
    ld b, $04
    rlca
    ld c, $14
    ld bc, $2f2b
    ret z

    ld a, [bc]
    ld d, $fe
    db $10
    ld a, [bc]
    inc d
    ld b, c
    dec b
    jr nz, jr_017_5054

jr_017_5054:
    ld b, $01
    rlca
    ld c, $3b
    inc bc
    ld bc, $0016
    nop
    jr jr_017_5060

jr_017_5060:
    ret nz

    ld a, [bc]
    dec b
    inc b
    ld b, $04
    rlca
    ld c, $18
    nop
    nop
    ld c, c
    inc a
    inc b
    ld [bc], a
    ld l, h
    jp z, $1cff

    ld l, l
    jp z, $04ff

    dec hl
    ld l, $c8
    ld a, [bc]
    jr jr_017_507d

jr_017_507d:
    nop
    ld d, $ff
    nop
    ld a, [bc]
    rrca
    ld b, c
    dec b
    jr nz, jr_017_5087

jr_017_5087:
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $146c
    nop
    jr @+$03

    jr nz, jr_017_509e

    inc b
    inc b
    ld b, $04
    rlca
    ld c, $2b
    cpl
    ret z

    ld a, [bc]

jr_017_509e:
    inc d
    ld bc, $ff16
    or b
    ld a, [bc]
    db $10
    ld b, c
    dec b
    jr nz, jr_017_50a9

jr_017_50a9:
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    ld a, [bc]
    ld b, $04
    ld b, $04
    rlca
    ld c, $12
    nop
    nop
    inc e
    ld l, [hl]
    jp z, $24ff

    pop af
    rst $00
    ld [bc], a
    nop
    ld e, $f1
    rst $00
    inc h
    push af
    rst $00
    inc b
    nop
    dec d
    ld d, h
    nop
    ld a, [de]
    jr nc, jr_017_5122

    add hl, de
    cp d
    ld d, b
    inc e
    ld l, [hl]
    jp z, $02ff

    ld l, [hl]
    jp z, $0600

    dec b
    rlca
    inc h
    rst $30
    rst $00
    ld [bc], a
    nop
    ld e, $f7
    rst $00
    inc h
    ei
    rst $00
    inc b
    nop
    dec d
    ld e, h
    nop
    ld a, [de]
    jr nc, jr_017_5143

    add hl, de
    call nc, $1c50
    ld [hl], b
    jp z, $24ff

    db $fd
    rst $00
    ld [bc], a
    nop
    ld e, $fd
    rst $00
    inc h
    ld bc, $04c8
    nop
    dec d
    ld d, h
    nop
    ld a, [de]
    jr nc, jr_017_515d

    add hl, de
    push af
    ld d, b
    inc e
    ld [hl], b
    jp z, $02ff

    ld [hl], b
    jp z, $0600

    dec b
    rlca
    inc h
    inc bc
    ret z

    ld [bc], a
    nop
    ld e, $03
    ret z

jr_017_5122:
    inc h
    rlca
    ret z

    inc b
    nop
    dec d
    ld e, h
    nop
    ld a, [de]
    jr nc, jr_017_517e

    add hl, de
    rrca
    ld d, c
    dec hl
    cpl
    ret z

    ld e, a
    inc d
    nop
    ld a, [bc]
    dec b
    inc b
    ld b, $03
    rlca
    ld c, $15
    nop
    nop
    dec sp
    rlca
    db $10

jr_017_5143:
    dec de
    inc e
    ld l, a
    jp z, $15ff

    ld d, b
    nop
    rla
    ld h, h
    nop
    ld d, $ff
    nop
    ld a, [bc]
    inc l
    ld b, c
    dec b
    stop
    inc b
    ld b, $01
    rlca
    ld c, $12

jr_017_515d:
    nop
    nop
    inc l
    inc b
    ld [bc], a
    ccf
    add $38
    inc e
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a11

    sbc h
    ld l, h
    ld c, c
    nop
    nop
    ld b, $4c
    rlca
    ld d, $fe
    add b
    jr jr_017_517b

jr_017_517b:
    ret nz

    inc [hl]
    db $10

jr_017_517e:
    db $10
    ld a, [de]
    jr c, jr_017_51ee

    ld a, [de]
    ld sp, $146c
    nop
    ld b, $08
    rlca
    dec hl
    cpl
    ret z

    ld [hl-], a
    ld c, c
    inc e
    nop
    ld b, $0f
    rlca
    inc b
    ld b, $01
    rlca
    ld d, $ff
    or b
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $046c
    ld b, $07
    rlca
    inc b
    ld b, $07
    rlca
    jr @+$01

    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    dec bc
    ld a, [de]
    jr c, jr_017_5224

    ld [bc], a
    ld l, h
    jp z, $2b00

    cpl
    ret z

jr_017_51bf:
    inc sp
    inc d
    ld [$1034], sp
    ld [bc], a
    ld a, [de]
    ld d, c
    ld l, h
    ld c, c
    nop
    dec b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    nop
    nop
    ld b, $10
    rlca
    ld [bc], a
    db $10
    jp nz, $1928

    ld e, l
    ld l, h
    ld [bc], a
    jr nc, @-$3c

    rla
    ld a, [de]
    jp c, $066c

    db $10
    rlca
    ld c, c
    rla
    nop

jr_017_51ee:
    ld [bc], a
    ld l, h
    jp z, $1cff

    ld l, h
    jp z, $0400

    ld b, $30
    rlca
    ld [bc], a
    jr nc, jr_017_51bf

    ld [$da1a], sp
    ld l, h
    ld [de], a
    nop
    nop
    inc d
    nop
    jr @+$01

    ret nz

    ld a, [bc]
    dec l
    inc b
    ld b, $08
    rlca
    ld c, $18
    nop
    nop
    dec a
    inc bc
    ld b, $06
    rlca
    rlca
    dec a
    inc bc
    ld a, [bc]
    ld b, $07
    rlca
    inc d
    inc bc
    ld b, $07
    rlca

jr_017_5224:
    dec a
    inc bc
    rlca
    ld d, $ff
    or b
    ld a, [bc]
    dec c
    ld b, c
    dec b
    jr nz, jr_017_5230

jr_017_5230:
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    inc b
    ld a, [de]
    ld sp, $0a6c
    inc b
    inc b
    ld b, $03
    rlca
    ld c, $18
    rst $38
    ld b, b
    ld d, $fe
    add b
    ld a, [bc]
    dec b
    ld b, c
    dec b
    ld b, b
    nop
    inc b
    ld b, $03
    rlca
    ld c, $18
    ld bc, $1620
    ld bc, $0600
    inc de
    rlca
    dec hl
    cpl
    ret z

    inc [hl]
    ld d, $ff
    add b
    ld a, [bc]
    jr nz, jr_017_52a6

    dec b
    jr nz, jr_017_5268

jr_017_5268:
    ld b, $03
    rlca
    ld c, $12
    nop
    nop
    inc d
    nop
    ld b, $80
    rlca
    jr @+$01

    ret nz

    ld a, [bc]
    ld a, [hl+]
    inc b
    ld b, $08
    rlca
    ld c, $14
    inc bc
    jr jr_017_5282

jr_017_5282:
    nop
    ld d, $ff
    nop
    ld a, [bc]
    jr @+$43

    dec b
    jr nz, jr_017_528c

jr_017_528c:
    inc b
    ld b, $03
    rlca
    ld c, $12
    nop
    nop
    inc l
    inc b
    ld [bc], a
    db $10
    jp nz, $1a10

    or a
    ld l, h
    ld c, c
    adc b
    nop
    jr @+$01

    ld b, b
    dec hl
    cpl
    ret z

jr_017_52a6:
    jr @+$08

    ld [$2b07], sp
    cpl
    ret z

    jr jr_017_52b5

    ld [$1807], sp
    nop
    nop
    ld c, c

jr_017_52b5:
    add b
    nop
    ld b, $40
    rlca
    ld [bc], a
    db $10
    jp nz, $1a08

    and l
    ld l, h
    ld c, c
    add b
    nop
    ld b, $10
    rlca
    ld [bc], a
    db $10
    jp nz, $1a03

    and l
    ld l, h
    ld c, c
    add b
    nop
    ld b, $40
    rlca
    ld c, c
    sub d
    nop
    ld b, $08
    rlca
    ld c, c
    sub d
    ld bc, $ff18
    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    dec bc
    ld a, [de]
    ld c, l
    ld l, h
    inc b
    inc [hl]
    db $10
    inc c
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    sub d
    inc bc
    ld b, $04
    rlca
    ld c, c
    sub d
    dec b
    dec hl
    cpl
    ret z

    ld d, b
    jr @+$01

    ld b, b
    ld d, $fe
    jr nc, @+$36

    db $10
    ld c, $1a
    ld d, c
    ld l, h
    inc b
    inc [hl]
    db $10
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    sub d
    nop
    ld b, $04
    rlca
    ld c, c
    add b
    dec b
    dec hl
    cpl
    ret z

    ld l, l
    jr @+$01

    ld b, b
    ld d, $fd
    ldh [$ff34], a
    db $10
    add hl, bc
    ld a, [de]
    ld d, c
    ld l, h
    dec a
    inc bc
    ld [bc], a
    ld a, [de]
    ld sp, $2b6c
    cpl
    ret z

    inc [hl]
    ld c, c
    sub d
    nop
    ld b, $10
    rlca
    inc [hl]
    db $10
    ld c, $1a
    ld d, c
    ld l, h
    dec sp
    inc bc
    inc bc
    ld d, $00

jr_017_5351:
    nop
    dec hl
    cpl
    ret z

    dec [hl]
    ld a, [bc]
    jr nz, jr_017_5394

    rlca
    ld bc, $0106
    rlca
    dec a
    rlca
    ld bc, $0106
    rlca
    ld c, $14
    add hl, bc
    ld b, $40
    rlca
    ld c, c
    sub d
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1908

    ld l, d
    ld l, h
    ld a, [de]
    inc bc
    ld l, l
    ld a, [de]
    ld c, b
    ld l, l
    ld b, $40
    rlca
    ld a, [de]
    ld c, b
    ld l, l
    ld b, $40
    rlca
    ld a, [de]
    inc sp
    ld l, l
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, jr_017_5351

    rlca
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a

jr_017_5394:
    nop
    nop
    inc l
    inc b
    inc e
    ld l, h
    jp z, $06ff

    jr nc, jr_017_53a6

    ld [bc], a
    db $10
    jp nz, $1a18

    sbc h
    ld l, h

jr_017_53a6:
    dec bc
    ld [bc], a
    ld d, $fe
    add b
    jr jr_017_53ad

jr_017_53ad:
    ld h, b
    inc [hl]
    db $10
    jr nz, jr_017_53cc

    jr c, @+$6e

    ld a, [de]
    ld sp, $0f6c
    ld [bc], a
    nop
    add $7c
    ld [bc], a
    ld bc, $7cc6
    dec d
    ld e, b
    nop
    rla
    xor b
    nop
    ld b, $80
    rlca
    jr @+$01

    and b

jr_017_53cc:
    ld [bc], a
    db $10
    jp nz, $1a18

    or c
    ld l, h
    ld b, $20
    rlca
    ld d, $ff
    nop
    inc [hl]
    db $10
    rrca
    ld a, [de]
    jr c, jr_017_544b

    ld a, [de]
    ld sp, $146c
    nop
    ld b, $08
    rlca
    jr jr_017_53e9

jr_017_53e9:
    ld h, b
    ld [bc], a
    db $10
    jp nz, $1a18

    sbc a
    ld l, h
    ld b, $20
    rlca
    dec hl
    cpl
    ret z

    ld d, c
    ld b, $00
    rlca
    inc l
    jr c, jr_017_5404

    jr nz, @+$09

    jr jr_017_5402

jr_017_5402:
    nop
    dec d

jr_017_5404:
    nop
    nop
    ld b, $68
    rlca
    jr c, jr_017_540d

    jr nc, @-$3c

jr_017_540d:
    inc c
    ld a, [de]
    jp c, Jump_017_496c

    rrca
    nop
    ld b, $20
    rlca
    inc b
    ld [bc], a
    ld l, h
    jp z, $0bff

    ld [bc], a
    dec hl
    ld l, $c8
    ld a, [bc]
    ld d, $fe
    add b
    jr jr_017_5427

jr_017_5427:
    ret nz

    ld a, [bc]
    inc de
    ld b, c
    dec b
    ld a, [hl-]
    nop
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $2b6c
    ld l, $c8
    dec a
    inc d
    nop
    ld b, $10
    rlca
    rrca
    ld [de], a
    nop
    nop
    inc l
    inc b
    scf
    inc c
    pop af
    rst $00
    ldh [rHDMA5], a
    ld [bc], a

jr_017_544b:
    db $10
    jp nz, $1a15

    ld a, [bc]
    ld d, l
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a17

    inc h
    ld d, l
    ld c, c
    and d
    nop
    jr jr_017_5460

jr_017_5460:
    ld b, b
    ld b, $28
    rlca
    ld [bc], a
    db $10
    jp nz, $1a09

    ld a, [bc]
    ld d, l
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a12

    inc h
    ld d, l
    ld [bc], a
    db $10
    jp nz, $1a04

    ld a, [bc]
    ld d, l
    inc d
    nop
    jr jr_017_5480

jr_017_5480:
    ld b, b
    ld b, $20
    rlca
    jr jr_017_5486

jr_017_5486:
    ld b, b
    ld [bc], a
    db $10
    jp nz, $1a1a

    inc h
    ld d, l
    dec sp
    inc bc
    ld [bc], a
    ld c, c
    and d
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1a03

    ld a, [bc]
    ld d, l
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a12

    inc h
    ld d, l
    inc d
    nop
    jr jr_017_54ac

jr_017_54ac:
    ld b, b
    ld b, $03
    rlca
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a14

    inc h
    ld d, l
    dec a
    inc bc
    ld bc, $6c02
    jp z, $14ff

    nop
    jr jr_017_54c5

jr_017_54c5:
    ld b, b
    ld b, $03
    rlca
    ld [bc], a
    db $10
    jp nz, $1a08

    ld a, [bc]
    ld d, l
    jr @+$01

    add b
    ld d, $ff
    ret nz

    inc [hl]
    db $10
    ld c, $1a
    ld a, $6c
    ld d, $00
    nop
    inc l
    jr c, @+$4b

    add b
    nop
    ld a, [bc]
    inc d
    inc b
    ld b, $03
    rlca
    ld c, $18
    nop
    nop
    ld [bc], a
    ld b, b
    jp nz, $0300

    ld l, c
    jp nz, RST_00

    inc bc
    adc c
    jp nz, RST_00

    inc bc
    xor c
    jp nz, RST_00

    inc bc

jr_017_5502:
    ret


    jp nz, RST_00

    ld b, $44
    rlca
    jr c, @+$4b

    add b
    nop
    dec hl
    cpl
    ret z

    ccf
    jr @+$01

    add b
    cpl
    db $10
    jp nz, $0604

    inc bc
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    jr jr_017_5522

jr_017_5522:
    ld b, b
    dec de
    ld d, $fe
    add b
    ld a, [de]
    ld a, $6c
    ld d, $00
    nop
    dec de
    ld c, c
    and c
    nop
    inc e
    ld l, h
    jp z, $04ff

jr_017_5536:
    dec hl
    ld l, $c8
    ld a, [hl-]
    ld b, $20
    rlca
    ld [bc], a
    jr nc, jr_017_5502

    ld [$e31a], sp
    ld l, h
    ld [de], a
    nop
    nop
    ld c, c
    ld b, c
    nop
    dec d
    ld d, h
    nop
    rla
    ld e, b
    nop
    ld a, [bc]
    jr nz, @+$06

    ld b, $01
    rlca
    ld c, $14
    inc bc
    ld a, [bc]
    inc b
    inc b
    ld b, $01
    rlca
    ld c, $03
    push af
    rst $00
    ld e, h
    nop
    ld e, $f1
    rst $00
    jr jr_017_556b

    nop

jr_017_556b:
    dec hl
    jr nc, jr_017_5536

    inc d
    inc b
    ld b, $07
    rlca
    inc bc
    push af
    rst $00
    ld e, b
    nop
    ld e, $f1
    rst $00
    ld a, [bc]
    add hl, bc

jr_017_557d:
    inc b
    ld b, $07
    rlca
    ld c, $18
    nop
    nop
    ld b, $40
    rlca
    add hl, de
    ld b, a
    ld d, l
    ld b, $20
    rlca
    ld c, c
    ld b, c
    nop
    dec d
    ld c, h
    nop
    rla
    ld b, b
    nop
    ld a, [bc]
    jr nz, @+$06

    ld b, $01
    rlca
    ld c, $14
    inc bc
    ld a, [bc]
    inc b
    inc b
    ld b, $01
    rlca
    ld c, $03
    ei
    rst $00
    ld e, h
    nop
    ld e, $f7
    rst $00
    jr jr_017_55b2

    nop

jr_017_55b2:
    dec hl
    jr nc, jr_017_557d

    inc d
    inc b
    ld b, $07
    rlca
    inc bc
    ei
    rst $00
    ld e, b
    nop
    ld e, $f7
    rst $00
    ld a, [bc]
    inc c
    inc b
    ld b, $07
    rlca
    ld c, $18
    nop
    nop
    ld b, $10
    rlca
    add hl, de
    adc e
    ld d, l
    jr jr_017_55d5

    sbc b

jr_017_55d5:
    nop
    jr jr_017_55d9

    ld h, b

jr_017_55d9:
    inc d
    ld bc, $1800
    ld [bc], a
    nop
    nop
    ld [$0299], sp
    ld [bc], a
    ld e, h
    nop
    push hl
    sbc b
    ld [bc], a
    ld [bc], a
    ld e, h
    nop
    inc l
    inc b
    scf
    inc c
    pop af
    rst $00
    adc c
    ld d, a
    inc e
    ld l, h
    jp z, $18ff

    rst $38
    ld b, b
    ld [bc], a
    db $10
    jp nz, $1a1e

    inc h
    ld d, l
    dec a
    inc bc
    ld [bc], a
    ld [bc], a
    db $10
    jp nz, $1a15

    or a
    ld l, h
    ld c, c
    add b
    inc bc
    jr @+$01

    ld b, b
    ld a, [bc]
    jr nc, jr_017_5656

    add hl, bc
    inc b
    nop
    ld b, $00
    rlca
    ld c, $49
    add b
    nop
    ld b, $20
    rlca
    ld c, c
    add c
    nop
    ld b, $20
    rlca
    ld c, c
    and h
    nop
    ld d, $fe
    add b
    inc [hl]
    db $10
    rla
    ld a, [de]
    ld c, l
    ld l, h
    ld d, $00
    nop
    ld c, c
    add b
    nop
    dec hl
    cpl
    ret z

    ccf
    ld a, [bc]
    ld [bc], a
    inc b
    ld b, $03
    rlca
    ld c, $0a
    inc c
    inc b
    ld b, $03
    rlca
    ld b, e
    add hl, bc
    stop
    ld c, $02
    db $10
    jp nz, $1a04

    or a

jr_017_5656:
    ld l, h
    ld [bc], a
    db $10
    jp nz, $1a08

    adc l
    ld l, h
    ld [bc], a
    ld l, [hl]
    jp z, $00ff

    ld c, c
    add d
    ld [bc], a
    dec hl
    ld l, $c8
    ld a, [bc]
    ld d, $fe
    add b
    jr @+$01

    nop
    ld a, [bc]
    dec e
    ld b, c
    dec b
    jr nz, jr_017_5676

jr_017_5676:
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    dec sp
    inc bc
    inc bc
    jr @+$01

    ld b, b
    inc d
    ld bc, $2e2b
    ret z

    dec a
    ld a, [bc]
    db $10
    ld b, c
    add hl, bc
    ld [bc], a
    nop
    ld b, $01
    rlca
    ld c, $02
    ld l, h
    jp z, $0bff

    inc bc
    jr @+$01

    ld b, b
    inc b
    ld a, [bc]
    jr @+$43

    add hl, bc
    ld [bc], a
    nop
    ld b, $01
    rlca
    ld c, $04
    ld b, $08
    rlca
    rrca
    jr jr_017_56ae

jr_017_56ae:
    nop
    ld [de], a
    nop
    nop
    ld b, $30
    rlca
    ld c, c
    cp h
    ld bc, $2e2b
    ret z

    ld a, [bc]
    ld d, $fe
    ldh [rNR23], a
    rst $38
    nop
    ld a, [bc]
    dec de
    ld b, c
    dec b
    inc e
    nop
    ld b, $01
    rlca
    ld c, $3b
    inc bc
    inc bc
    ld d, $00
    nop
    inc d
    ld bc, $030b
    jr @+$01

    ld b, b
    inc b
    ld a, [bc]
    jr jr_017_571e

    add hl, bc
    ld [bc], a
    nop
    ld b, $01
    rlca
    ld c, $04
    ld b, $05
    rlca
    inc b
    ld b, $05
    rlca
    rrca
    ld [de], a
    nop
    nop
    inc e
    ld l, h
    jp z, $14ff

    ld b, $18
    rst $38
    ret nz

    ld a, [bc]
    inc c
    inc b
    ld b, $08
    rlca
    ld c, $14
    add hl, bc
    ld d, $00
    ld b, b
    ld a, [bc]
    dec bc
    inc b
    ld b, $08
    rlca
    ld c, $14
    ld b, $16
    nop
    nop
    ld [bc], a
    ld l, l
    jp z, $2bff

    cpl
    ret z

    ld l, d
    ld a, [bc]
    inc b
    inc b
    ld b, $08

jr_017_571e:
    rlca
    ld c, $47
    ld l, [hl]
    jp z, $11ff

    ld d, a
    jr jr_017_5728

jr_017_5728:
    nop
    ld b, $50
    rlca
    jr c, jr_017_574a

    ld l, l
    jp z, $02ff

    ld l, l
    jp z, $0300

    push af
    rst $00
    halt
    nop
    ld e, $f1
    rst $00
    ld b, $1e
    rlca
    inc bc
    push af
    rst $00
    ld [hl], a
    nop
    ld e, $f1
    rst $00
    ld b, $0f

jr_017_574a:
    rlca
    inc bc
    push af
    rst $00
    nop
    nop
    ld e, $f1
    rst $00
    jr z, @-$0d

    rst $00
    ld [bc], a
    nop
    add hl, de
    dec l
    ld d, a
    inc e
    ld l, l
    jp z, $02ff

    ld l, l
    jp z, $0300

    ei
    rst $00
    halt
    nop
    ld e, $f7
    rst $00
    ld b, $1e
    rlca
    inc bc
    ei
    rst $00
    ld [hl], a
    nop
    ld e, $f7
    rst $00
    ld b, $0f
    rlca
    inc bc

jr_017_577a:
    ei
    rst $00
    nop
    nop
    ld e, $f7
    rst $00
    jr z, jr_017_577a

    rst $00
    ld [bc], a
    nop
    add hl, de
    ld e, e
    ld d, a
    adc a
    sbc c
    ld bc, $7601
    nop
    adc [hl]
    sbc c
    ld bc, $7601
    nop
    inc l
    inc b
    inc bc
    ld sp, hl
    jp c, $97c0

    inc bc
    ei
    jp c, $97d0

    ld [bc], a
    ld d, d
    jp c, $0203

    ld d, e
    jp c, $1c04

    ld l, h
    jp z, $06ff

    add b
    rlca
    jr @+$01

    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld a, $6c
    inc bc
    and a
    jp nz, $00d0

    inc [hl]
    db $10
    ld c, $1a
    ld d, c
    ld l, h
    ld b, c
    inc bc
    ld b, b
    inc bc
    inc d
    nop
    ld [bc], a
    sub b
    jp nz, $2bff

    cpl
    ret z

    ccf
    ld d, $00
    jr nz, jr_017_57f1

    rst $38
    ld h, b
    ld a, [bc]
    inc b
    inc b
    ld b, $03
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    ld [bc], a
    sub b
    jp nz, $1800

    rst $38
    jr nz, @+$18

    cp $80
    inc [hl]

jr_017_57f1:
    db $10
    ld d, $1a
    ld a, $6c
    ld b, c
    inc bc
    and b
    ld bc, $0741
    ret nz

    nop
    inc d
    inc bc
    jr @+$01

    ret nz

    ld d, $00
    nop
    ld b, $10
    rlca
    ld [bc], a
    ld [hl], b
    jp nz, $49ff

    and [hl]
    inc b
    ld d, $00
    jr nz, @+$1a

    nop
    jr nz, jr_017_5852

    rlca
    inc bc
    ld b, $40
    rlca
    inc b
    dec a
    rlca
    nop
    ld b, $40
    rlca
    dec a
    rlca
    inc bc
    ld a, [bc]
    inc b
    ld c, c
    add b
    dec b
    ld b, $04
    rlca
    inc d
    nop
    ld b, $04
    rlca
    ld c, $02
    ld [hl], b
    jp nz, $4900

    and [hl]
    nop
    ld d, $ff
    ldh a, [rNR23]
    rst $38
    ldh [$ff0a], a
    ld b, $04
    dec hl
    cpl
    ret z

    db $10
    ld b, $08
    rlca
    inc b
    ld b, $08
    rlca
    ld c, $18
    rst $38

jr_017_5852:
    and b
    ld d, $fe
    db $10
    inc [hl]
    db $10
    add hl, de
    ld a, [de]
    ld a, $6c
    ld b, c
    inc bc
    ret nz

    nop
    inc d
    nop
    ld [bc], a
    ld d, b
    jp nz, $2bff

    cpl
    ret z

    ccf
    ld d, $00
    jr nz, jr_017_5886

    rst $38
    ld h, b
    ld a, [bc]
    inc b
    inc b
    ld b, $03
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    ld [bc], a
    ld d, b
    jp nz, $1800

    rst $38
    ld b, b
    ld d, $fe
    add b
    inc [hl]

jr_017_5886:
    db $10
    ld d, $1a
    ld a, $6c
    ld b, c
    rlca
    and b
    nop
    inc d
    nop
    ld [bc], a
    or b
    jp nz, $2bff

    cpl
    ret z

    ccf
    ld d, $00
    jr nz, jr_017_58b5

    rst $38
    ld h, b
    ld a, [bc]
    inc b
    inc b
    ld b, $03
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    ld [bc], a
    or b
    jp nz, $2c00

    jr c, jr_017_58c9

    rst $38
    ld b, b
    ld d, $fe

jr_017_58b5:
    add b
    inc [hl]
    db $10
    rla
    ld a, [de]
    ld a, $6c
    ld a, [de]
    ld sp, $026c
    ld l, a
    jp z, $02ff

    ld d, d
    jp c, $0200

    ld d, e

jr_017_58c9:
    jp c, $0600

    ld h, b
    rlca
    jr c, @+$08

    ld [$4907], sp
    add d
    ld bc, $fe16
    ld b, b
    inc [hl]
    db $10
    rra
    ld a, [de]
    add [hl]
    ld e, c
    ld b, c
    inc bc
    nop
    ld bc, $6d02
    jp z, $0220

    or b
    jp nz, $1aff

    ld [hl], e
    ld e, c
    ld [bc], a
    or b
    jp nz, $1600

    db $fd
    ret nz

    inc [hl]
    db $10
    ld [hl+], a
    ld a, [de]
    add [hl]
    ld e, c
    ld b, c
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld l, l
    jp z, $0204

    sub b
    jp nz, $1aff

    ld [hl], e
    ld e, c
    ld [bc], a
    sub b
    jp nz, $1600

    cp $20
    inc [hl]
    db $10
    inc e
    ld a, [de]
    add [hl]
    ld e, c
    ld b, c
    inc bc
    or b
    ld bc, $7002
    jp nz, $14ff

    inc bc
    dec hl
    ld l, $c8
    dec a
    ld d, $00
    jr nz, @+$1a

    nop
    jr nz, jr_017_5935

    inc b
    ld c, c
    and l
    nop
    ld b, $08
    rlca
    dec a
    rlca
    inc bc

jr_017_5935:
    inc b
    ld b, $08
    rlca
    dec sp
    rlca
    inc bc
    ld c, $02
    ld [hl], b
    jp nz, $0200

    ld l, h
    jp z, $49ff

    add d
    ld bc, $fd16
    ret nz

    inc [hl]
    db $10
    jr nz, jr_017_5969

    add [hl]
    ld e, c
    ld b, c
    inc bc

jr_017_5953:
    nop
    inc b
    ld [bc], a
    ld l, l
    jp z, $0204

    ld d, b
    jp nz, $1aff

    ld [hl], e
    ld e, c
    ld [bc], a
    ld d, b
    jp nz, $1600

    db $fd
    ret nz

    inc [hl]
    db $10

jr_017_5969:
    ld [$861a], sp
    ld e, c
    ld a, [de]
    ld sp, $126c
    nop
    nop
    inc b
    dec hl
    ld l, $c8
    dec a
    ld d, $00
    jr nz, @+$1a

    nop
    jr nz, jr_017_59ae

    ld l, l
    jp z, $0006

    rlca
    ld c, $1b
    inc b
    dec hl
    ld l, $c8
    ld a, [bc]
    jr @+$01

    ld b, b
    cpl
    jr nc, jr_017_5953

    ld b, c
    dec b
    jr nz, jr_017_5995

jr_017_5995:
    ld b, $01
    rlca
    ld c, $1b
    jr jr_017_599c

jr_017_599c:
    jr nz, jr_017_59b7

    rst $08
    ld e, c
    jr jr_017_59a2

jr_017_59a2:
    jr nz, jr_017_59ae

    db $10
    add hl, de
    or l
    ld e, c
    jr jr_017_59aa

jr_017_59aa:
    jr nz, jr_017_59b6

    db $10
    add hl, de

jr_017_59ae:
    pop de
    ld e, c
    jr jr_017_59b2

jr_017_59b2:
    jr nz, @+$0c

    jr nz, jr_017_59cc

jr_017_59b6:
    nop

jr_017_59b7:
    db $10
    ld b, $00
    rlca
    ld b, l
    ld l, a
    jp z, $eeff

    ld e, c
    ld a, [hl-]
    ld l, [hl]
    jp z, Jump_017_4510

    ld l, [hl]
    jp z, $ce00

    ld e, c
    ld a, [de]

jr_017_59cc:
    ld a, [c]
    ld e, c
    ld c, $0a
    jr nz, jr_017_59e8

    rst $38
    ldh a, [rTMA]
    nop
    rlca
    ld b, l
    ld l, a
    jp z, $eeff

    ld e, c
    ld a, [hl-]
    ld l, [hl]
    jp z, Jump_017_4510

    ld l, [hl]
    jp z, $ea00

    ld e, c
    ld a, [de]

jr_017_59e8:
    ld a, [c]
    ld e, c
    ld c, $19
    or e
    ld e, c
    ld a, [de]
    ld sp, $006c
    inc [hl]
    ld de, $1600
    nop
    jr nz, jr_017_59ff

    nop
    rlca
    dec sp
    ld de, $4501

jr_017_59ff:
    ld l, a
    jp z, $eeff

    ld e, c
    ld a, [hl-]
    ld l, [hl]
    jp z, $4710

    ld l, [hl]
    jp z, $f500

    ld e, c
    ld d, $ff
    ldh [$ff3a], a
    ld l, [hl]
    jp z, $3211

    ld l, [hl]
    jp z, $0006

    rlca
    ld b, l
    ld l, a
    jp z, $eeff

    ld e, c
    ld a, [hl-]
    ld l, [hl]
    jp z, $4710

    ld l, [hl]
    jp z, $f500

    ld e, c
    ld de, $2c1b
    inc b
    ld [bc], a
    ld [hl], b
    jp nz, $0214

    sub b
    jp nz, $0212

    or b
    jp nz, $0608

    ld h, b
    rlca
    ld [bc], a
    ld l, h
    jp z, $02ff

    db $10
    jp nz, $1a15

    or a
    ld l, h
    ld c, c
    adc b
    nop
    jr @+$01

    ld b, b
    ld d, $00
    nop
    dec bc
    inc b
    dec hl
    cpl
    ret z

    jr jr_017_5a63

    ld [bc], a
    ld b, $03
    rlca
    ld b, c
    add hl, bc
    stop
    ld c, $0f

jr_017_5a63:
    ld c, c
    add c
    nop
    dec hl
    cpl
    ret z

    ccf
    ld a, [bc]
    db $10
    inc b
    ld b, $03
    rlca
    ld b, c
    add hl, bc
    stop
    ld c, $02
    db $10
    jp nz, $1a05

    and l
    ld l, h
    ld c, c
    add b
    ld bc, $0018
    ret nz

    ld a, [bc]
    inc c
    ld b, $03
    rlca
    ld b, e
    add hl, bc
    stop
    ld c, $49
    add b
    nop
    ld b, $20
    rlca
    dec hl
    cpl
    ret z

    ccf
    ld a, [bc]
    ld [bc], a
    inc b
    ld b, $03
    rlca
    ld c, $0a
    inc c
    inc b
    ld b, $03
    rlca
    ld b, e
    add hl, bc
    stop
    ld c, $02
    db $10
    jp nz, $1a02

    or a
    ld l, h
    ld [bc], a
    ld l, h
    jp z, $1800

    rst $38
    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    db $10
    ld a, [de]
    ld a, $6c
    ld d, $00
    nop
    ld [bc], a
    db $10
    jp nz, $1a05

    or a

jr_017_5ac8:
    ld l, h
    jr @+$01

    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    inc de
    ld a, [de]
    ld a, $6c
    ld d, $00
    nop
    ld [bc], a
    db $10
    jp nz, $190a

    ld l, d
    ld l, h
    ld [bc], a
    ld l, l
    jp z, $49ff

    add d
    ld b, $1c
    ld l, h
    jp z, $1aff

    ld c, b
    ld l, l
    ld b, $40
    rlca
    ld a, [de]
    ld c, e
    ld l, l
    ld b, $40
    rlca
    ld c, c
    add d
    ld b, $1c
    ld l, h
    jp z, $1a00

    inc sp
    ld l, l
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, jr_017_5ac8

    rlca
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    ld b, $10
    rlca
    add hl, de
    ld d, $5b
    ld b, $24
    rlca
    dec bc
    ld [bc], a
    ld a, [bc]
    inc b
    dec a
    inc bc
    ld bc, $0306
    rlca
    dec sp
    inc bc
    ld bc, $0306
    rlca
    ld c, $04
    rrca
    inc e
    ld l, h
    jp z, $06ff

    db $10
    rlca
    ld a, [hl-]
    ld l, [hl]
    jp z, $2f10

    ld l, [hl]
    jp z, $073b

    ld bc, $0306
    rlca
    dec a
    rlca
    ld bc, $0306
    rlca
    ld c, $16
    nop
    add b
    ld b, $24
    rlca
    ld d, $00
    nop
    nop
    inc l
    inc b
    inc bc
    ld sp, hl
    jp c, $9670

    inc bc
    ei
    jp c, $9680

    ld [bc], a
    ld d, d
    jp c, $0203

    ld d, e
    jp c, $1c04

    ld l, h
    jp z, $14ff

    nop
    inc bc
    ld c, c
    jp nz, Jump_017_4000

    ld l, $03
    jp nz, $c243

    ld l, $07
    jp nz, $c247

    ld b, e
    inc bc
    nop
    db $10
    ld b, $00
    rlca
    ld b, a
    rlca
    jp nz, $6d38

    ld e, e
    inc bc
    ld c, c
    jp nz, RST_00

    ld d, $fe
    add b
    jr jr_017_5b8e

jr_017_5b8e:
    ret nz

    inc [hl]
    db $10
    inc de
    ld a, [de]
    jr c, jr_017_5c01

    dec sp
    inc bc
    ld [bc], a
    ld a, [de]
    ld sp, $146c
    nop
    ld b, $04
    rlca
    ld d, $fe
    add b
    jr jr_017_5ba5

jr_017_5ba5:
    ret nz

    inc [hl]
    db $10
    rla
    ld a, [de]
    jr c, @+$6e

    ld a, [de]
    ld sp, $026c
    db $10
    jp nz, $1a08

    sbc h
    ld l, h
    ld [bc], a
    db $10
    jp nz, $1a08

    ld a, [hl]
    ld l, h
    ld [bc], a
    ld d, d
    jp c, $0200

    ld d, e
    jp c, $0200

    ld d, b
    jp nz, $02ff

    ld [hl], b
    jp nz, $06ff

    ld l, b
    rlca
    jr c, @+$16

    inc bc
    inc bc
    ld l, c
    jp nz, $2000

    ld l, $23
    jp nz, $c263

    ld l, $27
    jp nz, $c267

    ld b, e
    inc bc
    nop
    jr nz, @+$08

    nop
    rlca
    ld b, a
    daa
    jp nz, $d848

    ld e, e
    inc bc
    ld l, c
    jp nz, RST_00

    inc d
    inc b
    dec hl
    ld l, $c8

jr_017_5bf9:
    ld a, [bc]
    ld d, $fe
    add b
    jr jr_017_5bff

jr_017_5bff:
    ld h, b
    ld a, [bc]

jr_017_5c01:
    inc d
    ld b, c
    dec b
    jr nz, jr_017_5c06

jr_017_5c06:
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $026c
    ld l, h
    jp z, $14ff

    inc bc
    dec hl
    ld l, $c8
    dec a
    ld b, $40
    rlca
    dec a
    rlca
    dec b
    ld c, c
    rla
    nop
    ld b, $20
    rlca
    ld c, c
    add hl, hl
    nop
    dec hl
    ld l, $c8
    ld a, [hl-]
    ld a, [bc]
    inc b
    ld b, $07
    rlca
    inc b
    ld c, $3b
    rlca
    dec b
    ld [bc], a
    jr nc, jr_017_5bf9

    ld c, $1a
    jp c, $126c

    nop
    nop
    ld b, $50
    rlca
    ld d, $00
    db $10
    ld a, [bc]
    jr nz, jr_017_5c81

    ld l, [hl]
    jp z, Jump_017_4510

    ld l, [hl]
    jp z, Jump_017_6aff

    ld e, h
    ld b, $00
    rlca
    ld c, $16
    rst $38
    ldh a, [$ff0a]
    jr nz, jr_017_5c94

    ld l, [hl]
    jp z, Jump_017_4510

    ld l, [hl]
    jp z, Jump_017_6aff

    ld e, h
    ld b, $00
    rlca
    ld c, $19
    ld b, c
    ld e, h
    ld a, [de]
    ld sp, $006c
    inc l
    inc b
    ld [bc], a
    db $10
    jp nz, $1a1b

    sbc h
    ld l, h
    jr jr_017_5c79

jr_017_5c79:
    ret nz

    ld d, $fe
    add b
    inc [hl]
    db $10
    db $10
    ld a, [de]

jr_017_5c81:
    jr c, jr_017_5cef

    dec a
    inc bc
    ld [bc], a
    ld a, [de]
    ld sp, $026c
    db $10
    jp nz, $1a02

    sbc h
    ld l, h
    inc d
    nop
    ld b, $28

jr_017_5c94:
    rlca
    inc de
    ld bc, $0806
    rlca
    jr @+$01

    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    db $10
    ld a, [de]
    ld b, h
    ld l, h
    ld a, [de]
    ld sp, $026c
    ld l, a
    jp z, $18ff

    rst $38
    ret nz

    ld c, c
    ld bc, $0600
    ld [$4907], sp
    nop
    nop
    ld b, $c8
    rlca
    ld [bc], a
    ld l, a
    jp z, $1800

    nop
    and b
    ld d, $fe
    add b
    inc [hl]
    db $10
    dec de
    ld a, [de]
    jr c, jr_017_5d38

    dec a
    inc bc
    ld bc, $311a
    ld l, h
    ld c, c
    nop
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1a04

    sbc h
    ld l, h
    jr jr_017_5ce1

jr_017_5ce1:
    ret nz

    ld d, $fe
    add b
    inc [hl]
    db $10
    db $10
    ld a, [de]
    jr c, jr_017_5d57

    dec a
    inc bc
    ld [bc], a
    ld a, [de]

jr_017_5cef:
    ld sp, $146c
    nop
    ld b, $04
    rlca
    jr jr_017_5cf8

jr_017_5cf8:
    ret nz

    ld d, $fe
    add b
    inc [hl]
    db $10
    inc de
    ld a, [de]
    jr c, @+$6e

    dec sp
    inc bc
    ld [bc], a
    ld a, [de]
    ld sp, $146c
    nop
    ld b, $04
    rlca
    ld d, $00
    nop
    ld [bc], a
    db $10
    jp nz, $1904

    ld e, l
    ld l, h
    nop
    ld [bc], a
    ld l, l
    jp z, $49ff

    ld [bc], a
    ld b, $02
    ld l, h
    jp z, $1a01

    ld b, d
    ld l, l
    ld c, c
    ld [bc], a
    ld b, $06
    jr nz, jr_017_5d33

jr_017_5d2c:
    ld [bc], a
    ld l, h
    jp z, Jump_017_4903

    ld [bc], a
    rlca

jr_017_5d33:
    dec hl
    cpl
    ret z

    ld e, e
    ld a, [bc]

jr_017_5d38:
    ld [bc], a
    inc b
    ld b, $10
    rlca
    ld c, $02
    ld l, h
    jp z, $0a02

    inc bc
    inc b
    ld b, $10
    rlca
    ld c, $1c
    ld l, h
    jp z, $2bff

    ld l, $c8
    dec a
    ld c, c
    dec hl
    ld a, [bc]
    ld a, [bc]
    inc c
    inc b

jr_017_5d57:
    ld b, $12
    rlca
    ld c, $49
    ld [bc], a
    ld b, $06
    db $10
    rlca
    ld a, [de]
    dec l
    ld l, l
    ld a, [de]
    dec d
    ld l, l
    ld [bc], a
    jr nc, jr_017_5d2c

    rlca
    ld a, [de]
    jp c, $126c

    nop
    nop
    scf
    ld [$c5e1], sp
    ld a, l
    ld e, l
    dec d
    jr c, jr_017_5d7a

jr_017_5d7a:
    add hl, de
    ld d, a
    ld l, l
    ld [$0808], sp
    ld [$0808], sp
    ld [$1c40], sp
    ld l, h
    jp z, $0201

    ld l, [hl]
    jp z, $1a0b

    ld e, e
    ld e, [hl]
    ld d, $ff
    ret nz

    jr @+$01

    ldh [rNR30], a
    ld h, a
    ld e, [hl]
    ld [bc], a
    ld l, [hl]
    jp z, $1a04

    ld e, e
    ld e, [hl]
    dec d
    jr jr_017_5da3

jr_017_5da3:
    rla
    adc h
    nop
    ld [bc], a
    ld l, [hl]
    jp z, $1a04

    ld e, e
    ld e, [hl]
    ld [bc], a
    ld l, h
    jp z, $16ff

    rst $38
    ret nz

    jr jr_017_5db6

jr_017_5db6:
    jr nz, jr_017_5dd2

    ld h, a
    ld e, [hl]
    ld [bc], a
    ld l, [hl]
    jp z, $1a08

    ld e, e
    ld e, [hl]
    ld a, [de]
    ld sp, $156c
    jr jr_017_5dc7

jr_017_5dc7:
    nop
    inc e
    ld l, h
    jp z, $0202

    ld l, [hl]
    jp z, $1a08

    ld e, e

jr_017_5dd2:
    ld e, [hl]
    ld d, $ff
    add b
    jr @+$01

    ldh [rNR30], a
    ld h, a
    ld e, [hl]
    ld [bc], a
    ld l, [hl]
    jp z, $1a06

    ld e, e
    ld e, [hl]
    ld a, [de]
    ld sp, $156c
    jr jr_017_5de9

jr_017_5de9:
    nop
    inc e
    ld l, h
    jp z, $0203

    ld l, [hl]
    jp z, $1a0a

    ld e, e
    ld e, [hl]
    ld d, $ff
    ld a, b
    jr @+$01

    ret nz

    ld a, [bc]
    dec bc
    inc b
    ld b, $08
    rlca
    ld b, c
    dec b
    jr nz, jr_017_5e05

jr_017_5e05:
    ld c, $16
    rst $38
    add b
    ld a, [bc]
    add hl, bc
    inc b
    ld b, $08
    rlca
    ld b, c
    dec b
    jr nz, jr_017_5e13

jr_017_5e13:
    ld c, $16
    rst $38
    ret nz

    ld a, [bc]
    dec b
    inc b
    ld b, $08
    rlca
    ld b, c
    dec b
    jr nz, jr_017_5e21

jr_017_5e21:
    ld c, $16
    rst $38
    add b
    jr @+$01

    ldh [rNR30], a
    ld h, a
    ld e, [hl]
    ld [bc], a
    ld l, [hl]
    jp z, $1a05

    ld e, e
    ld e, [hl]
    ld a, [de]
    ld sp, $156c
    jr jr_017_5e38

jr_017_5e38:
    nop
    inc e
    ld l, a
    jp z, $2eff

    inc bc
    jp nz, $c2a3

    jr z, jr_017_5e47

    jp nz, $000c

jr_017_5e47:
    ld b, $00
    rlca
    ld b, l
    ld l, a
    jp z, $3dff

    ld e, [hl]
    nop
    inc e
    ld l, h
    jp z, $15ff

    jr c, jr_017_5e58

jr_017_5e58:
    add hl, de
    push de
    ld b, a
    ld d, $00
    ret nz

    cpl
    ld l, [hl]
    jp z, $0604

    ld [$0e07], sp
    dec de
    inc b
    ld b, $08
    rlca
    ld b, c
    dec b
    jr nz, jr_017_5e6f

jr_017_5e6f:
    ld a, [hl-]
    ld l, [hl]
    jp z, $4705

    ld l, [hl]
    jp z, $6700

    ld e, [hl]
    ld a, [hl-]
    ld l, [hl]
    jp z, Jump_017_4706

    ld l, [hl]
    jp z, Jump_017_67c0

    ld e, [hl]
    dec de
    inc l
    inc b
    inc bc
    dec b
    db $db
    sub b
    sub [hl]
    ld [bc], a
    ld e, b
    jp c, $0209

    db $10
    jp nz, $1a0d

    or a
    ld l, h
    ld d, $fe
    add b
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a12

    ld a, $6c
    ld d, $00
    jr nc, jr_017_5ebf

    rst $38
    ret nz

    ld c, c
    xor [hl]
    nop
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc b
    dec hl
    cpl
    ret z

    db $10
    ld b, $08
    rlca
    rrca
    dec a
    inc bc
    ld bc, $160e
    nop

jr_017_5ebf:
    inc d
    jr jr_017_5ec2

jr_017_5ec2:
    nop
    ld a, [bc]
    ld [$020b], sp
    inc b
    dec hl
    cpl
    ret z

    db $10
    ld b, $04
    rlca
    rrca
    dec a
    inc bc
    ld bc, $020e
    ld l, h
    jp z, $49ff

    ld l, $00
    dec a
    rlca
    ld [$0018], sp
    jr nz, jr_017_5eec

    inc c
    dec bc
    ld [bc], a
    inc b
    dec hl
    cpl
    ret z

    db $10
    ld b, $06

jr_017_5eec:
    rlca
    rrca
    dec a
    inc bc
    ld bc, $160e
    rst $38
    ld b, b
    jr jr_017_5ef7

jr_017_5ef7:
    ret nz

    ld [bc], a
    db $10
    jp nz, $1a0a

    jr c, jr_017_5f6b

    dec sp
    inc bc
    ld bc, $311a
    ld l, h
    ld c, c
    nop
    nop
    ld b, $04
    rlca
    ld c, c
    ld bc, $0600
    ld b, b
    rlca
    ld [bc], a
    db $10
    jp nz, $1a03

    sbc h
    ld l, h
    jr jr_017_5f1a

jr_017_5f1a:
    ret nz

    ld c, c
    ld c, $00
    ld b, $06
    rlca
    jr jr_017_5f23

jr_017_5f23:
    nop
    inc b
    dec hl
    ld l, $c8
    ld l, h
    jr @+$01

    ld b, b
    ld d, $fd
    ldh [$ff0b], a
    ld b, $34
    db $10
    inc bc
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    rrca
    ld a, [de]
    ld sp, $026c
    ld l, h
    jp z, $1600

    nop
    jr nc, @+$1a

    rst $38
    ret nz

    ld c, c
    xor [hl]
    nop
    dec sp
    rlca
    ld [$070a], sp
    dec bc
    inc bc
    inc b
    dec hl
    cpl
    ret z

    db $10
    ld b, $08
    rlca
    rrca
    dec a
    inc bc
    ld bc, $160e
    rst $38
    ret nz

    jr @+$01

    ld b, b
    ld [bc], a
    db $10
    jp nz, $1a09

    ld a, $6c
    dec a

jr_017_5f6b:
    inc bc
    ld bc, $311a
    ld l, h
    ld [bc], a
    db $10
    jp nz, $190c

    ld l, d
    ld l, h
    ld a, [de]
    inc bc
    ld l, l
    ld c, c
    adc l
    nop
    inc e
    ld l, h
    jp z, $1aff

    ld c, b
    ld l, l
    ld c, c
    adc l
    nop
    inc e
    ld l, h
    jp z, $1a00

    inc sp
    ld l, l
    ld a, [de]
    dec de
    ld l, l
    ld [bc], a
    jr nc, @-$3c

    rlca
    ld a, [de]
    db $e3
    ld l, h
    ld [de], a
    nop
    nop
    inc l
    inc b
    ld [bc], a
    ld b, d
    add $7a
    inc bc
    dec bc
    db $db
    ld [hl], b
    sub [hl]
    inc bc
    dec c
    db $db
    add b
    sub [hl]
    ld [bc], a
    ld e, e
    jp c, $020c

    ld e, h
    jp c, $060d

    ld h, b
    rlca
    ld [bc], a
    db $10
    jp nz, $1a0c

    sbc h
    ld l, h
    ld b, $02
    rlca
    jr jr_017_5fc2

jr_017_5fc2:
    ret nz

    ld d, $fe
    ldh [$ff34], a
    db $10
    dec d
    ld a, [de]
    jr c, jr_017_6038

    dec hl
    cpl
    ret z

    ld b, a
    ld a, [de]
    ld sp, $026c
    ld l, h
    jp z, $0aff

    ld [$3049], sp
    inc bc
    ld b, $04
    rlca
    ld c, c
    jr nc, @+$06

    ld b, $04
    rlca
    ld c, $0b
    ld [bc], a
    ld [bc], a
    add d
    jp nz, $1800

    nop
    ret nz

    ld c, c
    jr nc, jr_017_5ff5

    ld a, [de]
    inc l
    ld h, b

jr_017_5ff5:
    ld [bc], a
    add d
    jp nz, $1803

    rst $38
    and b
    ld c, c
    jr nc, jr_017_6003

    ld a, [de]
    inc l
    ld h, b
    rrca

jr_017_6003:
    ld [bc], a
    add d
    jp nz, $4900

    nop
    dec b
    dec bc

jr_017_600b:
    ld [bc], a
    jr jr_017_600e

jr_017_600e:
    ldh [rOBP1], a
    nop
    dec b
    ld a, [de]
    inc l
    ld h, b
    rrca
    ld c, c
    nop
    dec b
    ld d, $fe
    nop
    jr jr_017_601e

jr_017_601e:
    ldh [rNR30], a
    cpl
    ld h, b
    ld d, $00
    nop
    ld [bc], a
    db $10
    jp nz, $1905

    ld e, l
    ld l, h
    ld d, $fe
    add b
    dec hl
    cpl
    ret z

    dec de
    ld a, [bc]
    dec bc
    ld b, c
    dec b
    ld b, b

jr_017_6038:
    nop
    ld b, $01
    rlca
    ld c, $1a
    ld sp, $146c
    nop
    ld b, $02
    rlca
    dec de
    ld [bc], a
    jr nc, jr_017_600b

    ld b, $1a
    jp c, $146c

    ld bc, $fe16
    and b
    inc [hl]
    db $10
    dec d
    ld a, [de]
    cp d
    ld h, b
    ld [bc], a
    ld l, l
    jp z, $0240

    ld d, b
    jp nz, $1aff

    and a
    ld h, b
    ld d, $fe
    jr nz, jr_017_609b

    db $10
    ld a, [de]
    ld a, [de]
    cp d
    ld h, b
    dec sp
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, b
    jp nz, $0200

    ld l, l
    jp z, $0240

    ld [hl], b
    jp nz, $1aff

    and a
    ld h, b
    ld d, $fe
    jr nz, @+$36

    db $10
    ld a, [de]
    ld a, [de]
    cp d
    ld h, b

jr_017_6087:
    dec sp
    inc bc
    ld [bc], a
    ld [bc], a
    ld h, b
    jp nz, $2b00

    ld l, $c8
    dec a
    ld a, [de]
    ld sp, $146c
    nop
    ld b, $10
    rlca
    dec sp

jr_017_609b:
    inc bc
    ld bc, $3002
    jp nz, $1a05

    jp c, $126c

    nop
    nop
    inc b
    dec hl
    ld l, $c8
    dec a
    ld d, $00
    jr nz, @+$1a

    nop
    nop
    cpl
    ld l, l
    jp z, $0006

    rlca
    ld c, $1b
    inc b
    dec hl
    ld l, $c8
    ld a, [bc]
    jr jr_017_60c1

jr_017_60c1:
    ret nz

    cpl
    jr nc, jr_017_6087

    ld b, c
    dec b
    jr nz, jr_017_60c9

jr_017_60c9:
    ld b, $01
    rlca
    ld c, $1b
    inc e
    ld l, h
    jp z, $04ff

    ld a, [bc]
    inc b
    ld l, $83
    jp nz, $c203

    ld l, $87
    jp nz, $c207

    ld b, $00
    rlca
    ld c, $19
    jp nc, $2c60

    inc b
    ld b, $60
    rlca
    ld a, [de]
    adc c
    ld h, c
    ld b, $80
    rlca
    dec d
    ld h, b
    nop
    rla
    ldh a, [rP1]
    ld [bc], a
    db $10
    jp nz, $1928

    ld e, l
    ld l, h
    nop
    ld a, [de]
    adc c
    ld h, c
    dec d
    ld d, b
    nop
    rla
    ldh a, [rP1]
    ld [bc], a
    jr nc, @-$3c

    db $10
    ld a, [de]
    jp c, Jump_017_496c

    ld [bc], a
    ld bc, $0806
    rlca
    ld c, c
    add d
    ld bc, $073b
    ld a, [bc]
    ld b, $20
    rlca
    dec bc
    ld [bc], a
    ld c, c
    add d
    ld [bc], a
    dec hl
    ld l, $c8
    ld a, [bc]
    ld d, $fe
    add b
    ld a, [bc]
    ld d, $41
    dec b
    jr nz, jr_017_6130

jr_017_6130:
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    dec sp
    inc bc
    inc bc
    inc d
    ld bc, $2e2b
    ret z

    dec a
    ld b, $04
    rlca
    rrca
    dec a
    rlca
    ld a, [bc]
    ld c, c
    ld [bc], a
    ld bc, Call_000_2006
    rlca
    ld [bc], a
    jr nc, @-$3c

    inc b
    ld a, [de]
    jp c, $126c

    nop
    nop
    ld b, $20
    rlca
    ld a, [de]
    adc c
    ld h, c
    ld b, $80
    rlca
    dec d
    ld h, b
    nop
    rla
    ldh a, [rP1]
    ld c, c
    inc a
    nop
    jr jr_017_616b

jr_017_616b:
    ldh [$ff0a], a
    dec d
    inc b
    ld b, $04
    rlca
    ld c, $14
    ld bc, $2f2b
    ret z

    ld a, [bc]
    ld d, $fe
    ld b, b
    ld a, [bc]
    dec de
    ld b, c
    dec b
    jr nz, jr_017_6182

jr_017_6182:
    ld b, $01
    rlca
    ld c, $12
    nop
    nop
    inc d
    nop
    ld d, $00
    jr nz, jr_017_61a7

    rst $38
    add b
    ld [bc], a
    db $10
    jp nz, $1a0f

    rst $20
    ld h, c
    ld a, [de]
    ld sp, $146c
    ld bc, $0806
    rlca
    inc d
    nop
    ld d, $ff
    and b
    jr @+$01

jr_017_61a7:
    add b
    ld [bc], a
    db $10
    jp nz, $1a16

    rst $20
    ld h, c
    dec sp
    inc bc
    ld [bc], a
    ld a, [de]
    ld sp, $146c
    ld bc, $0806
    rlca
    inc d
    nop
    ld d, $ff
    ld h, b
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a18

    rst $20
    ld h, c
    ld a, [de]
    ld sp, $146c
    ld bc, $0806
    rlca
    inc d
    nop
    ld d, $ff
    ld b, b
    jr @+$01

    add b
    ld [bc], a
    db $10
    jp nz, $1a18

    rst $20
    ld h, c
    ld a, [de]
    ld sp, $066c
    add b
    rlca
    dec de
    cpl
    db $10
    jp nz, $0541

    stop
    ld b, $01
    rlca
    ld c, $1b
    inc l
    inc b
    ld [bc], a
    inc e
    add $54
    ld b, $60
    rlca
    ld [bc], a
    db $10
    jp nz, $1a14

    or a
    ld l, h
    ld c, c
    adc h
    nop
    ld a, [de]
    ld sp, $066c
    ld [$0407], sp
    jr @+$01

    and b
    ld d, $fe
    add b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld c, l
    ld l, h
    inc b
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    ld a, [de]
    ld sp, $066c
    ld [$3d07], sp
    rlca
    ld [$0c49], sp
    inc b
    jr jr_017_622f

jr_017_622f:
    ld h, b
    ld [bc], a
    db $10
    jp nz, $1a01

    jr @+$65

    dec sp
    rlca
    ld [$8c49], sp
    inc b
    jr @+$01

    and b
    ld [bc], a
    db $10
    jp nz, $1a01

    jr jr_017_62aa

    jr jr_017_6249

jr_017_6249:
    nop
    ld b, $20
    rlca
    inc d
    rlca
    ld b, $10
    rlca
    inc d
    inc bc
    ld b, $28
    rlca
    jr @+$01

    and b
    ld [bc], a
    db $10
    jp nz, $1a01

    jr jr_017_62c4

    ld b, $08
    rlca
    jr jr_017_6266

jr_017_6266:
    nop
    dec a
    rlca
    rlca
    ld c, c
    inc c
    inc b
    ld b, $10
    rlca
    ld c, c
    inc [hl]
    nop
    jr jr_017_6275

jr_017_6275:
    and b
    ld d, $fe
    jr c, jr_017_62ae

    db $10
    ld a, [bc]
    dec hl
    cpl
    ret z

    ld c, a
    ld a, [de]
    ld d, c
    ld l, h
    inc b
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld d, c
    ld l, h
    ld c, c
    add c
    nop
    ld a, [de]
    ld sp, $3b6c
    rlca
    ld [$0806], sp
    rlca
    ld [bc], a
    ld l, a
    jp z, $0600

    dec b
    rlca
    dec hl
    cpl
    ret z

    ld [hl-], a
    ld c, c
    sbc h
    nop
    ld b, $0f
    rlca
    inc b
    ld b, $01

jr_017_62aa:
    rlca
    ld d, $ff
    or b

jr_017_62ae:
    inc [hl]
    db $10
    dec c
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $026c
    ld l, a
    jp z, $06ff

    nop
    rlca
    inc b
    dec a
    inc bc
    ld bc, $0806

jr_017_62c4:
    rlca
    jr @+$01

    ld b, b
    inc d
    inc bc
    ld [bc], a
    db $10
    jp nz, $1a02

    cp l
    ld l, h
    ld c, c
    sbc h
    add hl, bc
    jr @+$01

    ld b, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    dec bc
    ld a, [de]
    ld c, l
    ld l, h
    ld [bc], a
    ld l, a
    jp z, $2b00

    cpl
    ret z

    inc sp
    inc d
    ld [$1034], sp
    ld [bc], a
    ld a, [de]
    ld d, c
    ld l, h
    ld c, c
    add b
    dec b
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $146c
    nop
    ld b, $40
    rlca
    ld d, $fe
    ld b, b
    jr @+$01

    ld b, b
    ld [bc], a
    db $10
    jp nz, $1a15

    ld a, $6c
    ld a, [de]
    ld sp, $026c
    db $10
    jp nz, $1908

    ld l, d
    ld l, h
    cpl
    db $10
    jp nz, $2f2b

    ret z

    ld d, d
    inc b
    ld b, $0a
    rlca
    dec hl
    cpl
    ret z

    ld d, e
    inc b
    ld b, $0a
    rlca
    ld c, $1b
    ld a, [bc]
    inc bc
    inc d
    ld [bc], a
    ld b, $10
    rlca
    dec hl
    cpl
    ret z

    ld a, [hl-]
    inc d
    inc bc
    ld b, $20
    rlca
    ld c, $1a
    dec l
    ld c, c
    dec hl
    cpl
    ret z

    dec c
    ld [bc], a
    ld l, [hl]
    jp z, $06ff

    ld b, b
    rlca
    ld c, c
    adc e
    nop
    ld a, [de]
    ld e, $49
    ld [bc], a
    ld l, a
    jp z, $06ff

    jr nz, jr_017_6360

    dec bc
    ld [bc], a
    ld a, [de]
    ld c, b
    ld l, l
    ld b, $40

jr_017_6360:
    rlca
    rrca
    inc e
    ld l, h
    jp z, $1aff

    inc sp
    ld l, l
    ld d, $fe
    and b
    jr @+$01

    ld b, b
    dec hl
    ld l, $c8
    ld a, [bc]
    ld a, [bc]
    db $10
    ld b, c
    dec b
    jr nz, jr_017_6379

jr_017_6379:
    ld b, $01
    rlca
    ld c, $12
    nop
    nop
    inc e
    ld l, [hl]
    jp z, $15ff

    ld c, b
    nop
    rla
    jr z, jr_017_638a

jr_017_638a:
    ld d, $fe
    ret nz

    jr @+$03

    jr nz, jr_017_639c

    dec b
    ld a, [de]
    inc sp
    ld c, c
    rrca
    dec hl
    ld l, $c8
    ld [de], a
    ld a, [bc]
    ld [bc], a

jr_017_639c:
    ld d, $ff
    nop
    jr jr_017_63a2

    nop

jr_017_63a2:
    dec bc
    inc bc
    ld a, [de]
    inc sp
    ld c, c
    rrca
    ld c, $12
    nop
    nop
    inc e
    ld l, a
    jp z, $15ff

    ld c, b
    nop
    rla
    jr z, jr_017_63b6

jr_017_63b6:
    ld d, $fe
    ldh a, [rNR23]
    ld bc, $0b40
    inc b
    ld a, [de]
    inc sp
    ld c, c
    rrca
    dec hl
    ld l, $c8
    inc [hl]
    inc d
    dec b
    ld d, $ff
    jr nz, @+$1a

    nop
    ld h, b
    dec bc
    dec b
    inc c
    inc b
    ld b, c
    dec b
    inc e
    nop
    ld b, $01
    rlca
    db $10
    inc b
    rrca
    inc d
    ld [$311a], sp
    ld l, h
    inc e
    ld l, a
    jp z, $3d00

    inc bc
    ld b, $06
    rlca
    rlca
    dec a
    inc bc
    ld a, [bc]
    ld b, $0f
    rlca
    dec a
    inc bc
    rlca
    ld d, $ff
    or b
    ld a, [bc]
    dec c
    ld b, c
    dec b
    jr nz, jr_017_63fd

jr_017_63fd:
    ld b, $01
    rlca
    ld c, $3d
    inc bc
    inc b
    ld a, [de]
    ld sp, $1c6c
    ld l, a
    jp z, $2eff

    ld h, e
    jp nz, $c203

    ld l, $67
    jp nz, $c207

    ld b, e
    inc bc
    nop
    ld c, $43
    rlca
    nop
    ld bc, $0006
    rlca
    ld b, a
    ld l, a
    jp z, $0b00

    ld h, h
    jr @+$01

    db $10
    ld d, $fe
    adc b
    ld a, [bc]
    dec c
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $03
    rlca
    ld c, $02
    ld l, h
    jp z, $14ff

    dec b
    jr jr_017_643e

jr_017_643e:
    ld b, b
    ld d, $ff
    add b
    ld a, [bc]
    db $10
    ld b, c
    dec b
    ld b, b
    nop
    inc b
    ld b, $06
    rlca
    ld c, $12
    nop
    nop
    ld [bc], a
    push af
    sbc $17
    ld [bc], a
    or $de
    ld h, b
    inc d
    nop
    ld b, $a0
    rlca
    inc d
    dec de
    ld a, [bc]
    dec b
    inc b
    ld b, $10
    rlca
    ld c, $1c
    ld l, h
    jp z, $14ff

    ld e, $06
    db $10
    rlca
    inc d
    nop
    ld b, $70
    rlca
    inc d
    ld e, $16
    cp $c0
    ld a, [bc]
    add hl, bc
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    inc e
    ld l, h
    jp z, $1400

    nop
    dec c
    ld [bc], a
    ld [bc], a
    db $10
    jp nz, $0205

    ld de, $01c2
    dec hl
    cpl
    ret z

    daa
    inc c
    inc b
    dec bc
    ld [bc], a
    cpl
    db $10
    jp nz, $0006

    rlca
    ld c, $04
    cpl
    ld de, $06c2
    nop
    rlca
    ld c, $04
    rrca
    ld hl, $c210
    rra
    ld de, $10c2
    inc d
    inc bc
    ld de, Call_000_2006
    rlca
    ld d, $ff
    nop
    ld a, [bc]
    inc bc
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $01
    rlca
    ld c, $14
    ld b, $0a
    inc b
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $01
    rlca
    ld c, $16
    nop
    nop
    dec hl
    cpl
    ret z

    ld [hl], h
    ld b, $c0
    rlca
    ld [bc], a
    ld l, l
    jp z, $1cff

    ld l, h
    jp z, $2cff

    add b
    ld b, $00
    rlca
    dec hl
    cpl
    ret z

    ld d, c
    ld b, $00
    rlca
    dec hl
    cpl
    ret z

    dec a
    dec sp
    inc bc
    inc bc
    dec sp
    rlca
    ld [$0604], sp
    ld [$2b07], sp
    cpl
    ret z

    inc [hl]
    inc b
    ld b, $04
    rlca
    ld a, [bc]
    inc bc
    dec sp
    inc bc
    inc b
    ld b, $00
    rlca
    ld c, $3d
    inc bc
    rrca
    inc b
    ld b, $40
    rlca
    ld [bc], a
    ld l, a
    jp z, $2bff

    cpl
    ret z

    dec [hl]
    dec bc
    ld [bc], a
    ld b, $20
    rlca
    ld a, [bc]
    inc b
    ld b, $01
    rlca
    inc b
    ld c, $0f
    ld b, $40
    rlca
    ld a, [bc]
    db $10
    dec sp
    rlca
    ld bc, $0106
    rlca
    dec a
    rlca
    ld bc, $0106
    rlca
    ld c, $3b
    inc bc
    inc bc
    dec hl
    cpl
    ret z

    ld [hl-], a
    inc d
    inc c
    dec sp
    inc bc
    dec c
    ld a, [bc]
    inc bc
    dec a
    inc bc
    inc b
    ld b, $00
    rlca
    ld c, $3d
    inc bc
    ld bc, $6e02
    jp z, $06ff

    ld [$1407], sp
    rrca
    dec sp
    inc bc
    ld [$080a], sp
    dec a
    inc bc
    ld bc, $0006
    rlca
    ld c, $06
    jr nz, jr_017_6577

    inc d
    ld [de], a
    ld b, $20
    rlca
    dec hl
    cpl

jr_017_6577:
    ret z

    dec bc
    ld a, [bc]
    dec b
    inc b
    ld b, $08
    rlca
    ld c, $2b
    cpl
    ret z

    daa
    ld a, [bc]
    dec b
    inc d
    rla
    ld b, $03
    rlca
    inc b
    ld b, $03
    rlca
    ld c, $06
    ld b, b
    rlca
    dec hl
    cpl
    ret z

    dec sp
    ld [bc], a
    ld [hl], b
    jp z, $0600

    db $10
    rlca
    inc b
    add hl, de
    sbc e
    ld h, l
    inc e
    ld l, l
    jp z, $16ff

    ld [bc], a
    nop
    ld a, [bc]
    ld b, $04
    ld b, $06
    rlca
    ld c, $16
    nop
    nop
    ld [bc], a
    ld l, h
    jp z, $02ff

    ld l, [hl]
    jp z, $1200

    nop
    nop
    ld b, $80
    rlca
    inc b
    jr jr_017_65c4

jr_017_65c4:
    ret nz

    ld a, [bc]
    add hl, bc
    ld b, $09
    rlca
    inc b
    ld c, $18
    nop
    nop
    inc d
    inc b
    jr @+$01

    ld b, b
    ld a, [bc]
    add hl, bc
    ld b, $09
    rlca
    inc b
    ld c, $18
    nop
    nop
    inc d
    rlca
    ld b, $10
    rlca
    ld [bc], a
    ld l, h
    jp z, $04ff

    ld b, $40
    rlca
    inc b
    dec hl
    cpl
    ret z

    inc sp
    ld [bc], a
    ld [hl], b
    jp z, $1cff

    ld l, [hl]
    jp z, $06ff

    jr nc, jr_017_6602

    inc d
    ld a, [bc]
    ld b, $20
    rlca
    inc d
    nop

jr_017_6602:
    inc e
    ld l, [hl]
    jp z, $1400

    dec bc
    ld d, $ff
    nop
    ld a, [bc]
    rlca
    ld b, c
    dec b
    ld b, b
    nop
    ld b, $06
    rlca
    ld c, $16
    nop
    nop
    inc d
    ld a, [bc]
    inc e
    ld l, [hl]
    jp z, $14ff

    inc c
    nop
    ld b, $f0
    rlca
    ld b, $e0
    rlca
    dec d
    ld [hl], h
    nop
    rla
    stop
    inc d
    nop
    ld a, [de]
    ld a, e
    ld h, [hl]
    inc e
    ld l, a
    jp z, $17ff

    ld b, b
    nop
    inc d
    inc b
    ld a, [de]
    ld a, e
    ld h, [hl]
    inc e
    ld l, a
    jp z, $1500

    ld h, h
    nop
    rla
    nop
    nop
    inc d
    nop
    jr @+$03

    jr nz, jr_017_6659

    ld [bc], a
    dec hl
    cpl
    ret z

    ld h, [hl]
    ld a, [bc]
    inc b
    inc b
    ld b, $04
    rlca

jr_017_6659:
    ld c, $0f
    inc d
    dec b
    dec hl
    cpl
    ret z

    ld a, [bc]
    ld d, $ff
    nop
    ld a, [bc]
    ld [$0541], sp
    jr nz, jr_017_666a

jr_017_666a:
    ld b, $01
    rlca
    ld c, $03
    add a
    jp nz, $0034

    ld [bc], a
    add d
    jp nz, $1a03

    ld sp, $386c
    ld a, [bc]
    ld [$033d], sp
    ld bc, $0106
    rlca
    ld c, $06
    ld b, b
    rlca
    ld a, [bc]
    ld [$033b], sp
    ld bc, $0006
    rlca
    ld c, $1b
    inc e
    ld [hl], b
    jp z, $15ff

    ld e, b
    nop
    rla
    ld [hl], b
    nop
    jr @+$01

    ret z

    ld d, $ff
    add b
    ld a, [bc]
    db $10
    ld b, c
    dec b
    stop
    inc b
    ld b, $06
    rlca
    ld c, $02
    ld l, h
    jp z, $0200

    ld l, [hl]
    jp z, $15ff

    nop
    nop
    ld a, [de]
    ld sp, $1c6c
    ld [hl], b
    jp z, $1500

    inc a
    nop
    rla
    inc [hl]
    nop
    ld c, c
    ld c, b
    inc bc
    ld b, $20
    rlca
    rla
    ret nc

    nop
    ld b, $20
    rlca
    rla
    ld h, h
    nop
    ld c, c
    ld c, b
    inc b
    ld b, $20
    rlca
    rla
    ret nc

    nop
    ld b, $20
    rlca
    ld [bc], a
    ld l, a
    jp z, $1900

    pop bc
    ld h, [hl]
    inc l
    add b
    dec hl
    cpl
    ret z

    ld [hl], l
    ld b, $10
    rlca
    ld d, $01
    nop
    ld a, [bc]
    jr nz, @+$06

    ld b, $06
    rlca
    ld c, $16
    nop
    nop
    inc bc
    dec h
    jp nz, RST_00

    inc bc
    ld b, l
    jp nz, RST_00

    inc bc
    ld h, l
    jp nz, RST_00

    inc bc
    add l
    jp nz, RST_00

    ld b, $30
    rlca
    dec hl
    cpl
    ret z

    inc bc
    ld b, $00
    rlca
    inc l
    jr c, jr_017_6723

    sub b
    rlca
    ld [de], a
    nop
    jr c, jr_017_6729

jr_017_6723:
    jr nc, jr_017_672c

    ld d, $00
    ret nc

    nop

jr_017_6729:
    ld b, $40
    rlca

jr_017_672c:
    ld d, $01
    add b
    nop
    ld b, $4c
    rlca
    ld d, $01
    ld b, b
    nop
    ld d, $01
    ret nz

    nop
    ld [bc], a
    push af
    sbc $01
    ld [bc], a
    or $de
    ld h, a
    dec hl
    cpl
    ret z

    inc l
    ld b, $20
    rlca
    ld c, c
    ld c, d
    inc h
    ld a, [bc]
    db $10
    dec a
    inc bc
    ld bc, $0f06
    rlca
    ld c, $2b
    cpl
    ret z

    dec l
    dec a
    inc bc
    ld bc, $0806
    rlca
    dec sp
    inc bc
    ld bc, $a31a
    ld l, e
    dec sp
    rlca
    ld [$1002], sp
    jp nz, $1a12

    ret nz

    ld l, e
    ld a, [de]
    inc bc
    ld l, h
    dec a
    rlca
    ld [$4a49], sp
    nop
    ld b, $30
    rlca
    ld c, c
    ld c, d
    ld b, $06
    db $10
    rlca
    dec hl
    cpl
    ret z

    dec de
    jr jr_017_6788

jr_017_6788:
    ld h, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    rlca
    dec bc
    inc bc
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    ld b, $0f
    inc [hl]
    db $10
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    ld c, d
    ld a, [bc]
    jr jr_017_67a7

jr_017_67a7:
    ld h, b
    ld a, [bc]
    ld [bc], a
    dec hl
    cpl
    ret z

    ld d, d
    inc b
    ld b, $0a
    rlca
    dec hl
    cpl
    ret z

    ld d, e
    inc b
    ld b, $0a
    rlca
    ld c, $49
    ld c, d
    dec c
    dec hl
    cpl

Jump_017_67c0:
    ret z

    ld d, b
    jr jr_017_67c4

jr_017_67c4:
    ld h, b
    ld d, $fe
    jr nz, jr_017_67fd

    db $10
    dec bc
    dec bc
    ld [bc], a
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    add hl, bc
    rrca
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    ld c, d
    nop
    ld b, $30
    rlca
    ld [bc], a
    db $10
    jp nz, $1a05

    or a
    ld l, e
    ld c, c
    ld c, d
    ld b, $18
    nop
    ret nz

    ld a, [bc]
    inc b
    ld b, e
    add hl, bc
    jr nc, jr_017_67f4

jr_017_67f4:
    ld b, $03
    rlca
    ld c, $18
    nop
    nop
    dec hl
    cpl

jr_017_67fd:
    ret z

    dec de
    jr jr_017_6801

jr_017_6801:
    ld h, b
    ld d, $fe
    add b
    inc [hl]
    db $10
    rlca
    dec bc
    inc bc
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    ld b, $0f
    inc [hl]
    db $10
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    ld a, [de]
    ld sp, $496c
    ld c, d
    dec c
    dec hl
    cpl
    ret z

    ld d, b
    jr jr_017_6824

jr_017_6824:
    ld h, b
    ld d, $fe
    nop
    inc [hl]
    db $10
    ld a, [bc]
    dec bc
    ld [bc], a
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    add hl, bc
    rrca
    inc [hl]
    db $10
    inc bc
    ld a, [de]
    ld d, c
    ld l, h
    dec sp
    inc bc
    ld bc, $0016
    nop
    ld c, c
    ld c, d
    ld b, $06
    ld b, $07
    jr jr_017_6849

jr_017_6849:
    nop
    ld c, c
    ld c, d
    nop
    ld b, $30
    rlca
    dec sp
    rlca
    ld [$ca49], sp
    nop
    ld b, $30
    rlca
    ld [bc], a
    db $10
    jp nz, $1a01

    ret nz

    ld l, e
    ld d, $ff
    ret nz

    jr @+$01

    ld b, b
    ld c, c
    jp z, $3419

    db $10
    rrca
    ld a, [de]
    ld d, c
    ld l, h
    ld c, c
    jp z, $1605

    nop
    nop
    dec sp
    inc bc
    ld [bc], a
    ld b, $06
    rlca
    jr jr_017_687d

jr_017_687d:
    nop
    ld [bc], a
    db $10
    jp nz, $1a06

    ret nz

    ld l, e
    ld a, [de]
    dec e
    ld l, h
    dec a
    rlca
    ld [$0303], sp
    jp nz, $0068

    ld a, [de]
    and e
    ld l, e
    dec sp
    rlca
    ld [$1002], sp
    jp nz, $1a0b

    ret nz

    ld l, e
    jr @+$01

    and b
    ld d, $fe
    add b
    inc [hl]
    db $10
    rla
    ld a, [de]
    ret


    ld l, e
    ld a, [de]
    ld sp, $496c
    jp z, $0600

    ld b, b
    rlca
    ld [bc], a
    db $10
    jp nz, $1a05

    ret nz

    ld l, e
    ld a, [de]
    inc bc
    ld l, h
    dec a
    rlca
    ld [$1002], sp
    jp nz, $1a0a

    or a
    ld l, e
    ld a, [de]
    push de
    ld l, e
    ld c, c
    ld c, d
    ld [de], a
    dec hl
    ld l, $c8
    ld l, h
    jr @+$01

    and b
    ld d, $fe
    nop
    dec bc
    inc b
    ld a, [bc]
    inc bc
    ld b, c
    dec b
    stop
    ld b, $00
    rlca
    ld c, $04
    rrca
    ld a, [bc]
    inc b
    ld b, c
    dec b
    stop
    ld b, $00
    rlca
    ld c, $04
    ld a, [bc]
    ld b, $41
    dec b
    stop
    ld b, $00
    rlca
    ld c, $04
    inc [hl]
    db $10
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld l, h
    dec sp
    inc bc
    inc bc
    ld a, [de]
    ld sp, $496c
    ld c, d
    dec b
    ld b, $04
    rlca
    ld c, c
    ld c, d
    nop
    ld b, $30
    rlca
    inc [hl]
    db $10
    ld bc, $b71a
    ld l, e
    ld d, $ff
    ret nz

    jr jr_017_691d

jr_017_691d:
    ret nz

    ld c, c
    ld c, d
    add hl, de
    inc [hl]
    db $10
    rrca
    ld a, [de]
    ld d, c
    ld l, h
    ld c, c
    ld c, d
    dec b
    ld d, $00
    nop
    dec sp
    inc bc
    ld [bc], a
    ld b, $06
    rlca
    jr jr_017_6935

jr_017_6935:
    nop
    ld [bc], a
    db $10
    jp nz, $1a06

    or a
    ld l, e
    ld a, [de]
    rst $28
    ld l, e
    inc bc
    inc bc
    jp nz, $0068

    ld a, [de]
    and e
    ld l, e
    dec sp
    rlca
    ld [$ca49], sp
    nop
    ld b, $30
    rlca
    ld [bc], a
    db $10
    jp nz, $1a0c

    ret nz

    ld l, e
    ld c, c
    jp z, $1806

    rst $38
    ld b, b
    ld a, [bc]
    inc b
    ld b, c
    add hl, bc
    jr nc, jr_017_6964

jr_017_6964:
    ld b, $03
    rlca
    ld c, $18
    nop
    nop
    dec hl
    cpl
    ret z

    dec de
    jr @+$01

    and b
    ld d, $fe
    add b
    inc [hl]
    db $10
    rlca
    dec bc
    inc bc
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    ld [$1a0f], sp
    ld sp, $066c
    ld b, $07
    ld c, c
    jp z, $2b0d

    cpl
    ret z

    ld d, b
    jr jr_017_6991

jr_017_6991:
    nop
    ld d, $fe
    nop
    inc [hl]
    db $10
    ld a, [bc]
    dec bc
    ld [bc], a
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    add hl, bc
    rrca
    inc [hl]
    db $10
    inc bc
    ld a, [de]
    ld d, c
    ld l, h
    dec sp
    inc bc
    ld bc, $0016
    nop
    inc b
    ld b, $06
    rlca
    ld c, c
    jp z, $2b19

    cpl
    ret z

    ld l, l
    ld d, $fd
    ldh [rNR23], a
    nop
    nop
    inc [hl]
    db $10
    add hl, de
    ld a, [de]
    ld d, c
    ld l, h
    ld d, $00
    nop
    dec sp
    inc bc
    ld bc, $ca49
    ld b, $06
    ld [$4907], sp
    jp z, $0611

    ld b, b
    rlca
    ld c, c
    jp z, $0600

    jr nz, jr_017_69e4

    ld [bc], a
    db $10
    jp nz, $1a03

    ret nz

    ld l, e

jr_017_69e4:
    ld a, [de]
    inc bc
    ld l, h
    dec a
    rlca
    ld [$1002], sp
    jp nz, $1a04

    or a
    ld l, e
    ld c, c
    ld c, d
    ld b, $18
    nop
    ret nz

    ld a, [bc]
    inc b
    ld b, e
    add hl, bc
    jr nc, jr_017_69fd

jr_017_69fd:
    ld b, $03
    rlca
    ld c, $18
    nop
    nop
    dec hl
    cpl
    ret z

    dec de
    jr jr_017_6a0a

jr_017_6a0a:
    or b
    ld d, $fe
    add b
    inc [hl]
    db $10
    rlca
    dec bc
    inc bc
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    ld b, $0f
    inc [hl]
    db $10
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    dec sp
    inc bc
    ld bc, $311a
    ld l, h
    ld b, $04
    rlca
    ld c, c
    ld c, d
    dec c
    dec hl
    cpl
    ret z

    ld d, b
    jr jr_017_6a33

jr_017_6a33:
    and b
    ld d, $fe
    nop
    inc [hl]
    db $10
    dec c
    dec bc
    ld [bc], a
    inc b
    ld a, [de]
    ld d, c
    ld l, h
    inc [hl]
    db $10
    add hl, bc
    rrca
    ld a, [de]
    ld d, c
    ld l, h
    dec a
    inc bc
    ld bc, $0016
    nop
    ld c, c
    ld c, d
    ld b, $06
    inc b
    rlca
    jr jr_017_6a55

jr_017_6a55:
    nop
    ld c, c
    ld c, d
    add hl, de
    dec hl
    cpl
    ret z

    ld l, l
    ld d, $fd
    ldh [rNR23], a
    nop
    sub b
    inc [hl]
    db $10
    ld hl, $511a
    ld l, h
    ld d, $00
    nop
    ld c, c
    ld c, d
    ld b, $06
    ld [$4907], sp
    ld c, d
    ld de, $0018
    nop
    ld b, $40
    rlca
    ld c, c
    ld c, d
    nop
    ld b, $20
    rlca
    dec sp
    rlca
    ld [$1002], sp
    jp nz, $1a01

    ret nz

    ld l, e
    ld d, $fe
    add b
    jr @+$01

    and b
    dec hl
    cpl
    ret z

    dec de
    ld c, c
    jp z, $3419

    db $10
    rla
    ld a, [de]
    ld d, c
    ld l, h
    dec hl
    cpl
    ret z

    dec c
    ld b, $18
    rlca
    inc d
    daa
    ld b, $08
    rlca
    ld a, [de]
    ld sp, $3b6c
    inc bc
    ld bc, $2f2b
    ret z

    inc [hl]
    ld c, c
    jp z, $061a

    inc bc
    rlca
    inc b
    ld b, $03
    rlca
    dec hl
    cpl
    ret z

    dec [hl]
    ld a, [bc]
    inc c
    inc b
    ld b, $06
    rlca
    ld c, $14
    ld a, [hl+]
    ld b, $10
    rlca
    inc d
    nop
    ld b, $20
    rlca
    ld [bc], a
    db $10
    jp nz, $1a08

    ret nz

    ld l, e
    ld a, [de]
    dec e
    ld l, h
    dec a
    rlca
    ld [$0303], sp
    jp nz, $0068

    ld a, [de]
    and e
    ld l, e
    ld [bc], a
    db $10
    jp nz, $1a06

    or a
    ld l, e
    ld a, [de]
    push de
    ld l, e
    dec sp
    rlca
    ld bc, $fe16
    add b
    inc [hl]
    db $10
    inc b
    ld a, [de]
    rst $08
    ld l, e
    dec a

Jump_017_6aff:
    inc bc
    nop
    ld d, $00
    nop
    ld c, c
    ld c, d
    rra
    ld b, $40
    rlca
    inc [hl]
    db $10
    add hl, bc
    inc c
    rlca
    dec hl
    cpl
    ret z

    inc b
    dec bc
    inc b
    inc b
    cpl
    db $10
    jp nz, $0006

    rlca
    ld c, $0f
    ld hl, $c210
    db $10
    dec bc
    inc b
    dec hl
    cpl
    ret z

    inc b
    ld a, [bc]
    inc b
    inc b
    ld b, $01
    rlca
    ld c, $0f
    dec hl
    cpl
    ret z

    dec de
    ld d, $fd
    add b
    jr @+$01

    ret z

    dec bc
    rrca
    inc b
    ld b, $04
    rlca
    ld b, c
    dec b
    ld b, b
    nop
    rrca
    dec bc
    ld a, [bc]
    inc b
    ld b, $04
    rlca
    rrca
    dec sp
    inc bc
    inc b
    dec sp
    rlca
    ld [$311a], sp
    ld l, h
    dec hl
    cpl
    ret z

    inc [hl]
    ld c, c
    jp z, $061a

    inc bc
    rlca
    inc b
    ld b, $03
    rlca
    dec hl
    cpl
    ret z

    dec [hl]
    ld a, [bc]
    inc c
    inc b
    ld b, $06
    rlca
    ld c, $14
    ld a, [hl+]
    ld b, $10
    rlca
    inc d
    nop
    ld b, $20
    rlca
    dec a
    rlca
    ld [$0303], sp
    jp nz, $0068

    dec sp
    rlca
    inc bc
    ld a, [de]
    and e
    ld l, e
    dec hl
    cpl
    ret z

    inc l
    ld a, [bc]
    db $10
    dec sp
    inc bc
    ld bc, $0f06
    rlca
    ld c, $03
    inc bc
    jp nz, RST_00

    dec hl
    cpl
    ret z

    dec l
    ld b, $40
    rlca
    ld b, $40
    rlca
    jr c, jr_017_6bed

    ld c, d
    dec h
    inc b
    ld b, $40
    rlca
    dec hl
    cpl
    ret z

    ld c, l
    inc b
    ld b, $40
    rlca
    inc b
    ld b, $40
    rlca
    dec de
    jr jr_017_6bb9

jr_017_6bb9:
    ret nz

    ld c, c
    ld c, d
    nop
    add hl, de
    cp l
    ld l, h
    jr @+$01

    ld b, b
    ld c, c
    jp z, $1900

    cp l
    ld l, h
    ld c, c
    jp z, $1919

    ld c, l
    ld l, h
    ld c, c
    ld c, d
    add hl, de
    add hl, de
    ld c, l
    ld l, h
    ld c, c
    ld c, d
    dec b
    jr jr_017_6bda

jr_017_6bda:
    ret nz

    ld a, [bc]
    inc b
    dec hl
    cpl
    ret z

    jr @+$45

    add hl, bc
    jr nc, jr_017_6be5

jr_017_6be5:
    ld b, $03
    rlca
    ld c, $14
    nop
    jr jr_017_6bed

jr_017_6bed:
    nop
    dec de
    jr jr_017_6bf1

jr_017_6bf1:
    ret nz

    ld a, [bc]
    inc b
    ld b, e
    add hl, bc
    jr nc, jr_017_6bf8

jr_017_6bf8:
    inc b
    ld b, $03
    rlca
    ld c, $14
    nop
    jr jr_017_6c01

jr_017_6c01:
    nop
    dec de
    ld c, c
    jp z, $1805

    rst $38
    ld b, b
    ld a, [bc]
    inc b
    dec hl
    cpl
    ret z

    jr jr_017_6c51

    add hl, bc
    jr nc, jr_017_6c13

jr_017_6c13:
    ld b, $03
    rlca
    ld c, $14
    nop
    jr jr_017_6c1b

jr_017_6c1b:
    nop
    dec de
    jr @+$01

    ld b, b
    ld a, [bc]
    inc b
    ld b, c
    add hl, bc
    jr nc, jr_017_6c26

jr_017_6c26:
    inc b
    ld b, $03
    rlca
    ld c, $14
    nop
    jr jr_017_6c2f

jr_017_6c2f:
    nop
    dec de
    ld d, $00
    nop
    jr jr_017_6c36

jr_017_6c36:
    nop
    dec de
    ld c, c
    nop
    dec b
    add hl, de
    ld c, l
    ld l, h
    ld c, c
    add b
    dec b
    add hl, de
    ld c, l
    ld l, h
    ld c, c
    ld bc, $1905
    ld c, l
    ld l, h
    ld c, c
    nop
    dec b
    dec hl
    cpl
    ret z

    dec de

jr_017_6c51:
    cpl
    db $10
    jp nz, $0541

    jr nz, jr_017_6c58

jr_017_6c58:
    ld b, $01
    rlca
    ld c, $1b
    ld a, [de]
    sbc h
    ld l, h
    ld [bc], a
    db $10
    jp nz, $1a08

    ld a, [hl]
    ld l, h
    add hl, de
    ld [hl], h
    ld l, h
    ld a, [de]
    or a
    ld l, h
    ld [bc], a
    db $10
    jp nz, $1a08

    adc l
    ld l, h
    ld d, $00
    nop
    dec d
    nop
    nop
    ld b, $68
    rlca
    jr c, jr_017_6caa

    cpl
    ret z

    ld d, c
    inc l
    jr c, @+$4b

    nop
    nop
    jr jr_017_6c89

jr_017_6c89:
    ret nz

    add hl, de
    pop bc
    ld l, h
    dec hl
    cpl
    ret z

    ld d, c
    inc l
    jr c, @+$4b

    add b
    nop
    jr @+$01

    ld b, b
    add hl, de
    pop bc
    ld l, h
    jr jr_017_6c9e

jr_017_6c9e:
    ret nz

    ld c, c
    nop
    nop
    add hl, de
    cp l
    ld l, h
    jr jr_017_6ca7

jr_017_6ca7:
    ret nz

    ld c, c
    add c

jr_017_6caa:
    nop
    add hl, de
    cp l
    ld l, h
    jr @+$01

    ld b, b
    ld c, c

jr_017_6cb2:
    ld bc, $1900
    cp l
    ld l, h
    ld c, c
    add b
    nop
    jr @+$01

    ld b, b
    dec hl
    cpl
    ret z

    ccf
    cpl
    db $10
    jp nz, $0604

    inc bc
    rlca
    ld c, $2b
    cpl
    ret z

    ld d, c
    jr jr_017_6ccf

jr_017_6ccf:
    nop
    dec de
    ld c, c
    ld [bc], a
    ld bc, $0018
    ret nz

    add hl, de
    db $ed
    ld l, h
    ld c, c
    ld [bc], a
    ld bc, $0018
    ret nz

    add hl, de
    jp hl


    ld l, h
    ld c, c
    add d
    ld bc, $ff18
    ld b, b
    dec hl
    ld l, $c8
    ld b, c
    cpl
    jr nc, jr_017_6cb2

    inc b
    ld b, $08
    rlca
    ld c, $2b
    ld l, $c8
    ld e, h
    jr jr_017_6cfb

jr_017_6cfb:
    nop
    dec de
    ld c, c
    ld [bc], a
    ld bc, $0619
    ld l, l
    ld c, c
    add d
    ld bc, $1006
    rlca
    inc d
    inc c
    ld b, $10
    rlca
    inc d
    ld b, $02
    ld l, l
    jp z, $1bff

    ld c, c
    ld [bc], a
    ld b, $19
    ld e, $6d
    ld c, c
    add d
    ld b, $06
    db $10
    rlca
    inc d
    inc c
    ld [bc], a
    ld l, l
    jp z, $0600

    db $10
    rlca
    inc d
    ld bc, $491b
    ld [bc], a
    ld a, [bc]
    add hl, de
    ld [hl], $6d
    ld c, c
    add d
    ld a, [bc]
    dec hl
    ld l, $c8
    ld a, [hl-]
    ld b, $20
    rlca
    inc b
    ld b, $10
    rlca
    dec de
    ld c, c
    ld [bc], a
    rlca
    add hl, de
    ld c, e
    ld l, l
    ld c, c
    add d
    rlca
    dec hl
    cpl
    ret z

    ld e, e
    ld a, [bc]
    dec b
    inc b
    ld b, $10
    rlca
    ld c, $1b
    ld [bc], a
    ld d, b
    jp nz, $4998

    inc b
    nop
    add hl, de
    ld l, b
    ld l, l
    ld [bc], a
    ld d, b
    jp nz, $4910

    add h
    nop
    inc e
    ld l, l
    jp z, $39ff

    rlca
    ld d, b
    jp nz, $1039

    pop hl
    push bc
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    ld [c], a
    push bc
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    db $e3
    push bc
    ld a, [de]
    xor e
    ld l, l

jr_017_6d85:
    add hl, sp
    db $10
    db $e4
    push bc
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    push hl
    push bc
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    and $c5
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    rst $20
    push bc
    ld a, [de]
    xor e
    ld l, l
    add hl, sp
    db $10
    add sp, -$3b
    ld a, [de]
    xor e
    ld l, l
    add hl, de
    ld [hl], b
    ld l, l
    cpl
    ld d, b
    jp nz, $0006

    rlca
    ld b, l
    ld l, l
    jp z, $ba00

    ld l, l
    ld c, $04
    dec de
    ld [de], a
    nop
    nop
    scf
    dec bc
    jr nz, jr_017_6d85

    sub $6d
    scf
    dec bc
    ld b, b
    call nz, Call_017_6de1
    scf
    dec bc
    ld h, b
    call nz, Call_017_6dec
    scf
    dec bc
    add b
    call nz, Call_017_6df7
    dec de
    ld bc, $0339
    stop
    ld [bc], a
    nop
    jr z, jr_017_6ddf

jr_017_6ddf:
    ld [bc], a
    nop

Call_017_6de1:
    ld bc, $0439
    stop
    ld [bc], a
    nop
    adc b
    nop
    cp $00

Call_017_6dec:
    ld bc, $0539
    ld [hl], b
    nop
    cp $00
    jr z, jr_017_6df5

jr_017_6df5:
    ld [bc], a
    nop

Call_017_6df7:
    ld bc, $0639
    ld [hl], b
    nop
    cp $00
    adc b
    nop
    cp $00
    inc bc
    rlca
    jp nz, $00b1

    inc bc
    daa
    jp nz, $00c0

    inc bc
    ld b, a
    jp nz, RST_00

    inc bc

jr_017_6e12:
    ld b, e
    jp nz, RST_00

    ld [bc], a
    ld h, b
    jp nz, $0341

    ld h, a
    jp nz, RST_38

    ld [bc], a
    add b
    jp nz, $0339

    add a
    jp nz, VBlankInterrupt

    ld [bc], a
    and b
    jp nz, $0331

    and a
    jp nz, LCDCInterrupt

    ld [bc], a
    ret nz

    jp nz, $0329

    rst $00
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    ldh [$ffc2], a
    ld hl, $e703
    jp nz, SerialTransferCompleteInterrupt

    ld [bc], a
    nop
    jp $0319


    rlca
    jp JoypadTransitionInterrupt


    ld [bc], a
    jr nz, jr_017_6e12

    ld de, $2703
    jp $0068


    ld [bc], a
    ld b, b
    jp $0309


    ld b, a
    jp $0070


    ld [bc], a
    ld h, b
    jp $0301


    ld h, a
    jp RST_00


    dec de
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    daa
    jp nz, $00c0

    inc bc
    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    inc bc
    ld h, a
    jp nz, $0078

    dec de
    inc bc
    ld b, a
    jp nz, $00e0

    dec de
    inc bc
    ld b, a
    jp nz, $00e0

    dec de
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    daa
    jp nz, $00c0

    inc bc
    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    ld [bc], a
    ld h, b
    jp nz, $1b00

    inc bc
    rlca
    jp nz, $00b0

    inc bc
    daa
    jp nz, $00c0

    inc bc
    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    ld [bc], a
    ld h, b
    jp nz, $1b00

    inc bc
    rlca
    jp nz, $00b0

    inc bc
    daa
    jp nz, $00c0

    inc bc
    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    inc bc
    ld h, a
    jp nz, $00c0

    inc bc
    add a
    jp nz, RST_20

    dec de
    ld [bc], a
    ret nz

    jp nz, $0201

    pop bc
    jp nz, $033e

    rst $00
    jp nz, $003e

    inc bc
    jp $00c2


    nop
    ld [bc], a
    ldh [$ffc2], a
    ld bc, $e102
    jp nz, $033e

jr_017_6efa:
    rst $20
    jp nz, $003e

    inc bc
    db $e3
    jp nz, RST_00

    dec de
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    daa
    jp nz, RST_28

    inc bc
    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    ld [bc], a
    ld h, b
    jp nz, $1b00

    inc bc
    add e
    jp nz, $0036

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $00c2
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    inc bc
    jp nz, LCDCInterrupt

    ld [bc], a
    jr nz, jr_017_6efa

    ld bc, $2102
    jp nz, $0382

    daa
    jp nz, $00b8

    inc bc
    inc hl
    jp nz, RST_38

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $03bc

    ld b, a
    jp nz, $00b0

    inc bc
    ld b, e
    jp nz, LCDCInterrupt

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $033f

    ld h, a
    jp nz, $00b0

    inc bc

jr_017_6f67:
    ld h, e
    jp nz, LCDCInterrupt

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $0340

    add a
    jp nz, RST_00

    inc bc
    add e
    jp nz, RST_00

    ld [bc], a
    and b
    jp nz, $0201

    and c
    jp nz, $0340

    and a
    jp nz, RST_00

    inc bc
    and e
    jp nz, RST_00

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $00c2
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    inc bc
    jp nz, $0044

    ld [bc], a
    jr nz, jr_017_6f67

    ld bc, $2102
    jp nz, $0382

    daa
    jp nz, Jump_017_70b8

    inc bc
    inc hl
    jp nz, $0034

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0342

    ld b, a
    jp nz, $00d0

    inc bc
    ld b, e
    jp nz, $0066

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $0342

    ld h, a
    jp nz, RST_08

    inc bc

jr_017_6fd4:
    ld h, e
    jp nz, $0065

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $0342

    add a
    jp nz, VBlankInterrupt

    inc bc
    add e
    jp nz, $0065

    ld [bc], a
    and b
    jp nz, $0201

    and c
    jp nz, $0342

    and a
    jp nz, $0078

    inc bc
    and e
    jp nz, $0064

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $80c2
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    inc bc
    jp nz, JoypadTransitionInterrupt

    ld [bc], a
    jr nz, jr_017_6fd4

    ld bc, $2102
    jp nz, $0382

    daa
    jp nz, RST_28

    inc bc
    inc hl
    jp nz, RST_38

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0384

    ld b, a
    jp nz, RST_10

    inc bc
    ld b, e
    jp nz, RST_38

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $03c3

    ld h, a
    jp nz, JoypadTransitionInterrupt

    inc bc

jr_017_7041:
    ld h, e
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $03c3

    add a
    jp nz, SerialTransferCompleteInterrupt

    inc bc
    add e
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    and b
    jp nz, $0201

    and c
    jp nz, $03c3

    and a
    jp nz, TimerOverflowInterrupt

    inc bc
    and e
    jp nz, TimerOverflowInterrupt

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $00c2
    inc bc
    rlca
    jp nz, RST_00

    inc bc
    inc bc
    jp nz, RST_00

    ld [bc], a
    jr nz, jr_017_7041

    ld bc, $2102
    jp nz, $0302

    daa
    jp nz, RST_00

    inc bc

jr_017_708a:
    inc hl
    jp nz, RST_00

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0342

    ld b, a
    jp nz, $00f0

    inc bc
    ld b, e
    jp nz, $0070

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $0342

    ld h, a
    jp nz, RST_20

    inc bc
    ld h, e
    jp nz, $0070

    dec de
    ld [bc], a
    nop
    jp nz, $0201

Jump_017_70b8:
    ld bc, $00c2
    inc bc
    rlca
    jp nz, $00f8

    inc bc
    inc bc
    jp nz, JoypadTransitionInterrupt

    ld [bc], a
    jr nz, jr_017_708a

    ld bc, $2102
    jp nz, $0302

    daa
    jp nz, $0080

    inc bc
    inc hl
    jp nz, RST_38

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0304

    ld b, a
    jp nz, $0098

    inc bc
    ld b, e
    jp nz, RST_38

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $0344

    ld h, a
    jp nz, RST_20

    inc bc
    ld h, e
    jp nz, RST_18

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $0344

    add a
    jp nz, $0070

    inc bc
    add e
    jp nz, $0014

    ld [bc], a
    and b
    jp nz, $0201

    and c
    jp nz, $0344

    and a
    jp nz, $0055

    inc bc

jr_017_711b:
    and e
    jp nz, $0016

    ld [bc], a
    ret nz

    jp nz, $0201

    pop bc
    jp nz, $0300

    rst $00
    jp nz, RST_00

    inc bc
    jp $00c2


    nop
    ld [bc], a
    ldh [$ffc2], a
    ld bc, $e102
    jp nz, $033b

    rst $20
    jp nz, $0080

    inc bc
    db $e3
    jp nz, RST_00

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $80c2
    inc bc
    rlca
    jp nz, $00b0

    inc bc

jr_017_7152:
    inc bc
    jp nz, JoypadTransitionInterrupt

    ld [bc], a
    jr nz, jr_017_711b

    ld bc, $2102
    jp nz, $0382

    daa
    jp nz, RST_28

    inc bc
    inc hl
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0384

    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $00c2
    inc bc
    rlca
    jp nz, $00f8

    inc bc
    inc bc
    jp nz, SerialTransferCompleteInterrupt

    ld [bc], a
    jr nz, jr_017_7152

    ld bc, $2102
    jp nz, $0302

    daa
    jp nz, $00f0

    inc bc
    inc hl
    jp nz, LCDCInterrupt

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0342

    ld b, a
    jp nz, $003d

    inc bc

jr_017_71ad:
    ld b, e
    jp nz, $006a

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $0342

    ld h, a
    jp nz, $0063

    inc bc
    ld h, e
    jp nz, $0069

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $0346

    add a
    jp nz, $00f0

    inc bc
    add e
    jp nz, RST_20

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $32c2
    inc bc
    rlca
    jp nz, TimerOverflowInterrupt

    inc bc

jr_017_71e4:
    inc bc
    jp nz, $0027

    ld [bc], a
    jr nz, jr_017_71ad

    ld bc, $2102
    jp nz, $0331

    daa
    jp nz, TimerOverflowInterrupt

    inc bc
    inc hl
    jp nz, $0027

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $0345

    ld b, a
    jp nz, TimerOverflowInterrupt

    inc bc
    ld b, e
    jp nz, $0027

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $80c2
    inc bc
    rlca
    jp nz, $00b0

    inc bc
    inc bc
    jp nz, JoypadTransitionInterrupt

    ld [bc], a
    jr nz, jr_017_71e4

    ld bc, $2102
    jp nz, $03b3

    daa
    jp nz, RST_20

    inc bc

jr_017_722d:
    inc hl
    jp nz, VBlankInterrupt

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $03ba

    ld b, a
    jp nz, $00e0

    inc bc
    ld b, e
    jp nz, RST_00

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $03ba

    ld h, a
    jp nz, $00e0

    inc bc
    ld h, e
    jp nz, RST_00

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $b6c2
    inc bc
    rlca
    jp nz, SerialTransferCompleteInterrupt

    inc bc
    inc bc
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    jr nz, jr_017_722d

    ld bc, $2102
    jp nz, $03b5

    daa
    jp nz, JoypadTransitionInterrupt

    inc bc
    inc hl
    jp nz, $00f0

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $03c7

    ld b, a
    jp nz, $0078

    inc bc
    ld b, e
    jp nz, TimerOverflowInterrupt

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $03c9

    ld h, a
    jp nz, RST_00

    inc bc
    ld h, e

jr_017_729b:
    jp nz, RST_00

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $03c8

    add a
    jp nz, RST_00

    inc bc
    add e
    jp nz, RST_00

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $00c2
    inc bc
    rlca
    jp nz, TimerOverflowInterrupt

    inc bc
    inc bc
    jp nz, $0078

    dec de
    ld [bc], a
    nop
    jp nz, $0201

    ld bc, $4bc2
    inc bc
    rlca
    jp nz, LCDCInterrupt

    inc bc
    inc bc
    jp nz, $00e0

    ld [bc], a
    jr nz, jr_017_729b

    ld bc, $2102
    jp nz, $034c

    daa
    jp nz, $0046

    inc bc
    inc hl
    jp nz, $00f0

    ld [bc], a
    ld b, b
    jp nz, $0201

    ld b, c
    jp nz, $034c

    ld b, a
    jp nz, $0072

    inc bc
    ld b, e
    jp nz, $00f0

    ld [bc], a
    ld h, b
    jp nz, $0201

    ld h, c
    jp nz, $034c

    ld h, a
    jp nz, $0022

    inc bc
    ld h, e
    jp nz, $00f0

    ld [bc], a
    add b
    jp nz, $0201

    add c
    jp nz, $034c

    add a
    jp nz, $005c

    inc bc
    add e
    jp nz, $00f0

    dec de

    call Call_017_732b
    ld a, [$ca66]
    call $2906
    jp Jump_017_73b1


Call_017_732b:
    call $1cfa
    call $0fd4
    call Call_000_162c
    call Call_000_1e2f
    ld hl, $c70f
    set 0, [hl]
    ld hl, $ca6c
    ld bc, $0230
    xor a
    ldh [$ff95], a
    ld [$ca65], a
    call FillMemory1
    ld hl, $da4f
    ld c, $10
    xor a
    call FillMemory
    call $20a8
    call $20b2
    ld hl, $c7f1
    ld c, $18
    xor a
    call FillMemory
    ld hl, $def5
    ld a, $26
    ld [hl+], a
    ld [hl], $67
    ld a, $19
    ldh [$ff8f], a
    ld a, $01
    call Call_000_1e38
    ld hl, $da3d
    ld de, $ce1d
    ld c, $03
    call $1057
    ld a, [$ca66]
    add $10
    call Call_000_1de1
    ld a, [$ca66]
    add a
    ld hl, $4000
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a

jr_017_7397:
    ld a, [hl+]
    push hl
    ld h, $00
    add a
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c20c
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    dec c
    jr nz, jr_017_7397

    ret


Jump_017_73b1:
    xor a
    ld [$c80f], a
    ld [$c809], a
    ld hl, $c85c
    dec [hl]
    push hl
    ld a, [$ca66]
    cp $18
    jr c, jr_017_73ce

    cp $1a
    jr z, jr_017_73ce

    call IncrementFF90
    jp Jump_017_7429


jr_017_73ce:
    call $0b11
    ld hl, $d76d
    push hl
    ld a, $a0
    ld [hl+], a
    ld a, $99
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld [hl], $14
    pop hl
    call $16ab
    call IncrementFF90
    ld a, [wLives]
    ld h, $00
    ld l, a
    call Call_000_2006
    call Call_017_747b
    call Call_017_74a9
    ld hl, $c811
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld h, d
    ld l, e
    call Call_000_2006
    call Call_017_7455
    ld a, [$c80f]
    or a
    jr nz, jr_017_7429

    call Call_017_7473
    ld hl, $986b
    ld de, $9aab
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $988b
    ld de, $9acb
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jr jr_017_7445

Jump_017_7429:
jr_017_7429:
    ld hl, $c860
    ld c, $09
    ld a, [hl+]
    cp c
    jr nz, jr_017_7436

    ld a, [hl+]
    cp c
    jr z, jr_017_7445

jr_017_7436:
    ld a, [$ca66]
    cp $19
    jr z, jr_017_7445

    ld a, $69
    ld [$c82d], a
    ld [$c835], a

jr_017_7445:
    call $13d0
    call $0fe6
    pop hl
    inc [hl]
    ld a, [$ca66]
    add $32
    jp Call_000_3872


Call_017_7455:
    ld de, $982b
    ld bc, $984b

jr_017_745b:
    ld hl, $c81c
    call Call_017_7467
    call Call_017_7467
    call Call_017_7467

Call_017_7467:
jr_017_7467:
    ld a, [hl+]
    call Call_017_7489
    ld [de], a
    inc de
    call Call_017_7499
    ld [bc], a
    inc bc
    ret


Call_017_7473:
    ld de, $9a6b
    ld bc, $9a8b
    jr jr_017_745b

Call_017_747b:
    ld de, $986b
    ld bc, $988b
    ld hl, wTimerTensDigit
    call Call_017_7467
    jr jr_017_7467

Call_017_7489:
    push hl
    push de
    ld [$c80b], a
    ld hl, $7dee
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


Call_017_7499:
    push hl
    push de
    ld a, [$c80b]
    ld hl, $7df8
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


Call_017_74a9:
    call $2924
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $a000
    add hl, de
    push hl
    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    call Call_017_750e
    push de
    ld bc, $0180
    add hl, bc
    call Call_017_750e
    pop bc
    pop hl
    push hl
    ld a, e
    cpl
    ld l, a
    ld a, d
    cpl
    ld h, a
    inc hl
    add hl, bc
    pop hl
    jr c, jr_017_750b

    push de
    ld d, h
    ld e, l
    ld bc, $0190
    add hl, bc
    ld c, $10
    call $1057
    ld hl, $a000
    call $1f73
    ld hl, $be2a
    ld a, e
    push af
    ld [hl+], a
    swap a
    ld [hl], a
    ld hl, $a000
    ld de, $be2c
    ld bc, $0190
    call $104e
    pop af
    ld [de], a
    inc de
    swap a
    ld [de], a
    ld a, $01
    ld [$c80f], a
    pop de

jr_017_750b:
    jp Call_000_1eb2


Call_017_750e:
    ld c, $04
    ld de, $0000

jr_017_7513:
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    add e
    ld e, a
    push af
    ld a, [hl+]
    and $0f
    ld b, a
    ld a, [hl+]
    and $0f
    swap a
    or b
    ld b, a
    pop af
    ld a, b
    adc d
    ld d, a
    dec c
    jr nz, jr_017_7513

    ret


    ld a, [$ca66]
    cp $18
    jr c, jr_017_7543

    cp $1a
    jr z, jr_017_7543

    ld a, $06
    ldh [$ff90], a
    ret


jr_017_7543:
    call IncrementFF90
    ld hl, $c5c0
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $8f
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], $40
    ld hl, $7de2
    ld de, $d76d
    ld c, $06
    call $1057
    ld hl, $7de8
    ld de, $d77d
    ld c, $06
    call $1057
    xor a
    ldh [$ff95], a
    call $13d0
    ld hl, $c5cb
    ld a, [hl]
    cp $32
    ret nz

    xor a
    ld [hl], a
    call Call_017_75e7
    jr nc, jr_017_758c

    ld hl, $c813
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_017_7605
    jp IncrementFF90


jr_017_758c:
    ld hl, $c811
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_017_7605
    ld a, $37
    ld [$c82f], a
    ld [$c835], a
    ld hl, wLives
    ld a, [hl]
    cp $63
    jr z, jr_017_75a6

    inc a

jr_017_75a6:
    ld [hl], a
    ld h, $00
    ld l, a
    call Call_000_2006
    ld hl, wTimerTensDigit
    ld de, $d783
    call Call_017_75d7
    call Call_017_75d7
    ld de, $d77d
    jp Call_000_1685


Call_017_75bf:
    ld a, [hl+]
    push hl
    ld hl, $7dee
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    push de
    inc de
    inc de
    inc de

jr_017_75cf:
    ld c, $0a
    add hl, bc
    ld a, [hl]
    ld [de], a
    pop de
    pop hl
    ret


Call_017_75d7:
    ld a, [hl+]
    push hl
    ld hl, $7dee
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [de], a
    inc de
    push de
    inc de
    jr jr_017_75cf

Call_017_75e7:
    ld hl, $c811
    ld a, [hl]
    sub $64
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    ret nc

    ld a, [hl]
    add $64
    ld [hl+], a
    ld b, a
    ld a, [hl]
    adc $00
    ld [hl], a
    or b
    jr z, jr_017_7603

    xor a
    ld [hl-], a
    ld [hl], a
    ret


jr_017_7603:
    scf
    ret


Call_017_7605:
    call Call_000_2006
    ld hl, $c81c
    ld de, $d773
    call Call_017_75bf
    call Call_017_75bf
    call Call_017_75bf
    call Call_017_75bf
    ld de, $d76d
    jp Call_000_1685


    xor a
    ldh [$ff95], a
    call $13d0
    ld a, [$c5cb]
    cp $1e
    ret nz

    call IncrementFF90
    xor a
    ldh [$ff95], a
    call $13d0
    ld hl, $c860
    ld c, $09
    ld a, [hl+]
    cp c
    jr nz, jr_017_7661

    ld a, [hl+]
    cp c
    jr nz, jr_017_7661

    ld a, [wIsOnSGB]
    bit 7, a
    jr z, jr_017_7655

    ld a, $4e
    call Call_000_3872
    ld a, $4f
    call Call_000_3872
    jr jr_017_765a

jr_017_7655:
    ld a, $2f
    ld [$c836], a

jr_017_765a:
    xor a
    ld [$c20b], a
    jp IncrementFF90


jr_017_7661:
    ldh a, [$ff8b]
    bit 0, a
    ret z

    ld a, $05
    ld [$c82e], a
    ld [$c835], a

jr_017_766e:
    ld a, SceneStage
    ldh [hCurrentScene], a
    xor a
    ldh [$ff90], a
    ret


    xor a
    ldh [$ff95], a
    call $13d0
    ld a, [$c20b]
    cp $78
    ret nz

    jr jr_017_766e

    ld a, [$ca66]
    cp $19
    jr nz, jr_017_7691

    ldh a, [hJoypad]
    or a
    jp nz, $06a2

jr_017_7691:
    ld a, [$ca66]
    cp $18
    jr nc, jr_017_76a2

    cp $1a
    jr z, jr_017_76a2

    ldh a, [$ff95]
    cp $30
    jr c, jr_017_76a6

jr_017_76a2:
    ld a, $64
    ldh [$ff95], a

jr_017_76a6:
    call Call_017_76c1
    call $13d0
    call $1c73
    ld hl, wIsOnSGB
    ld a, [$ca65]
    or a
    jr z, jr_017_76c0

    bit 1, [hl]
    call nz, IncrementFF90
    jp IncrementFF90


jr_017_76c0:
    ret


Call_017_76c1:
    ld hl, $c200
    ld c, $00

jr_017_76c6:
    ld a, [hl]
    or a
    jr z, jr_017_76dc

    push hl
    push bc
    ld a, c
    ld [$ca69], a
    ld de, $000c
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_017_76e7
    pop bc
    pop hl

jr_017_76dc:
    ld de, $0020
    add hl, de
    inc c
    ld a, c
    cp $10
    jr nz, jr_017_76c6

    ret


Call_017_76e7:
Jump_017_76e7:
    inc hl
    ld a, l
    ld [$ca6a], a
    ld a, h
    ld [$ca6b], a
    dec hl
    ld a, [hl]
    rst $08

    adc h
    ld [hl], a
    sub e
    ld [hl], a
    sbc c
    ld [hl], a
    xor h
    ld [hl], a
    db $d3
    ld [hl], a
    reti


    ld a, d
    sbc $77
    or $77
    dec b
    ld a, b
    dec e
    ld a, b
    ld [$1078], a
    ld a, c
    ld [hl], $79
    ld e, h
    ld a, c
    ld a, [hl+]
    ld a, d
    ld c, h
    ld a, d
    ld l, b
    ld a, d
    add h
    ld a, d
    and b
    ld a, d
    or c
    ld a, d
    reti


    ld a, d
    ld [$fe7a], a
    ld a, d
    ld [de], a
    ld a, e
    ld h, $7b
    adc a
    ld a, e
    adc $7b
    ld hl, sp+$7b
    inc sp
    ld a, b
    dec d
    ld a, h
    dec d
    ld a, h
    jr nz, jr_017_77af

    ld l, $7c
    ld b, d
    ld a, h
    ld d, b
    ld a, h
    ld h, h
    ld a, h
    ld l, [hl]
    ld a, h
    ld a, l
    ld a, h
    adc h
    ld a, h
    dec b
    ld a, l
    rrca
    ld a, l
    ld e, $7d
    dec l
    ld a, l
    and c
    ld [hl], a
    xor h
    ld a, l
    or a
    ld [hl], a
    jp $8277


    ld a, c
    xor h
    ld a, c
    sub $79
    nop
    ld a, d
    ld c, c
    ld a, b
    ld a, [hl-]
    ld a, e
    ld h, a
    ld a, b
    add e
    ld a, b
    ld a, c
    ld a, e
    add a
    ld [hl], a
    ld c, l
    ld a, e
    ld h, e
    ld a, e
    and d
    ld a, h
    or a
    ld a, h
    ld b, e
    ld a, l
    ld e, b
    ld a, l
    xor b
    ld a, b
    adc $78
    adc $7c
    jp hl


    ld a, h
    ld [hl], c
    ld a, l
    adc h
    ld a, l
    sbc b
    ld a, e
    and d
    ld a, e
    and a
    ld a, e
    xor [hl]
    ld a, e
    push bc
    ld a, d

    ld a, $01
    ld [$ca65], a
    call Call_017_7dbe
    dec hl
    jp Jump_017_7dc7


Jump_017_7793:
    call Call_017_7dbe
    jp Jump_017_7dc7


    call Call_017_7db6
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld [de], a
    ld [$c835], a
    jp Jump_017_76e7


    call Call_017_7db6

jr_017_77af:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    inc bc
    ld [de], a
    inc de
    ld a, [bc]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c202
    add hl, de
    inc [hl]
    jp Jump_017_7a46


    call Call_017_7dd6
    ld de, $c20b
    add hl, de
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c20b
    add hl, de
    ld a, [hl+]
    inc hl
    inc hl
    cp [hl]
    ret nz

    jp Jump_017_7793


    call Call_017_7dd6
    ld de, $c20b
    add hl, de
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c20b
    add hl, de
    ld a, [hl]
    cp $3c
    ret nz

    xor a
    ld [hl+], a
    inc hl
    inc hl
    dec [hl]
    ld a, [hl]
    or a
    ret nz

    jp Jump_017_7793


    call Call_017_7dbe
    dec hl
    call Call_017_7dc7
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp [hl]
    ret nz

    inc hl
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dbe
    dec hl
    call Call_017_7dc7
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [de]
    cp [hl]
    pop hl
    ret nz

    inc hl
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dbe
    dec hl
    call Call_017_7dc7
    inc hl
    ld a, [hl+]
    ld d, $c2
    ld e, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, [hl]
    pop hl
    cp [hl]
    ret nz

    inc hl
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dbe
    dec hl
    call Call_017_7dc7
    inc hl
    ld a, [hl+]
    ld d, $c2
    ld e, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld c, [hl]
    pop hl
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    cp [hl]
    pop hl
    ret nz

    inc hl
    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7dbe
    dec hl
    call Call_017_7dc7
    inc hl
    ld a, [hl+]
    ld d, $c2
    ld e, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld c, [hl]
    pop hl
    ld a, [hl+]
    ld d, $c2
    ld e, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, c
    cp [hl]
    pop hl
    ret nz

    call Call_017_7dc7
    jp Jump_017_76e7


    call Call_017_7db6
    push hl
    ld b, $00
    ld a, [de]
    inc de
    ld c, a

jr_017_78d7:
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld hl, $c600
    add hl, bc
    ld a, [de]
    inc de
    ld [hl], a
    pop bc
    dec c
    jr nz, jr_017_78d7

    pop hl
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9c
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    pop de
    push hl
    ld hl, $cd1c
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9d
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    pop de
    push hl
    ld hl, $cd1e
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9e
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    pop de
    push hl
    ld hl, $cd20
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9f
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    pop de
    push hl
    ld hl, $cd22
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9c
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld [de], a
    pop de
    push hl
    ld hl, $cd1c
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9d
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld [de], a
    pop de
    push hl
    ld hl, $cd1e
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9e
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld [de], a
    pop de
    push hl
    ld hl, $cd20
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9f
    ld d, $00
    ld e, a
    push de
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld [de], a
    pop de
    push hl
    ld hl, $cd22
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9c
    ld d, $00
    ld e, a
    add hl, de
    dec [hl]
    ld a, [hl]
    or a
    jr z, jr_017_7a46

    ld hl, $cd1c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


Jump_017_7a46:
jr_017_7a46:
    call Call_017_7dbe
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9d
    ld d, $00
    ld e, a
    add hl, de
    dec [hl]
    ld a, [hl]
    or a
    jr z, jr_017_7a46

    ld hl, $cd1e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9e
    ld d, $00
    ld e, a
    add hl, de
    dec [hl]
    ld a, [hl]
    or a
    jr z, jr_017_7a46

    ld hl, $cd20
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    ld hl, $cc9f
    ld d, $00
    ld e, a
    add hl, de
    dec [hl]
    ld a, [hl]
    or a
    jr z, jr_017_7a46

    ld hl, $cd22
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c200
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c201
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c201
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c202
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c203
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c205
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c207
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dd6
    ld de, $c209
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld [hl], c
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, [bc]
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld d, $c2
    ld e, a
    call Call_017_7dd6
    add hl, de
    ld a, [hl]
    ld [bc], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld h, a
    ld l, b
    call $1057
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe

jr_017_7b92:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


    call Call_017_7bb3

jr_017_7b9b:
    jr z, jr_017_7b92

jr_017_7b9d:
    inc hl
    inc hl
    jp Jump_017_76e7


    call Call_017_7bbe
    jr jr_017_7b9b

    call Call_017_7bb3

jr_017_7baa:
    jr nz, jr_017_7b92

    jr jr_017_7b9d

    call Call_017_7bbe
    jr jr_017_7baa

Call_017_7bb3:
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    cp [hl]
    inc hl
    ret


Call_017_7bbe:
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    ld c, a
    ld a, [de]
    cp c
    ret


    ld a, [$ca69]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $ca9c
    add hl, de
    ld a, [hl]
    inc [hl]
    inc hl
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    call Call_017_7dbe
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    jp Jump_017_76e7


    ld a, [$ca69]
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $ca9c
    add hl, de
    dec [hl]
    ld a, [hl]
    inc hl
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_017_76e7


    call Call_017_7db6
    push hl
    call Call_000_1685
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc [hl]
    pop hl
    inc hl
    inc hl
    jp Jump_017_76e7


    call Call_017_7dbe
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    pop hl
    inc hl
    inc hl
    jp Jump_017_76e7


    call Call_017_7dbe
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec [hl]
    pop hl
    inc hl
    inc hl
    jp Jump_017_76e7


    call Call_017_7dbe
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    dec bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    pop hl
    inc hl
    inc hl
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [de]
    add [hl]
    inc hl
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [de]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [de]
    adc [hl]
    inc hl
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld c, a
    ld a, [de]
    add c
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld h, b
    ld l, c
    ld a, [de]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [de]
    adc [hl]
    ld [de], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, c
    add [hl]
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    inc hl
    ld a, c
    add [hl]
    ld [hl-], a
    ld a, b
    adc [hl]
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    inc hl
    ld a, [bc]
    inc bc
    add [hl]
    ld [hl-], a
    ld a, [bc]
    adc [hl]
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [de]
    sub [hl]
    inc hl
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [de]
    sub [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [de]
    sbc [hl]
    inc hl
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld c, a
    ld a, [de]
    sub c
    ld [de], a
    jp Jump_017_76e7


    call Call_017_7db6
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld h, b
    ld l, c
    ld a, [de]
    sub [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [de]
    sbc [hl]
    ld [de], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, [hl]
    sub c
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    ld a, [bc]
    ld c, a
    ld a, [hl]
    sub c
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    inc hl
    ld a, [hl]
    sub c
    ld [hl-], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld d, $c2
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_017_7dd6
    add hl, de
    inc hl
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [hl]
    sub e
    ld [hl-], a
    ld a, [bc]
    ld e, a
    ld a, [hl]
    sbc e
    ld [hl], a
    pop hl
    jp Jump_017_76e7


    call Call_017_7dbe
    ld a, [hl+]
    ld [$c836], a
    jp Jump_017_76e7


Call_017_7db6:
    call Call_017_7dbe
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ret


Call_017_7dbe:
    ld a, [$ca6a]
    ld l, a
    ld a, [$ca6b]
    ld h, a
    ret


Call_017_7dc7:
Jump_017_7dc7:
    push hl
    push hl
    call Call_017_7dd6
    ld de, $c20c
    add hl, de
    pop de
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    ret


Call_017_7dd6:
    ld a, [$ca69]
    ld h, $00
    add a
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    ret


    dec hl
    sbc b
    ld [bc], a
    inc b
    ld [hl], e
    rst $10
    ld l, e
    sbc b
    ld [bc], a
    ld [bc], a
    add e
    rst $10
    jr nc, jr_017_7e22

    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    inc a
    ld a, $40
    ld b, d
    ld sp, $3533
    scf
    add hl, sp
    dec sp
    dec a
    ccf
    ld b, c
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_7e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
