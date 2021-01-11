; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]


    call Call_007_67a5
    ldh a, [$91]
    rla
    jp c, Jump_007_41c3
    ldh a, [hJoypad]
    and $30
    jp z, Jump_007_41c3
    jp Jump_007_407f


    jp Jump_007_41c3


Jump_007_4016:
    call Call_007_68b1
    ldh a, [$93]
    bit 4, a
    jr nz, jr_007_4022

    call Call_007_4803

jr_007_4022:
    call Call_007_6b0e
    ld hl, $c20f
    ld a, [hl]
    and a
    jr z, jr_007_402d

    dec [hl]

jr_007_402d:
    ld a, [$dd17]
    rla
    ret nc

    ld hl, $dd45
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    or e
    ret nz

    ld a, $80
    ld [$c838], a
    ld a, $27
    ld [$c830], a
    ld a, $03
    ld [$c831], a
    ld [$c835], a
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $11
    xor a
    ld [$ddb4], a
    ld hl, $dd3e
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $08
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld de, $c201
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $dd17
    res 7, [hl]
    ld hl, $ff91
    set 1, [hl]
    ret


Jump_007_407f:
    swap a
    srl a
    ld [$c811], a
    jp Jump_007_41a4


Jump_007_4089:
    ld hl, $c209
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld a, [$c811]
    and a
    jr z, jr_007_409f

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_007_409f:
    xor a
    ld [$c812], a
    bit 7, d
    jr z, jr_007_40e6

    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [$c201]
    set 0, a
    ld [$c201], a
    ld a, $01
    ld [$c812], a
    ldh a, [$93]
    set 0, a
    ldh [$ff93], a
    ld a, [$dd1a]
    and a
    jp nz, Jump_007_4172

    ld a, [$dd18]
    cp $09
    jp z, Jump_007_4172

    ld hl, $dd4f
    ld a, [hl]
    and a
    jr z, jr_007_40d8

    dec [hl]
    jp Jump_007_4172


jr_007_40d8:
    ld a, $03
    ld [hl], a
    ld a, $18
    ld [$c830], a
    ld [$c835], a
    jp Jump_007_4172


jr_007_40e6:
    ldh a, [$93]
    res 0, a
    ldh [$ff93], a
    xor a
    ld [$dd4f], a
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_4151

    ld a, [$dd1a]
    and a
    jr nz, jr_007_4151

    ld hl, $dd4c
    ld a, [hl]
    and a
    jr z, jr_007_4107

    dec [hl]
    jr jr_007_4151

jr_007_4107:
    ld a, [$dd18]
    cp $09
    jr nz, jr_007_412d

    ld [hl], $10
    ld a, [$dd4d]
    push bc
    ld c, a
    ld b, $00
    ld hl, $74d3
    add hl, bc
    pop bc
    ld a, [hl]
    ld [$c830], a
    ld [$c835], a
    ld hl, $dd4d
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    jr jr_007_4151

jr_007_412d:
    ld [hl], $0a
    ld a, [$dd4d]
    add $cb
    ld l, a
    ld a, $74
    adc $00
    ld h, a
    ld a, [hl]
    ld [$c830], a
    ld [$c835], a
    ld a, [$defe]
    and $03
    and a
    jr z, jr_007_4151

    ld hl, $dd4d
    ld a, [hl]
    inc a
    and $07
    ld [hl], a

jr_007_4151:
    ld a, [bc]
    inc bc
    add e
    ld e, a
    ld a, [bc]
    adc d
    ld d, a
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    ld a, d
    cp h
    jr z, jr_007_4167

    jr nc, jr_007_416b

    jr jr_007_416d

jr_007_4167:
    ld a, e
    cp l
    jr c, jr_007_416d

jr_007_416b:
    ld e, l
    ld d, h

jr_007_416d:
    ld hl, $c201
    res 0, [hl]

Jump_007_4172:
    ld a, [$c811]
    and a
    jr z, jr_007_4189

    ld hl, $c201
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_007_4189:
    ld hl, $c209
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c812]
    and a
    jr z, jr_007_4196

    inc bc

jr_007_4196:
    ld a, [$dd1c]
    rla
    jp c, Jump_007_41c3

    ld a, [bc]
    ld [$dd21], a
    jp Jump_007_41c3


Jump_007_41a4:
    ld hl, $71ce
    ld a, [$dd17]
    bit 6, a
    jr z, jr_007_41b1

    ld hl, $720a

jr_007_41b1:
    ld a, [$dd1c]
    and $7f
    add a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    jp Jump_007_4089


Jump_007_41c3:
    ld a, [$dd1a]
    and a
    jp z, Jump_007_4016

    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $41d7
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $e3
    ld b, c
    ld h, e
    ld b, d
    add $42
    reti


    ld b, h
    or d
    ld b, [hl]
    ld e, [hl]
    ld b, a

    ld hl, $c117
    ld a, [$c11e]
    or [hl]
    rla
    jr nc, jr_007_4207

    ld de, $0080
    call Call_007_6964
    ld a, [$dd22]
    cp $1f
    jr z, jr_007_41ff

    cp $20
    jp nz, Jump_007_4016

jr_007_41ff:
    ld a, $1e
    ld [$dd21], a
    jp Jump_007_4016


jr_007_4207:
    ld hl, $dd29
    ld a, [hl-]
    cp $40
    jr c, jr_007_4231

    jr nz, jr_007_4216

    ld a, [hl]
    cp $00
    jr c, jr_007_4231

jr_007_4216:
    ld hl, $ff91
    res 3, [hl]
    ld hl, $dd24
    ld a, $c0
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $df
    ld [hl+], a
    ld [hl], $ff
    ld a, $02
    ld [$dd1a], a
    jp Jump_007_4016


jr_007_4231:
    ld de, $c205
    ld hl, $dd25
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld de, $dd28
    ld a, [de]
    sub [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    ld [de], a
    ld de, $dd24
    ld hl, $dd26
    ld a, [de]
    sub [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    ld [de], a
    ld hl, $dd26
    ld a, [hl]
    sub $02
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    jp Jump_007_4016


    ld a, [$c117]
    rla
    jr c, jr_007_4299

    ld a, [$c11e]
    rla
    jr c, jr_007_4299

    ld de, $c205
    ld hl, $dd25
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld de, $dd28
    ld a, [de]
    sub [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    ld [de], a
    ld de, $dd24
    ld hl, $dd26
    ld a, [de]
    sub [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    ld [de], a
    ld d, a
    bit 7, d
    jp nz, Jump_007_4016

jr_007_4299:
    ld de, $0000
    call Call_007_6964
    ld a, [$dd22]
    cp $1e
    jr z, jr_007_42bb

    cp $1f
    jr z, jr_007_42af

    cp $20
    jp nz, Jump_007_4016

jr_007_42af:
    ld a, $1e
    ld [$dd21], a
    ld hl, $c203
    ld a, [hl]
    add $06
    ld [hl], a

jr_007_42bb:
    ld a, $0d
    ld [$c830], a
    ld [$c835], a
    jp Jump_007_4016


    ld hl, $c125
    ld a, [hl]
    and $c0
    jr nz, jr_007_42d7

    ld hl, $c12c
    ld a, [hl]
    and $c0
    jp z, Jump_007_43ce

jr_007_42d7:
    inc hl
    inc hl
    ld a, [hl+]
    cp $fd
    jp c, Jump_007_43ce

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and $1f
    cp $10
    jr z, jr_007_42ee

    xor a
    ld [$c21f], a

jr_007_42ee:
    xor a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld hl, $ff91
    set 7, [hl]
    inc hl
    ld a, [hl]
    and $1f
    ld [hl+], a
    inc hl
    res 1, [hl]
    ld a, $04
    ld [$dd2a], a
    ld [$dd1a], a
    ld a, $09
    ld [$dd47], a
    ld hl, $ff92
    bit 4, [hl]
    jr z, jr_007_4334

    res 4, [hl]
    ld a, $02
    ld [$dd1f], a
    ld a, [$dd22]
    cp $0b
    jr z, jr_007_435b

    ld a, [$c209]
    and $80
    rlca
    ld b, a
    ld hl, $c201
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jr jr_007_435b

jr_007_4334:
    ld a, [$dd1f]
    and a
    jr nz, jr_007_435b

    ld a, [$dd18]
    cp $00
    jp nz, Jump_007_4016

    ld a, $02
    ld [$dd21], a
    ld hl, $ff94
    bit 3, [hl]
    jp z, Jump_007_4016

    res 3, [hl]
    ld hl, $c201
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_007_4016


jr_007_435b:
    ld a, [$dd18]
    cp $09
    jr nz, jr_007_4384

    xor a
    ld [$dd18], a
    ld hl, $ff92
    res 2, [hl]
    ld hl, $737b
    ld de, $dd59
    ld c, $10

jr_007_4373:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_4373

    ld hl, $ff93
    set 6, [hl]
    ld a, [$dd59]
    ld [$dd69], a

jr_007_4384:
    ld hl, $ff94
    res 1, [hl]
    ld hl, $732a
    ld a, [$dd17]
    rla
    jr nc, jr_007_4395

    ld hl, $7332

jr_007_4395:
    ld a, [$dd1f]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$dd21], a
    ld a, [hl]
    ld [$c830], a
    ld [$c835], a
    ld a, [$dd1f]
    cp $03
    jr z, jr_007_43c0

    ldh a, [$94]
    bit 3, a
    jp z, Jump_007_4016

    ld hl, $c201
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_007_4016


jr_007_43c0:
    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ff92
    set 3, [hl]
    jp Jump_007_4016


Jump_007_43ce:
    ld de, $c205
    ld hl, $dd25
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$dd17]
    bit 6, a
    jp nz, Jump_007_4493

    ld de, $dd28
    ld a, [de]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ld hl, $7322
    ld a, [$dd17]
    rla
    jr nc, jr_007_43f8

    ld hl, $7326

jr_007_43f8:
    ld a, [$dd1f]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    cp [hl]
    jp c, Jump_007_4493

    ldh a, [$92]
    bit 5, a
    jp nz, Jump_007_448f

    ld a, [$dd1f]
    and a
    jr nz, jr_007_447c

    ld a, $0d
    ld [$c830], a
    ld [$c835], a
    ld hl, $ff91
    set 4, [hl]
    ld a, [$dd18]
    cp $0a
    jr nz, jr_007_4434

    ld a, $39
    ld [$dd21], a
    call $2b16
    ld a, $83
    ld [$dd1c], a
    jr jr_007_448f

jr_007_4434:
    cp $03
    jr nz, jr_007_445c

    ld a, [$c213]
    cp $05
    jr nz, jr_007_4448

    ld bc, hOAMDMAFunction
    ld de, $0000
    call Call_2b22

jr_007_4448:
    ld a, $83
    ld [$dd1c], a
    xor a
    ld [$dd18], a
    xor a
    ld [$c213], a
    ld a, $39
    ld [$dd21], a
    jr jr_007_448f

jr_007_445c:
    ldh a, [$94]
    rla
    jr nc, jr_007_448a

    ld a, [$c20e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, [hl]
    cp $06
    ret nz

    ld a, $02
    add l
    ld l, a
    xor a
    ld [hl], a
    jr jr_007_448a

jr_007_447c:
    ld a, [$dd1f]
    cp $01
    jr nz, jr_007_448a

    ld a, $1d
    ld [$dd21], a
    jr jr_007_448f

jr_007_448a:
    ld hl, $c202
    inc [hl]
    inc [hl]

Jump_007_448f:
jr_007_448f:
    ld hl, $dd1f
    inc [hl]

Jump_007_4493:
    ldh a, [$92]
    bit 4, a
    jp nz, Jump_007_4016

    ld hl, $0050
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_44a7

    ld hl, $0140

jr_007_44a7:
    ld de, $dd25
    ld a, [de]
    dec de
    cp h
    jr c, jr_007_44c0

    jr nz, jr_007_44b5

    ld a, [de]
    cp l
    jr c, jr_007_44c0

jr_007_44b5:
    ld de, $dd24
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_007_4016


jr_007_44c0:
    ld hl, $dd26
    ld a, [de]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ld hl, $dd26
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jp Jump_007_4016


    ldh a, [$93]
    bit 5, a
    jr z, jr_007_44ec

    xor a
    ld [$dd21], a
    xor a
    ld [$dd18], a
    xor a
    ld [$dd1a], a
    ret


jr_007_44ec:
    ld a, [$dd1f]
    add a
    ld c, a
    ld b, $00
    ld hl, $44fb
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec b
    ld b, l
    rst $10
    ld b, l
    rlca
    ld b, [hl]
    ld h, h
    ld b, [hl]
    adc [hl]
    ld b, [hl]

    ld hl, $dd2a
    dec [hl]
    jp nz, Jump_007_4016

    xor a
    ld [$dd1a], a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    ld a, [$dd18]
    add a
    ld c, a
    ld b, $00
    ld hl, $4524
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, $45
    ld a, $45
    ld a, $45
    ld h, a
    ld b, l
    ld c, e
    ld b, l
    ld a, $45
    ld a, $45
    ld a, $45
    ld h, e
    ld b, l
    ld a, b
    ld b, l
    and b
    ld b, l
    ld l, [hl]
    ld b, a
    ld d, $40

    ld e, $3f

jr_007_4540:
    ld d, $00
    ldh a, [$94]
    rla
    jr nc, jr_007_45bd

    ld d, $08
    jr jr_007_45bd

    ld hl, $ff92
    ld a, [hl]
    and $f3
    ld [hl], a
    ld e, $2f
    xor a
    ld [$dd18], a
    ld hl, $dd21
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    jr jr_007_4540

    ld e, $ff
    jr jr_007_4540

    ld e, $3f
    ld d, $02
    ld a, [$c213]
    cp $06
    jr c, jr_007_45bd

    ld e, $7f
    ld d, $00
    jr jr_007_45bd

    ld e, $3f
    ld hl, $ff92
    set 5, [hl]
    ld a, [$c213]
    cp $02
    jr c, jr_007_4595

    cp $06
    jr z, jr_007_4595

    cp $07
    jr z, jr_007_4595

    xor a
    ld [$dd1c], a
    jp Jump_007_4016


jr_007_4595:
    ld d, $04
    ldh a, [$94]
    rla
    jr nc, jr_007_45bd

    ld d, $09
    jr jr_007_45bd

    ld d, $01
    ld e, $3f
    ld a, [$c125]
    cp $52
    jr nz, jr_007_45b4

    ld hl, $ff91
    set 6, [hl]
    ld e, $7f
    jr jr_007_45bd

jr_007_45b4:
    ld a, $11
    ld [$dd21], a
    xor a
    ld [$c21c], a

jr_007_45bd:
    ld a, d
    ld [$dd1c], a
    ldh a, [$93]
    bit 5, a
    jr z, jr_007_45ce

    xor a
    ld [$dd21], a
    jp Jump_007_4016


jr_007_45ce:
    ld hl, $ff91
    ld a, [hl]
    and e
    ld [hl], a
    jp Jump_007_4016


    ldh a, [$91]
    bit 2, a
    jr nz, jr_007_461e

    ld hl, $733a
    ld a, [$dd17]
    rla
    jr nc, jr_007_45e9

    ld hl, $733e

jr_007_45e9:
    ldh a, [$94]
    and $08
    rrca
    rrca
    rrca
    ld b, a
    ld a, [$c201]
    and $01
    xor b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld de, $c209
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jp Jump_007_4016


    ldh a, [$91]
    bit 2, a
    jp z, Jump_007_4016

    ld hl, $c21b
    ld a, [hl]
    cp $02
    jr z, jr_007_461e

    inc [hl]
    ld hl, $dd21
    inc [hl]
    jp Jump_007_4016


Jump_007_461e:
jr_007_461e:
    ld b, $00
    ldh a, [$94]
    rla
    jr nc, jr_007_4627

    ld b, $08

jr_007_4627:
    ld a, b
    ld [$dd1c], a
    xor a
    ld [$dd1a], a
    ld [$c213], a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    ld hl, $ff94
    res 3, [hl]
    xor a
    ld [$dd21], a
    ld a, [$dd18]
    cp $0b
    jr nz, jr_007_464c

    call Call_007_64be
    jr jr_007_4653

jr_007_464c:
    cp $0c
    jr nz, jr_007_4653

    call Call_007_6555

jr_007_4653:
    ldh a, [$93]
    bit 5, a
    jp nz, Jump_007_4016

    ld hl, $ff91
    ld a, [hl]
    and $2f
    ld [hl], a
    jp Jump_007_4016


    ldh a, [$91]
    bit 2, a
    jp z, Jump_007_4016

    xor a
    ld [$dd1a], a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $dd2b
    ld [hl], $c0
    inc hl
    ld [hl], $0f
    xor a
    ld [$c213], a
    ld a, $0c
    ldh [$ff90], a
    ld a, $33
    ld [$c836], a
    ret


    ld hl, $ff91
    res 3, [hl]
    bit 2, [hl]
    jp z, Jump_007_4016

    res 2, [hl]
    ld hl, $c21b
    bit 7, [hl]
    jr z, jr_007_46ab

    res 7, [hl]
    dec [hl]
    ld hl, $dd21
    inc [hl]
    jp Jump_007_4016


jr_007_46ab:
    dec [hl]
    jp z, Jump_007_461e

    jp Jump_007_4016


    ld hl, $c125
    ld a, [hl]
    and $c0
    jr nz, jr_007_46c3

    ld hl, $c12c
    ld a, [hl]
    and $c0
    jp z, Jump_007_4702

jr_007_46c3:
    xor a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld hl, $ff93
    res 4, [hl]
    dec hl
    ld a, [hl]
    and $1f
    ld [hl-], a
    ld a, [hl]
    and $cd
    or $c0
    ld [hl], a
    ld a, $09
    ld [$dd47], a
    ld a, $04
    ld [$dd1a], a
    ld a, $02
    ld [$dd1f], a
    ld a, $18
    ld [$dd21], a
    xor a
    ld [$c21b], a
    ld [$dd18], a
    ld [$c213], a
    ld a, $35
    ld [$c830], a
    ld [$c835], a
    jp Jump_007_4016


Jump_007_4702:
    ld de, $c205
    ld hl, $dd25
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_471f

    ld de, $dd28
    ld a, [de]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a

jr_007_471f:
    ld hl, $0050
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_472c

    ld hl, $0140

jr_007_472c:
    ld de, $dd25
    ld a, [de]
    dec de
    cp h
    jr c, jr_007_4745

    jr nz, jr_007_473a

    ld a, [de]
    cp l
    jr c, jr_007_4745

jr_007_473a:
    ld de, $dd24
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    jp Jump_007_4016


jr_007_4745:
    ld hl, $dd26
    ld a, [de]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ld hl, $dd26
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jp Jump_007_4016


    ld hl, $dd4b
    dec [hl]
    ret nz

    ld a, $05
    ld [$dd1a], a
    ld hl, $ff91
    res 1, [hl]
    ret


    ld a, $03
    ld [$c213], a
    ld a, $31
    ld [$dd21], a
    ld hl, $ff91
    res 2, [hl]
    ld hl, $ff92
    res 3, [hl]
    xor a
    ld [$dd1a], a
    jp Jump_007_4016


    ld hl, $ff92
    res 0, [hl]
    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld bc, $0004
    add hl, bc
    ld bc, $c20a
    ld a, [bc]
    add e
    ld [hl-], a
    dec bc
    ld a, [bc]
    adc d
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    ld a, [$c201]
    and $01
    rrca
    ld b, a
    ld a, [hl]
    and $7f
    or b
    ld [hl], a
    ld a, $fb
    add l
    ld l, a
    ld a, [hl-]
    and $7f
    ld b, a
    res 5, [hl]
    ld a, $07
    add l
    ld e, a
    ld d, h
    ld l, b
    ld h, $00
    ld bc, $75f7
    add hl, bc
    ld a, [hl]
    and $3f
    ld l, a
    ld h, $00
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    ld bc, $7657
    add hl, bc
    ld a, [hl]
    ld [de], a
    ld a, $02
    add e
    ld e, a
    xor a
    ld [de], a
    ld a, $eb
    add e
    ld e, a
    ld a, d
    sub $c2
    srl a
    rr e
    swap a
    ld b, a
    ld a, e
    and $f0
    swap a
    or b
    ld b, a
    call Call_007_6f3e
    call Call_007_6ea7
    ldh a, [$8d]
    jp Bankswitch0fce


Call_007_4803:
    ldh a, [$91]
    rra
    ret c

    ldh a, [$94]
    rla
    call c, Call_007_6576
    ld a, [$dd18]
    add a
    ld c, a
    ld b, $00
    ld hl, $481c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], $48
    add a
    ld c, [hl]
    ld a, b
    ld d, c
    ld l, a
    ld d, [hl]
    jp c, $ff58

    ld e, c
    ld h, l
    ld d, [hl]
    dec c
    ld l, e
    ld l, [hl]
    ld e, l
    and l
    ld e, [hl]
    ld a, a
    ld h, d
    ld d, c
    ld h, h
    rst $18
    ld h, h

    ldh a, [$94]
    bit 2, a
    jr z, jr_007_4851

    ld a, [$dd1a]
    and a
    ret nz

    ld hl, $ff91
    set 7, [hl]
    ld hl, $ff94
    res 2, [hl]
    ld a, $07
    ld [$dd18], a
    ret


jr_007_4851:
    ldh a, [$93]
    bit 5, a
    ret nz

    call Call_007_66ce
    ldh a, [$94]
    bit 6, a
    ret nz

    ld a, [$dd17]
    rla
    jr c, jr_007_487d

    ld a, [$dd1a]
    and a
    jr z, jr_007_487d

    cp $04
    jr z, jr_007_487d

    ld a, [$ddb1]
    and a
    jr nz, jr_007_487d

    ld de, $c117
    ld a, [de]
    and $1f
    jp Jump_007_4d6d


Jump_007_487d:
jr_007_487d:
    ldh a, [$94]
    bit 4, a
    jr z, jr_007_4889

    ld hl, $ff94
    res 4, [hl]
    ret


jr_007_4889:
    ldh a, [$91]
    bit 3, a
    jp nz, Jump_007_48b5

    ldh a, [$8b]
    rra
    jp c, Jump_007_48b5

    ldh a, [$8b]
    bit 1, a
    jp nz, Jump_007_492c

Jump_007_489d:
    ldh a, [hJoypad]
    bit 1, a
    jp nz, Jump_007_4b5d

Jump_007_48a4:
    ldh a, [hJoypad]
    rla
    jp c, Jump_007_4c07

    rla
    jp c, Jump_007_4cb6

    ld a, [$dd69]
    ld [$dd59], a
    ret


Jump_007_48b5:
    ldh a, [$94]
    rla
    ret c

    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_490c

    ld a, [$dd1a]
    and a
    ret nz

    ldh a, [$92]
    bit 2, a
    ret nz

    ld hl, $ff91
    res 3, [hl]
    ld a, [$dd69]
    ld [$dd59], a
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_48dd

    inc [hl]

jr_007_48dd:
    ldh a, [$93]
    rra
    jr nc, jr_007_4902

    ld a, [$dd17]
    rla
    jr c, jr_007_4902

    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ff92
    set 5, [hl]
    ld hl, $ff94
    set 3, [hl]
    ld a, $33
    ld [$dd21], a
    ld a, $18
    jp Jump_007_69af


jr_007_4902:
    ld a, $03
    ld [$dd21], a
    ld a, $01
    jp Jump_007_69af


jr_007_490c:
    ld a, [$dd1a]
    cp $04
    ret z

    ld a, [$dd69]
    ld [$dd59], a
    ld hl, $ff91
    res 3, [hl]
    ld a, $0f
    ld [$dd21], a
    ld a, $0e
    ld [$dd22], a
    ld a, $03
    jp Jump_007_69af


Jump_007_492c:
    ld a, [$dd1a]
    cp $04
    jr c, jr_007_4938

    ld a, [$dd1f]
    and a
    ret nz

jr_007_4938:
    ldh a, [$94]
    rla
    ret c

    ld a, [$dd17]
    rla
    jp c, Jump_007_489d

    ld a, [$dd1b]
    and a
    jp nz, Jump_007_489d

    ld hl, $c12c
    ld a, [hl]
    and $1f
    cp $02
    jr z, jr_007_4959

    cp $03
    jp nz, Jump_007_4a0e

jr_007_4959:
    ld bc, $0006
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20e
    add hl, bc
    push hl
    ld l, [hl]
    ld h, $00
    ld bc, $75f7
    add hl, bc
    ld a, [hl]
    pop hl
    rla
    jr c, jr_007_49a3

    rla
    ret nc

    ld hl, $ff91
    set 7, [hl]
    inc hl
    res 7, [hl]
    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$dd18], a
    ld a, $23
    ld [$dd21], a
    ld a, $20
    ld [$c214], a
    ld a, $08
    ld [$c213], a
    xor a
    ld [$dd1a], a
    ret


jr_007_49a3:
    ld a, [hl]
    cp $1d
    jr nz, jr_007_49fa

    push hl
    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $03
    jr c, jr_007_49f9

    ld a, $07
    add l
    ld l, a
    xor a
    ld [hl-], a
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, $ff
    add l
    ld l, a
    ld a, [hl]
    add $40
    ld [$c1f1], a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    xor a
    ld [hl+], a
    ld a, [hl]
    ld l, e
    ld h, d
    inc hl
    rra
    jr c, jr_007_49de

    ld de, $fff4
    add hl, de

jr_007_49de:
    ld de, $0074
    ld c, $03

jr_007_49e3:
    ld b, $03

jr_007_49e5:
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_007_49ee

    xor a
    ld [hl-], a
    ld [hl+], a

jr_007_49ee:
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_007_49e5

    add hl, de
    dec c
    jr nz, jr_007_49e3

jr_007_49f9:
    pop hl

jr_007_49fa:
    ld a, $01
    add l
    ld l, a
    call Call_007_4e5a
    dec hl
    ld a, [hl]
    ld [hl], $3f
    dec hl
    ld [hl], a
    ld a, $f6
    add l
    ld l, a
    jp Jump_007_4b0a


Jump_007_4a0e:
    cp $07
    jr nz, jr_007_4a4d

    ld bc, $0006
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20f
    add hl, bc
    call Call_007_4e5a
    ld a, $0b
    add l
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_007_4a4d

    ld [hl], $38
    ld a, $f8
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, $f0
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $3f
    ld [hl-], a
    ld a, $21
    ld [hl], a
    ld a, $f6
    add l
    ld l, a
    jp Jump_007_4b0a


jr_007_4a4d:
    ld hl, $c125
    ld a, [hl+]
    and $1f
    cp $07
    jp nz, Jump_007_489d

    ld a, [hl]
    sub $00
    add a
    ld c, a
    ld b, $00
    ld hl, $74a3
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $c129
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    push hl
    ld e, l
    ld d, h
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
    ld bc, $0080
    add hl, bc
    ld [hl-], a
    dec a
    ld [hl-], a
    dec hl
    dec hl
    inc a
    ld [hl-], a
    dec a
    ld [hl], a
    call Call_007_713b
    ld hl, $c7f7
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9db]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    ld de, $c7f7
    call Call_000_1685
    call $1080
    inc [hl]
    inc hl
    ld a, $ce
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $0d
    add l
    ld l, a
    pop de
    push hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, $40
    add b
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $03
    add l
    ld l, a
    ld [hl], $38
    ld a, $f8
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    ld a, $02
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld a, $ee
    add l
    ld l, a
    ld a, $81
    ld [hl], a
    ld e, b
    ld d, $00
    ld hl, $c0a6
    add hl, de
    ld [hl], $04
    call Call_007_6f04
    ld hl, $ff91
    set 4, [hl]
    pop hl
    dec hl
    ld a, $3f
    ld [hl-], a
    ld a, $21
    ld [hl], a
    ld a, $12
    add l
    ld l, a
    ld a, $10
    ld [hl], a
    ld a, $e4
    add l
    ld l, a

Jump_007_4b0a:
    ld de, $c215
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, [$c203]
    add $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $c207
    ld a, [de]
    dec a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    ld [hl], $00
    ld hl, $ff91
    ld a, [hl]
    or $d2
    ld [hl+], a
    ld a, [hl]
    or $c8
    ld [hl], a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$dd18], a
    ld a, $23
    ld [$dd21], a
    ld a, $08
    ld [$c214], a
    xor a
    ld [$dd1a], a
    ld [$c213], a
    ld a, $82
    ld [$dd1c], a
    ret


Jump_007_4b5d:
    ldh a, [$94]
    rla
    ret c

    ld a, [$dd17]
    rla
    jp c, Jump_007_48a4

    ld a, [$dd18]
    cp $00
    jp nz, Jump_007_48a4

    ld a, [$dd1a]
    and a
    jp nz, Jump_007_48a4

    ld hl, $c133
    ld a, [$c201]
    rra
    jr c, jr_007_4b83

    ld hl, $c141

jr_007_4b83:
    ld b, $01
    ld a, [hl+]
    cp $18
    jr z, jr_007_4b95

    cp $15
    jp nz, Jump_007_48a4

    bit 7, [hl]
    jp nz, Jump_007_48a4

    dec b

jr_007_4b95:
    ld a, b
    ld [$c213], a
    ld a, [hl]
    and $0c
    rrca
    rrca
    ld [$c20c], a
    ld a, [hl+]
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    and $03
    add a
    ld c, a
    ld b, $00
    ld hl, $74a3
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld bc, $c215
    ld a, h
    ld [bc], a
    dec bc
    ld a, l
    ld [bc], a
    sub $6d
    and $7c
    add a
    ld e, a
    ld a, [$c20c]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c201]
    and $01
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $74d9
    add hl, bc
    ld a, [hl+]
    add e
    ld [$c207], a
    ld de, $c201
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ff91
    ld a, [hl]
    or $d0
    ld [hl+], a
    set 3, [hl]
    ld a, $0c
    ld [$c20d], a
    ld a, $ff
    ld [$dd21], a
    ld a, $04
    ld [$dd18], a
    ret


Jump_007_4c07:
    ld a, [$dd17]
    rla
    jr nc, jr_007_4c14

    ld a, [$dd1a]
    and a
    jr z, jr_007_4c59

    ret


jr_007_4c14:
    ld a, [$dd69]
    ld [$dd59], a
    ld de, $c125
    ld a, [$dd1a]
    and a
    jp nz, Jump_007_4d45

    ld a, [de]
    cp $0e
    jr nz, jr_007_4c3b

    ld [$dd2d], a
    ld a, $04
    ld [$dd21], a
    xor a
    ld [$dd1a], a
    ld hl, $7248
    jp Jump_007_4cef


jr_007_4c3b:
    ld a, [de]
    and $1f
    cp $09
    jr z, jr_007_4c59

    ld a, [de]
    rla
    jr c, jr_007_4c59

    ld hl, $c129
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr z, jr_007_4c8d

    cp $0e
    jr z, jr_007_4c8d

jr_007_4c59:
    ld a, $08
    ld [$dd18], a
    ld a, $10
    ld [$dd21], a
    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl], a
    ld a, [$dd17]
    and $80
    rlca
    add a
    add a
    add a
    add a
    ld l, a
    ld h, $00
    ld bc, $739b
    add hl, bc
    ld de, $dd59
    ld c, $10

jr_007_4c80:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_4c80

    ld a, [$dd59]
    ld [$dd69], a
    ret


jr_007_4c8d:
    ld a, $17
    ld [$dd2d], a
    ld a, $ff
    ld [$dd21], a
    ld b, $0a
    ld hl, $c202
    ld a, $0c
    ld [hl-], a
    ld [hl], b
    ld a, $01
    ld [$dd2e], a
    ld hl, $ff91
    set 1, [hl]
    inc hl
    inc hl
    set 7, [hl]
    ld a, $01
    ld hl, $7248
    jp Jump_007_4cef


Jump_007_4cb6:
    ld a, [$dd17]
    rla
    ret c

    ld de, $c117
    ld a, [$dd1a]
    and a
    jp nz, Jump_007_4d45

    ld a, [de]
    cp $0e
    jr nz, jr_007_4cd1

    ld hl, $ff92
    res 5, [hl]
    jr jr_007_4ce0

jr_007_4cd1:
    ld a, [$dd59]
    cp $0e
    jr nz, jr_007_4d45

    ld de, $c117
    ld a, [de]
    cp $08
    jr nz, jr_007_4d45

jr_007_4ce0:
    ld a, $04
    ld [$dd21], a
    ld hl, $7246
    xor a
    ld [$dd1a], a
    ld [$dd2d], a

Jump_007_4cef:
    ld [$dd1d], a
    ld a, $01
    ld [$dd18], a
    inc de
    inc de
    inc de
    ld a, [$dd68]
    ld b, a
    ld a, [$dd60]
    add b
    ld b, a
    ld a, $10
    sub b
    ld b, a
    ld a, [de]
    ld c, a
    ld a, [$c133]
    rla
    jr nc, jr_007_4d16

    ld a, [$c136]
    cpl
    inc a
    add c
    ld c, a

jr_007_4d16:
    ld a, [$c141]
    rla
    jr nc, jr_007_4d23

    ld a, [$c144]
    cpl
    inc a
    add c
    ld c, a

jr_007_4d23:
    bit 7, c
    jr z, jr_007_4d34

    inc hl
    ld a, [$dd66]
    ld b, a
    ld a, [$dd5e]
    sub b
    cpl
    inc a
    ld b, a
    dec b

jr_007_4d34:
    ld a, c
    add b
    add [hl]
    ld hl, $c207
    add [hl]
    ld [hl], a
    ld a, [$dd69]
    ld [$dd59], a
    jp Jump_007_69f7


Jump_007_4d45:
jr_007_4d45:
    ld a, [$dd59]
    cp $0e
    jr z, jr_007_4d62

    ld de, $c117
    ld a, [de]
    and $1f
    cp $0a
    jr nz, jr_007_4d62

    ldh a, [$94]
    rla
    jr c, jr_007_4d62

    ld a, [$c20f]
    and a
    jp z, Jump_007_6a28

jr_007_4d62:
    ld a, [$dd1a]
    and a
    ret nz

    ld a, $0e
    ld [$dd59], a
    ret


Jump_007_4d6d:
    ld de, $c117
    ld a, [de]
    cp $0c
    jr nz, jr_007_4d98

    ldh a, [$94]
    rla
    jp c, Jump_007_487d

    inc de
    inc de
    inc de
    ld a, [$c201]
    rra
    jr nc, jr_007_4d8e

    ld b, $04
    ld a, [de]
    rla
    jr nc, jr_007_4dda

    ld b, $09
    jr jr_007_4dda

jr_007_4d8e:
    ld b, $f8
    ld a, [de]
    rla
    jr nc, jr_007_4dda

    ld b, $fd
    jr jr_007_4dda

jr_007_4d98:
    ld de, $c141
    ld a, [$c201]
    rra
    jr nc, jr_007_4da4

    ld de, $c133

jr_007_4da4:
    ld a, [de]
    and $1f
    cp $0c
    jr z, jr_007_4dbf

    ld hl, $0007
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    cp $0c
    jp nz, Jump_007_487d

    ld hl, $0006
    add hl, de
    ld a, [hl]
    ld [$c0c6], a

jr_007_4dbf:
    inc de
    inc de
    inc de
    ld a, [$c201]
    rra
    jr nc, jr_007_4dd2

    ld b, $01
    ld a, [de]
    rla
    jr nc, jr_007_4dda

    ld b, $00
    jr jr_007_4dda

jr_007_4dd2:
    ld b, $ff
    ld a, [de]
    rla
    jr nc, jr_007_4dda

    ld b, $ff

jr_007_4dda:
    ld a, [de]
    add b
    ld hl, $dd53
    add [hl]
    ld [$c207], a
    dec de
    dec de
    ld hl, $c203
    dec [hl]
    ld a, [$c0c6]
    and a
    jr nz, jr_007_4dfb

    ld a, [de]
    cp $02
    jr c, jr_007_4dfb

    ld hl, $c203
    ld a, [hl]
    sub $03
    ld [hl], a

jr_007_4dfb:
    ld hl, $ff91
    ld a, [hl]
    or $d2
    ld [hl+], a
    ld a, [hl]
    or $c8
    ld [hl+], a
    inc hl
    ld a, [hl]
    and $f5
    ld [hl], a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld [$dd1a], a
    ld [$dd1d], a
    ld [$dd48], a
    ld [$c21f], a
    ld a, $02
    ld [$dd18], a
    ld a, $13
    ld [$dd21], a
    ld a, $08
    ld [$dd20], a
    ld hl, $73db
    ld d, $00
    ld a, [$c201]
    rra
    jr nc, jr_007_4e44

    ld hl, $73cb
    inc d

jr_007_4e44:
    ld de, $dd59
    ld c, $10

jr_007_4e49:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_4e49

    ld a, [$dd59]
    ld [$dd69], a
    ld hl, $c20c
    ld [hl], d
    ret


Call_007_4e5a:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld bc, $007b
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld bc, $007b
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


    ld a, [$dd1d]
    and a
    jr nz, jr_007_4ebf

    ldh a, [$8b]
    rra
    jr c, jr_007_4ea4

    ldh a, [hJoypad]
    ld b, a
    and $c0
    jr nz, jr_007_4ebf

    ld a, b
    and $30
    jr z, jr_007_4ebf

    ld hl, $dd2f
    dec [hl]
    jr nz, jr_007_4ec4

Jump_007_4ea4:
jr_007_4ea4:
    xor a
    ld [$dd18], a
    xor a
    ld [$dd1d], a
    ld hl, $ff91
    ld a, [hl]
    and $4d
    ld [hl+], a
    ld a, [hl]
    and $f7
    ld [hl+], a
    res 3, [hl]
    ld de, $0080
    jp Jump_007_695f


jr_007_4ebf:
    ld a, $0a
    ld [$dd2f], a

jr_007_4ec4:
    ld a, [$dd1d]
    add a
    ld c, a
    ld b, $00
    ld hl, $4ed3
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $10
    ld c, [hl]
    or d
    ld d, b

    ld a, $01
    ld [$dd2e], a
    ld de, $c125
    ld a, [de]
    and $c0
    jr z, jr_007_4eea

    ldh a, [$93]
    rla
    jp nc, Jump_007_509c

jr_007_4eea:
    ldh a, [hJoypad]
    bit 7, a
    jr z, jr_007_4f17

    ld a, [de]
    and a
    jr nz, jr_007_4ef6

    jr jr_007_4f0d

jr_007_4ef6:
    ld a, [de]
    cp $08
    jr z, jr_007_4eff

    cp $0e
    jr nz, jr_007_4f07

jr_007_4eff:
    ld hl, $ff93
    res 7, [hl]
    jp Jump_007_4fdb


jr_007_4f07:
    ldh a, [$93]
    rla
    jp c, Jump_007_4fdb

jr_007_4f0d:
    ld hl, hJoypad
    ld a, [hl]
    and $3f
    ld [hl], a
    jp Jump_007_4fdb


jr_007_4f17:
    bit 6, a
    jr z, jr_007_4f2f

    xor a
    ld [$dd2e], a
    ld hl, $ff93
    set 7, [hl]
    ld hl, $c117
    ld a, [hl]
    cp $0a
    jr nz, jr_007_4f2f

    jp Jump_007_6a28


jr_007_4f2f:
    ld a, [hl+]
    rla
    jr c, jr_007_4f35

    jr jr_007_4f3e

jr_007_4f35:
    inc hl
    ld a, [$dd51]
    add [hl]
    ld [$c203], a
    ret


jr_007_4f3e:
    ld a, [$c211]
    and $40
    jr z, jr_007_4fa4

    ld a, [$c125]
    and $c0
    jr z, jr_007_4f51

    ld hl, $ff93
    set 7, [hl]

jr_007_4f51:
    ld hl, $c117
    ld a, [hl]
    and $1f
    cp $09
    jp z, Jump_007_4fd4

    ld a, [hl]
    and $c0
    jr z, jr_007_4f79

    rla
    jr c, jr_007_4fdb

    inc hl
    inc hl
    ld a, [hl]
    cp $02
    jr nz, jr_007_4fdb

    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $40
    jr z, jr_007_4fdb

jr_007_4f79:
    ld a, [$dd2e]
    and a
    jr nz, jr_007_4fdb

    ld a, $01
    ld [$dd1d], a
    xor a
    ld [$dd2e], a
    ld [$dd2d], a
    ld hl, $ff91
    ld hl, $c204
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    set 1, [hl]
    ld a, $ff
    ld [$dd21], a
    ld a, $0a
    ld hl, $c201
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_007_4fa4:
    ld hl, $c125
    ld a, [hl+]
    cp $08
    jr z, jr_007_4fb0

    cp $0e
    jr nz, jr_007_4fdb

jr_007_4fb0:
    inc hl
    ld a, [hl-]
    cp $ff
    jr c, jr_007_4fdb

    ld a, [hl-]
    cp $10
    jr nz, jr_007_4fc0

    ld a, [hl]
    cp $08
    jr z, jr_007_4fd4

jr_007_4fc0:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    cp $08
    jr z, jr_007_4fdb

    cp $0e
    jr z, jr_007_4fdb

Jump_007_4fd4:
jr_007_4fd4:
    ld hl, hJoypad
    ld a, [hl]
    and $3f
    ld [hl], a

Jump_007_4fdb:
jr_007_4fdb:
    ld hl, $71a1
    call Call_007_6736
    ld hl, $c129
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, hOAMDMAFunction
    ld c, $03

jr_007_4fec:
    ld a, [hl]
    and $40
    jr nz, jr_007_500f

    ld a, [hl]
    cp $0e
    jr z, jr_007_500b

    cp $08
    jr nz, jr_007_5000

    inc hl
    ld a, [hl-]
    cp $10
    jr nz, jr_007_500b

jr_007_5000:
    ld hl, $ff93
    set 3, [hl]
    xor a
    ld [$c211], a
    jr jr_007_5019

jr_007_500b:
    add hl, de
    dec c
    jr nz, jr_007_4fec

jr_007_500f:
    ld hl, $ff93
    res 3, [hl]
    ld a, $42
    ld [$c211], a

jr_007_5019:
    ld hl, $c211
    ld a, [$c117]
    cp $08
    jr z, jr_007_5032

    cp $0e
    jr z, jr_007_5032

    and $c0
    jr nz, jr_007_5032

    ld a, [hl]
    and $c0
    jr nz, jr_007_5055

    jr jr_007_5055

jr_007_5032:
    ld a, [$c117]
    cp $08
    jr nz, jr_007_5042

    ld a, [$c118]
    cp $18
    jr z, jr_007_5048

    jr jr_007_5046

jr_007_5042:
    cp $0e
    jr nz, jr_007_5048

jr_007_5046:
    jr jr_007_504e

jr_007_5048:
    ldh a, [$93]
    bit 3, a
    jr nz, jr_007_5055

jr_007_504e:
    ld a, [$c117]
    cp [hl]
    jr z, jr_007_5055

    ld [hl], a

jr_007_5055:
    inc hl
    ld a, [$c125]
    cp [hl]
    jr z, jr_007_505d

    ld [hl], a

jr_007_505d:
    ld a, [$c125]
    cp $08
    ret z

    cp $0e
    ret z

    and $c0
    jr z, jr_007_5078

    ld hl, $c129
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    ret z

jr_007_5078:
    ld a, [$c117]
    and a
    jp Jump_007_4ea4


    ld hl, $c11b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $08
    ret z

    cp $0e
    ret z

    and $c0
    jp Jump_007_4ea4


    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    ret z

    jp Jump_007_4ea4


Jump_007_509c:
    xor a
    ld [$dd18], a
    ld [$dd21], a
    ld [$dd1d], a
    ld hl, $ff91
    ld a, [hl]
    and $2d
    ld [hl+], a
    ld a, [hl]
    and $37
    ld [hl], a
    ret


    ld a, [$dd2e]
    and a
    jr z, jr_007_5111

    ldh a, [$92]
    bit 1, a
    jr nz, jr_007_50d7

    ld a, [$c12c]
    rla
    jr c, jr_007_50ca

    ldh a, [hJoypad]
    bit 7, a
    jr nz, jr_007_50d7

jr_007_50ca:
    xor a
    ld [$dd2e], a
    ld [$c204], a
    ld hl, $dd2d
    set 0, [hl]
    ret


jr_007_50d7:
    ld hl, $c205
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld a, [$dd2d]
    rra
    jr c, jr_007_50ea

    ld hl, $c202
    dec [hl]

jr_007_50ea:
    ld hl, $dd2d
    ld a, [hl]
    and a
    jr z, jr_007_50f3

    dec [hl]
    ret


jr_007_50f3:
    ld hl, $c203
    inc [hl]
    ld hl, $ff91
    res 1, [hl]
    inc hl
    res 1, [hl]
    inc hl
    set 7, [hl]
    ld a, $ff
    ld [$dd21], a
    ld a, $08
    ld [$c201], a
    xor a
    ld [$dd1d], a
    ret


jr_007_5111:
    ld hl, $c205
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld a, [$c117]
    rla
    jr c, jr_007_5126

    ld a, [$c11e]
    rla
    jr nc, jr_007_5146

jr_007_5126:
    ld a, [$dd2d]
    and a
    jr z, jr_007_50f3

    dec a
    jr z, jr_007_50f3

    ld [$dd2d], a
    xor a
    ld [$c204], a
    ld hl, $dd2d
    set 0, [hl]
    ld hl, $ff92
    set 1, [hl]
    ld a, $01
    ld [$dd2e], a
    ret


jr_007_5146:
    ld a, [$dd2d]
    rra
    jr c, jr_007_5150

    ld hl, $c202
    inc [hl]

jr_007_5150:
    ld hl, $dd2d
    ld a, [hl]
    cp $18
    jr z, jr_007_515a

    inc [hl]
    ret


jr_007_515a:
    ld hl, $ff91
    ld a, [hl]
    and $2d
    ld [hl+], a
    ld a, [hl]
    and $37
    ld [hl], a
    xor a
    ld [$dd1d], a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$dd18], a
    ld a, $05
    ld [$dd21], a
    ret


Jump_007_5178:
    ld a, [$dd18]
    cp $06
    jr z, jr_007_5190

    ldh a, [$93]
    bit 5, a
    jr z, jr_007_5190

    ld hl, $ff94
    set 2, [hl]
    ld a, $06
    ld [$dd18], a
    ret


jr_007_5190:
    ldh a, [$94]
    rla
    jr c, jr_007_519a

    ldh a, [$8b]
    rra
    jr nc, jr_007_51d3

Jump_007_519a:
jr_007_519a:
    xor a
    ld [$dd18], a
    xor a
    ld [$dd1d], a
    ld [$c0c6], a
    ld a, $10
    ld [$ddb1], a
    ld hl, $ff91
    ld a, [hl]
    and $4d
    ld [hl+], a
    res 5, [hl]
    res 3, [hl]
    ld hl, $737b
    ld de, $dd59
    ld c, $10

jr_007_51bd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_51bd

    ld a, [$dd59]
    ld [$dd69], a
    ld a, $03
    ld [$dd21], a
    ld a, $1a
    jp Jump_007_69af


jr_007_51d3:
    ld a, [$c0c6]
    and a
    jr z, jr_007_51f1

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c208
    add hl, bc
    ld a, [hl+]
    inc hl
    add [hl]
    ld de, $c208
    ld [de], a
    dec de
    dec hl
    ld a, [de]
    adc [hl]
    ld [de], a

jr_007_51f1:
    ld a, [$dd1d]
    cp $04
    jr z, jr_007_520c

    cp $01
    jr z, jr_007_520c

    ld hl, $c141
    ld a, [$c201]
    rra
    jr nc, jr_007_5208

    ld hl, $c133

jr_007_5208:
    ld a, [hl]
    rla
    jr c, jr_007_519a

jr_007_520c:
    ld a, [$dd1d]
    add a
    ld c, a
    ld b, $00
    ld hl, $521b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec h
    ld d, d
    dec b
    ld d, h
    inc e
    ld d, l
    cp e
    ld d, l
    cpl
    ld d, [hl]
    ld hl, $71b0
    call Call_007_6736
    ld hl, $ff94
    res 0, [hl]
    ld de, $c13a
    ld hl, $c141
    ld b, $20
    ld a, [$c201]
    rra
    jr c, jr_007_5246

    ld de, $c148
    ld hl, $c133
    ld b, $10

jr_007_5246:
    ld a, [hl]
    rla
    jr nc, jr_007_5279

    ld a, [$c20c]
    cp $02
    jr nz, jr_007_5272

    push hl
    push de
    ld hl, $73db
    ld a, [$c201]
    rra
    jr nc, jr_007_525f

    ld hl, $73cb

jr_007_525f:
    ld de, $dd59
    ld c, $10

jr_007_5264:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5264

    pop de
    pop hl
    xor a
    ld [$c20c], a
    jr jr_007_5279

jr_007_5272:
    ld a, b
    ldh [hJoypad], a
    xor a
    ld [$dd20], a

jr_007_5279:
    ldh a, [hJoypad]
    rla
    jr nc, jr_007_52c4

    ld a, [$c125]
    and $c0
    jr z, jr_007_52ac

    xor a
    ld [$dd18], a
    ld [$dd21], a
    ld [$dd1d], a
    ld [$dd20], a
    ld [$dd1c], a
    ld hl, $ff91
    ld a, [hl]
    and $3d
    ld [hl+], a
    ld a, [hl]
    and $37
    ld [hl], a
    ld hl, $737b
    ld de, $dd59
    ld c, $10
    call $1057
    ret


jr_007_52ac:
    ld a, [de]
    cp $0c
    jr z, jr_007_52c4

    ld hl, $fff9
    add hl, de
    ld a, [hl]
    and $1f
    cp $0c
    jr z, jr_007_52c4

    ld a, [hl]
    and $c0
    jr nz, jr_007_52c4

    jp Jump_007_519a


Jump_007_52c4:
jr_007_52c4:
    ld de, $c201
    ld hl, $dd20
    ldh a, [hJoypad]
    and $c0
    jr z, jr_007_52d4

    ld [hl], $02
    jr jr_007_52ec

jr_007_52d4:
    ld a, [hl]
    and a
    jr nz, jr_007_52ec

    ld [hl], $08
    ld bc, $c133
    ldh a, [hJoypad]
    bit 5, a
    jr nz, jr_007_52ee

    ld bc, $c141
    bit 4, a
    jr nz, jr_007_5305

    ld [hl], $01

jr_007_52ec:
    dec [hl]
    ret


jr_007_52ee:
    ld a, [de]
    rra
    jr nc, jr_007_534e

    ld l, c
    ld h, b
    ld bc, $fffc
    ld a, [hl]
    cp $0c
    jr z, jr_007_531a

    ld bc, $0007
    add hl, bc
    ld bc, $fffa
    jr jr_007_531a

jr_007_5305:
    ld a, [de]
    rra
    jr c, jr_007_534e

    ld l, c
    ld h, b
    ld bc, $0004
    ld a, [hl]
    cp $0c
    jr z, jr_007_531a

    ld bc, $0007
    add hl, bc
    ld bc, $0002

jr_007_531a:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    rla
    ret c

    ld a, $06
    ld [$ddaf], a
    ld a, $04
    ld [$dd1d], a
    ld a, [de]
    xor $01
    rra
    jr c, jr_007_5341

    xor a
    ld [$c20c], a
    ld a, $fe
    ld [$ddb0], a
    jp Jump_007_5404


jr_007_5341:
    ld a, $01
    ld [$c20c], a
    ld a, $02
    ld [$ddb0], a
    jp Jump_007_5404


jr_007_534e:
    ld d, $01
    ldh a, [hJoypad]
    bit 5, a
    jr nz, jr_007_5358

    ld d, $fe

jr_007_5358:
    ld a, [$c20c]
    cp $02
    jp nz, Jump_007_53e7

    ld a, [bc]
    cp $0c
    jr nz, jr_007_536e

    inc bc
    inc bc
    inc bc
    ld a, [bc]
    cp d
    jr z, jr_007_53b1

    jr jr_007_537e

jr_007_536e:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $0c
    jr nz, jr_007_537e

    inc hl
    inc hl
    inc hl
    ld a, [bc]
    cp d
    jr z, jr_007_538e

jr_007_537e:
    ld a, $02
    ld [$dd1d], a
    ld a, $15
    ld [$dd21], a
    ld a, $19
    ld [$dd2f], a
    ret


Jump_007_538e:
jr_007_538e:
    inc hl
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c209
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    ld a, [hl]
    or $03
    ld [hl+], a
    inc hl
    ld a, [$c201]
    and $01
    xor $01
    ld [hl], a

Jump_007_53b1:
jr_007_53b1:
    ld a, [$c0c6]
    and a
    jr z, jr_007_53d8

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c209
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    or $03
    ld [hl+], a
    inc hl
    ld a, [$c201]
    and $01
    ld [hl], a
    xor a
    ld [$c0c6], a

jr_007_53d8:
    ld a, [de]
    xor $01
    ld [de], a
    ld a, $01
    ld [$dd1d], a
    ld a, $14
    ld [$dd21], a
    ret


Jump_007_53e7:
    xor a
    ld [$dd20], a
    ld a, $02
    ld [$c20c], a
    ld hl, $73eb
    ld de, $dd59
    ld c, $10

jr_007_53f8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_53f8

    ld hl, $ff94
    set 0, [hl]
    ret


Jump_007_5404:
    ret


    ld hl, $71bf
    call Call_007_6736
    ld a, [$c13a]
    cp $0c
    jr nz, jr_007_5423

    ld a, [$c140]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    set 0, [hl]

jr_007_5423:
    ld a, [$c148]
    cp $0c
    jr nz, jr_007_543b

    ld a, [$c14e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    set 0, [hl]

jr_007_543b:
    ldh a, [hJoypad]
    rla
    jp nc, Jump_007_54ad

    ld a, [$c125]
    and $c0
    jr z, jr_007_546f

    xor a
    ld [$dd18], a
    ld [$dd21], a
    ld [$dd1d], a
    ld [$dd20], a
    ld [$dd1c], a
    ld hl, $ff91
    ld a, [hl]
    and $3d
    ld [hl+], a
    ld a, [hl]
    and $37
    ld [hl], a
    ld hl, $737b
    ld de, $dd59
    ld c, $10
    call $1057
    ret


jr_007_546f:
    ld a, [$c133]
    and $1f
    cp $0c
    jr z, jr_007_547f

    ld a, [$c13a]
    cp $0c
    jr nz, jr_007_548f

jr_007_547f:
    ld a, [$c141]
    and $1f
    cp $0c
    jr z, jr_007_54ad

    ld a, [$c148]
    cp $0c
    jr z, jr_007_54ad

jr_007_548f:
    ld a, [$c133]
    and $c0
    jr nz, jr_007_54ad

    ld a, [$c141]
    and $c0
    jr nz, jr_007_54ad

    ld a, $03
    ld [$dd1d], a
    ld a, $15
    ld [$dd21], a
    ld a, $20
    ld [$dd20], a
    ret


Jump_007_54ad:
jr_007_54ad:
    ld de, $c201
    ld hl, $dd20
    ldh a, [hJoypad]
    and $c0
    jr z, jr_007_54bd

    ld [hl], $02
    jr jr_007_54cd

jr_007_54bd:
    ld a, [hl]
    and a
    jr nz, jr_007_54cd

    ldh a, [hJoypad]
    bit 5, a
    jr nz, jr_007_54cf

    bit 4, a
    jr nz, jr_007_54ea

    ld [hl], $01

jr_007_54cd:
    dec [hl]
    ret


jr_007_54cf:
    ld a, [de]
    or $01
    ld [de], a
    ld a, $01
    ld [$c20c], a
    ld hl, $73cb
    ld a, [$c13a]
    cp $0c
    jr nz, jr_007_5502

    ld a, [$c140]
    ld [$c0c6], a
    jr jr_007_5502

jr_007_54ea:
    ld a, [de]
    and $7e
    ld [de], a
    xor a
    ld [$c20c], a
    ld hl, $73db
    ld a, [$c148]
    cp $0c
    jr nz, jr_007_5502

    ld a, [$c14e]
    ld [$c0c6], a

jr_007_5502:
    ld de, $dd59
    ld c, $10

jr_007_5507:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5507

    xor a
    ld [$dd1d], a
    ld a, $08
    ld [$dd20], a
    ld a, $13
    ld [$dd21], a
    ret


    ld hl, $c133
    ld b, $10
    ld a, [$c201]
    rra
    jr nc, jr_007_552c

    ld hl, $c141
    ld b, $20

jr_007_552c:
    ld a, [hl]
    rla
    jr nc, jr_007_553f

    ld a, b
    ldh [hJoypad], a
    xor a
    ld [$dd20], a
    ld a, $13
    ld [$dd21], a
    jp Jump_007_52c4


jr_007_553f:
    ld b, $00
    ldh a, [hJoypad]
    ld c, a
    and $c0
    jr nz, jr_007_5568

    bit 4, c
    jr nz, jr_007_5551

    inc b
    bit 5, c
    jr z, jr_007_5568

jr_007_5551:
    ld a, [$c201]
    and $01
    cp b
    jr nz, jr_007_5568

    xor a
    ld [$dd1d], a
    ld a, $08
    ld [$dd20], a
    ld a, $13
    ld [$dd21], a
    ret


jr_007_5568:
    ld bc, $c133
    ld d, $01
    ld a, [$c201]
    rra
    jr nc, jr_007_5578

    ld bc, $c141
    ld d, $fe

jr_007_5578:
    ld a, [bc]
    cp $0c
    jr nz, jr_007_5587

    inc bc
    inc bc
    inc bc
    ld a, [bc]
    cp d
    jp z, Jump_007_53b1

    jr jr_007_5598

jr_007_5587:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $0c
    jr nz, jr_007_5598

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp d
    jp z, Jump_007_538e

jr_007_5598:
    ld b, $01
    ldh a, [hJoypad]
    bit 4, a
    jr nz, jr_007_55a5

    dec b
    bit 5, a
    jr z, jr_007_55b5

jr_007_55a5:
    ld a, [$c201]
    and $01
    cp b
    jr nz, jr_007_55b5

    ld hl, $dd2f
    dec [hl]
    jp z, Jump_007_519a

    ret


jr_007_55b5:
    ld a, $19
    ld [$dd2f], a
    ret


    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    ldh a, [hJoypad]
    rla
    rla
    jr nc, jr_007_55f5

    ld a, $14
    ld [$dd21], a
    ld hl, $71c6
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c205
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c133]
    and $1f
    cp $0c
    jr nz, jr_007_55f5

    ld a, [$c141]
    and $1f
    cp $0c
    jr nz, jr_007_55f5

    ld a, $01
    ld [$dd1d], a
    ld a, $08
    ld [$dd20], a
    ret


jr_007_55f5:
    ld de, $c133
    ld b, $01
    ldh a, [hJoypad]
    bit 5, a
    jr nz, jr_007_5609

    ld de, $c141
    ld b, $00
    bit 4, a
    jr z, jr_007_5627

jr_007_5609:
    ld a, [de]
    and $1f
    cp $0c
    jr nz, jr_007_5627

    xor a
    ld [$dd1d], a
    ld a, $08
    ld [$dd20], a
    ld a, $13
    ld [$dd21], a
    ld hl, $c201
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ret


jr_007_5627:
    ld hl, $dd20
    dec [hl]
    ret nz

    jp Jump_007_519a


    ld hl, $c207
    ld a, [$ddb0]
    add [hl]
    ld [hl], a
    ld hl, $ddaf
    dec [hl]
    jr z, jr_007_5649

    ld a, [hl]
    cp $03
    ret nz

    ld hl, $c201
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


jr_007_5649:
    xor a
    ld [$dd1d], a
    ld hl, $73db
    ld a, [$c201]
    rra
    jr nc, jr_007_5659

    ld hl, $73cb

jr_007_5659:
    ld de, $dd59
    ld c, $10

jr_007_565e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_565e

    ret


    xor a
    ldh [$ff8b], a
    ld a, $80
    ldh [hJoypad], a
    jp Jump_007_5178


    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $567e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub b
    ld d, [hl]
    push bc
    ld d, [hl]
    pop hl
    ld d, [hl]
    ld [hl-], a
    ld d, a
    ld e, l
    ld d, a
    cp e
    ld d, a
    ld h, e
    ld e, b
    ld [hl], h
    ld e, b
    cp [hl]
    ld e, b

    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $04
    add l
    ld l, a
    ld a, [$c207]
    dec a
    ld [hl], a
    ld hl, $c214
    dec [hl]
    ret nz

    ld [hl], $05
    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    add $0b
    ld [hl+], a
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $00
    ld hl, $c213
    inc [hl]
    ld a, $32
    ld [$c830], a
    ld [$c835], a
    ret


    ld hl, $c214
    dec [hl]
    ret nz

    ld [hl], $04
    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    add $fb
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c213
    inc [hl]
    ret


    ld hl, $c214
    dec [hl]
    ret nz

    ld [hl], $03
    ld hl, $c215
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $0a
    add e
    ld e, a
    ld a, [de]
    and $7f
    ld l, a
    ld h, $00
    ld bc, $75f7
    add hl, bc
    ld a, [hl]
    and $3f
    ld l, a
    ld h, $00
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    ld bc, $7655
    add hl, bc
    ld a, $f5
    add e
    ld e, a
    ld a, [hl+]
    ld [de], a
    ld a, $1d
    add e
    ld e, a
    ld a, [hl]
    ld [de], a
    ld a, $e4
    add e
    ld l, a
    ld h, d
    ld a, [$c203]
    add $fd
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $02
    ld [$c202], a
    ld hl, $c213
    inc [hl]
    ret


    ld hl, $c214
    dec [hl]
    ret nz

    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    sub $0a
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c205
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $ff91
    res 1, [hl]
    inc hl
    res 7, [hl]
    ld hl, $c213
    inc [hl]
    ret


    ld a, [$c125]
    and $c0
    jr nz, jr_007_5778

    ld a, [$c12c]
    and $c0
    jr nz, jr_007_5778

    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    sub $0a
    ld [hl], a
    ret


jr_007_5778:
    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    sub $0e
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    xor a
    ld [hl+], a
    set 2, [hl]
    ld a, $01
    add l
    ld l, a
    ld a, [hl]
    and $7f
    cp $21
    jr nz, jr_007_579c

    ld hl, $ff92
    set 0, [hl]

jr_007_579c:
    ld a, $04
    ld [$c202], a
    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl+], a
    ld a, [hl]
    and $b7
    ld [hl], a
    ld hl, $c213
    inc [hl]
    ld a, $09
    ld [$dd47], a
    ld a, $02
    ld [$dd1c], a
    ret


    call Call_007_66ce
    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c203]
    sub $0d
    ld [hl], a
    ld a, $04
    add l
    ld l, a
    ld a, [$c207]
    dec a
    ld [hl], a
    ld a, [$dd1a]
    and a
    jr nz, jr_007_580f

    ldh a, [$92]
    bit 2, a
    jr nz, jr_007_580f

    ld hl, $ff91
    bit 3, [hl]
    jr nz, jr_007_57eb

    ldh a, [$8b]
    rra
    jr nc, jr_007_580f

jr_007_57eb:
    res 3, [hl]
    ld a, $26
    ld [$dd21], a
    ld a, [$dd69]
    ld [$dd59], a
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_5800

    inc [hl]

jr_007_5800:
    ld a, $01
    ld hl, $dd17
    bit 6, [hl]
    jp z, Jump_007_69af

    ld a, $03
    jp Jump_007_69af


jr_007_580f:
    ldh a, [$94]
    rla
    jr c, jr_007_583e

    ldh a, [$8b]
    bit 1, a
    ret z

    ld hl, $c215
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    add l
    ld l, a
    set 7, [hl]
    ld a, $33
    ld [$c830], a
    ld [$c835], a
    ld hl, $ff91
    res 4, [hl]
    ld bc, $fe00
    ld de, $0000
    ldh a, [hJoypad]
    bit 6, a
    jr nz, jr_007_584d

jr_007_583e:
    ld bc, $0000
    ld de, $ff00
    ld a, [$c201]
    rra
    jr c, jr_007_584d

    ld de, $0100

jr_007_584d:
    ld hl, $ff91
    set 6, [hl]
    ld a, $02
    ld [$c214], a
    ld hl, $dd1c
    set 7, [hl]
    ld hl, $c213
    inc [hl]
    jp Call_2b22


    ld hl, $c214
    dec [hl]
    ret nz

    ld [hl], $08
    ld hl, $c213
    inc [hl]
    ld a, $27
    ld [$dd21], a
    ret


    ld hl, $c214
    dec [hl]
    ret nz

    ldh a, [$93]
    bit 5, a
    jr z, jr_007_588b

    ld a, $07
    ld [$dd18], a
    ld hl, $ff91
    set 7, [hl]
    jr jr_007_588f

jr_007_588b:
    xor a
    ld [$dd18], a

jr_007_588f:
    xor a
    ld [$c213], a
    ld hl, $dd1c
    ld a, [$dd1a]
    and a
    jr nz, jr_007_58a5

    ld a, $00
    ld [hl], a
    ld hl, $ff91
    res 6, [hl]
    ret


jr_007_58a5:
    ld a, $83
    ld [hl], a
    ld b, $0e
    ld hl, $dd17
    bit 6, [hl]
    jr nz, jr_007_58b9

    ld b, $03
    cp $03
    jr c, jr_007_58b9

    ld b, $16

jr_007_58b9:
    ld hl, $dd21
    ld [hl], b
    ret


    ld hl, $c214
    dec [hl]
    ret nz

    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl], a
    xor a
    ld [$dd18], a
    xor a
    ld [$dd21], a
    xor a
    ld [$c213], a
    ld [$dd1c], a
    ret


    ldh a, [$94]
    rla
    jp c, Jump_007_5953

    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $58ef
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push af
    ld e, b
    ld b, [hl]
    ld e, c
    cp l
    ld e, c
    ldh a, [hJoypad]
    bit 1, a
    jp z, Jump_007_5953

    ld hl, $c20d
    ld a, [hl]
    and a
    jr z, jr_007_5905

    dec [hl]
    ret


jr_007_5905:
    ldh a, [hJoypad]
    and $30
    ret z

    bit 5, a
    jr nz, jr_007_5923

    ld hl, $c20c
    ld a, [hl]
    cp $02
    ret z

    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $c207
    ld a, [hl]
    add $04
    ld [hl], a
    jr jr_007_5935

jr_007_5923:
    ld hl, $c20c
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $c202
    dec [hl]
    ld hl, $c207
    ld a, [hl]
    sub $04
    ld [hl], a

jr_007_5935:
    ld a, $08
    ld [$c20d], a
    ld hl, $c214
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c20c]
    jp Jump_007_78a1


    ld a, [$c20c]
    cp $01
    jr z, jr_007_59c2

    ldh a, [hJoypad]
    bit 1, a
    jr nz, jr_007_596c

Jump_007_5953:
    ld hl, $ff91
    ld a, [hl]
    and $2f
    ld [hl+], a
    ld a, [hl]
    and $f3
    ld [hl], a
    xor a
    ld [$dd18], a
    ld hl, $dd21
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    ret


jr_007_596c:
    ld hl, $c20d
    ld a, [hl]
    and a
    jr z, jr_007_5975

    dec [hl]
    ret


jr_007_5975:
    ldh a, [hJoypad]
    and $30
    ret z

    ld [$c20e], a
    bit 5, a
    jr nz, jr_007_5996

    ld hl, $c20c
    ld a, [hl]
    cp $02
    ret z

    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $c207
    ld a, [hl]
    add $04
    ld [hl], a
    jr jr_007_59a8

jr_007_5996:
    ld hl, $c20c
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $c202
    dec [hl]
    ld hl, $c207
    ld a, [hl]
    sub $04
    ld [hl], a

jr_007_59a8:
    ld hl, $c213
    inc [hl]
    ld a, $08
    ld [$c20d], a
    ld hl, $c214
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c20c]
    jp Jump_007_7790


    ld hl, $c20d
    dec [hl]
    ret nz

jr_007_59c2:
    ld a, [$c20e]
    bit 5, a
    jr nz, jr_007_59da

    ld hl, $c20c
    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $c207
    ld a, [hl]
    add $04
    ld [hl], a
    jr jr_007_59e9

jr_007_59da:
    ld hl, $c20c
    dec [hl]
    ld hl, $c202
    dec [hl]
    ld hl, $c207
    ld a, [hl]
    sub $04
    ld [hl], a

jr_007_59e9:
    ld a, $01
    ld [$c213], a
    ld a, $08
    ld [$c20d], a
    ld hl, $c214
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c20c]
    jp Jump_007_7790


    ldh a, [$94]
    rla
    jr nc, jr_007_5a0b

    xor a
    ld [$c213], a
    jp Jump_007_5bca


jr_007_5a0b:
    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $5a1a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jr nz, @+$5c

    inc b
    ld e, h
    ld d, h
    ld e, h

    ldh a, [hJoypad]
    and $f0
    cp $40
    jr nz, jr_007_5a7d

    ldh a, [$8b]
    bit 6, a
    jr z, jr_007_5a7d

    ld hl, $dd37
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl-]
    cp $03
    ret nc

    ld bc, $fffc
    add hl, bc
    ld a, [hl]
    cp $0a
    jr nz, jr_007_5a47

    inc hl
    ld a, [hl-]
    cp $03
    ret nc

jr_007_5a47:
    ld bc, $0008
    add hl, bc
    ld a, [hl+]
    cp $0a
    jr nz, jr_007_5a54

    ld a, [hl-]
    cp $03
    ret nc

jr_007_5a54:
    ld hl, $c213
    inc [hl]
    ld a, $03
    ld [$c202], a
    ld hl, $c20c
    ld [hl], $01
    inc hl
    ld [hl], $0a
    inc hl
    ld [hl], $0a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$dd21], a
    ld hl, $ff92
    res 4, [hl]
    ret


jr_007_5a7d:
    ldh a, [$8b]
    rra
    jp c, Jump_007_5bca

    ldh a, [hJoypad]
    rla
    jr nc, jr_007_5aaf

    ld a, [$dd39]
    rla
    jr nc, jr_007_5aaf

    xor a
    ld [$dd1a], a
    ld a, $04
    ld [$dd21], a
    ld a, $01
    ld [$dd18], a
    ld hl, $dd35
    ld a, $03
    sub [hl]
    ld hl, $c207
    add [hl]
    ld [hl], a
    ld hl, $ff91
    res 5, [hl]
    jp Jump_007_69f7


jr_007_5aaf:
    ld de, $73fd
    ldh a, [hJoypad]
    bit 5, a
    jr nz, jr_007_5acf

    ld de, $7409
    bit 4, a
    jr nz, jr_007_5ada

jr_007_5abf:
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$dd21], a
    ret


jr_007_5acf:
    ld a, [$c133]
    rla
    jr c, jr_007_5abf

    ld a, [$dd39]
    jr jr_007_5ae5

jr_007_5ada:
    ld a, [$c141]
    rla
    jr c, jr_007_5abf

    ld a, [$dd39]
    xor $03

jr_007_5ae5:
    and $7f
    cp $01
    jr z, jr_007_5af3

    ld a, [$c117]
    rla
    jr c, jr_007_5abf

    jr jr_007_5af9

jr_007_5af3:
    ld a, [$c125]
    rla
    jr c, jr_007_5abf

jr_007_5af9:
    ld a, [$dd39]
    and $7f
    add a
    add a
    ld l, a
    ld h, $00
    add hl, de
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld e, l
    ld d, h
    ld hl, $dd35
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, bc
    ld a, l
    ld [$dd36], a
    ld a, h
    ld [$dd35], a
    ld hl, $c20a
    ld a, [de]
    ld [hl-], a
    dec de
    ld a, [de]
    ld [hl-], a
    dec hl
    dec hl
    dec de
    ld a, [de]
    ld [hl-], a
    dec de
    ld a, [de]
    ld [hl], a
    ld hl, $c201
    res 0, [hl]
    ldh a, [hJoypad]
    and $20
    rlca
    rlca
    rlca
    or [hl]
    ld [hl], a
    ld a, [$dd35]
    ld bc, $7413
    cp $ff
    jr z, jr_007_5b48

    cp $08
    jp nz, Jump_007_5bdd

    ld bc, $745b

jr_007_5b48:
    ld a, [$dd39]
    and $7f
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, de
    add hl, bc
    ld e, l
    ld d, h
    ld hl, $dd37
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $03

jr_007_5b62:
    push bc
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    add hl, bc
    pop bc
    ld a, [hl+]
    and $1f
    cp $0a
    jr nz, jr_007_5bc0

    push hl
    ld a, [hl]
    ld b, a
    cp $03
    jr c, jr_007_5b8b

    ld bc, $007f
    add hl, bc
    ld b, $00
    ld a, [hl+]
    cp $08
    jr nz, jr_007_5b8b

    ld a, [hl]
    cp $00
    jr nz, jr_007_5b8b

    ld b, $80

jr_007_5b8b:
    pop hl
    ld a, b
    ld [$c1f1], a
    and $7f
    ld b, a
    ld a, [de]
    inc de
    cp b
    jr nz, jr_007_5bc1

    ld a, [$c1f1]
    ld [$dd39], a
    dec hl
    ld a, l
    ld [$dd37], a
    ld a, h
    ld [$dd38], a
    ld hl, $c203
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc de
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    inc de
    ld a, [de]
    ld [$dd35], a
    jr jr_007_5bdd

jr_007_5bc0:
    inc de

jr_007_5bc1:
    inc de
    inc de
    inc de
    inc de
    inc de
    dec hl
    dec c
    jr nz, jr_007_5b62

Jump_007_5bca:
    xor a
    ld [$dd18], a
    ld hl, $ff91
    ld a, [hl]
    and $5d
    ld [hl+], a
    res 3, [hl]
    ld de, $0080
    jp Jump_007_695f


Jump_007_5bdd:
jr_007_5bdd:
    ld a, [$dd39]
    and $7f
    add $0b
    ld [$dd21], a
    ld hl, $dd50
    ld a, [hl]
    and $7f
    jr z, jr_007_5bf1

    dec [hl]
    ret


jr_007_5bf1:
    ld a, [hl]
    and $80
    rlca
    add $54
    ld [$c830], a
    ld [$c835], a
    ld a, [hl]
    xor $80
    add $08
    ld [hl], a
    ret


    ldh a, [$8b]
    bit 0, a
    jp nz, Jump_007_5c9f

    ld hl, $c20d
    dec [hl]
    ret nz

    ld hl, $c202
    inc [hl]
    ld a, $0a
    add l
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    and $03
    ld b, a
    jr nz, jr_007_5c42

    ld a, [hl]
    cp $20
    jr c, jr_007_5c28

    ld a, $20
    ld [hl], a

jr_007_5c28:
    inc hl
    inc hl
    ld a, [hl]
    cp $03
    jr c, jr_007_5c30

    dec [hl]

jr_007_5c30:
    ld hl, $c20e
    ld a, [hl-]
    ld [hl], a
    ldh a, [hJoypad]
    and $f0
    cp $40
    jr z, jr_007_5c42

    ld a, $02
    ld [$c213], a

jr_007_5c42:
    ld hl, $c20e
    ld a, [hl-]
    ld [hl], a
    ld a, b
    cp $03
    ret nz

    ld a, $04
    ld [$c830], a
    ld [$c835], a
    ret


    ldh a, [$8b]
    rra
    jp c, Jump_007_5c9f

    ld hl, $c20d
    dec [hl]
    ret nz

    ld hl, $c202
    inc [hl]
    ld a, $0a
    add l
    ld l, a
    ld a, [hl]
    dec a
    ld [hl], a
    and $03
    ld b, a
    jr nz, jr_007_5c8d

    ld a, [hl]
    and a
    jr nz, jr_007_5c7d

    xor a
    ld [$c213], a
    ld a, $01
    ld [$c202], a
    ret


jr_007_5c7d:
    inc hl
    inc hl
    inc [hl]
    ldh a, [hJoypad]
    and $f0
    cp $40
    jr nz, jr_007_5c8d

    ld a, $01
    ld [$c213], a

jr_007_5c8d:
    ld hl, $c20e
    ld a, [hl-]
    ld [hl], a
    ld a, b
    cp $01
    ret nz

    ld a, $04
    ld [$c830], a
    ld [$c835], a
    ret


Jump_007_5c9f:
    ld a, [$c202]
    cp $03
    jr z, jr_007_5cc0

jr_007_5ca6:
    ld b, $0d
    ld a, [$c202]
    cp $05
    jr z, jr_007_5cb1

    ld b, $04

jr_007_5cb1:
    ld a, [$c20c]
    and $fc
    rrca
    rrca
    add b
    call Call_007_69af
    ld b, $0c
    jr jr_007_5d00

jr_007_5cc0:
    ld a, $10
    call Call_1d18
    and a
    jr nz, jr_007_5ca6

    ld b, $04
    ld a, [$c202]
    cp $03
    jr z, jr_007_5cd3

    ld b, $0d

jr_007_5cd3:
    ld a, [$c20c]
    and $fc
    rrca
    rrca
    add b
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $724a
    add hl, bc
    ld a, [hl+]
    cpl
    add $01
    ld e, a
    ld a, [hl]
    cpl
    adc $00
    ld d, a
    cp $03
    jr c, jr_007_5cf6

    ld de, $0300

jr_007_5cf6:
    call Call_007_695f
    ld hl, $ff92
    set 4, [hl]
    ld b, $0d

jr_007_5d00:
    ld hl, $ff91
    ld a, [hl]
    and $dd
    ld [hl+], a
    set 5, [hl]
    res 3, [hl]
    inc hl
    inc hl
    set 1, [hl]
    xor a
    ld [$dd18], a
    xor a
    ld [$c213], a
    ld a, $04
    ld [$c20f], a
    ld hl, $dd22
    ld a, [hl-]
    add $13
    ld [hl], a
    ld a, [$dd22]
    cp $0b
    ret z

    ld hl, $5d5c
    cp b
    jr z, jr_007_5d32

    ld hl, $5d4a

jr_007_5d32:
    ld a, [$c20c]
    and $fc
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld de, $c209
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $ff91
    set 7, [hl]
    ret


    nop
    ret nc

    ld bc, $0160
    xor d
    ld [bc], a
    rla
    ld [bc], a
    add h
    ld [bc], a
    ret nz

    inc bc
    nop
    inc bc
    ret nc

    inc bc
    ret nc

    rst $38

jr_007_5d5d:
    jr nc, jr_007_5d5d

    and b
    cp $56
    db $fd
    jp hl


    db $fd
    ld a, h
    db $fd
    ld b, b
    db $fd

jr_007_5d69:
    nop
    db $fc
    jr nc, jr_007_5d69

    db $30

    ld a, [$c117]
    cp $01
    jr z, jr_007_5d87

    ld a, [$c125]
    cp $01
    jr z, jr_007_5d87

    ld hl, $dd17
    bit 6, [hl]
    jr z, jr_007_5d90

    res 6, [hl]
    jr jr_007_5d90

jr_007_5d87:
    ld hl, $dd17
    bit 6, [hl]
    jr nz, jr_007_5d90

    set 6, [hl]

jr_007_5d90:
    ld a, [$dd1a]
    and a
    jp nz, Jump_007_5e44

    ld hl, $ff91
    bit 3, [hl]
    jr nz, jr_007_5da4

    ldh a, [$8b]
    rra
    jp nc, Jump_007_5e44

jr_007_5da4:
    res 3, [hl]
    ld hl, $c125
    ld a, [hl+]
    and $c0
    jr nz, jr_007_5db7

    ld hl, $c12c
    ld a, [hl+]
    and $c0
    jp z, Jump_007_5e44

jr_007_5db7:
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $ff00
    add hl, bc
    bit 7, [hl]
    jp nz, Jump_007_5e44

    ldh a, [$94]
    rla
    jr c, jr_007_5e44

    ld a, [$dd17]
    rla
    jr c, jr_007_5e1d

    ld a, $09
    ld [$dd18], a
    xor a
    ld [$c213], a
    ld [$c20d], a
    ld [$dd4c], a
    ld [$dd4d], a
    ld hl, $ff91
    ld a, [hl]
    or $50
    ld [hl+], a
    set 5, [hl]
    ld hl, $dd1c
    ld [hl], $85
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_5df9

    inc [hl]

jr_007_5df9:
    ld a, [$dd17]
    bit 6, a
    jr z, jr_007_5e11

    ld a, $2a
    ld [$dd21], a
    ld hl, $ff93
    set 1, [hl]
    ld a, $03
    call Call_007_69b4
    jr jr_007_5e7d

jr_007_5e11:
    ld a, $09
    ld [$dd21], a
    ld a, $01
    call Call_007_69b4
    jr jr_007_5e7d

jr_007_5e1d:
    ld hl, $ff91
    set 6, [hl]
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_5e2a

    inc [hl]

jr_007_5e2a:
    ld a, [$dd17]
    bit 6, a
    jr z, jr_007_5e3d

    ld hl, $ff93
    set 1, [hl]
    ld a, $03
    call Call_007_69af
    jr jr_007_5e7d

jr_007_5e3d:
    ld a, $01
    call Call_007_69af
    jr jr_007_5e7d

Jump_007_5e44:
jr_007_5e44:
    ld a, [$dd1a]
    cp $03
    jr nz, jr_007_5e55

    ld a, [$dd1f]
    and a
    jr nz, jr_007_5e55

    ld b, $16
    jr jr_007_5e75

jr_007_5e55:
    ldh a, [hJoypad]
    rla
    ret c

    ld a, [$dd1a]
    and a
    jr z, jr_007_5e6c

    ld b, $0e
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_5e75

    ld b, $16
    jr jr_007_5e75

jr_007_5e6c:
    ld b, $00
    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl], a

jr_007_5e75:
    ld hl, $dd21
    ld [hl], b
    xor a
    ld [$dd18], a

jr_007_5e7d:
    ld a, [$dd17]
    and $80
    rlca
    add a
    add a
    add a
    add a
    ld l, a
    ld h, $00
    ld bc, $737b
    add hl, bc
    ld de, $dd59
    ld c, $10

jr_007_5e93:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5e93

    ld hl, $ff94
    set 4, [hl]
    ld a, [$dd59]
    ld [$dd69], a
    ret


    ld a, [$c117]
    cp $01
    jr z, jr_007_5ecc

    ld a, [$c125]
    cp $01
    jr z, jr_007_5ecc

    ld a, [$c133]
    cp $01
    jr z, jr_007_5ecc

    ld a, [$c141]
    cp $01
    jr z, jr_007_5ecc

    ld hl, $dd17
    bit 6, [hl]
    jr z, jr_007_5f28

    res 6, [hl]
    jr jr_007_5f28

jr_007_5ecc:
    ld hl, $dd17
    bit 6, [hl]
    jr nz, jr_007_5ee0

    set 6, [hl]
    ld a, [$dd1a]
    cp $04
    jr z, jr_007_5ee0

    xor a
    ld [$dd1f], a

jr_007_5ee0:
    ld a, [$dd1a]
    and a
    jr z, jr_007_5f28

    ldh a, [$93]
    bit 1, a
    jr nz, jr_007_5f28

    ld a, $0e
    ld [$dd21], a
    xor a
    ld [$dd18], a
    ld a, $03
    ld [$dd1a], a
    xor a
    ld [$c213], a
    ld a, $83
    ld [$dd1c], a
    ld hl, $ff91
    ld a, [hl]
    and $6f
    ld [hl+], a
    ld a, [hl]
    and $db
    ld [hl], a
    ld hl, $737b
    ld de, $dd59
    ld c, $10

jr_007_5f16:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5f16

    ld hl, $ff93
    set 6, [hl]
    ld a, [$dd59]
    ld [$dd69], a
    ret


jr_007_5f28:
    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $5f37
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld c, c
    ld e, a
    ld a, e
    ld e, a
    ldh a, [$5f]
    ld sp, $6360
    ld h, b
    adc h
    ld h, b
    or d
    ld h, b
    ld e, a
    ld h, c
    ld [hl], d
    ld h, c

    ld hl, $c20d
    ldh a, [$91]
    bit 2, a
    jr z, jr_007_5f54

    set 0, [hl]

jr_007_5f54:
    ld a, [$dd1a]
    cp $04
    jr nz, jr_007_5f63

    ld a, [$dd1f]
    and a
    jr nz, jr_007_5f63

    set 1, [hl]

jr_007_5f63:
    ld a, [hl]
    cp $03
    ret nz

    ld hl, $ff91
    set 7, [hl]
    ld hl, $c213
    inc [hl]
    ld a, $08
    ld [$c20c], a
    ld a, $2e
    ld [$dd21], a
    ret


    ldh a, [$94]
    rla
    jr c, jr_007_5fbb

    ldh a, [$8b]
    rra
    jr nc, jr_007_5fbb

    ld a, [$dd17]
    bit 6, a
    jr nz, jr_007_5fbb

    ld hl, $ff91
    res 7, [hl]
    ld hl, $ff92
    set 5, [hl]
    ld hl, $c213
    inc [hl]
    xor a
    ld [$c20d], a
    ld [$dd4c], a
    ld [$dd4d], a
    ld a, $22
    ld [$dd21], a
    ld hl, $dd1c
    ld [hl], $86
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_5fb6

    inc [hl]

jr_007_5fb6:
    ld a, $17
    jp Jump_007_69b4


jr_007_5fbb:
    ld hl, $c20c
    dec [hl]
    ret nz

    ld hl, $73bb
    ld de, $dd59
    ld c, $10

jr_007_5fc8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_5fc8

    ld hl, $ff93
    set 6, [hl]
    ld a, [$dd59]
    ld [$dd69], a
    ld a, $29
    ld [$dd21], a
    ld a, $06
    ld [$c213], a
    ld hl, $ff91
    res 7, [hl]
    ld a, [$dd1a]
    and a
    ret nz

    res 6, [hl]
    ret


    ld hl, $c20d
    ldh a, [$91]
    bit 2, a
    jr z, jr_007_600a

    bit 0, [hl]
    jr nz, jr_007_600a

    set 0, [hl]
    ld a, $16
    ld [$dd21], a
    ldh a, [$92]
    res 5, a
    ldh [$ff92], a

jr_007_600a:
    ld a, [$dd1a]
    cp $04
    jr nz, jr_007_6019

    ld a, [$dd1f]
    and a
    jr nz, jr_007_6019

    set 1, [hl]

jr_007_6019:
    ld a, [hl]
    cp $03
    ret nz

    ld hl, $ff91
    set 7, [hl]
    ld hl, $c213
    inc [hl]
    ld a, $08
    ld [$c20c], a
    ld a, $10
    ld [$dd21], a
    ret


    ldh a, [$8b]
    rra
    jr nc, jr_007_6056

    ld hl, $ff91
    res 7, [hl]
    ld hl, $c213
    inc [hl]
    ld a, $03
    ld [$dd21], a
    ld hl, $dd1c
    ld [hl], $87
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_6051

    inc [hl]

jr_007_6051:
    ld a, $19
    jp Jump_007_69b4


jr_007_6056:
    ld hl, $c20c
    dec [hl]
    ret nz

    ld hl, $ff92
    res 5, [hl]
    jp Jump_007_61ab


    ld a, [$dd1a]
    cp $04
    ret nz

    ld a, [$dd1f]
    and a
    ret nz

    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl], a
    ld hl, $c213
    inc [hl]
    ld a, $18
    ld [$c20c], a
    ld a, $2f
    ld [$dd21], a
    ld a, $0e
    ld [$c830], a
    ld [$c835], a
    ret


    ld hl, $c20c
    ld a, [hl]
    and a
    jr z, jr_007_60a5

    ld a, [$dd1a]
    and a
    jr z, jr_007_60a3

    cp $04
    jr z, jr_007_60a3

    ld hl, $ff92
    set 5, [hl]
    ret


jr_007_60a3:
    dec [hl]
    ret nz

jr_007_60a5:
    ldh a, [hJoypad]
    and $f3
    ret z

    ld hl, $ff92
    res 5, [hl]
    jp Jump_007_61ab


    ldh a, [$94]
    rla
    jr c, jr_007_6121

    ld a, [$dd1a]
    and a
    jr nz, jr_007_6121

    ldh a, [$8b]
    rra
    jr nc, jr_007_6121

    ld b, $22
    ld a, [$dd17]
    bit 6, a
    jr z, jr_007_60cd

    ld b, $2b

jr_007_60cd:
    ld hl, $dd21
    ld [hl], b
    ld hl, $737b
    ld de, $dd59
    ld c, $10

jr_007_60d9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_60d9

    ld hl, $ff93
    set 6, [hl]
    ld a, [$dd59]
    ld [$dd69], a
    ld hl, $ff91
    set 6, [hl]
    xor a
    ld [$c20d], a
    ld [$dd4c], a
    ld [$dd4d], a
    ld a, $08
    ld [$c213], a
    ld hl, $c21f
    ld a, [hl]
    and a
    jr nz, jr_007_6106

    inc [hl]

jr_007_6106:
    ld a, [$dd17]
    bit 6, a
    jr z, jr_007_6117

    ld a, $2b
    ld [$dd21], a
    ld a, $03
    jp Jump_007_69af


jr_007_6117:
    ld a, $22
    ld [$dd21], a
    ld a, $16
    jp Jump_007_69af


jr_007_6121:
    ld hl, $c11e
    call Call_007_61e7
    ret nc

    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl], a
    ld a, $2d
    ld [$dd21], a
    ld a, $07
    ld [$c213], a
    ld a, $34
    ld [$c830], a
    ld [$c835], a
    ld hl, $c860
    ld a, [hl+]
    cp $09
    jr nz, jr_007_615a

    ld a, [hl]
    cp $09
    jr nz, jr_007_615a

    ld hl, $da41
    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


jr_007_615a:
    ld a, $01
    jp $0e12


    ld hl, $ff91
    bit 2, [hl]
    ret z

    ld a, $06
    ld [$c213], a
    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl], a
    ret


    ld hl, $c20d
    ldh a, [$91]
    bit 2, a
    jr z, jr_007_6192

    bit 0, [hl]
    jr nz, jr_007_6192

    set 0, [hl]
    ld a, $16
    ld [$dd21], a
    ldh a, [$92]
    res 5, a
    ldh [$ff92], a
    ldh a, [$93]
    res 1, a
    ldh [$ff93], a

jr_007_6192:
    ld a, [$dd1a]
    cp $04
    jr nz, jr_007_61a7

    ld a, [$dd1f]
    and a
    jr nz, jr_007_61a7

    set 1, [hl]
    ldh a, [$91]
    set 7, a
    ldh [$ff91], a

jr_007_61a7:
    ld a, [hl]
    cp $03
    ret nz

Jump_007_61ab:
    ld a, [$dd1a]
    and a
    jr z, jr_007_61b5

    cp $04
    jr nz, jr_007_61c7

jr_007_61b5:
    ld hl, $ff91
    ld a, [hl]
    and $2f
    ld [hl], a
    xor a
    ld [$dd18], a
    ld [$dd21], a
    ld [$c213], a
    ret


jr_007_61c7:
    ld a, $16
    ld [$dd21], a
    xor a
    ld [$dd18], a
    ld [$c213], a
    ld hl, $ff91
    ld a, [hl]
    and $6f
    ld [hl], a
    ldh a, [$92]
    set 5, a
    ldh [$ff92], a
    ldh a, [$93]
    res 1, a
    ldh [$ff93], a
    ret


Call_007_61e7:
    ld a, [hl+]
    and $1f
    cp $02
    jr z, jr_007_61f3

    cp $03
    jp nz, Jump_007_627d

jr_007_61f3:
    ld bc, $0005
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20e
    add hl, bc
    ld a, [hl]
    cp $26
    jr z, jr_007_6256

    cp $0b
    jr z, jr_007_6256

    cp $05
    jr z, jr_007_6256

    cp $57
    jr z, jr_007_6256

    cp $13
    jr z, jr_007_6256

    cp $3f
    jr nz, jr_007_6222

    dec hl
    ld a, [hl+]
    cp $13
    jr z, jr_007_6256

jr_007_6222:
    cp $36
    jr z, jr_007_622a

    cp $34
    jr nz, jr_007_6246

jr_007_622a:
    ld a, $04
    add l
    ld l, a
    bit 7, [hl]
    jr z, jr_007_627d

    set 0, [hl]
    ld a, $f5
    add l
    ld l, a
    ld bc, $0040
    ld a, [$c207]
    cp [hl]
    jr c, jr_007_626c

    ld bc, $ffc0
    jr jr_007_626c

jr_007_6246:
    cp $00
    jr nz, jr_007_627d

    ld a, $04
    add l
    ld l, a
    bit 7, [hl]
    jr z, jr_007_627d

    ld a, $fc
    add l
    ld l, a

jr_007_6256:
    ld a, $fe
    add l
    ld l, a
    set 4, [hl]
    ld a, $fb
    add l
    ld l, a
    ld bc, $0080
    ld a, [$c207]
    cp [hl]
    jr c, jr_007_626c

    ld bc, hOAMDMAFunction

jr_007_626c:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $c0
    ld [hl-], a
    ld a, $ff
    ld [hl], a
    scf
    ret


Jump_007_627d:
jr_007_627d:
    and a
    ret


    ldh a, [$94]
    rla
    jr c, jr_007_628a

    ldh a, [$8b]
    bit 1, a
    jr z, jr_007_62a6

jr_007_628a:
    ld hl, $ff91
    ld a, [hl]
    and $6f
    ld [hl], a
    set 6, [hl]
    ld b, $16
    ld a, [$dd1a]
    and a
    jr nz, jr_007_629f

    res 6, [hl]
    ld b, $00

jr_007_629f:
    ld a, b
    ld [$dd21], a
    jp $2b16


jr_007_62a6:
    ld a, [$dd1a]
    cp $03
    ret nc

    ld de, $c14f
    ld a, [de]
    cp $b3
    jr z, jr_007_62c9

    and $3f
    cp $22
    jr z, jr_007_62be

    cp $23
    jr nz, jr_007_62c9

jr_007_62be:
    ld a, $19
    ld [$c830], a
    ld [$c835], a
    call Call_007_6652

jr_007_62c9:
    ld hl, $dd3c
    ld a, [hl+]
    or [hl]
    jp z, Jump_007_63f8

    ldh a, [$94]
    bit 5, a
    jr nz, jr_007_630a

    ld hl, $c210
    dec [hl]
    ret nz

    ld a, $06
    ld [hl], a
    ld hl, $c21c
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, [$dd1a]
    and a
    ret nz

    ld a, [$dd1b]
    and a
    ret nz

    ld a, [$c21c]
    and a
    jr z, jr_007_6300

    ld hl, $c202
    ld a, [hl]
    or $04
    ld [hl], a
    jp Jump_007_63c8


jr_007_6300:
    ld hl, $c202
    ld a, [hl]
    and $fb
    ld [hl], a
    jp Jump_007_63c8


jr_007_630a:
    ld hl, $c210
    dec [hl]
    ld a, [$c21c]
    and a
    jr nz, jr_007_632b

    ld a, [hl]
    and a
    ret nz

    ld a, $06
    ld [hl], a
    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl], a
    ld hl, $c202
    ld a, [hl]
    or $04
    ld [hl], a
    jp Jump_007_63c1


jr_007_632b:
    ld hl, $c20d
    ld a, [hl]
    and a
    jr z, jr_007_6335

    dec [hl]
    jr jr_007_63aa

jr_007_6335:
    call $2b0a
    ld hl, $c156
    ld a, [hl+]
    and a
    jr z, jr_007_63aa

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [hl+], a
    ld [hl-], a
    ld e, l
    ld d, h
    push hl
    call Call_007_713b
    ld hl, $c7f1
    ld [hl], c
    inc hl
    ld [hl], b
    ld de, $c7f1
    call Call_000_1685
    pop hl
    ld a, l
    sub $6d
    ld l, a
    ld a, h
    sbc $c8
    ld h, a
    ld a, l
    and $80
    rlca
    rl h
    ld a, h
    add a
    add a
    add a
    ld b, a
    ld a, l
    and $7c
    add a
    ld c, a
    push bc
    ld hl, $6443
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    pop bc
    call $2b00
    ld a, $f6
    add l
    ld l, a
    ld a, $04
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_007_6f04
    ld a, $03
    ld [$c20d], a
    ld a, $5f
    ld [$c830], a
    ld [$c835], a
    ld a, $01
    call $0e12

jr_007_63aa:
    ld hl, $c210
    ld a, [hl]
    and a
    ret nz

    ld a, $06
    ld [hl], a
    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl], a
    ld hl, $c202
    ld a, [hl]
    and $fb
    ld [hl], a

Jump_007_63c1:
    ld de, $c21c
    ld a, [de]
    xor $01
    ld [de], a

Jump_007_63c8:
    ld hl, $74ab
    ldh a, [$94]
    bit 5, a
    jr z, jr_007_63d4

    ld hl, $74bb

jr_007_63d4:
    ld a, [$c21c]
    and a
    jr z, jr_007_63de

    ld bc, $0008
    add hl, bc

jr_007_63de:
    ld a, [$c201]
    and $01
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld de, $dd6a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Jump_007_63f8:
    xor a
    ld [$dd18], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld hl, $c837
    ld a, [hl-]
    and a
    jr z, jr_007_6412

    ld a, [$c836]
    cp $80
    jr nz, jr_007_6416

jr_007_6412:
    ld a, [$da45]
    ld [hl], a

jr_007_6416:
    ld hl, $ff91
    ld a, [hl]
    and $6f
    ld [hl], a
    xor a
    ld [$dd1d], a
    ld c, $00
    ld a, [$dd1a]
    and a
    jr z, jr_007_6439

    ld c, $83
    ld b, $02
    cp $04
    jr z, jr_007_6433

    ld b, $03

jr_007_6433:
    ld a, b
    ld [$dd21], a
    jr jr_007_643e

jr_007_6439:
    ld hl, $ff91
    res 6, [hl]

jr_007_643e:
    ld a, c
    ld [$dd1c], a
    ret


    ld e, $0a
    nop
    nop
    nop
    nop
    and l
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $6460
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, b
    ld h, h
    adc d
    ld h, h
    or d
    ld h, h
    or e
    ld h, h
    ld a, [$c125]
    and $c0
    ret nz

    ld a, [$c12c]
    and $c0
    ret nz

    ld a, [$c20c]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c203
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c203], a
    ret


    ldh a, [$91]
    bit 2, a
    ret z

    ld a, [$c20c]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    set 1, [hl]
    ld hl, $c213
    inc [hl]
    ld hl, $ff91
    res 1, [hl]
    inc hl
    res 7, [hl]
    ld de, $0080
    jp Jump_007_695f


    ret


    ld hl, $ff91
    bit 2, [hl]
    ret z

    ld a, [$dd1a]
    and a
    ret nz

Call_007_64be:
    ld hl, $ff91
    ld a, [hl]
    and $2f
    ld [hl+], a
    ld a, [hl]
    and $db
    ld [hl], a
    xor a
    ld [$dd18], a
    ld [$dd21], a
    ld [$dd1c], a
    ld hl, $737b
    ld de, $dd59
    ld c, $10
    call $1057
    ret


    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $64ee
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $f4
    ld h, h
    jr z, @+$67

    ld d, b
    ld h, l
    ld a, [$dd1a]
    cp $04
    ret nz

    ld a, [$dd1f]
    and a
    jr nz, jr_007_6566

    ld a, [$c125]
    bit 5, a
    jr nz, jr_007_650e

    ld a, [$c12c]
    bit 5, a
    jr z, jr_007_6513

jr_007_650e:
    xor a
    ld [$dd18], a
    ret


jr_007_6513:
    ld a, $37
    ld [$dd21], a
    ld a, $78
    ld [$c214], a
    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c213
    inc [hl]
    ret


    ld a, [$dd1a]
    cp $03
    jr nz, jr_007_6539

    ld hl, $ff92
    set 5, [hl]
    xor a
    ld [$c213], a
    ret


jr_007_6539:
    ld hl, $c214
    ld a, [hl]
    and a
    jr z, jr_007_6542

    dec [hl]
    ret nz

jr_007_6542:
    ldh a, [hJoypad]
    and a
    ret z

    ld a, $38
    ld [$dd21], a
    ld hl, $c213
    inc [hl]
    ret


    ldh a, [$91]
    bit 2, a
    ret z

Call_007_6555:
Jump_007_6555:
    xor a
    ld [$dd21], a
    xor a
    ld [$dd1c], a
    ld hl, $ff91
    ld a, [hl]
    and $2f
    ld [hl+], a
    res 6, [hl]

jr_007_6566:
    ld hl, $ff91
    res 3, [hl]
    inc hl
    res 5, [hl]
    xor a
    ld [$dd18], a
    ld [$c213], a
    ret


Call_007_6576:
    ld a, [$dd1e]
    add a
    ld c, a
    ld b, $00
    ld hl, $6585
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc c
    ld h, l
    pop de
    ld h, l
    ld a, [$c20e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c203
    add hl, bc
    ld a, [$c203]
    ld [hl], a
    ld a, $14
    add l
    ld l, a
    ld a, [$c207]
    add [hl]
    ld b, a
    ld a, $f0
    add l
    ld l, a
    ld [hl], b
    ld b, $08
    ld a, [$dd18]
    cp $09
    jr nz, jr_007_65c4

    ld a, [$c213]
    cp $02
    jr c, jr_007_65c2

    cp $06
    jr z, jr_007_65c2

    cp $07
    jr nz, jr_007_65c4

jr_007_65c2:
    ld b, $09

jr_007_65c4:
    ld a, [$dd1a]
    and a
    jr z, jr_007_65cc

    set 7, b

jr_007_65cc:
    ld a, b
    ld [$dd1c], a
    ret


    ld a, [$c20e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c201
    add hl, bc
    ld a, [$c201]
    and $01
    ld b, a
    ld a, [hl]
    and $fe
    or b
    ld [hl+], a
    inc hl
    ld b, $f8
    ld de, $664a
    ld a, [$dd18]
    cp $08
    jr nz, jr_007_65fd

    ld b, $00
    ld de, $664e

jr_007_65fd:
    ld a, [$c203]
    add b
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c207]
    dec a
    ld [hl], a
    ld a, $0e
    add l
    ld l, a
    ldh a, [$8b]
    and $f0
    jr z, jr_007_6619

    ld a, [hl]
    and a
    jr z, jr_007_6619

    dec [hl]

jr_007_6619:
    push hl
    ld hl, $dd6a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $c14f
    call Call_007_61e7
    pop hl
    ret nc

    dec hl
    dec hl
    ld a, $0a
    ld [hl], a
    ld a, $f8
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $14
    add l
    ld l, a
    ld a, $b4
    ld [hl], a
    ld a, $f7
    add l
    ld l, a
    ld a, $04
    ld [hl], a
    ret


    cp $08
    ld b, $08
    ld b, $08
    ld b, $08

Call_007_6652:
    push de
    ld a, $03
    call $0e12
    pop de
    inc de
    ld a, [de]
    sub $40
    ld [$dd7d], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20e
    add hl, bc
    ld a, [hl]
    cp $00
    jr nz, jr_007_6676

    ld de, $dd80
    jr jr_007_6685

jr_007_6676:
    cp $01
    jr z, jr_007_6682

    cp $04
    jr z, jr_007_6682

    cp $06
    jr nz, jr_007_6688

jr_007_6682:
    ld de, $dd7f

jr_007_6685:
    ld a, [de]
    dec a
    ld [de], a

jr_007_6688:
    ld a, $45
    ld [hl], a
    ld a, $f3
    add l
    ld l, a
    ld [hl], $1e
    inc hl
    ld [hl], $00
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, $58
    ld [hl], a
    ld a, $fa
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $13
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $f0
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld de, $ff90
    ld a, [de]
    ld [$c70b], a
    ld a, $10
    ld [de], a
    ld a, [$dd7d]
    add $40
    call Call_007_6e6e
    ld a, [$dd7d]
    ld b, a
    jp Jump_007_6f3e


Call_007_66ce:
    ld a, [$c117]
    cp $01
    jr z, jr_007_6700

    ld a, [$c125]
    cp $01
    jr z, jr_007_6700

    ld hl, $dd17
    bit 6, [hl]
    ret z

    res 6, [hl]
    ld a, [$dd1a]
    and a
    ret z

    cp $04
    ret z

    ld hl, $dd21
    ld b, $03
    cp $03
    jr nz, jr_007_66f7

    ld b, $16

jr_007_66f7:
    ld [hl], b
    cp $01
    ret nz

    ld a, $01
    jp Jump_007_69af


jr_007_6700:
    ld hl, $dd17
    bit 6, [hl]
    ret nz

    set 6, [hl]
    ld hl, $ff94
    res 3, [hl]
    ld a, $11
    ld [$c830], a
    ld [$c835], a
    ld a, [$dd18]
    cp $03
    ret z

    ld a, [$dd1a]
    and a
    ret z

    cp $04
    ret z

    cp $03
    jr nz, jr_007_6730

    xor a
    ld [$dd1f], a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a

jr_007_6730:
    ld a, $0e
    ld [$dd21], a
    ret


Call_007_6736:
    ldh a, [hJoypad]
    rla
    jr c, jr_007_6745

    ld bc, $0006
    add hl, bc
    rla
    jr c, jr_007_6745

    add hl, bc
    jr jr_007_674d

jr_007_6745:
    ldh a, [$94]
    rla
    jr nc, jr_007_674d

    inc hl
    inc hl
    inc hl

jr_007_674d:
    ld a, [hl+]
    ld [$dd21], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c205
    ld [hl], d
    inc hl
    ld [hl], e
    ldh a, [hJoypad]
    and $c0
    ret z

    ld a, [$dd18]
    cp $02
    jr nz, jr_007_6786

    ld a, [$dd1d]
    cp $02
    ret nc

    ld bc, $5410
    and a
    jr nz, jr_007_677b

    ldh a, [hJoypad]
    rla
    jr nc, jr_007_678c

    ld c, $06
    jr jr_007_678c

jr_007_677b:
    ld c, $08
    ldh a, [hJoypad]
    rla
    jr nc, jr_007_678c

    ld c, $0a
    jr jr_007_678c

jr_007_6786:
    ld bc, $1508
    cp $01
    ret nz

jr_007_678c:
    ld hl, $dd4e
    ld a, [hl]
    and $7f
    jr z, jr_007_6796

    dec [hl]
    ret


jr_007_6796:
    xor $80
    add c
    ld [hl], a
    and $80
    rlca
    add b
    ld [$c830], a
    ld [$c835], a
    ret


Call_007_67a5:
    ld de, $7345
    ld hl, $c125
    ld a, [hl+]
    and $1f
    cp $10
    jr z, jr_007_67c6

    ld de, $734b
    cp $12
    jr z, jr_007_67c6

    ld de, $7342
    cp $04
    jr z, jr_007_67c6

    ld a, $14
    ld [$ddb2], a
    ret


jr_007_67c6:
    ld a, [hl+]
    ld [$c811], a
    inc hl
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    ld d, a
    add a
    push bc
    ld c, a
    ld b, $00
    ld hl, $67e3
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    di
    ld h, a
    dec c
    ld l, e
    xor c
    ld l, b
    sub d
    ld l, b
    dec c
    ld l, e
    ld bc, $0168
    ld l, b
    ld bc, $fa68
    ld a, [de]
    db $dd
    cp $04
    jr z, jr_007_67fc

    and a
    ret nz

jr_007_67fc:
    ld e, c
    ld d, b
    jp Jump_007_7671


    ld a, [$dd1a]
    and a
    jr z, jr_007_680a

    cp $03
    ret c

jr_007_680a:
    ld hl, $dd1b
    ld a, [hl]
    and a
    ret nz

    ld a, d
    sub $05
    ld [hl], a
    add a
    add [hl]
    inc [hl]
    ld e, a
    ld d, $00
    ld hl, $736e
    add hl, de
    push hl
    ld a, [$c811]
    sub [hl]
    add a
    ld e, a
    ld hl, $7377
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, l
    ld d, h
    ld hl, $dd33
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $04
    ld [$dd32], a
    xor a
    ld [$dd30], a
    ld hl, $ff92
    set 2, [hl]
    ld a, [$dd18]
    cp $09
    jr nz, jr_007_6884

    ld hl, $ff91
    res 7, [hl]
    inc hl
    res 5, [hl]
    inc hl
    inc hl
    res 4, [hl]
    xor a
    ld [$dd18], a
    xor a
    ld [$dd21], a
    ld a, [$dd17]
    and $80
    rlca
    add a
    add a
    add a
    add a
    ld l, a
    ld h, $00
    ld bc, $737b
    add hl, bc
    push de
    ld de, $dd59
    ld c, $10

jr_007_6875:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_6875

    pop de
    ld a, [$dd59]
    ld [$dd69], a
    jr jr_007_688b

jr_007_6884:
    cp $0c
    jr nz, jr_007_688b

    call Call_007_6555

jr_007_688b:
    pop hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    jp hl


    ld a, [$dd1a]
    cp $04
    jr z, jr_007_689b

    and a
    ret nz

jr_007_689b:
    ld hl, $ddb2
    ld a, [hl]
    and a
    jr z, jr_007_68a4

    dec [hl]
    ret nz

jr_007_68a4:
    ld e, c
    ld d, b
    jp Jump_007_7705


    ld hl, $c21f
    ld a, [hl]
    and a
    ret nz

    inc [hl]
    ret


Call_007_68b1:
    ld a, [$dd1b]
    and a
    ret z

    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $68c8
    add hl, bc
    ldh a, [$93]
    bit 5, a
    ret nz

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $18
    ld l, b
    rst $18
    ld l, b
    adc $68
    ld hl, $da47
    ld a, [hl+]
    or [hl]
    jr nz, jr_007_68df

    xor a
    ld [$dd1b], a
    ld hl, $ff92
    res 2, [hl]
    ret


jr_007_68df:
    ld hl, $dd32
    dec [hl]
    ret nz

    ld [hl], $04
    ld a, [$dd1b]
    ld [$c811], a
    ld hl, $dd30
    inc [hl]
    ld a, [hl]
    cp $04
    jr nz, jr_007_6934

    xor a
    ld [$dd1b], a
    ld hl, $ff92
    res 2, [hl]
    ld a, [$dd18]
    cp $01
    jr z, jr_007_6934

    cp $02
    jr z, jr_007_6934

    cp $05
    jr z, jr_007_6934

    ld b, $02
    ldh a, [hJoypad]
    rra
    jr c, jr_007_691b

    ld hl, $ff91
    set 3, [hl]
    ld b, $00

jr_007_691b:
    ld a, b
    call Call_007_69af
    ld b, $ff
    ld a, [$dd18]
    cp $0a
    jr z, jr_007_6930

    ld b, $26
    cp $03
    jr z, jr_007_6930

    ld b, $03

jr_007_6930:
    ld hl, $dd21
    ld [hl], b

jr_007_6934:
    ld a, [$dd30]
    ld c, a
    ld b, $00
    ld hl, $7369
    add hl, bc
    ld de, $c203
    ld a, [de]
    add [hl]
    ld [de], a
    ld hl, $dd33
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c811]
    dec a
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    ld hl, $736f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dd30]
    jp hl


Call_007_695f:
Jump_007_695f:
    ld a, $83
    ld [$dd1c], a

Call_007_6964:
    ld hl, $dd24
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, $08
    ld [hl+], a
    ld [hl], $00
    ld a, $03
    ld [$dd1a], a
    ld a, $ff
    ld [$c219], a
    xor a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld [$dd1f], a
    ld [$c21b], a
    ldh a, [$92]
    bit 5, a
    ret nz

    ld a, [$dd18]
    cp $08
    ret z

    cp $03
    ret z

    ld b, $0f
    ld hl, $dd17
    bit 6, [hl]
    jr nz, jr_007_69aa

    ld b, $ff
    cp $0a
    jr z, jr_007_69aa

    ld b, $16
    ld hl, $ff91
    res 4, [hl]

jr_007_69aa:
    ld hl, $dd21
    ld [hl], b
    ret


Call_007_69af:
Jump_007_69af:
    ld hl, $dd1c
    ld [hl], $83

Call_007_69b4:
Jump_007_69b4:
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $724a
    add hl, bc
    ld de, $dd24
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld de, $dd26
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld de, $dd28
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    ld [$c830], a
    ld [$c835], a
    ld a, $01
    ld [$dd1a], a
    ld hl, $ff91
    res 7, [hl]
    set 6, [hl]
    inc hl
    ld a, [hl]
    or $c0
    ld [hl], a
    ld a, [$dd69]
    ld [$dd59], a
    ret


Jump_007_69f7:
    ld hl, $ff91
    ld a, [hl]
    or $d2
    ld [hl+], a
    ld a, [hl]
    or $c8
    ld [hl+], a
    set 7, [hl]
    xor a
    ld [$dd1a], a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld hl, $c211
    ld [hl+], a
    ld [hl], a
    ld [$dd48], a
    ld a, $0a
    ld [$dd2f], a
    xor a
    ld [$c21f], a
    ret


Jump_007_6a28:
    ld hl, $dd61
    ld a, [$dd59]
    sub [hl]
    ld hl, $c203
    add [hl]
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c207]
    add $07
    and $f8
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86d
    add hl, bc
    ld a, [hl+]
    and $1f
    cp $0a
    ret nz

    ld e, l
    ld d, h
    ld a, [hl]
    ld b, a
    cp $03
    jr c, jr_007_6a6e

    ld bc, $007f
    add hl, bc
    ld b, $00
    ld a, [hl+]
    cp $08
    jr nz, jr_007_6a6e

    ld a, [hl]
    cp $00
    jr nz, jr_007_6a6e

    ld b, $80

jr_007_6a6e:
    ld l, e
    ld h, d
    ld a, b
    ld [$dd39], a
    ld a, [hl-]
    ld e, l
    ld d, h
    ld hl, $dd37
    ld [hl], e
    inc hl
    ld [hl], d
    cp $01
    jr z, jr_007_6a95

    cp $02
    jr nz, jr_007_6abd

    ld a, $0d
    ld [$dd21], a
    ld de, $c207
    ld a, [de]
    add $07
    and $07
    ld b, a
    jr jr_007_6aa7

jr_007_6a95:
    ld a, $0c
    ld [$dd21], a
    ld de, $c207
    ld a, [de]
    add $07
    and $07
    ld b, a
    ld a, $07
    sub b
    ld b, a

jr_007_6aa7:
    dec de
    dec de
    dec de
    dec de
    ld hl, $dd61
    ld a, [$dd59]
    sub [hl]
    ld c, a
    ld a, [de]
    add c
    and $f8
    add b
    sub $07
    ld [de], a
    jr jr_007_6acb

jr_007_6abd:
    ld a, $0b
    ld [$dd21], a
    ld de, $c203
    ld a, [de]
    and $f8
    add $06
    ld [de], a

jr_007_6acb:
    inc de
    xor a
    ld [de], a
    ld [$dd1a], a
    ld [$c213], a
    ld [$c21f], a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld hl, $c207
    ld a, [hl+]
    add $07
    and $07
    ld [$dd35], a
    xor a
    ld [hl], a
    ld [$dd36], a
    ld a, $05
    ld [$dd18], a
    ld hl, $ff91
    ld a, [hl]
    or $f2
    ld [hl+], a
    ld a, [hl]
    or $c8
    and $cf
    ld [hl+], a
    inc hl
    ld a, [hl]
    and $f5
    ld [hl], a
    ret


    ret


Call_007_6b0e:
    ld hl, $c117
    ld a, [hl+]
    cp $0b
    jr z, jr_007_6b3d

    ld hl, $c133
    ld a, [hl+]
    cp $0b
    jr z, jr_007_6b3d

    ld hl, $c141
    ld a, [hl+]
    cp $0b
    jr z, jr_007_6b3d

    ld hl, $c11e
    ld a, [hl+]
    cp $0b
    jr z, jr_007_6b3d

    ld hl, $c13a
    ld a, [hl+]
    cp $0b
    jr z, jr_007_6b3d

    ld hl, $c148
    ld a, [hl+]
    cp $0b
    ret nz

jr_007_6b3d:
    ldh a, [$90]
    cp $10
    ret z

    ld a, [hl+]
    ld e, l
    ld d, h
    ld c, a
    ld b, $00
    ld hl, $74f1
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $75d1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$dd17]
    and $c0
    ret nz

    ldh a, [$94]
    rla
    ret c

    ldh a, [$91]
    bit 4, a
    ret nz

    inc de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc hl
    ld b, [hl]
    dec hl
    ld de, $0080
    ld c, $02

jr_007_6b77:
    ld a, [hl]
    cp $0b
    jr nz, jr_007_6b7f

    xor a
    ld [hl+], a
    ld [hl-], a

jr_007_6b7f:
    add hl, de
    dec c
    jr nz, jr_007_6b77

    ld a, b
    sub $40
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    ld [hl], $00
    ld hl, $dd3c
    ld a, $d0
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld hl, $ff94
    res 5, [hl]
    ld a, $06
    ld [$c210], a
    jp Jump_007_6bf6


    ld a, [$dd17]
    and $c0
    ret nz

    ldh a, [$94]
    rla
    ret c

    ldh a, [$91]
    bit 4, a
    ret nz

    ld hl, $ff94
    res 5, [hl]
    ld a, $06
    ld [$c210], a

Jump_007_6bc3:
    inc de
    inc de
    ld l, e
    ld h, d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    sub $40
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c203
    add hl, bc
    xor a
    ld [hl-], a
    dec hl
    dec hl
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    sub $40
    ld b, a
    push de
    call Call_007_6f3e
    pop hl
    ld a, [hl]
    call Call_007_6e6e

Jump_007_6bf6:
    ld hl, $ff91
    set 4, [hl]
    xor a
    ld [$c21c], a
    ld a, $0a
    ld [$dd18], a
    ld a, $11
    ld [$dd21], a
    ld b, $01
    ld a, [$dd1a]
    and a
    jr z, jr_007_6c13

    ld b, $83

jr_007_6c13:
    ld a, b
    ld [$dd1c], a
    ld hl, $ff91
    res 7, [hl]
    ld hl, $ff92
    res 5, [hl]
    ld hl, $dd17
    set 0, [hl]
    ld hl, $c837
    ld a, [hl]
    cp $03
    jp z, Jump_007_63c8

    cp $24
    jp z, Jump_007_63c8

    ld a, [hl-]
    cp $02
    jp z, Jump_007_63c8

    ld a, $29
    ld [$c82e], a
    ld [$c835], a
    ld a, $80
    ld [hl], a
    jp Jump_007_63c8


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    dec de
    ld a, [de]
    sub $20
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $74a3
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc de
    inc de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    add hl, bc
    ld e, l
    ld d, h
    jp Jump_007_7d45


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld b, $22
    ld hl, $7d7d
    jp Jump_007_6e52


    ld a, $80
    ld [$c838], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld b, $10
    ld hl, $7afb
    jp Jump_007_6e52


    ld a, $80
    ld [$c838], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld b, $18
    ld hl, $7bc1
    jp Jump_007_6e52


    ld a, $80
    ld [$c838], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld b, $26
    ld hl, $7c24
    jp Jump_007_6e52


    ld a, $80
    ld [$c838], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld b, $2a
    ld hl, $7c87
    jp Jump_007_6e52


    ld a, $80
    ld [$c838], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld b, $2e
    ld hl, $7670
    jp Jump_007_6e52


    ld a, [$dd18]
    cp $03
    jr nz, jr_007_6cf4

    ld a, [$c213]
    cp $05
    ret c

jr_007_6cf4:
    ld hl, $dd45
    ld a, $68
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld hl, $0004
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    bit 4, [hl]
    ret nz

    set 4, [hl]
    ld a, $80
    ld [$c838], a
    ld a, $26
    ld [$c830], a
    ld a, $03
    ld [$c831], a
    ld [$c835], a
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $11
    xor a
    ld [$ddb4], a
    ld hl, $dd3e
    ld [hl], $05
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $08
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld de, $c201
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $dd17
    set 7, [hl]
    ret


    ret


    ld a, [$dd17]
    and $c0
    ret nz

    ldh a, [$94]
    rla
    ret c

    ldh a, [$91]
    bit 4, a
    ret nz

    ld b, $3a
    ld hl, $7e60
    call Call_007_6e52
    ld hl, $dd3c
    ld a, $d0
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld hl, $ff91
    res 7, [hl]
    ld hl, $ff94
    set 5, [hl]
    ld a, $10
    ld [$c210], a
    jp Jump_007_6bf6


    ld a, [$dd17]
    and $c0
    ret nz

    ldh a, [$94]
    rla
    ret c

    ldh a, [$91]
    bit 4, a
    ret nz

    ld hl, $ff91
    res 7, [hl]
    ld hl, $ff94
    set 5, [hl]
    jp Jump_007_6bc3


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld b, $3e
    ld hl, $7e2a
    jp Jump_007_6e52


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld b, $42
    ld hl, $7e3c
    jp Jump_007_6e52


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld b, $46
    ld hl, $7e4e
    jp Jump_007_6e52


    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld b, $4a
    ld hl, $7da5
    jp Jump_007_6e52


    inc de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc hl
    ld a, [hl-]
    sub $40
    ld [$c1f1], a
    ld de, $0080
    ld c, $02

jr_007_6df0:
    ld a, [hl]
    cp $0b
    jr nz, jr_007_6df8

    xor a
    ld [hl+], a
    ld [hl-], a

jr_007_6df8:
    add hl, de
    dec c
    jr nz, jr_007_6df0

    ld a, [$c1f1]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c203
    add hl, de
    ld b, [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld a, $a5
    ld [hl+], a
    inc hl
    ld a, $44
    ld [hl+], a
    push hl
    ld a, b
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, c
    and $f8
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86f
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, [$c1f1]
    ld b, a
    add $40
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    jp Jump_007_6f04


Call_007_6e52:
Jump_007_6e52:
    push hl
    dec de
    ld a, [de]
    sub b
    add a
    ld c, a
    ld b, $00
    ld hl, $74a3
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc de
    inc de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    jp hl


Call_007_6e6e:
    ld de, $0070
    ld c, $04

jr_007_6e73:
    ld b, $04

jr_007_6e75:
    cp [hl]
    jr nz, jr_007_6e7e

    ld [hl], $00
    dec hl
    ld [hl], $00
    inc hl

jr_007_6e7e:
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_007_6e75

    add hl, de
    dec c
    jr nz, jr_007_6e73

    ret


    ld hl, $c0c7
    ld c, $08

jr_007_6e8f:
    ld de, $0005
    inc [hl]

jr_007_6e93:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_007_6e9d

    dec e
    jr nz, jr_007_6e93

jr_007_6e9b:
    jr jr_007_6e9b

jr_007_6e9d:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_007_6e8f

    ld d, $00
    jp Jump_007_6f2c


Call_007_6ea7:
    ld a, [$c0c7]
    ld hl, $c0cd
    cp [hl]
    jr nc, jr_007_6eb3

    ld hl, $c0c7

jr_007_6eb3:
    ld c, $04

jr_007_6eb5:
    ld de, $000b
    inc [hl]

jr_007_6eb9:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_007_6ec6

    dec e
    ld a, $06
    cp e
    jr nz, jr_007_6eb9

jr_007_6ec4:
    jr jr_007_6ec4

jr_007_6ec6:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_007_6eb5

    ld d, $03
    jp Jump_007_6f2c


    ld hl, $c0c7
    ld de, $c0cd
    ld c, $03

jr_007_6ed8:
    ld a, [de]
    cp [hl]
    jr nc, jr_007_6ede

    ld l, e
    ld h, d

jr_007_6ede:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_007_6ed8

    ld c, $02

jr_007_6ee9:
    ld de, $0017
    inc [hl]

jr_007_6eed:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_007_6efa

    dec e
    ld a, $12
    cp e
    jr nz, jr_007_6eed

jr_007_6ef8:
    jr jr_007_6ef8

jr_007_6efa:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_007_6ee9

    ld d, $02
    jp Jump_007_6f2c


Call_007_6f04:
Jump_007_6f04:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $07

jr_007_6f0c:
    ld a, [de]
    cp [hl]
    jr nc, jr_007_6f12

    ld l, e
    ld h, d

jr_007_6f12:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_007_6f0c

    inc [hl]

jr_007_6f1c:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_007_6f29

    dec e
    ld a, $12
    cp e
    jr nz, jr_007_6f1c

jr_007_6f27:
    jr jr_007_6f27

jr_007_6f29:
    ld [hl], b
    ld d, $01

Jump_007_6f2c:
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20c
    add hl, bc
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    ret


Call_007_6f3e:
Jump_007_6f3e:
    ld hl, $c0c8
    ld c, $08

jr_007_6f43:
    ld de, $ffff

jr_007_6f46:
    ld a, [hl]
    cp b
    jr z, jr_007_6f54

    inc hl
    dec e
    ld a, $fa
    cp e
    jr nz, jr_007_6f46

    inc hl
    jr jr_007_6f5c

jr_007_6f54:
    ld [hl], $00
    add hl, de
    dec [hl]
    ld de, $0007
    add hl, de

jr_007_6f5c:
    dec c
    jr nz, jr_007_6f43

    ret


    ld a, [$dd41]
    rla
    jr c, jr_007_6fab

    ld hl, $dd40
    dec [hl]
    ret nz

    ld hl, $6f77
    push hl
    ld a, [$dd41]
    rst $08
    ld a, a
    ld l, a
    sub h
    ld l, a
    ld hl, $dd41
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    ld a, [$dd43]
    and $01
    add $30
    ld hl, $c201
    ld [hl+], a
    ld [hl], $00
    ld hl, $dd40
    ld a, [$dd3e]
    ld [hl], a
    ret


    ld de, $dd43
    ld hl, $c201
    ld a, [de]
    and $01
    ld [hl], a
    inc hl
    ld [hl], $00
    ld hl, $dd42
    ld a, [hl]
    inc a
    ld [hl], a
    cp $07
    jr c, jr_007_6fdf

jr_007_6fab:
    ldh a, [$90]
    cp $13
    jr z, jr_007_6fb7

    ld hl, $dd41
    set 7, [hl]
    ret


jr_007_6fb7:
    ld de, $dd43
    ld hl, $c201
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, [$c70b]
    ldh [$ff90], a
    xor a
    ld [$c838], a
    ld hl, $ff91
    res 1, [hl]
    ld a, [$dd18]
    add a
    ld c, a
    ld b, $00
    ld hl, $6ff0
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_007_6fdf:
    rra
    jr c, jr_007_6fe8

    ld hl, $dd3e
    dec [hl]
    inc hl
    inc [hl]

jr_007_6fe8:
    ld hl, $dd40
    ld a, [$dd3f]
    ld [hl], a
    ret


    ld a, [bc]
    ld [hl], b
    ld e, e
    ld [hl], b
    ld d, a
    ld [hl], b
    ld a, [hl]
    ld [hl], b
    or c
    ld [hl], b
    db $d3
    ld [hl], b
    rst $18
    ld [hl], b
    ld a, [bc]
    ld [hl], b
    rst $18
    ld [hl], b
    ldh [rSVBK], a
    or $70
    inc de
    ld [hl], c
    inc d
    ld [hl], c
    ld a, [$dd1a]
    and a
    jr nz, jr_007_701c

    ld a, [$dd18]
    and a
    jr nz, jr_007_701c

    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a

jr_007_701c:
    ld hl, $737b
    ld a, [$dd17]
    rla
    jp nc, Jump_007_7117

    ld a, [$dd1a]
    and a
    jr z, jr_007_7051

    ld a, [$dd22]
    cp $1e
    jr z, jr_007_703f

    cp $1f
    jr z, jr_007_703f

    cp $20
    jr z, jr_007_703f

    cp $33
    jr nz, jr_007_7051

jr_007_703f:
    ld hl, $ff91
    ld a, [hl]
    and $bf
    ld [hl+], a
    ld a, [hl]
    and $1f
    ld [hl+], a
    res 7, [hl]
    ld a, $16
    ld [$dd21], a

jr_007_7051:
    ld hl, $738b
    jp Jump_007_7117


    xor a
    ld [$c0c6], a

Jump_007_705b:
    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl+], a
    ld a, [hl]
    and $35
    ld [hl+], a
    ld a, [hl]
    and $77
    ld [hl], a
    xor a
    ld [$dd18], a
    xor a
    ld [$dd1d], a
    ld de, $0080
    call Call_007_695f
    ld hl, $738b
    jp Jump_007_7117


    ld hl, $dd1c
    ld [hl], $00
    ld a, [$dd1a]
    and a
    jr z, jr_007_708b

    ld [hl], $83

jr_007_708b:
    ld a, [$dd18]
    cp $03
    jr nz, jr_007_7099

    ld a, [$c213]
    cp $08
    jr z, jr_007_70a2

jr_007_7099:
    ld bc, hOAMDMAFunction
    ld de, $0000
    call Call_2b22

jr_007_70a2:
    ld hl, $ff91
    res 7, [hl]
    xor a
    ld [$dd18], a
    xor a
    ld [$c213], a
    jr jr_007_70f9

    ld hl, $ff91
    ld a, [hl]
    and $3f
    ld [hl+], a
    ld a, [hl]
    and $f3
    ld [hl], a
    xor a
    ld [$dd18], a
    ld hl, $dd21
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl], a
    xor a
    ld [$dd21], a
    ld hl, $738b
    jp Jump_007_7117


    ld hl, $ff91
    res 5, [hl]
    xor a
    ld [$c213], a
    jp Jump_007_705b


    ret


    xor a
    ld [$dd18], a
    xor a
    ld [$c213], a
    ld [$c20d], a
    ld hl, $ff91
    ld a, [hl]
    or $50
    ld [hl+], a
    set 5, [hl]
    jr jr_007_70f9

    call $2b16

jr_007_70f9:
    ld b, $02
    ld a, [$dd1a]
    cp $04
    jr z, jr_007_7109

    ld b, $16
    and a
    jr nz, jr_007_7109

    ld b, $00

jr_007_7109:
    ld hl, $dd21
    ld [hl], b
    ld hl, $738b
    jp Jump_007_7117


    ret


    jp Jump_007_6555


Jump_007_7117:
    ld b, $00
    ld a, [$dd1a]
    and a
    jr z, jr_007_7125

    cp $04
    jr z, jr_007_7125

    ld b, $83

jr_007_7125:
    ld a, b
    ld [$dd1c], a
    ld de, $dd59
    ld c, $10

jr_007_712e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_712e

    ld a, [$dd59]
    ld [$dd69], a
    ret


Call_007_713b:
    ld a, $c8
    cpl
    ld h, a
    ld a, $6d
    cpl
    ld l, a
    inc hl
    ld bc, $ff7c
    add hl, bc
    add hl, de
    srl h
    rr l
    srl h
    rr l
    ld a, $98
    add h
    ld b, a
    ld c, l
    ret

Call_07_7157:
    ret

Call_07_7158:
    ld hl, $dd17
    ld bc, $009c
    xor a
    call FillMemory1
    ld hl, $c117
    ld bc, $005b
    xor a
    call FillMemory1
    ld hl, $ff91
    xor a
    ld c, $04
    call FillMemory
    ld hl, $737b
    ld de, $dd59
    ld c, $10
    call $1057
    ld a, [$dd59]
    ld [$dd69], a
    ld hl, $74d5
    ld de, $dd72
    ld c, $04

jr_007_718e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_007_718e

    ld a, $60
    ld [$dd7a], a
    xor a
    ld [$c0a5], a
    ld [$c1bf], a
    ret


    inc b
    sub b
    nop
    inc b
    ld c, b
    nop
    inc b
    add b
    rst $38
    inc b
    ret nz

    rst $38
    rst $38
    nop
    nop
    inc e
    nop
    ld bc, $0000
    nop
    inc de
    ret nz

    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc d
    ld [hl], b
    nop
    nop
    nop
    nop
    inc d
    ld h, b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc [hl]
    nop
    ret nz

    nop
    ld bc, $3402
    nop
    ret nz

    nop
    ld [de], a
    ld [de], a
    inc [hl]
    nop
    ret nz

    nop
    dec h
    dec h
    inc [hl]
    nop
    ret nz

    nop
    ld bc, $1c01
    nop
    ld h, b
    nop
    jr z, jr_007_7214

    inc [hl]
    nop
    ret nz

    nop
    jr z, jr_007_721a

    ld [de], a
    nop
    ld hl, sp+$00
    jr z, jr_007_7220

    ld [de], a
    nop
    jr @+$03

    jr z, jr_007_7226

    ld e, $00
    ld b, b
    nop
    ld bc, $1002
    nop
    jr nz, jr_007_7208

jr_007_7208:
    jr z, jr_007_7232

    ld e, $00
    ld b, b
    nop
    ld bc, $1e02
    nop
    ld b, b
    nop

jr_007_7214:
    ld [de], a
    ld [de], a
    ld e, $00
    ld b, b
    nop

jr_007_721a:
    dec h
    dec h
    ld e, $00
    add b
    nop

jr_007_7220:
    ld c, $0e
    ld e, $00
    jr nc, jr_007_7226

jr_007_7226:
    inc l
    inc l
    ld e, $00
    jr nc, jr_007_722c

jr_007_722c:
    inc l
    inc l
    ld e, $00
    jr nc, jr_007_7232

jr_007_7232:
    inc l
    inc l
    ld e, $00
    jr nc, jr_007_7238

jr_007_7238:
    inc l
    inc l
    stop
    jr nz, jr_007_723e

jr_007_723e:
    ld bc, $1002
    nop
    jr nz, jr_007_7244

jr_007_7244:
    inc l
    inc l
    rst $30
    ld a, [bc]
    push af
    inc c
    nop
    rst $38
    nop
    nop
    nop
    ld a, $0b
    nop
    add b
    cp $fa
    rst $38
    nop
    ld [hl-], a
    dec de
    nop
    add b
    db $fd
    ldh a, [rIE]
    nop
    ld h, $0b
    nop
    ld b, b
    rst $38
    cp $ff
    nop
    ld a, [hl-]
    stop
    ret nc

    cp $fb
    rst $38
    nop
    ld a, [hl-]
    dec de
    nop
    ld [hl], b
    cp $fb
    rst $38
    nop
    ld [hl-], a
    dec de
    nop
    db $10
    cp $fc
    rst $38
    nop
    ld a, [hl+]
    dec de
    nop
    or b
    db $fd
    ld sp, hl
    rst $38
    nop
    ld hl, $001b
    ld d, b
    db $fd
    ld hl, sp-$01
    nop
    add hl, de
    dec de
    nop
    ldh a, [$fc]
    rst $30
    rst $38
    nop
    db $10
    dec de
    nop
    sub b
    db $fc
    or $ff
    nop
    ld [$001b], sp
    jr nc, @-$02

    push af
    rst $38
    nop
    ld bc, $001b
    jr nc, @-$02

    push af
    rst $38
    nop
    ld bc, $001b
    ret nc

    cp $fb
    rst $38
    nop
    ld a, [hl-]
    dec de
    nop
    ld [hl], b
    cp $fb
    rst $38
    nop
    ld [hl-], a
    dec de
    nop
    db $10
    cp $fc
    rst $38
    nop
    ld a, [hl+]
    dec de
    nop
    or b
    db $fd
    ld sp, hl
    rst $38
    nop
    ld hl, $001b
    ld d, b
    db $fd
    ld hl, sp-$01
    nop
    add hl, de
    dec de
    nop
    ldh a, [$fc]
    rst $30
    rst $38
    nop
    db $10
    dec de
    nop
    sub b
    db $fc
    or $ff
    nop
    ld [$001b], sp
    jr nc, @-$02

    push af
    rst $38
    nop
    ld bc, $001b
    jr nc, @-$02

    push af
    rst $38
    nop
    ld bc, $001b

jr_007_72fa:
    jr nz, jr_007_72fa

    db $fd
    rst $38
    nop
    jr z, jr_007_7350

    nop
    add b
    db $fd
    db $f4
    rst $38
    nop
    inc h
    ld d, b
    nop
    nop
    cp $fd
    rst $38
    nop
    inc h
    ld l, h
    nop
    add b
    db $fd
    ld hl, sp-$01
    ld b, b
    rra
    ld l, l
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, $1b
    nop
    jr z, jr_007_7364

    ld e, b
    rst $38
    jr jr_007_7358

    ld c, b
    rst $38
    ld [bc], a
    ld c, $17
    ld [hl], $18
    dec [hl]
    dec de
    inc [hl]
    ld [bc], a
    ld c, $21
    ld [hl], $18
    dec [hl]
    dec de
    inc [hl]
    nop
    add b
    rst $38
    add b
    nop
    ld h, b
    rst $38
    and b
    nop
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b

jr_007_7350:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    inc b

jr_007_7358:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    inc b
    inc b
    inc b

jr_007_7364:
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    cp $fe
    nop
    xor h
    halt
    ld a, [bc]
    and d
    ld a, d
    inc d
    ld [$007c], a
    nop
    db $fc
    rst $38
    inc bc
    ld [$080f], sp
    add hl, bc
    inc b
    add hl, bc
    dec bc
    ld bc, $0102
    inc b
    inc bc
    ld bc, $0103
    add hl, bc
    ld [$080f], sp
    inc c
    dec b
    inc c
    dec bc
    ld bc, $0102
    inc b
    ld [bc], a
    ld bc, $0102
    add hl, bc
    ld [$080f], sp
    inc c
    dec b
    inc c
    dec bc
    ld bc, $0102
    inc b
    ld [bc], a
    ld bc, $0102
    ld a, [bc]
    ld [$080f], sp
    dec c
    dec b
    dec c
    dec bc
    ld bc, $0102
    inc b
    ld bc, $0101
    ld bc, $0801
    rrca
    ld [$0509], sp
    add hl, bc
    dec bc
    ld bc, $0106
    inc b
    inc bc
    ld bc, $0103
    dec b
    inc b
    rrca
    ld [$0309], sp
    add hl, bc
    add hl, bc
    ld bc, $0102
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    dec bc
    rrca
    ld [$0809], sp
    add hl, bc
    dec c
    ld bc, $0102
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld [$080f], sp
    add hl, bc
    inc bc
    add hl, bc
    dec c
    ld bc, $0107
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    rst $38
    ret nz

    nop
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    nop
    nop
    nop
    ld b, b
    rst $38
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    db $fc
    rst $38
    ld [bc], a
    ld a, [$07ff]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    add b
    nop
    ld bc, $00fb
    rlca
    nop
    nop
    db $fc
    rst $38
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    nop
    nop
    add b
    nop
    ld bc, $0000
    rlca
    nop
    nop
    ld a, h
    rst $38
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    rlca
    nop
    nop
    add b
    nop
    ld bc, $0000
    rlca
    nop
    nop
    inc b
    nop
    ld bc, $00fa
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
    add b
    nop
    ld [bc], a
    ei
    nop
    nop
    nop
    nop
    add h
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ld a, [$0908]
    dec b
    ld a, [$0908]
    dec b
    ld [$0515], sp
    add hl, bc
    ld [$05fb], sp
    add hl, bc
    ld a, [$0908]
    dec b
    ld a, [$0908]
    dec b
    inc c
    inc de
    dec b
    ld [$fe0c], sp
    dec b
    ld [$221f], sp
    jr nz, @+$26

    ld hl, $2023
    inc h
    ld d, d
    ld d, e
    nop
    ld bc, $2100
    rst $30
    ld c, h
    nop
    nop
    ld bc, $0049
    nop
    ei
    ld c, d
    ld bc, $0500
    ld c, e
    ld bc, $ff00
    ld c, b
    ld [bc], a
    nop
    add hl, bc
    ld c, l
    ld [bc], a
    nop
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $0000
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
    ld [de], a
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
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    ld e, c
    ld l, e
    xor d
    ld l, e
    ld a, [hl]
    ld l, h
    add c
    ld l, l
    sub e
    ld l, h
    dec c
    ld l, e
    ld c, b
    ld l, h
    ld l, [hl]
    ld l, h
    xor b
    ld l, h
    cp l
    ld l, h
    jp nc, $e76c

    ld l, h
    ld c, [hl]
    ld l, l
    ld c, a
    ld l, l
    sbc l
    ld l, l
    xor l
    ld l, l
    cp l
    ld l, l
    call $dd6d
    ld l, l
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add b
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add c
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    add d
    ld a, a
    add e
    ccf
    ccf
    ccf
    add h
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add l
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add [hl]
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    add a
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    ccf
    adc b
    ld de, $0273
    dec l
    ld [hl], d
    ld [bc], a
    inc bc
    ld [hl], c
    ld [bc], a
    ld b, $73
    ld [bc], a
    inc b
    db $10
    ld [bc], a
    ld b, $72
    ld [bc], a
    ld h, d
    halt
    dec b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    db $10
    halt
    ld b, $c9

Jump_007_7671:
    ld a, $0c
    ld [$c82f], a
    ld [$c835], a
    ld h, d
    ld l, e
    push hl
    ld a, $44
    ld [hl+], a
    ld [hl], $01
    call $331d
    ld a, $34
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
    call Call_000_338d
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
    ld a, [$d941]
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    jp Call_000_1685


    push de
    push de
    ld hl, $7eba
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d955]
    add [hl]
    ld [$c809], a
    ld hl, $7ebf
    swap e
    srl e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld bc, $007a
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop hl
    call Call_000_338d
    ld de, $c7f7
    push de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$c809]
    ld [de], a
    inc de
    xor a
    ld [de], a
    pop de
    jp Call_000_1685


Jump_007_7705:
    ld h, d
    ld l, e
    push hl
    push hl
    call Call_000_338d
    push hl
    ld de, $c7f1
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    dec de
    call Call_000_1685
    pop hl
    call $313d
    push de
    call $332d
    pop de
    ld a, $73
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, d
    ld [hl+], a
    ld [$c809], a
    inc hl
    inc hl
    ld a, $80
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [$c80a], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $85
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $41
    ld [hl+], a
    pop de
    inc de
    inc de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [$c80b], a
    add $40
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, [$c809]
    and $f8
    ld [hl+], a
    ld a, [$c80a]
    and $f8
    ld [hl+], a
    ld [hl], $30
    ld hl, $c0a6
    ld b, $00
    add hl, bc
    ld [hl], $08
    ld a, $40
    add c
    ld c, a
    pop hl
    ld a, $43
    ld b, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    or a
    jr nz, jr_007_777e

    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl-], a

jr_007_777e:
    ld de, $0080
    add hl, de
    ld a, [hl]
    or a
    jr nz, jr_007_7789

    ld a, b
    ld [hl+], a
    ld [hl], c

jr_007_7789:
    ld a, [$c80b]
    ld b, a
    jp $32f5


Jump_007_7790:
    call Call_007_77a7
    ld a, [$c80b]
    bit 0, a
    ret nz

    jr jr_007_780b

Call_007_779b:
    call Call_007_77a7
    ld a, [$c80b]
    bit 0, a
    ret nz

    jp Jump_007_7857


Call_007_77a7:
    ld [$c80b], a
    push de
    push de
    ld hl, $7eba
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d957]
    add [hl]
    ld [$c809], a
    ld hl, $7f37
    swap e
    srl e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [hl]
    and $f0
    ld c, a
    swap a
    ld [$c80c], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    push bc
    ld bc, $007a
    add hl, bc
    pop bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    ld [hl], a
    pop hl
    call Call_000_338d
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$c809]
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Jump_007_780b:
jr_007_780b:
    ld hl, $db16
    ld c, $20

jr_007_7810:
    ld a, $5e
    cp [hl]
    jr nz, jr_007_784c

    push hl
    inc hl
    inc hl
    ld a, [$c80c]
    cp [hl]
    jr nz, jr_007_784b

    inc hl
    ld de, $781f
    push de
    ld a, [hl+]
    or a
    jr z, jr_007_7854

    cp $20
    jp c, Jump_007_7910

    cp $40
    jp c, Jump_007_7927

    cp $60
    jp c, Jump_007_7953

    cp $70
    jp c, Jump_007_796b

    cp $90
    jp c, Jump_007_797d

    cp $b0
    jp c, Jump_007_7995

    cp $d0
    jp c, Jump_007_793a

    pop de

jr_007_784b:
    pop hl

jr_007_784c:
    ld de, $0010
    add hl, de
    dec c
    jr nz, jr_007_7810

    ret


jr_007_7854:
    pop de
    pop hl
    ret


Jump_007_7857:
jr_007_7857:
    ld hl, $db16
    ld c, $20

jr_007_785c:
    ld a, $5e
    cp [hl]
    jr nz, jr_007_7896

    push hl
    inc hl
    inc hl
    ld a, [$c80c]
    cp [hl]
    jr nz, jr_007_7895

    inc hl
    ld de, $786b
    push de
    ld a, [hl+]
    or a
    jr z, jr_007_789e

    cp $20
    jp c, Jump_007_7910

    cp $40
    jr c, jr_007_7894

    cp $60
    jp c, Jump_007_7953

    cp $70
    jp c, Jump_007_796b

    cp $90
    jp c, Jump_007_797d

    cp $b0
    jp c, Jump_007_7995

    cp $d0
    jr c, jr_007_7894

jr_007_7894:
    pop de

jr_007_7895:
    pop hl

jr_007_7896:
    ld de, $0010
    add hl, de
    dec c
    jr nz, jr_007_785c

    ret


jr_007_789e:
    pop de
    pop hl
    ret


Jump_007_78a1:
    call Call_007_78ac
    jp Jump_007_780b


Call_007_78a7:
    call Call_007_78ac
    jr jr_007_7857

Call_007_78ac:
    ld [$c80b], a
    push de
    push de
    ld hl, $7eba
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d96b]
    add [hl]
    ld [$c809], a
    ld hl, $7f57
    swap e
    srl e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [hl]
    and $f0
    ld c, a
    swap a
    ld [$c80c], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    push bc
    ld bc, $007a
    add hl, bc
    pop bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    or c
    ld [hl], a
    pop hl
    call Call_000_338d
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$c809]
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Jump_007_7910:
    add a
    add a
    add a
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $c216
    add hl, de
    ld a, [$c80b]
    inc a
    ld [hl], a
    call Call_007_79ad
    pop hl
    ret


Jump_007_7927:
    sub $20
    push hl
    ld [$c80e], a
    call Call_007_7a5e
    ld a, [$c80b]
    push bc
    call Call_007_78a7
    pop bc
    pop hl
    ret


Jump_007_793a:
    sub $b0
    push hl
    ld [$c80e], a
    call Call_007_7a80
    ld a, [$c80b]
    bit 0, a
    jr nz, jr_007_7951

    and $02
    push bc
    call Call_007_779b
    pop bc

jr_007_7951:
    pop hl
    ret


Jump_007_7953:
    sub $40
    add a
    add a
    add a
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db20
    add hl, de
    ld a, [$c80b]
    inc a
    ld [hl], a
    call Call_007_79ad
    pop hl
    ret


Jump_007_796b:
    push hl
    ld hl, $c7f3
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$c80b]
    ld [hl], a
    inc a
    call Call_007_79ad
    pop hl
    ret


Jump_007_797d:
    sub $70
    add a
    add a
    add a
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db18
    add hl, de
    ld a, [$c80b]
    inc a
    ld [hl], a
    call Call_007_79bd
    pop hl
    ret


Jump_007_7995:
    sub $90
    add a
    add a
    add a
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db18
    add hl, de
    ld a, [$c80b]
    inc a
    ld [hl], a
    call Call_007_79d2
    pop hl
    ret


Call_007_79ad:
    bit 0, a
    ld e, $2d
    jr z, jr_007_79b5

    ld e, $2c

jr_007_79b5:
    ld a, e
    ld [$c82f], a
    ld [$c835], a
    ret


Call_007_79bd:
    bit 0, a
    ld e, $30
    jr z, jr_007_79ca

    dec a
    ld e, $2a
    jr z, jr_007_79ca

    ld e, $2b

jr_007_79ca:
    ld a, e
    ld [$c82f], a
    ld [$c835], a
    ret


Call_007_79d2:
    bit 0, a
    ret z

    dec a
    jr z, jr_007_79e7

    ld de, $0005
    add hl, de
    ld a, [hl+]
    or a
    call nz, Call_007_7a0c
    ld a, [hl]
    or a
    call nz, Call_007_7a35
    ret


jr_007_79e7:
    ld de, $0005
    add hl, de
    ld a, [hl+]
    or a
    call nz, Call_007_79f3
    ld a, [hl]
    or a
    ret z

Call_007_79f3:
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db19
    add hl, de
    ld a, [hl]
    pop hl
    or a
    ret z

    ld a, $2f
    ld [$c82f], a
    ld [$c835], a
    ret


Call_007_7a0c:
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db1a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    or a
    jr nz, jr_007_7a33

    ld a, [hl]
    or a
    jr z, jr_007_7a2b

    cp $20
    jr c, jr_007_7a33

jr_007_7a2b:
    ld a, $2e
    ld [$c82f], a
    ld [$c835], a

jr_007_7a33:
    pop hl
    ret


Call_007_7a35:
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db1a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    jr nz, jr_007_7a5c

    ld a, [hl]
    or a
    jr z, jr_007_7a54

    cp $20
    jr c, jr_007_7a5c

jr_007_7a54:
    ld a, $2e
    ld [$c82f], a
    ld [$c835], a

jr_007_7a5c:
    pop hl
    ret


Call_007_7a5e:
    ld hl, $db16
    ld de, $0010

jr_007_7a64:
    ld a, $5e
    cp [hl]
    jr z, jr_007_7a6c

jr_007_7a69:
    add hl, de
    jr jr_007_7a64

jr_007_7a6c:
    inc hl
    inc hl
    ld a, [$c80e]
    cp [hl]
    jr z, jr_007_7a78

    dec hl
    dec hl
    jr jr_007_7a69

jr_007_7a78:
    ld de, $000b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


Call_007_7a80:
    ld hl, $db16
    ld de, $0010

jr_007_7a86:
    ld a, $5e
    cp [hl]
    jr z, jr_007_7a8e

jr_007_7a8b:
    add hl, de
    jr jr_007_7a86

jr_007_7a8e:
    inc hl
    inc hl
    ld a, [$c80e]
    cp [hl]
    jr z, jr_007_7a9a

    dec hl
    dec hl
    jr jr_007_7a8b

jr_007_7a9a:
    ld de, $000b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


    push de
    push de
    ld hl, $7eba
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d99a]
    add [hl]
    ld [$c809], a
    ld hl, $7ee7
    swap e
    srl e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld bc, $007a
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop hl
    call Call_000_338d
    ld de, $c7f7
    push de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$c809]
    ld [de], a
    inc de
    xor a
    ld [de], a
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $a5
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    ld a, [$d9b2]
    add $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $a5
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $16
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $a6
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    ld a, [$d9b3]
    add $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $a6
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $16
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $a7
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    add $10
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $a7
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $16
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $eb
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    ld a, [$d9f8]
    add $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $eb
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $16
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $ec
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    ld a, [$d9f9]
    add $06
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $ec
    ld hl, $ff90
    ld a, [hl]
    ld [$c70b], a
    ld [hl], $16
    pop de
    jp Call_000_1685


    push de
    push de
    ld hl, $7eba
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d9b4]
    add $04
    add [hl]
    ld [$c809], a
    ld hl, $7f0f
    swap e
    srl e
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld bc, $007a
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop hl
    call Call_000_338d
    ld de, $c7f7
    push de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$c809]
    ld [de], a
    inc de
    xor a
    ld [de], a
    pop de
    jp Call_000_1685


Jump_007_7d45:
    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld de, $007f
    add hl, de
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    pop hl
    call Call_000_338d
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$d9ec]
    add $02
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_007_7dee
    inc hl
    set 1, [hl]
    ld a, $02
    jp $0e12


    ld h, d
    ld l, e
    call Call_007_7dcd
    call Call_000_338d
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d990]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_007_7dee
    inc hl
    set 0, [hl]
    ld a, $02
    jp $0e12


    ld h, d
    ld l, e
    call Call_007_7dcd
    call Call_000_338d
    push hl
    call Call_000_1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9a2]
    add $04
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_007_7dee
    inc hl
    set 2, [hl]
    ld a, $02
    jp $0e12


Call_007_7dcd:
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    pop hl
    ret


Call_007_7dee:
    ld hl, $c858
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret nz

    ld a, $44
    ld [$c82f], a
    ld [$c835], a
    ret


Call_007_7dff:
    push hl
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
    pop hl
    call Call_000_338d
    ld de, $c7fd
    push de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    pop de
    jp Call_000_1685


    ld h, d
    ld l, e
    ld a, $37
    ld [$c82f], a
    ld [$c835], a
    call Call_007_7dff
    ld a, $01
    jp $0ddd


    ld h, d
    ld l, e
    ld a, $38
    ld [$c82f], a
    ld [$c835], a
    call Call_007_7dff
    ld a, $02
    jp $0ddd


    ld h, d
    ld l, e
    ld a, $39
    ld [$c82f], a
    ld [$c835], a
    call Call_007_7dff
    ld a, $03
    jp $0ddd


    ld h, d
    ld l, e
    push hl
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld [hl], $01
    ld de, $0080
    add hl, de
    ld a, $01
    ld [hl-], a
    ld a, $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, $01
    ld [hl-], a
    ld [hl], $00
    call $331d
    ld a, c
    dec a
    ld [$c70c], a
    ld a, $f4
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $14
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call Call_000_338d
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
    ld a, [$da01]
    add $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $f4
    pop de
    jp Call_000_1685


    nop
    inc b
    ld [$0004], sp
    ld d, d
    nop
    ld d, d
    ld bc, $0252
    ld d, d
    inc bc
    ld d, d
    inc b
    ld d, d
    dec b
    ld d, d
    ld b, $52
    rlca
    nop
    nop
    nop
    nop
    ld d, d
    ld [$0952], sp
    ld d, d
    inc b
    ld d, d
    dec b
    ld d, d
    ld b, $52
    rlca
    ld d, d
    nop
    ld d, d
    ld bc, $0252
    ld d, d
    inc bc
    ld d, d
    ld a, [bc]
    ld d, d
    dec bc
    ld d, d
    inc c
    ld d, d
    dec c
    ld d, d
    ld c, $52
    rrca
    ld d, d
    db $10
    ld d, d
    ld de, $0000
    nop
    nop
    ld d, d
    ld [de], a
    ld d, d
    inc de
    ld d, d
    ld c, $52
    rrca
    ld d, d
    db $10
    ld d, d
    ld de, $0a52
    ld d, d
    dec bc
    ld d, d
    inc c
    ld d, d
    dec c
    ld d, d
    inc d
    ld d, d
    dec d
    ld d, d
    ld d, $52
    rla
    ld d, d
    jr jr_007_7f6c

    add hl, de
    ld d, d
    ld a, [de]
    ld d, d
    dec de
    nop
    nop
    nop
    nop
    ld d, d
    inc e
    ld d, d
    dec e
    ld d, d
    jr jr_007_7f7c

    add hl, de
    ld d, d
    ld a, [de]
    ld d, d
    dec de
    ld d, d
    inc d
    ld d, d
    dec d
    ld d, d
    ld d, $52
    rla
    jr jr_007_7f39

jr_007_7f39:
    jr @+$03

    jr jr_007_7f3f

    jr @+$05

jr_007_7f3f:
    jr jr_007_7f45

    jr @+$07

    jr jr_007_7f4b

jr_007_7f45:
    jr @+$09

    jr jr_007_7f51

    jr @+$0b

jr_007_7f4b:
    jr jr_007_7f57

    jr jr_007_7f5a

    jr jr_007_7f5d

jr_007_7f51:
    jr jr_007_7f60

    jr jr_007_7f63

    jr jr_007_7f66

jr_007_7f57:
    dec d
    nop
    dec d

jr_007_7f5a:
    ld bc, $0215

jr_007_7f5d:
    dec d
    inc bc
    dec d

jr_007_7f60:
    inc b
    dec d
    dec b

jr_007_7f63:
    dec d
    ld b, $15

jr_007_7f66:
    rlca
    dec d
    ld [$0915], sp
    dec d

jr_007_7f6c:
    ld a, [bc]
    dec d
    dec bc
    dec d
    inc c
    dec d
    dec c
    dec d
    ld c, $15
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_007_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
