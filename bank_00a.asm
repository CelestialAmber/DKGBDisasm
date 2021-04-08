; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [$c102]
    cp $10
    jr nc, jr_00a_4039

    cp $08
    ret nz

    ld a, [$c10a]
    ld hl, $46e7
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl-]
    ld d, a
    ld a, [hl]
    ld b, a
    and $f0
    ld c, a
    swap a
    or c
    ld hl, $c0fc
    ld [hl+], a
    ld a, b
    and $0f
    swap a
    ld [hl+], a
    inc hl
    inc hl
    ld a, d
    and $f0
    ld c, a
    swap a
    or c
    ld [hl+], a
    ld a, d
    and $0f
    swap a
    ld [hl], a
    ret


jr_00a_4039:
    ld a, [$c10d]
    or a
    jr z, jr_00a_4050

    bit 0, a
    jr nz, jr_00a_4050

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    ret


jr_00a_4050:
    ld a, [$c109]
    swap a
    ld c, a
    srl c
    add c
    ld b, $00
    ld c, a
    ld hl, $c10b
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    push de
    ld hl, $46e3
    add hl, bc
    ld e, $08
    ld b, $02

jr_00a_406c:
    cp [hl]
    jr z, jr_00a_407b

    ld d, $00
    add hl, de
    ld d, a
    ld a, $08
    add c
    ld c, a
    ld a, d
    dec b
    jr nz, jr_00a_406c

jr_00a_407b:
    ld a, c
    ld [$c10a], a
    pop de
    push de
    inc hl
    ld a, [hl+]
    ld d, a
    and $f0
    ld e, a
    swap a
    or e
    ld e, a
    ld a, [hl+]
    inc hl
    inc hl
    ld b, a
    and $f0
    ld c, a
    swap a
    or c
    ld c, a
    push hl
    ld hl, $c0fc
    ld a, e
    ld [hl+], a
    ld a, d
    and $0f
    swap a
    ld [hl+], a
    inc hl
    inc hl
    ld a, c
    ld [hl+], a
    ld a, b
    and $0f
    swap a
    ld [hl], a
    pop hl
    xor a
    ld [$c102], a
    ld a, [hl+]
    ld [$c109], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, [$c10d]
    bit 0, a
    jr nz, jr_00a_40cf

    add hl, de
    ld a, [hl]
    cp $0d
    jr z, jr_00a_40d3

    ld de, $c10b
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


jr_00a_40cf:
    xor a
    ld [$c10d], a

jr_00a_40d3:
    ld hl, $c109
    ld a, [hl]
    add $04
    and $07
    ld [hl+], a
    ret


    ld a, [$c102]
    cp $20
    jr nc, jr_00a_411a

    cp $10
    ret nz

    ld a, [$c10a]
    ld hl, $46e7
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl-]
    ld d, a
    ld a, [hl]
    ld b, a
    and $f0
    ld c, a
    swap a
    or c
    ld hl, $c0fc
    ld [hl+], a
    ld a, b
    srl a
    and $0f
    swap a
    ld [hl+], a
    inc hl
    inc hl
    ld a, d
    and $f0
    ld c, a
    swap a
    or c
    ld [hl+], a
    ld a, d
    srl a
    and $0f
    swap a
    ld [hl], a
    ret


jr_00a_411a:
    ld a, [$c10d]
    or a
    jr z, jr_00a_4131

    bit 0, a
    jr nz, jr_00a_4131

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl], $18
    ret


jr_00a_4131:
    ld a, [$c109]
    swap a
    ld c, a
    srl c
    add c
    ld b, $00
    ld c, a
    ld hl, $c10b
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    push de
    ld hl, $46e3
    add hl, bc
    ld e, $08
    ld b, $02

jr_00a_414d:
    cp [hl]
    jr z, jr_00a_415c

    ld d, $00
    add hl, de
    ld d, a
    ld a, $08
    add c
    ld c, a
    ld a, d
    dec b
    jr nz, jr_00a_414d

jr_00a_415c:
    ld a, c
    ld [$c10a], a
    pop de
    push de
    inc hl
    ld a, [hl+]
    ld d, a
    and $f0
    ld e, a
    swap a
    or e
    ld e, a
    ld a, [hl+]
    inc hl
    inc hl
    ld b, a
    and $f0
    ld c, a
    swap a
    or c
    ld c, a
    push hl
    ld hl, $c0fc
    ld a, e
    ld [hl+], a
    ld a, d
    srl a
    and $0f
    swap a
    ld [hl+], a
    inc hl
    inc hl
    ld a, c
    ld [hl+], a
    ld a, b
    srl a
    and $0f
    swap a
    ld [hl], a
    pop hl
    xor a
    ld [$c102], a
    ld a, [hl+]
    ld [$c109], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, [$c10d]
    bit 0, a
    jr nz, jr_00a_41b4

    add hl, de
    ld a, [hl]
    cp $0d
    jr z, jr_00a_41b8

    ld de, $c10b
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


jr_00a_41b4:
    xor a
    ld [$c10d], a

jr_00a_41b8:
    ld hl, $c109
    ld a, [hl]
    add $04
    and $07
    ld [hl+], a
    ret


    ld a, [$c0fa]
    cp $f0
    ret c

    call $7ab2
    jp Jump_00a_7c82


    ld a, [$c0fe]
    cp $f0
    jr nc, jr_00a_424c

    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    ld de, $0006
    add hl, de
    push hl
    call Call_00a_41f2
    pop hl
    jr z, jr_00a_424c

    ld de, $0080
    add hl, de
    call Call_00a_41f2
    jr z, jr_00a_424c

    ret


Call_00a_41f2:
    ld a, [hl+]
    cp $42
    ret nz

    ld a, [hl]
    cp $80
    ret z

    cp $81
    ret z

    cp $82
    ret z

    cp $83
    ret


    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_424c

    ld a, [$c0fe]
    cp $f0
    jr nc, jr_00a_424c

    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    inc hl
    inc hl
    push hl
    call Call_00a_41f2
    pop hl
    jr z, jr_00a_424c

    inc hl
    inc hl
    inc hl
    inc hl
    call Call_00a_41f2
    jr z, jr_00a_424c

    ret


    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_424c

    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    push hl
    dec hl
    dec hl
    call Call_00a_41f2
    pop hl
    jr z, jr_00a_424c

    inc hl
    inc hl
    call Call_00a_41f2
    jr z, jr_00a_424c

    ret


Jump_00a_424c:
jr_00a_424c:
    call Call_00a_7adf
    jp Jump_00a_7c82


    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_424c

    ld a, [$c0fe]
    cp $08
    jr c, jr_00a_424c

    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    inc hl
    inc hl
    push hl
    call Call_00a_41f2
    pop hl
    jr z, jr_00a_424c

    dec hl
    dec hl
    dec hl
    dec hl
    call Call_00a_41f2
    jr z, jr_00a_424c

    ret


    ld a, [$c0fe]
    cp $08
    jp c, Jump_00a_424c

    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    ld de, $fffa
    add hl, de
    push hl
    call Call_00a_41f2
    pop hl
    jr z, jr_00a_424c

    ld de, $0080
    add hl, de
    call Call_00a_41f2
    jr z, jr_00a_424c

    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $08
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0004
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_42cb

    inc hl
    ld a, [hl-]
    cp $03
    jr z, jr_00a_430b

    cp $00
    jr z, jr_00a_430b

    cp $01
    jr z, jr_00a_4329

    cp $04
    jp z, Jump_00a_424c

jr_00a_42cb:
    ld e, $80
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_42d9

    inc hl
    ld a, [hl-]
    cp $02
    jr z, jr_00a_4305

jr_00a_42d9:
    ld de, $fffc
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $01
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c100
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $2c
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_4305:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


jr_00a_430b:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_4329:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld [hl], $e0
    ld e, $07
    add hl, de
    ld a, $02
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0004
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4371

    inc hl
    ld a, [hl-]
    cp $04
    jp z, Jump_00a_424c

    cp $01
    jr z, jr_00a_43ce

    cp $00
    jp z, Jump_00a_43f0

    cp $03
    jr z, jr_00a_43f0

jr_00a_4371:
    ld e, $80
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_437f

    inc hl
    ld a, [hl-]
    cp $02
    jr z, jr_00a_43b1

jr_00a_437f:
    ld de, $fffc
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $01
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ff
    ld [hl+], a
    ld [hl], $e0
    ld de, $0003
    add hl, de
    ld a, $01
    ld [hl+], a
    ld a, $2c
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_43b1:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld a, $03
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_43ce:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Jump_00a_43f0:
jr_00a_43f0:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $08
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0004
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4414

    inc hl
    ld a, [hl-]
    cp $02
    jr z, jr_00a_444a

jr_00a_4414:
    ld de, $ff7c
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4427

    inc hl
    ld a, [hl-]
    cp $00
    jr z, jr_00a_4465

    cp $02
    jr z, jr_00a_4487

jr_00a_4427:
    ld de, $0004
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $04
    jp z, Jump_00a_424c

    cp $03
    jr z, jr_00a_44a4

    cp $00
    jr z, jr_00a_44a4

    cp $01
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


jr_00a_444a:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], $20
    ld e, $07
    add hl, de
    ld a, $03
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_4465:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ff
    ld [hl+], a
    ld [hl], $c0
    ld de, $0003
    add hl, de
    ld a, $00
    ld [hl+], a
    ld a, $2b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_4487:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c100
    ld a, $ff
    ld [hl+], a
    ld [hl], $e0
    ld de, $0003
    add hl, de
    ld a, $00
    ld [hl+], a
    ld a, $2a
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_44a4:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $08
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff7c
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_44ee

    inc hl
    ld a, [hl-]
    cp $04
    jp z, Jump_00a_424c

    cp $03
    jr z, jr_00a_452b

    cp $00
    jr z, jr_00a_452b

    cp $02
    jr z, jr_00a_454a

jr_00a_44ee:
    ld de, $0004
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4501

    inc hl
    ld a, [hl-]
    cp $00
    jr z, jr_00a_4550

    cp $01
    jr z, jr_00a_456f

jr_00a_4501:
    ld e, $7c
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $01
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], $20
    ld e, $07
    add hl, de
    ld a, $01
    ld [hl+], a
    ld a, $2c
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_452b:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $c0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld a, $2b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_454a:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


jr_00a_4550:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_456f:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], $20
    ld e, $03
    add hl, de
    ld a, $02
    ld [hl+], a
    ld a, $29
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fffc
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_45b5

    inc hl
    ld a, [hl-]
    cp $04
    jp z, Jump_00a_424c

    cp $03
    jr z, jr_00a_45f3

    cp $00
    jr z, jr_00a_45f3

    cp $02
    jr z, jr_00a_45f9

jr_00a_45b5:
    ld de, $0080
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_45c4

    inc hl
    ld a, [hl-]
    cp $01
    jr z, jr_00a_461d

jr_00a_45c4:
    ld e, $04
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $02
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], $20
    ld e, $03
    add hl, de
    ld a, $03
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_45f3:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


jr_00a_45f9:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld a, $2a
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_461d:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $2c
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $08
    ret c

    xor a
    ld [hl+], a
    ld b, h
    ld c, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fffc
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4669

    inc hl
    ld a, [hl-]
    cp $04
    jp z, Jump_00a_424c

    cp $03
    jr z, jr_00a_46a2

    cp $00
    jr z, jr_00a_46a2

    cp $02
    jr z, jr_00a_46c0

jr_00a_4669:
    ld de, $0080
    add hl, de
    ld a, [hl]
    cp $0a
    jr nz, jr_00a_4678

    inc hl
    ld a, [hl-]
    cp $01
    jr z, jr_00a_46dd

jr_00a_4678:
    ld e, $04
    add hl, de
    ld a, [hl+]
    cp $0a
    jp nz, Jump_00a_424c

    ld a, [hl-]
    cp $02
    jp nz, Jump_00a_424c

    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], $20
    ld e, $03
    add hl, de
    ld a, $03
    ld [hl+], a
    ld a, $27
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_46a2:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fd
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $c0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $00
    ld [hl+], a
    ld a, $2b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_46c0:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    push hl
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld [hl], $e0
    ld de, $0007
    add hl, de
    ld a, $00
    ld [hl+], a
    ld a, $2a
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_00a_46dd:
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ret


    inc bc
    ld [$0808], sp
    ld [$8400], sp
    nop
    rlca
    ld [$0808], sp
    nop
    ld bc, $0080
    ld a, [bc]
    ld [$0008], sp
    ld [$0407], sp
    nop
    ld bc, $0008
    ld [$0100], sp
    add b
    nop
    ld b, $08
    nop
    ld [$0008], sp
    add h
    nop
    ld [$0008], sp
    ld [$02f8], sp
    ld a, h
    nop
    inc b
    ld [$08f8], sp
    ld hl, sp+$02
    ld a, h
    nop
    dec b
    ld [$08f8], sp
    nop
    ld bc, $0080
    inc c
    ld [$00f8], sp
    ld hl, sp+$03
    db $fc
    rst $38
    ld [bc], a
    nop
    ld hl, sp+$00
    ld hl, sp+$03
    db $fc
    rst $38
    add hl, bc
    nop
    ld hl, sp+$08
    ld hl, sp+$02
    ld a, h
    nop
    ld a, [bc]
    nop
    ld hl, sp-$08
    ld hl, sp+$04
    ld a, h
    rst $38
    inc bc
    ld hl, sp-$08
    ld hl, sp-$08
    inc b
    ld a, h
    rst $38
    ld b, $f8
    ld hl, sp-$08
    nop
    dec b
    add b
    rst $38
    dec bc
    ld hl, sp-$08
    nop
    ld hl, sp+$03
    db $fc
    rst $38
    ld bc, $00f8
    ld hl, sp+$00
    dec b
    add b
    rst $38
    dec b
    ld hl, sp+$00
    ld hl, sp+$08
    ld b, $84
    rst $38
    rlca
    ld hl, sp+$00
    ld hl, sp-$08
    inc b
    ld a, h
    rst $38
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld b, $84
    rst $38
    ld [$08f8], sp
    ld hl, sp+$00
    dec b
    add b
    rst $38
    add hl, bc
    ld hl, sp+$08
    nop
    ld [$0407], sp
    nop
    ld [bc], a
    nop
    ld [$0800], sp
    rlca
    inc b
    nop
    dec bc
    nop
    ld [$0808], sp
    nop
    add h
    nop
    inc c
    nop
    ld [$08f8], sp
    ld b, $84
    rst $38

    ld hl, $c103
    bit 4, [hl]
    jr z, jr_00a_47e3

    res 4, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $05
    ld [$c10a], a
    ld a, $14
    ld [$c10c], a
    ld hl, $dd80
    dec [hl]
    ld hl, $c11e
    xor a
    ld c, $07
    call FillMemory
    ld [$c102], a
    ld hl, $c116
    ld a, [hl]
    and $0f
    or $70
    ld [hl], a
    jp Jump_00a_7b40


jr_00a_47e3:
    call $2ab3
    ld a, [$c109]
    bit 1, a
    jr nz, jr_00a_47fb

    ld de, $dd92
    ld a, [de]
    cp $91
    jp z, Jump_00a_4dbe

    cp $94
    jp z, Jump_00a_4dfe

jr_00a_47fb:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $480a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [hl+]
    ld c, b
    ld [hl], a
    ld c, c
    ld d, $4a
    add $4a
    dec sp
    ld c, e
    or [hl]
    ld c, e
    ld c, c
    ld c, h
    rrca
    ld a, b
    ld c, [hl]
    ld c, h
    ld [hl], e
    ld c, h
    nop
    ld c, l
    ld de, $174d
    ld c, l
    rrca
    ld a, b
    ld h, c
    ld h, e
    ld b, c
    ld c, l

    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_00a_48b7

    ld hl, $c109
    bit 0, [hl]
    jp nz, Jump_00a_48d4

    ld hl, $c109
    set 0, [hl]
    ld a, $06
    call Call_1d18
    and a
    jp nz, Jump_00a_48d4

    ld hl, $c207
    ld a, [$c0fe]
    sub [hl]
    jr nc, jr_00a_485a

    cpl
    inc a

jr_00a_485a:
    cp $08
    jr nc, jr_00a_486c

    ld a, $fc
    add l
    ld l, a
    ld a, [$c0fa]
    sub [hl]
    cpl
    inc a
    cp $11
    jr c, jr_00a_48d4

jr_00a_486c:
    ld a, $03
    ld [$c10a], a
    ld hl, $c109
    set 7, [hl]
    ld a, [$c112]
    srl a
    add $04
    ld c, a
    ld a, [$dd95]
    ld b, a
    bit 7, b
    jr nz, jr_00a_488a

    ld a, c
    cpl
    inc a
    ld c, a

jr_00a_488a:
    ld a, b
    add c
    ld b, a
    ld c, $00
    bit 7, a
    jr nz, jr_00a_4895

    ld c, $02

jr_00a_4895:
    ld hl, $c0fe
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl-], a
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld hl, $c109
    res 3, [hl]
    ld a, $2f
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


Jump_00a_48b7:
jr_00a_48b7:
    ld hl, $c109
    res 0, [hl]
    ld a, [$dd92]
    and $c0
    jr z, jr_00a_491e

    ld a, [$dd92]
    and $1f
    cp $0f
    jr z, jr_00a_491e

    cp $12
    jr z, jr_00a_491e

    cp $07
    jr z, jr_00a_491e

Jump_00a_48d4:
jr_00a_48d4:
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$c10b]
    xor $01
    ld b, a
    call $2ae3
    ld a, [$c109]
    bit 1, a
    jp nz, Jump_00a_4db7

    ld a, [$dd98]
    cp $91
    jr nz, jr_00a_48fe

    ld hl, $4dbe
    jr jr_00a_4906

jr_00a_48fe:
    cp $94
    jp nz, Jump_00a_4db7

    ld hl, $4dfe

jr_00a_4906:
    ld bc, hOAMDMAFunction
    ld a, [$c10b]
    and a
    jr z, jr_00a_4912

    ld bc, $0080

jr_00a_4912:
    ld de, $c100
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    ld de, $dd98
    jp hl


Jump_00a_491e:
jr_00a_491e:
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and $c0
    jr nz, jr_00a_4970

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_00a_4970

    ld a, $01
    ld [$c10a], a
    ld hl, $c109
    set 7, [hl]
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $c0
    inc hl
    inc hl
    inc hl
    ld bc, $ffd0
    ld a, [$c10b]
    and a
    jr z, jr_00a_4953

    ld bc, $0030

jr_00a_4953:
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, [$c109]
    bit 6, a
    jp z, Jump_00a_4db7

    ld hl, $c203
    ld a, [$c0fa]
    sub $10
    cp [hl]
    jp c, Jump_00a_4db7

    ld hl, $c109
    set 4, [hl]
    ret


Jump_00a_4970:
jr_00a_4970:
    ld hl, $c0fa
    inc [hl]
    jp Jump_00a_4db7


    ld de, $00c0

Jump_00a_497a:
    ld bc, $000c
    ld a, [$c10b]
    and a
    jr z, jr_00a_4986

    ld bc, $fff4

jr_00a_4986:
    ld hl, $c101
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$dd92]
    and $c0
    jp z, Jump_00a_4db7

    ld a, [$dd92]
    and $1f
    cp $0f
    jp z, Jump_00a_4db7

    cp $12
    jp z, Jump_00a_4db7

    cp $07
    jp z, Jump_00a_4db7

    ld b, $00
    ld a, [$dd93]
    cp $75
    jr z, jr_00a_49bf

    inc b
    cp $93
    jr z, jr_00a_49bf

    ld a, [$c10b]
    xor $01
    ld b, a

jr_00a_49bf:
    ld a, b
    ld [$c10b], a
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$c109]
    bit 4, a
    jr nz, jr_00a_49f3

    ld a, $02
    ld [$c10a], a
    ld hl, $c109
    res 3, [hl]
    res 7, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    inc hl
    inc hl
    ld a, [$c10b]
    jr jr_00a_4a05

jr_00a_49f3:
    ld a, $0c
    ld [$c10a], a
    ld hl, $c109
    res 7, [hl]
    ld hl, $c100
    ld a, [$c10b]
    xor $01

jr_00a_4a05:
    and a
    jr nz, jr_00a_4a12

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_00a_4a12:
    ld [hl], d
    inc hl
    ld [hl], e
    ret


    ld de, $00c0

Jump_00a_4a19:
    ld a, [$c0fc]
    rla
    jr c, jr_00a_4a6d

    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_4a66

    ld a, [hl+]
    and $1f
    cp $12
    jr z, jr_00a_4a66

    cp $07
    jr z, jr_00a_4a66

    cp $0f
    jr z, jr_00a_4a66

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    xor a
    ld [$c10a], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ld a, [$c10b]
    and a
    jr nz, jr_00a_4a5f

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_00a_4a5f:
    ld hl, $c100
    ld [hl], d
    inc hl
    ld [hl], e
    ret


jr_00a_4a66:
    ld a, [$c0fd]
    cp $80
    jr z, jr_00a_4a8b

jr_00a_4a6d:
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0040
    add hl, de
    bit 7, h
    jr nz, jr_00a_4a83

    ld a, l
    cp $80
    jr c, jr_00a_4a83

    ld hl, $0080

jr_00a_4a83:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a

jr_00a_4a8b:
    ld a, [$c109]
    bit 1, a
    ret nz

    ld a, [$c10b]
    xor $01
    ld b, a
    call $2ae3
    ld a, [$dd98]
    cp $91
    jr nz, jr_00a_4aa6

    ld hl, $4dbe
    jr jr_00a_4aae

jr_00a_4aa6:
    cp $94
    jp nz, Jump_00a_4db7

    ld hl, $4dfe

jr_00a_4aae:
    ld bc, hOAMDMAFunction
    ld a, [$c10b]
    and a
    jr z, jr_00a_4aba

    ld bc, $0080

jr_00a_4aba:
    ld de, $c100
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    ld de, $dd98
    jp hl


    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_4add

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_4add

    cp $12
    jr z, jr_00a_4add

    cp $07
    jr nz, jr_00a_4ae3

jr_00a_4add:
    ld hl, $c109
    set 3, [hl]
    ret


jr_00a_4ae3:
    ld a, [$c109]
    bit 3, a
    ret z

    ld de, $c10b
    ld b, $00
    ld a, [hl]
    cp $75
    jr z, jr_00a_4afc

    inc b
    cp $93
    jr z, jr_00a_4afc

    ld a, [de]
    xor $01
    ld b, a

jr_00a_4afc:
    ld a, b
    ld [de], a
    xor a
    ld [$c102], a
    ld a, $2a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld hl, $c0fd
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c109
    res 0, [hl]
    res 7, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, [hl]
    add a
    ld d, a
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7fac
    add hl, bc
    ld bc, $c100
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    ld hl, $c109
    res 3, [hl]
    ret


    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_4b52

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_4b52

    cp $12
    jr z, jr_00a_4b52

    cp $07
    jr nz, jr_00a_4b5a

jr_00a_4b52:
    ld hl, $c109
    res 2, [hl]
    jp Jump_00a_4db7


jr_00a_4b5a:
    ld a, [$c109]
    bit 2, a
    ret nz

    ld bc, hOAMDMAFunction
    ld d, $00
    ld a, [hl]
    cp $75
    jr z, jr_00a_4b72

    cp $93
    jr nz, jr_00a_4b9a

    ld bc, $0080
    inc d

jr_00a_4b72:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10b
    ld [hl], d
    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c109
    res 7, [hl]
    ld a, $02
    ld [$c10a], a
    ld a, $2a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    jr jr_00a_4ba4

jr_00a_4b9a:
    ld hl, $c109
    set 2, [hl]
    ld a, $06
    ld [$c10a], a

jr_00a_4ba4:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_4bcd

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_4bcd

    cp $12
    jr z, jr_00a_4bcd

    cp $07
    jr nz, jr_00a_4bd5

jr_00a_4bcd:
    ld hl, $c109
    res 2, [hl]
    jp Jump_00a_4db7


jr_00a_4bd5:
    ld a, [$c109]
    bit 2, a
    ret nz

    ld bc, $ff40
    ld d, $00
    ld a, [hl]
    cp $75
    jr z, jr_00a_4bed

    cp $93
    jr nz, jr_00a_4c18

    ld bc, $00c0
    inc d

jr_00a_4bed:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10b
    ld [hl], d
    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c109
    res 7, [hl]
    ld a, $02
    ld [$c10a], a
    ld a, $2a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld [$c102], a
    jr jr_00a_4c38

jr_00a_4c18:
    ld hl, $c109
    set 2, [hl]
    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $ff40
    and a
    jr z, jr_00a_4c2d

    ld bc, $00c0

jr_00a_4c2d:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $08
    ld [$c10a], a

jr_00a_4c38:
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $c0
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


    ld b, $04
    jp Jump_00a_4c50


    ld b, $05

Jump_00a_4c50:
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0100
    add hl, de
    bit 7, h
    jr nz, jr_00a_4c6a

    ld a, h
    cp $01
    jr c, jr_00a_4c6a

    ld a, b
    ld [$c10a], a
    ld hl, $0100

jr_00a_4c6a:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ret


    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jp nz, Jump_00a_48b7

    ld hl, $c109
    bit 0, [hl]
    jp nz, Jump_00a_48d4

    set 0, [hl]
    ld hl, $c111
    dec [hl]
    jp nz, Jump_00a_48d4

    ld a, $02
    ld [hl], a
    ld hl, $c207
    ld a, [$c0fe]
    sub [hl]
    jr nc, jr_00a_4ca2

    cpl
    inc a

jr_00a_4ca2:
    cp $08
    jr nc, jr_00a_4cb5

    ld a, $fc
    add l
    ld l, a
    ld a, [$c0fa]
    sub [hl]
    cpl
    inc a
    cp $11
    jp c, Jump_00a_48d4

jr_00a_4cb5:
    ld a, $0f
    ld [$c10a], a
    ld hl, $c109
    set 7, [hl]
    ld a, [$c112]
    srl a
    add $04
    ld c, a
    ld a, [$dd95]
    ld b, a
    bit 7, b
    jr nz, jr_00a_4cd3

    ld a, c
    cpl
    inc a
    ld c, a

jr_00a_4cd3:
    ld a, b
    add c
    ld b, a
    ld c, $00
    bit 7, a
    jr nz, jr_00a_4cde

    ld c, $02

jr_00a_4cde:
    ld hl, $c0fe
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl-], a
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld hl, $c109
    res 3, [hl]
    ld a, $2f
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld a, [$c10f]
    and a
    jp z, Jump_00a_7893

Jump_00a_4d07:
    ld hl, $dd80
    dec [hl]
    call Call_00a_7b39
    jp Jump_00a_7c82


    ld a, $0a
    ld [$c10a], a
    ret


    ld a, [$c10b]
    and a
    jr nz, jr_00a_4d28

    ld a, [$c0fe]
    cp $f0
    ret c

    cp $f9
    ret nc

    jr jr_00a_4d37

jr_00a_4d28:
    ld b, $a8
    ld a, [$c705]
    rra
    jr nc, jr_00a_4d32

    ld b, $f8

jr_00a_4d32:
    ld a, [$c0fe]
    cp b
    ret c

jr_00a_4d37:
    ld hl, $dd80
    dec [hl]
    call Call_00a_7b39
    jp Jump_00a_7c82


    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_4d58

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_4d58

    cp $12
    jr z, jr_00a_4d58

    cp $07
    jr nz, jr_00a_4d5e

jr_00a_4d58:
    ld hl, $c109
    set 3, [hl]
    ret


jr_00a_4d5e:
    ld a, [$c109]
    bit 3, a
    ret z

    ld de, $c10b
    ld b, $00
    ld a, [hl]
    cp $75
    jr z, jr_00a_4d77

    inc b
    cp $93
    jr z, jr_00a_4d77

    ld a, [de]
    xor $01
    ld b, a

jr_00a_4d77:
    ld a, b
    ld [de], a
    xor a
    ld [$c102], a
    ld a, $2a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld hl, $c0fd
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c109
    res 0, [hl]
    inc hl
    ld a, $09
    ld [hl+], a
    ld a, [hl]
    add a
    ld d, a
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7fac
    add hl, bc
    ld bc, $c100
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    ld hl, $c109
    res 3, [hl]
    res 7, [hl]
    ret


Jump_00a_4db7:
    call Call_00a_7a84
    jp c, Jump_00a_4d07

    ret


Jump_00a_4dbe:
    ld a, $01
    ld [$c10f], a
    ld a, $0b
    ld [$c10a], a
    ld hl, $c109
    set 1, [hl]
    ld hl, $c0f9
    ld a, [hl]
    add $08
    ld [hl], a
    ld hl, $c116
    ld a, [hl]
    add $03
    ld [hl], a
    ld a, [$dd7f]
    cp $02
    ret nc

    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c211
    add hl, bc
    ld a, [hl+]
    sub $40
    ld b, a
    set 0, [hl]
    ld a, $fa
    add l
    ld l, a
    set 7, [hl]
    jp Jump_00a_7c51


Jump_00a_4dfe:
    inc de
    ld l, e
    ld h, d
    ld a, [hl+]
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7fb0
    add hl, bc
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld hl, $c10e
    ld [hl-], a
    ld [hl], e
    xor a
    ld [$c10f], a
    ld a, $0b
    ld [$c10a], a
    ld hl, $c109
    set 1, [hl]
    ld hl, $c0f9
    ld a, [hl]
    add $08
    ld [hl], a
    ld de, $c116
    ld a, [de]
    add $03
    ld [de], a
    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_4e47

    res 3, [hl]
    ld a, $07
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_4e47:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4e56
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, [hl]
    ld c, [hl]
    xor d
    ld c, [hl]
    sub $4e
    ld hl, sp+$4e
    add hl, de
    ld c, a
    and a
    ld d, b
    ret


    ld d, b
    sub c
    ld d, c

    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $000f

Jump_00a_4e82:
    ld de, $c10c
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $18
    ld [hl+], a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld hl, $c10c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    ld a, l
    or h
    jr z, jr_00a_4ebd

    ld de, $c10c
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


jr_00a_4ebd:
    ld hl, $c103
    res 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $17
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ld a, $04
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $05
    ld [hl], a
    ld hl, $c0f9
    inc [hl]
    ld hl, $c0fc
    ld a, $fe
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld a, $0a
    ld [$c82f], a
    ld [$c835], a
    ret


    ld hl, $c10c
    dec [hl]
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0100
    add hl, de
    ld de, $c0fd
    ld a, l
    ld [de], a
    dec de
    ld a, h
    ld [de], a
    rla
    ret c

    ld hl, $c0f9
    inc [hl]
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0100
    add hl, de
    ld de, $c0fd
    ld a, l
    ld [de], a
    dec de
    ld a, h
    ld [de], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ddad
    ld a, $08
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $08
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $1b
    ld [$c0f9], a
    ld a, $03
    ld [$c116], a
    ld a, $13
    ld [$c82f], a
    ld [$c835], a
    ld a, [$dd1a]
    and a
    jp nz, Jump_00a_503b

    ldh a, [$ff91]
    rra
    jp c, Jump_00a_503b

    ldh a, [$ff93]
    bit 2, a
    jp nz, Jump_00a_503b

    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$dd18]
    cp $01
    jr z, jr_00a_4fff

    cp $05
    jr z, jr_00a_4fff

    cp $02
    jr z, jr_00a_4fff

    cp $0a
    jr z, jr_00a_4f9a

    cp $03
    jr z, jr_00a_4fa4

    cp $09
    jr z, jr_00a_4fc8

    jr jr_00a_4fcf

jr_00a_4f9a:
    ld a, $16
    ld [$dd21], a
    call Call_00a_7810
    jr jr_00a_4fcf

jr_00a_4fa4:
    ld a, [$c213]
    cp $06
    jr nc, jr_00a_4fcf

    ld hl, $dd1c
    ld [hl], $00
    ld a, [$dd1a]
    and a
    jr z, jr_00a_4fb8

    ld [hl], $83

jr_00a_4fb8:
    ld de, hOAMDMAFunction
    ld bc, $0000
    call Call_2b22
    ld a, [$c213]
    cp $05
    jr c, jr_00a_4fff

jr_00a_4fc8:
    ld hl, $ff92
    ld a, [hl]
    and $db
    ld [hl], a

jr_00a_4fcf:
    ld hl, $ff91
    ld a, [hl]
    and $fb
    or $c0
    ld [hl], a
    ld a, $09
    ld [$dd47], a
    ld a, $04
    ld [$dd1a], a
    ld a, $04
    ld [$dd1f], a
    ld a, $07
    ld [$dd21], a
    ld a, $85
    ld [$c21b], a
    xor a
    ld [$dd18], a
    ld a, $35
    ld [$c831], a
    ld [$c835], a
    jr jr_00a_503b

jr_00a_4fff:
    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $dd24
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    ld [$dd1a], a
    xor a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld [$c21b], a
    ld [$dd18], a
    ld hl, $ff91
    set 7, [hl]
    ld hl, $ff93
    set 4, [hl]
    ld a, $16
    ld [$dd21], a
    ld a, $0d
    ld [$c831], a
    ld [$c835], a

Jump_00a_503b:
jr_00a_503b:
    ld hl, $ff92
    res 3, [hl]
    ld hl, $5097
    ld de, $dd59
    ld c, $10
    call CopyData
    ld a, [$dd59]
    ld [$dd69], a
    ld b, $04
    ld hl, $5085
    ld a, [$c705]
    rra
    jr nc, jr_00a_506c

    ld b, $06
    ld hl, $5089
    ld a, [$c10e]
    and a
    jr z, jr_00a_506c

    ld b, $08
    ld hl, $508f

jr_00a_506c:
    ld a, b
    ld [$c110], a
    ld [$c10d], a
    ld de, $dd81

jr_00a_5076:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_5076

    ld a, [$c207]
    and $f8
    ld [$c10f], a
    ret


    ld [$502c], sp
    ld [hl], h
    ld [$4c2a], sp
    ld l, [hl]
    sub b
    or d
    ld [$3c22], sp
    ld d, [hl]
    ld [hl], b
    adc d
    and h
    cp [hl]
    inc bc
    ld [$080f], sp
    add hl, bc
    dec b
    add hl, bc
    dec bc
    ld bc, $0102
    inc b
    inc bc
    ld bc, $0103

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    call Call_1d18
    inc a
    ld [$c10c], a
    ld a, [$c110]
    dec a
    ld [$c1f3], a
    ld a, [$c10f]
    ld [$c1f2], a
    ld hl, $c10a
    inc [hl]
    jp Jump_00a_50ef


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c110]
    call Call_1d18
    ld [$c1f3], a
    ld c, a
    ld b, $00
    ld hl, $dd81
    add hl, bc
    ld a, [hl]
    ld [$c1f2], a
    ld a, $07
    call Call_1d18
    add a
    add a
    add a
    ld hl, $c1f2
    add [hl]
    ld [hl], a

Jump_00a_50ef:
    ld a, $03
    call Call_1d18
    add a
    ld b, a
    add a
    ld c, a
    add a
    add b
    add c
    ld c, a
    ld b, $00
    ld hl, $5167
    add hl, bc
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld b, $00
    ld a, [$c1f2]
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_00a_7c51
    ld hl, $c10d
    dec [hl]
    jr z, jr_00a_5154

    ld a, $03
    call Call_1d18
    inc a
    ld [$c10c], a
    ld a, [$c110]
    dec a
    ld [$c110], a
    ld hl, $c1f3
    sub [hl]
    ret z

    ld c, a
    ld e, [hl]
    ld d, $00
    ld hl, $dd81
    add hl, de
    ld e, l
    ld d, h
    inc de

jr_00a_514d:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_00a_514d

    ret


jr_00a_5154:
    xor a
    ld [$c10a], a
    ld a, $10
    call Call_1d18
    ld e, a
    ld d, $00
    ld hl, $001e
    add hl, de
    jp Jump_00a_4e82


    jp z, $0027

    ret nz

    nop
    nop
    and l
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld b, $ca
    ld a, [hl+]
    nop
    add b
    nop
    nop
    and l
    dec bc
    nop
    nop
    nop
    nop
    ld bc, $ca06
    dec l
    ld bc, $0000
    nop
    and l
    dec bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $c9

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $51a1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and l
    ld d, c
    reti


    ld d, c

    ld a, [$c0fa]
    cp $10
    ret c

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
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86f
    add hl, bc
    ld de, $c106
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c10a
    inc [hl]
    ld hl, $c103
    res 5, [hl]
    ret


    ld hl, $c103
    bit 4, [hl]
    jr z, jr_00a_5212

Jump_00a_51e0:
    res 4, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $05
    ld [$c10a], a
    ld a, $14
    ld [$c10c], a
    ld hl, $c116
    ld a, [hl]
    and $0f
    or $70
    ld [hl], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c1e


jr_00a_5212:
    ld b, $a0
    ld a, [$c705]
    and a
    jr z, jr_00a_5220

    cp $03
    jr z, jr_00a_5220

    ld b, $e0

jr_00a_5220:
    ld a, [$c0fa]
    cp b
    ret c

    call Call_00a_7b39
    jp Jump_00a_7c82


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_523c

    res 3, [hl]
    ld a, $04
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_523c:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $524b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, l
    ld d, d
    add e
    ld d, d
    and [hl]
    ld d, d
    cp a
    ld d, d
    ld a, e
    ld h, l
    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10c], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c0f9], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $08
    ld [$c10c], a
    ld a, $17
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ld a, $03
    ld [$c10a], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0e
    ld [hl], a
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $02
    call Call_1d18
    ld c, a
    ld b, $00
    ld hl, $531b
    add hl, bc
    ld a, [hl]
    ld [$c1f2], a
    ld hl, $531d
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    add $f8
    ld b, a
    ld a, [$c0fe]
    add $0e
    ld c, a
    call $2b00
    ld a, $f3
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld a, [$c1f2]
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    ld a, $04
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    ld a, $1d
    ld [$c831], a
    ld [$c835], a
    jp Jump_00a_7bf6


    inc e
    add hl, bc
    ld l, d
    ld e, $00
    nop
    ld bc, $8440
    db $10
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_533c

    res 3, [hl]
    ld a, $07
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_533c:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $534b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, e
    ld d, e
    ld l, a
    ld d, e
    adc e
    ld d, e
    and h
    ld d, e
    nop
    nop
    nop
    nop
    adc b
    ld e, [hl]
    sub a
    ld e, [hl]
    ld a, $03
    ld [$c0a4], a
    ld a, $01
    ld [$c0a5], a
    ld de, $0000
    ld b, $01
    ld c, $07
    jp Jump_00a_5d19


    ld hl, $c10c
    dec [hl]
    ret nz

    ld de, $537c
    ld a, $07
    jp Jump_00a_794b


    inc b
    inc bc
    nop
    inc hl
    dec b
    dec b
    inc bc
    nop
    dec e
    inc b
    dec b
    inc bc
    ld bc, $041d
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0f
    ld [hl], a
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $53d6
    call Call_00a_7997
    dec hl
    ld a, $02
    ld [hl], a
    ld a, $fa
    add l
    ld l, a
    ld a, $13
    ld [hl], a
    ld hl, $c10b
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_00a_53c5

    xor a
    ld [hl], a

jr_00a_53c5:
    ld a, $02
    ld [$c10a], a
    ld a, $04
    ld [$c10c], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c1e


    inc c
    inc b
    add b
    nop
    add sp, $53
    nop
    stop
    nop
    or $53
    nop
    ld hl, sp-$80
    nop
    inc b
    ld d, h
    cp d
    jr z, jr_00a_53ec

    nop

jr_00a_53ec:
    nop
    nop
    add [hl]
    ccf
    ld c, $0c
    ld [bc], a
    ld [bc], a
    ld d, b
    and a
    cp d
    jr z, @+$01

    add b
    ld bc, $8680
    ccf
    ld c, $0c
    ld [bc], a
    ld [bc], a
    ld d, b
    and a
    cp d
    jr z, @+$01

    add b
    cp $80
    add [hl]
    ccf
    ld c, $0c
    ld [bc], a
    ld [bc], a
    ld d, b
    and a
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5421
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec hl
    ld d, h
    rst $10
    ld d, h
    ld b, e
    ld d, l
    ld b, h
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_5444

    ld a, [hl+]
    cp $42
    jr nz, jr_00a_54a3

    ld a, [hl]
    cp $75
    jr z, jr_00a_5444

    cp $93
    jr nz, jr_00a_54a3

jr_00a_5444:
    ld b, $a0
    ld a, [$c705]
    and a
    jr z, jr_00a_5452

    cp $03
    jr z, jr_00a_5452

    ld b, $f0

jr_00a_5452:
    ld a, [$c0fa]
    cp b
    jp nc, Jump_00a_5686

    ld b, $a8
    ld a, [$c705]
    rra
    jr nc, jr_00a_5463

    ld b, $f8

jr_00a_5463:
    ld a, [$c0fe]
    cp b
    jp nc, Jump_00a_5686

    ld hl, $c0fc
    ld a, [hl+]
    cp $01
    jr nc, jr_00a_5484

    ld a, [$c10d]
    add [hl]
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    cp $01
    jr c, jr_00a_5484

    ld a, $01
    ld [hl+], a
    dec a
    ld [hl], a

jr_00a_5484:
    ld a, [$c10b]
    xor $01
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    ret nc

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
    ret


jr_00a_54a3:
    ld hl, $dd92
    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_00a_54b5

    ld a, [hl]
    cp $04
    jr c, jr_00a_54b5

    cp $07
    ret c

jr_00a_54b5:
    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld a, $1c
    ld [$c831], a
    ld [$c835], a
    ret


    call $2ab3
    ld a, [$dd92]
    and $c0
    jr nz, jr_00a_5501

    ld hl, $c0fc
    ld a, [hl+]
    bit 7, a
    jr nz, jr_00a_54ec

    cp $01
    ret nc

jr_00a_54ec:
    ld a, [hl]
    add $40
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    bit 7, a
    ret nz

    cp $01
    ret c

    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


jr_00a_5501:
    ld a, $02
    call Call_1d18
    ld bc, $0020
    ld d, $00
    and a
    jr z, jr_00a_5513

    ld bc, $ffe0
    ld d, $01

jr_00a_5513:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl+], a
    inc hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


    ld hl, $c103
    bit 4, [hl]
    jr z, jr_00a_5554

    res 4, [hl]
    ld a, [hl]
    and $08
    rrca
    rrca
    rrca
    jr jr_00a_5564

jr_00a_5554:
    ld a, [$dd9f]
    bit 4, a
    jr z, jr_00a_5571

    rla
    jr c, jr_00a_55d5

    ld a, [$dd9f]
    and $02
    rrca

jr_00a_5564:
    xor $01
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jr jr_00a_55dc

jr_00a_5571:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_00a_55d5

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_00a_55f7

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_559d

    ld bc, $0004

jr_00a_559d:
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_00a_55d5

    xor a
    ld [$c102], a
    ld a, $24
    ld [$c0f9], a
    ld a, $72
    ld [$c116], a
    ld hl, $c103
    res 4, [hl]
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7bf6


jr_00a_55d5:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a

jr_00a_55dc:
    ld bc, $ffe0
    ld a, [$c0f8]
    rra
    jr c, jr_00a_55e8

    ld bc, $0020

jr_00a_55e8:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    ret


jr_00a_55f7:
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $0c
    ret nz

    push hl
    ld a, $02
    call Call_1d18
    pop hl
    and a
    ret z

    ld a, l
    sub $6d
    and $7c
    add a
    ld b, a
    inc hl
    ld a, [hl]
    cp $04
    ret nc

    ld c, $fa
    rra
    jr nc, jr_00a_5621

    ld c, $fe

jr_00a_5621:
    ld a, b
    add c
    ld b, a
    ld a, [$c0f8]
    rra
    jr c, jr_00a_5634

    ld hl, $c0fe
    ld a, b
    sub [hl]
    jr z, jr_00a_5649

    ret c

    jr jr_00a_563c

jr_00a_5634:
    ld a, [$c0fe]
    sub b
    jp z, Jump_00a_5649

    ret c

jr_00a_563c:
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

Jump_00a_5649:
jr_00a_5649:
    ld bc, $0080
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c109
    set 1, [hl]
    ld a, $04
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $21
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld b, $a0
    ld a, [$c705]
    and a
    jr z, jr_00a_5681

    cp $03
    jr z, jr_00a_5681

    ld b, $e0

jr_00a_5681:
    ld a, [$c0fa]
    cp b
    ret c

Jump_00a_5686:
    call Call_00a_7b39
    jp Jump_00a_7c82


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_56a2

    res 3, [hl]
    ld a, $07
    ld [$c10a], a
    ld a, $fc
    ld [$c0f8], a
    jp Jump_00a_5c4f


jr_00a_56a2:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $56b1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop bc
    ld d, [hl]
    ld c, b
    ld e, l
    add [hl]
    ld e, l
    sbc a
    ld e, l
    nop
    nop
    nop
    nop
    adc b
    ld e, [hl]
    sub a
    ld e, [hl]
    ld hl, $c6fc
    ld a, [$c6ee]
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld a, $fc
    ld [$c0f8], a
    ld a, $07
    ld [$c10c], a
    jp Jump_00a_5d08


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_56ec

    res 3, [hl]
    ld a, $02
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_56ec:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $56fb
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld bc, $3457
    ld d, a
    cp d
    ld d, a

    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c116], a
    inc a
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $18
    ld [hl], a
    ld hl, $dd7f
    ld a, [hl]
    cp $04
    ret z

    inc [hl]
    ld hl, $57ac
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    push hl
    ld hl, $7fb8
    ld b, $54
    ld d, $03
    ld a, [$c705]
    rra
    jr nc, jr_00a_576a

    ld hl, $7fbc
    ld b, $78
    inc d

jr_00a_576a:
    ld a, [$c207]
    ld e, $03
    cp b
    jr nc, jr_00a_5775

    inc hl
    inc hl
    inc e

jr_00a_5775:
    ld a, e
    ld [$c1f2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, d
    push hl
    call Call_1d18
    pop hl
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    call $2b00
    ld a, $f3
    add l
    ld l, a
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, [$c1f2]
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c51


    ld l, b
    nop
    nop
    nop
    nop
    nop
    add l
    ld b, $06
    inc c
    ld a, [bc]
    ld [bc], a
    nop
    ld d, l
    ret


    ld hl, $c103
    res 4, [hl]
    ld a, [$c10a]
    and a
    jp z, Jump_00a_5885

    ld a, [$c10a]
    cp $02
    jr c, jr_00a_57d7

    ld hl, $c110
    dec [hl]
    jr nz, jr_00a_5847

    ld a, $04
    ld [hl], a

jr_00a_57d7:
    ld hl, $c111
    dec [hl]
    jr nz, jr_00a_5847

Jump_00a_57dd:
    ld hl, $c10d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $47
    inc hl
    ld [hl], $00
    inc hl
    inc hl
    inc hl
    ld [hl], $47
    inc hl
    ld [hl], $01
    ld bc, $007b
    add hl, bc
    ld [hl], $47
    inc hl
    ld [hl], $02
    inc hl
    inc hl
    inc hl
    ld [hl], $47
    inc hl
    ld [hl], $03
    ld bc, $ff7b
    add hl, bc
    ld e, l
    ld d, h
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
    ld hl, $c7f7
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$d9db]
    ld [hl+], a
    xor a
    ld [hl], a
    ld de, $c7f7
    call Call_000_1685
    ld a, $42
    ld [$c82f], a
    ld [$c835], a
    call Call_00a_7b39
    jp Jump_00a_7c82


jr_00a_5847:
    ld a, [$c109]
    bit 1, a
    jr nz, jr_00a_585b

    ld a, [$c111]
    cp $25
    jp nc, Jump_00a_5885

    ld hl, $c109
    set 1, [hl]

jr_00a_585b:
    ld hl, $c10f
    dec [hl]
    jr nz, jr_00a_5885

    ld b, $01
    ld hl, $c109
    ld a, [hl]
    xor $01
    ld [hl], a
    rra
    jr nc, jr_00a_586f

    ld b, $01

jr_00a_586f:
    ld a, [$c10a]
    cp $02
    jr c, jr_00a_587a

    ld a, b
    add a
    add a
    ld b, a

jr_00a_587a:
    ld a, b
    ld [$c10f], a
    ld hl, $c0f9
    ld a, [hl]
    xor $02
    ld [hl], a

Jump_00a_5885:
jr_00a_5885:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5894
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rrca
    ld a, b
    sbc h
    ld e, b
    ld [hl], h
    ld [hl], c
    sub c
    ld [hl], d

    ld a, [$c109]
    bit 2, a
    ret nz

    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_58ee

    ld a, [hl+]
    and $1f
    cp $03
    jr z, jr_00a_58bb

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00a_58bb:
    ld a, [hl]
    cp $02
    ret nc

    ld bc, hOAMDMAFunction
    ld hl, $c853
    ld d, $00
    cp $00
    jr z, jr_00a_58d0

    ld bc, $0080
    inc d
    inc hl

jr_00a_58d0:
    ld a, [hl]
    srl a
    jr nc, jr_00a_58da

    ld bc, $0000
    jr jr_00a_58e7

jr_00a_58da:
    and a
    jr z, jr_00a_58e7

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_00a_58e7:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


jr_00a_58ee:
    ld a, $02
    ld [$c10a], a
    ld a, $04
    ld [$c110], a
    ld a, $04
    ld [$c10f], a
    ld a, [$c108]
    sub $40
    ld b, a
    call Call_00a_7c82
    jp Jump_00a_7bf6


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5918
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc h
    ld e, c
    ld b, h
    ld e, c
    ld a, h
    ld e, d
    cp a
    ld e, d
    add hl, sp
    ld e, e
    daa
    ld e, h
    xor a
    ld [$c0f9], a
    inc a
    ld [$c10a], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl], a
    jp Jump_00a_59cc


    ld a, [$dd9f]
    bit 4, a
    jr z, jr_00a_5961

    rla
    jr c, jr_00a_59c5

    ld a, [$dd9f]
    and $02
    rrca
    xor $01
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jr jr_00a_59cc

jr_00a_5961:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_00a_59c5

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_00a_59e7

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_598d

    ld bc, $0004

jr_00a_598d:
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_00a_59c5

    xor a
    ld [$c102], a
    ld a, $09
    ld [$c0f9], a
    ld a, $73
    ld [$c116], a

Jump_00a_59a1:
    ld hl, $c103
    res 4, [hl]
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7bf6


jr_00a_59c5:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a

Jump_00a_59cc:
jr_00a_59cc:
    ld bc, $ffe0
    ld a, [$c0f8]
    rra
    jr c, jr_00a_59d8

    ld bc, $0020

jr_00a_59d8:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    ret


jr_00a_59e7:
    ld e, $00
    ld hl, $c207
    ld a, [$c0fe]
    sub $08
    cp [hl]
    jr nc, jr_00a_5a04

    add $10
    cp [hl]
    jr c, jr_00a_5a04

    inc e
    ld hl, $c203
    ld a, [$c0fa]
    cp [hl]
    jr nc, jr_00a_5a04

    inc e

jr_00a_5a04:
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $0c
    jr nz, jr_00a_5a24

    ld d, $04
    ld a, e
    cp $02
    jr z, jr_00a_5a3c

    push hl
    ld a, $10
    call Call_1d18
    pop hl
    and a
    jr z, jr_00a_5a3c

jr_00a_5a24:
    ld bc, $ff00
    add hl, bc
    ld a, [hl]
    cp $0c
    ret nz

    ld d, $03
    ld a, e
    cp $01
    jr z, jr_00a_5a3c

    push hl
    ld a, $10
    call Call_1d18
    pop hl
    and a
    ret nz

jr_00a_5a3c:
    ld a, l
    sub $6d
    and $7c
    add a
    ld b, a
    inc hl
    ld a, [hl]
    cp $04
    ret nc

    ld c, $fa
    rra
    jr nc, jr_00a_5a4f

    ld c, $fe

jr_00a_5a4f:
    ld a, b
    add c
    ld b, a
    ld a, [$c0f8]
    rra
    jr c, jr_00a_5a62

    ld hl, $c0fe
    ld a, b
    sub [hl]
    jr z, jr_00a_5a75

    ret c

    jr jr_00a_5a69

jr_00a_5a62:
    ld a, [$c0fe]
    sub b
    jr z, jr_00a_5a75

    ret c

jr_00a_5a69:
    ld [$c10c], a
    ld hl, $c10b
    ld [hl], d
    ld hl, $c10a
    inc [hl]
    ret


jr_00a_5a75:
    ld hl, $c10b
    ld [hl], d
    jp Jump_00a_5a81


    ld hl, $c10c
    dec [hl]
    ret nz

Jump_00a_5a81:
    ld bc, $ffc0
    ld d, $03
    ld e, $06
    ld a, [$c10b]
    cp $03
    jr z, jr_00a_5a95

    ld bc, $0080
    inc d
    ld e, $03

jr_00a_5a95:
    ld hl, $c0fc
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c0f9
    ld [hl], e
    ld hl, $c10a
    ld [hl], d
    xor a
    ld [$c102], a
    ld b, $02
    ld a, d
    cp $03
    jr z, jr_00a_5aba

    ld hl, $c109
    set 1, [hl]
    dec b

jr_00a_5aba:
    ld hl, $c116
    ld [hl], b
    ret


    ld hl, $dd9e
    ld a, [hl+]
    and a
    jr z, jr_00a_5ae4

    ld a, [hl-]
    rra
    jr nc, jr_00a_5ae4

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
    cp $24
    jr nz, jr_00a_5b0a

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $03
    jr c, jr_00a_5b0a

jr_00a_5ae4:
    call $2ab3
    call $2a9b
    ld a, [$c109]
    rra
    jr nc, jr_00a_5b04

    ld a, [$dd94]
    cp $ff
    ret nz

    ld hl, $c109
    res 0, [hl]
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_00a_5b98


jr_00a_5b04:
    ld a, [$dd8c]
    rla
    jr nc, jr_00a_5b2d

jr_00a_5b0a:
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $04
    ld [$c10a], a
    ld a, $03
    ld [$c0f9], a
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    ret


jr_00a_5b2d:
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c109
    set 0, [hl]
    ret


    ld hl, $dd9e
    ld a, [hl+]
    and a
    jr z, jr_00a_5b60

    ld a, [hl-]
    rra
    jr c, jr_00a_5b60

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
    cp $24
    jp nz, Jump_00a_5c27

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $03
    jp c, Jump_00a_5c27

jr_00a_5b60:
    call $2ab3
    ld hl, $dd92
    ld a, [hl+]
    cp $0c
    jr nz, jr_00a_5b87

    ld a, [hl]
    cp $04
    jp nc, Jump_00a_59a1

    ld hl, $c109
    res 1, [hl]
    cp $02
    ret c

    ld a, [$c0fa]
    and $07
    jp nz, Jump_00a_5c27

    ld a, $05
    ld [$c10a], a
    ret


jr_00a_5b87:
    and $c0
    jp z, Jump_00a_59a1

    ld a, [$c109]
    bit 1, a
    ret nz

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_00a_5b98:
    push hl
    ld e, $00
    ld hl, $c207
    ld a, [$c0fe]
    sub $08
    cp [hl]
    jr nc, jr_00a_5bb6

    add $10
    cp [hl]
    jr c, jr_00a_5bb6

    inc e
    ld hl, $c203
    ld a, [$c0fa]
    cp [hl]
    jr nc, jr_00a_5bb6

    inc e

jr_00a_5bb6:
    pop hl
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $0c
    jr nz, jr_00a_5bd1

    ld d, $04
    ld a, e
    cp $02
    jr z, jr_00a_5beb

    push hl
    ld a, $10
    call Call_1d18
    pop hl
    and a
    jr z, jr_00a_5beb

jr_00a_5bd1:
    ld bc, $ff00
    add hl, bc
    ld a, [hl]
    cp $0c
    jr nz, jr_00a_5bfe

    ld d, $03
    ld a, e
    cp $01
    jr z, jr_00a_5beb

    push hl
    ld a, $10
    call Call_1d18
    pop hl
    and a
    jr nz, jr_00a_5bfe

jr_00a_5beb:
    ld hl, $c10b
    ld a, [hl]
    ld [hl], d
    cp d
    jp z, Jump_00a_5a81

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_00a_5a81


jr_00a_5bfe:
    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, $02
    call Call_1d18
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c0f9], a
    ld a, $01
    ld [$c10a], a
    jp Jump_00a_59cc


Jump_00a_5c27:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $03
    ld [$c10a], a
    ld a, $03
    ld [$c10b], a
    ld a, $06
    ld [$c0f9], a
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    ret


Jump_00a_5c4f:
    ld a, $46
    ld [$c201], a
    ld hl, $c207
    ld a, [$c0fe]
    cp [hl]
    jr c, jr_00a_5c6f

    ld hl, $c0f8
    set 0, [hl]
    ld hl, $c201
    res 0, [hl]
    ld hl, $c207
    add $f2
    ld [hl], a
    jr jr_00a_5c7f

jr_00a_5c6f:
    ld hl, $c0f8
    res 0, [hl]
    ld hl, $c201
    set 0, [hl]
    ld hl, $c207
    add $16
    ld [hl], a

jr_00a_5c7f:
    ld hl, $c203
    ld a, [$c0fa]
    add $10
    ld [hl+], a
    ld b, a
    sub $10
    xor b
    ld [$c20c], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld [$c213], a
    xor a
    ld [$c21a], a
    ld [$c202], a
    ld [$dd1a], a
    ld a, $07
    ld [$dd18], a
    ld a, $ff
    ld [$dd21], a
    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl], a
    ld hl, $dd2b
    ld a, $09
    ld [hl+], a
    ld a, $0b
    ld [hl], a
    ld a, $0d
    ldh [hFunctionTableIndex], a
    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c102], a
    ld a, $0a
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_5ce9

    res 3, [hl]
    ld a, $07
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_5ce9:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5cf8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [$485d], sp
    ld e, l
    add [hl]
    ld e, l
    sbc a
    ld e, l
    nop
    nop
    nop
    nop
    adc b
    ld e, [hl]
    sub a
    ld e, [hl]

Jump_00a_5d08:
    ld a, $03
    ld [$c0a4], a
    ld a, $01
    ld [$c0a5], a
    ld de, $0000
    ld b, $01
    ld c, $07

Jump_00a_5d19:
    ld a, b
    ld [$c10a], a
    ld a, c
    ld [$c10c], a
    ld a, d
    ld [$c0f9], a
    ld a, e
    ld [$c0f9], a
    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c103
    set 2, [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld de, $5d5e
    ld a, [$c110]
    and a
    jr nz, jr_00a_5d59

    ld de, $5d6d

jr_00a_5d59:
    ld a, $07
    jp Jump_00a_794b


    ld [$0003], sp
    inc h
    inc b
    ld b, $03
    ld bc, $0217
    ld b, $03
    nop
    rla
    ld [bc], a
    ld [$0103], sp
    dec e
    inc bc
    ld [$0003], sp
    dec e
    inc bc
    ld [$0003], sp
    inc h
    inc b
    ld b, $03
    ld bc, $0217
    ld b, $03
    nop
    rla
    ld [bc], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $07
    ld [hl], a
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $5e0a
    ld a, [$c110]
    and a
    jr nz, jr_00a_5db0

    ld hl, $5e1c

jr_00a_5db0:
    call Call_00a_7997
    push hl
    ld hl, $5e80
    ld a, [$c110]
    and a
    jr nz, jr_00a_5dc0

    ld hl, $5e83

jr_00a_5dc0:
    ld a, [$c10b]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $a0a8
    ld a, [$c705]
    and a
    jr z, jr_00a_5ddd

    cp $03
    jr z, jr_00a_5ddd

    ld d, $f0

jr_00a_5ddd:
    rra
    jr nc, jr_00a_5de2

    ld e, $f8

jr_00a_5de2:
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c10b
    inc [hl]
    ld b, $03
    ld a, [$c110]
    and a
    jr nz, jr_00a_5df3

    ld b, $05

jr_00a_5df3:
    ld a, [hl]
    cp b
    jr c, jr_00a_5df9

    xor a
    ld [hl], a

jr_00a_5df9:
    ld a, $02
    ld [$c10a], a
    ld a, $04
    ld [$c10c], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c1e


    db $10
    inc b
    add b
    inc b
    ld d, [hl]
    ld e, [hl]
    ld [de], a
    ld a, [c]
    add b
    nop
    ld [hl], d
    ld e, [hl]
    ld [de], a
    ld a, [de]
    add b
    nop
    ld h, h
    ld e, [hl]
    nop
    cp $80
    ld c, $48
    ld e, [hl]
    nop
    dec c
    add b
    ld c, $3a
    ld e, [hl]
    db $10
    inc b
    add b
    inc b
    ld d, [hl]
    ld e, [hl]
    ld [de], a
    ld a, [c]
    add b
    nop
    ld [hl], d
    ld e, [hl]
    ld [de], a
    ld a, [de]
    add b
    nop
    ld h, h
    ld e, [hl]
    db $fc
    ld e, b
    rst $38
    nop
    ld bc, $8600
    ld [hl], $0c
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $fc5c
    ld e, b
    rst $38
    nop
    rst $38
    nop
    add [hl]
    ld [hl], $0c
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $fc5c
    ld e, b
    ld bc, $0000
    nop
    add [hl]
    ld [hl], $0c
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $fc5c
    ld d, e
    nop
    nop
    nop
    ret nz

    add [hl]
    ld [hl], $0c
    inc c
    ld [bc], a
    ld [bc], a
    nop
    ld e, h
    db $fc
    ld d, e
    nop
    nop
    rst $38
    ld b, b
    add [hl]
    ld [hl], $0c
    inc c
    ld [bc], a
    ld [bc], a
    nop
    ld e, h
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $2100
    inc c
    pop bc
    dec [hl]
    ret nz

    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c0a4], a
    ret


    ret


    ld hl, $c109
    bit 0, [hl]
    jr z, jr_00a_5eab

    res 0, [hl]
    ld a, [$c0f8]
    cp $ee
    jr z, jr_00a_5eab

    jp Jump_00a_60f3


jr_00a_5eab:
    ld hl, $c103
    bit 4, [hl]
    jr nz, jr_00a_5eb8

    ld a, [$dd9e]
    and a
    jr z, jr_00a_5ebb

jr_00a_5eb8:
    call Call_00a_63a9

jr_00a_5ebb:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5eca
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add sp, $5e
    ld a, $5f
    bit 3, a
    rrca
    ld a, b
    ld b, h
    ld h, b
    ret nz

    ld h, b
    ld a, e
    ld h, c
    rrca
    ld a, b
    sbc h
    ld h, c
    cp l
    ld h, c
    ld [bc], a
    ld h, d
    rrca
    ld a, b
    rrca
    ld a, b
    add [hl]
    ld h, d
    ld h, c
    ld h, e
    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl]
    rla
    jr nc, jr_00a_5f01

    ld a, [$c10b]
    xor $01
    ld [$c10b], a
    jp Jump_00a_60e2


jr_00a_5f01:
    call $2ab3
    ld a, [$dd92]
    and $c0
    jr z, jr_00a_5f19

    ld a, [$dd92]
    and $1f
    cp $12
    jr z, jr_00a_5f19

    cp $07
    jp nz, Jump_00a_6388

jr_00a_5f19:
    ld a, $01
    ld [$c10a], a
    ld hl, $c109
    set 7, [hl]
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $ffd0
    ld a, [$c10b]
    and a
    jr nz, jr_00a_5f3a

    ld bc, $0030

jr_00a_5f3a:
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_5f9b

    ld a, [hl+]
    and $1f
    cp $12
    jp z, Jump_00a_6388

    cp $07
    jp z, Jump_00a_6388

    cp $02
    jp nz, Jump_00a_6388

    ld b, $00
    ld a, [hl]
    cp $75
    jr z, jr_00a_5f76

    inc b
    cp $93
    jr z, jr_00a_5f76

    cp $04
    jr c, jr_00a_5f70

    cp $07
    jp c, Jump_00a_6388

jr_00a_5f70:
    ld a, [$c10b]
    xor $01
    ld b, a

jr_00a_5f76:
    ld a, b
    ld [$c10b], a
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    ld hl, $c109
    res 7, [hl]
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_00a_5f9b:
    ld hl, $c100
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    jp z, Jump_00a_6388

    ld a, [$c10b]
    and a
    jr z, jr_00a_5fb5

    ld hl, $fffa
    add hl, de
    bit 7, h
    jr z, jr_00a_5fc0

    jr jr_00a_5fbd

jr_00a_5fb5:
    ld hl, $0006
    add hl, de
    bit 7, h
    jr nz, jr_00a_5fc0

jr_00a_5fbd:
    ld hl, $0000

jr_00a_5fc0:
    ld de, $c100
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    jp Jump_00a_6388


    ld a, [$c0fc]
    rla
    jr c, jr_00a_6024

    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_601b

    ld a, [hl+]
    and $1f
    cp $12
    jr z, jr_00a_601b

    cp $07
    jr z, jr_00a_601b

    inc hl
    ld de, $c0fa
    ld a, [de]
    add [hl]
    inc a
    ld [de], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $00c0
    ld a, [$c10b]
    and a
    jr z, jr_00a_6003

    ld bc, $ff40

jr_00a_6003:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c10a], a
    ld hl, $c109
    res 7, [hl]
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_00a_601b:
    ld hl, $c0fc
    ld a, [hl]
    cp $01
    jp z, Jump_00a_6388

jr_00a_6024:
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0040
    add hl, de
    bit 7, h
    jr nz, jr_00a_6039

    cp $01
    jr c, jr_00a_6039

    ld hl, $0100

jr_00a_6039:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    jp Jump_00a_6388


    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    rla
    jr nc, jr_00a_6089

    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_00a_605f

    ld a, [hl]
    cp $04
    jr c, jr_00a_605f

    cp $07
    jp c, Jump_00a_6388

jr_00a_605f:
    ld hl, $c0fc
    ld a, $fe
    ld [hl+], a
    ld a, $c0
    ld [hl], a
    ld hl, $c109
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $0d
    ld [$c10a], a
    ld a, $5b
    ld [$c0f9], a
    ld a, $b2
    ld [$c116], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_00a_6089:
    rla
    jr nc, jr_00a_6097

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_6097

    cp $12
    jr nz, jr_00a_609f

jr_00a_6097:
    ld hl, $c109
    res 2, [hl]
    jp Jump_00a_6388


jr_00a_609f:
    ld hl, $c109
    bit 2, [hl]
    jp nz, Jump_00a_6388

    set 2, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $06
    ld [$c10a], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl]
    rla
    jr nc, jr_00a_60d8

    ld a, [$c10b]
    xor $01
    ld [$c10b], a
    jr jr_00a_60e2

jr_00a_60d8:
    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    rla
    jr nc, jr_00a_612e

Jump_00a_60e2:
jr_00a_60e2:
    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_00a_60f3

    ld a, [hl]
    cp $04
    jr c, jr_00a_60f3

    cp $07
    jp c, Jump_00a_6388

Jump_00a_60f3:
jr_00a_60f3:
    ld hl, $c0fc
    ld a, $fe
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $ff40
    ld a, [$c10b]
    and a
    jr nz, jr_00a_610a

    ld bc, $00c0

jr_00a_610a:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c109
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $0d
    ld [$c10a], a
    ld a, $5b
    ld [$c0f9], a
    ld a, $b2
    ld [$c116], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_00a_612e:
    rla
    jr nc, jr_00a_613c

    ld a, [hl+]
    and $1f
    cp $0f
    jr z, jr_00a_613c

    cp $12
    jr nz, jr_00a_6144

jr_00a_613c:
    ld hl, $c109
    res 2, [hl]
    jp Jump_00a_6388


jr_00a_6144:
    ld hl, $c109
    bit 2, [hl]
    jp nz, Jump_00a_6388

    set 2, [hl]
    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $ff40
    and a
    jr nz, jr_00a_615e

    ld bc, $00c0

jr_00a_615e:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $08
    ld [$c10a], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c10e
    ld a, [hl]
    and a
    jr nz, jr_00a_618c

    inc [hl]
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ret


jr_00a_618c:
    ld [hl], $00
    ld hl, $c0fc
    ld [hl], $01
    inc hl
    ld [hl], $00
    ld a, $04
    ld [$c10a], a
    ret


    ld hl, $c10e
    ld a, [hl]
    and a
    jr nz, jr_00a_61ad

    inc [hl]
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ret


jr_00a_61ad:
    ld [hl], $00
    ld hl, $c0fc
    ld [hl], $01
    inc hl
    ld [hl], $00
    ld a, $05
    ld [$c10a], a
    ret


    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c10c], a
    ld a, $3d
    ld [$c831], a
    ld [$c835], a
    ld a, [$c109]
    bit 4, a
    jr nz, jr_00a_61e8

    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    add l
    ld l, a
    ld a, [hl]
    cp $11
    jr z, jr_00a_61f3

jr_00a_61e8:
    ld a, $5e
    ld [$c0f9], a
    ld a, $73
    ld [$c116], a
    ret


jr_00a_61f3:
    ld hl, $c0f8
    ld a, $ee
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld a, $75
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c109]
    bit 4, a
    jr nz, jr_00a_621d

    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0b
    add l
    ld l, a
    ld a, [hl]
    cp $11
    jr z, jr_00a_6223

jr_00a_621d:
    call Call_00a_7b39
    jp Jump_00a_7c82


jr_00a_6223:
    ld hl, $c103
    res 2, [hl]
    res 5, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [$ddac]
    ld [$c10b], a
    ld bc, $0020
    and a
    jr z, jr_00a_6242

    ld bc, $ffe0

jr_00a_6242:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c112
    ld a, $0d
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $db
    ld [hl], a
    ld hl, $ddac
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $53
    ld [$c105], a
    xor a
    ld [$c10a], a
    ld [$c109], a
    ld a, $08
    ld [$c10c], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    bit 7, a
    jr nz, jr_00a_6294

    cp $01
    jr nc, jr_00a_62ac

jr_00a_6294:
    ld bc, $0060
    add hl, bc
    ld a, h
    bit 7, a
    jr nz, jr_00a_62a4

    cp $01
    jr c, jr_00a_62a4

    ld hl, $0100

jr_00a_62a4:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a

jr_00a_62ac:
    ld hl, $c100
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or l
    jr z, jr_00a_62d8

    ld a, [$c10b]
    and a
    jr z, jr_00a_62c5

    ld bc, $0010
    add hl, bc
    bit 7, h
    jr z, jr_00a_62cd

    jr jr_00a_62d0

jr_00a_62c5:
    ld bc, $fff0
    add hl, bc
    bit 7, h
    jr z, jr_00a_62d0

jr_00a_62cd:
    ld hl, $0000

jr_00a_62d0:
    ld de, $c100
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a

jr_00a_62d8:
    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr nc, jr_00a_62fb

    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $c100
    ld a, [hl+]
    xor $ff
    ld d, a
    ld a, [hl]
    xor $ff
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d

jr_00a_62fb:
    ld a, [$c0fc]
    rla
    ret c

    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_00a_635b

    ld a, [hl]
    cp $52
    ret z

    ld a, [$c109]
    bit 2, a
    jr nz, jr_00a_635b

    inc hl
    inc hl
    ld de, $c0fa
    ld a, [de]
    add [hl]
    inc a
    ld [de], a
    ld hl, $c103
    res 2, [hl]
    ld a, $37
    ld [$c105], a
    xor a
    ld [$c102], a
    ld hl, $c0fc
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $62
    ld [$c0f9], a
    ld a, $a4
    ld [$c116], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $05
    ld [hl], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


jr_00a_635b:
    ld hl, $c109
    res 2, [hl]
    ret


    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld bc, $0040
    add hl, bc
    ld de, $c0fd
    ld a, l
    ld [de], a
    dec de
    ld a, h
    ld [de], a
    bit 7, a
    ret nz

    cp $01
    ret c

    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $05
    ld [$c10a], a
    ret


Jump_00a_6388:
    ld hl, $c10f
    ld a, [$c0fa]
    cp [hl]
    jr nc, jr_00a_6397

    inc hl
    ld a, [$c0fe]
    cp [hl]
    ret c

jr_00a_6397:
    call Call_00a_7b39
    jp Jump_00a_7c82


    ld hl, $c103
    bit 4, [hl]
    jr nz, jr_00a_63a9

    ld a, [$dd9e]
    and a
    ret z

Call_00a_63a9:
jr_00a_63a9:
    res 4, [hl]
    ld a, [$dd9e]
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
    cp $3f
    jr nz, jr_00a_63ce

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    and a
    jr nz, jr_00a_63ce

    ld a, $f9
    add l
    ld l, a
    res 4, [hl]
    ret


jr_00a_63ce:
    ld hl, $c103
    set 3, [hl]
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$dd9e], a
    set 2, [hl]
    ld a, $36
    ld [$c105], a
    ld a, $09
    ld [$c10a], a
    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_63ff

    res 3, [hl]
    ld a, $05
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_63ff:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $640e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [de]
    ld h, h
    ld c, l
    ld h, h
    ld [hl], e
    ld h, h
    sub h
    ld h, h
    jp z, $7b64

    ld h, l

    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10c], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c102], a
    ld a, $08
    ld [$c10c], a
    ld a, $17
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ld b, $03
    ld a, [$c705]
    rra
    jr nc, jr_00a_646e

    inc b

jr_00a_646e:
    ld hl, $c10a
    ld [hl], b
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld b, $0a
    ld a, [$c705]
    rra
    jr nc, jr_00a_6482

    ld b, $07

jr_00a_6482:
    ld [hl], b
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    call Call_1d18
    add a
    add $10
    push af
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, $05
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $18
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $fe
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $e9
    add l
    ld l, a
    pop bc
    jp Jump_00a_64fd


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    call Call_1d18
    add a
    add $10
    push af
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, $05
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $60
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $fd
    ld [hl+], a
    ld a, $a0
    ld [hl], a
    ld a, $e9
    add l
    ld l, a
    pop bc

Jump_00a_64fd:
    ld a, $01
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld a, $1e
    ld [hl+], a
    ld a, [$c0fa]
    ld [hl+], a
    ld d, a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, [$c0fe]
    add b
    ld [hl+], a
    xor a
    ld [hl+], a
    ld e, a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    ld a, $05
    ld [hl+], a
    push hl
    ld a, d
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, e
    and $f8
    rra
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
    add $40
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld a, $14
    add d
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0d
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    ld e, a
    ld d, $00
    ld hl, $c0a6
    add hl, de
    ld a, $00
    ld [hl], a
    ld a, $06
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    jp Jump_00a_7bf6


    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_658d

    res 3, [hl]
    ld a, $06
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_658d:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $659c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor d
    ld h, l
    ei
    ld h, l
    ld a, [hl+]
    ld h, [hl]
    ld c, a
    ld h, [hl]
    cp l
    ld h, [hl]
    db $10
    ld h, a
    add l
    ld h, a

Jump_00a_65aa:
    ld bc, $0000
    ld a, [$c110]
    and a
    jr z, jr_00a_65b6

    ld bc, $0501

jr_00a_65b6:
    ld hl, $c10e
    ld [hl], b
    inc hl
    ld [hl], c

Jump_00a_65bc:
    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld hl, $c109
    ld a, $41
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ret


Jump_00a_65fb:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$dd80]
    cp $06
    jr c, jr_00a_6609

    inc [hl]
    ret


jr_00a_6609:
    ld a, [$c10b]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $7fdc
    add hl, bc
    ld a, [hl+]
    ld [$c10c], a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl+]
    ld [$c0f9], a
    ld a, [hl]
    ld [$c116], a
    xor a
    ld [$c102], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld b, $07
    ld a, [$c10e]
    and a
    jr z, jr_00a_663d

    dec a
    ld [$c10e], a
    ld b, $01

jr_00a_663d:
    ld [hl], b

Jump_00a_663e:
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10d
    dec [hl]
    jr nz, jr_00a_6666

    ld hl, $c109
    ld a, [hl]
    xor $01
    ld [hl+], a
    inc hl
    and $01
    inc a
    ld [hl], a

jr_00a_6666:
    ld hl, $66af
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a

Call_00a_6678:
    ld a, [$c0fa]
    add $12
    ld b, a
    ld a, [$c0fe]
    add $18
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld b, $00
    ld a, [$c10f]
    and a
    jr z, jr_00a_6699

    dec a
    ld [$c10f], a
    ld b, $09

jr_00a_6699:
    ld [hl], b
    dec hl
    ld a, [$c109]
    and $60
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    ld a, $02
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    jp Jump_00a_6753


    sbc [hl]
    ld a, [hl+]
    nop
    nop
    nop
    ret nz

    add [hl]
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    nop
    ld e, h

    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    ld hl, $6702
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a

Jump_00a_66dd:
    ld a, [$c0fa]
    add $08
    ld b, a
    ld a, [$c0fe]
    add $20
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld a, $0e
    ld [hl-], a
    ld a, [$c109]
    and $60
    or $80
    ld [hl], a
    ld a, $0d
    add l
    ld l, a
    jp Jump_00a_6753


    sbc [hl]
    cpl
    nop
    ret nz

    ld bc, $8600
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, h

    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    ld hl, $6777
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a

Jump_00a_6730:
    ld a, [$c0fa]
    add $10
    ld b, a
    ld a, [$c0fe]
    add $04
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld a, $04
    ld [hl], a
    dec hl
    ld a, [$c109]
    and $60
    or $c0
    ld [hl], a
    ld a, $0d
    add l
    ld l, a

Jump_00a_6753:
    ld a, $f5
    add l
    ld l, a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $04
    ld [hl+], a
    ld hl, $dd80
    inc [hl]
    ld a, $04
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c51


    sbc [hl]
    cpl
    nop
    ret nz

    nop
    nop
    add [hl]
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, h
    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_6797

    res 3, [hl]
    ld a, $06
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_6797:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $67a6
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or h
    ld h, a
    jp hl


    ld h, a
    rra
    ld l, b
    ld b, h
    ld l, b
    and c
    ld l, b
    ld a, [$b768]
    ld l, c
    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c109
    ld a, $01
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    ld [hl+], a
    ld a, $05
    ld [hl], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$dd80]
    cp $08
    jr c, jr_00a_67f7

    inc [hl]
    ret


jr_00a_67f7:
    ld a, [$c10b]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $7fdc
    add hl, bc
    ld a, [hl+]
    ld [$c10c], a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl+]
    ld [$c0f9], a
    ld a, [hl]
    ld [$c116], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    xor a
    ld [$c102], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld b, $07
    ld a, [$c10e]
    and a
    jr z, jr_00a_6832

    dec a
    ld [$c10e], a
    ld b, $01

jr_00a_6832:
    ld [hl], b
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10d
    dec [hl]
    jr nz, jr_00a_685b

    ld hl, $c109
    ld a, [hl]
    xor $01
    ld [hl+], a
    inc hl
    and $01
    inc a
    ld [hl], a

jr_00a_685b:
    call Call_1080
    ld a, b
    ld [$c1f1], a
    inc hl
    inc hl
    ld a, $2a
    ld [hl+], a
    ld a, [$c0fa]
    add $12
    ld [hl+], a
    ld d, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, $16
    ld bc, $00c0
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_6882

    ld e, $f4
    ld bc, $ff40

jr_00a_6882:
    ld a, [$c0fe]
    add e
    ld [hl+], a
    ld e, a
    xor a
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    ld a, $e1
    add l
    ld l, a
    jp Jump_00a_6940


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    call Call_1080
    ld a, b
    ld [$c1f1], a
    inc hl
    inc hl
    ld a, $2f
    ld [hl+], a
    ld a, [$c0fa]
    add $08
    ld [hl+], a
    ld d, a
    xor a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld e, $18
    ld bc, $00c0
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_68da

    ld e, $fc
    ld bc, $ff40

jr_00a_68da:
    ld a, [$c0fe]
    add e
    ld [hl+], a
    ld e, a
    xor a
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $09
    add l
    ld l, a
    ld a, $0e
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $02
    ld [hl], a
    ld a, $e1
    add l
    ld l, a
    jp Jump_00a_6940


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    call Call_1080
    ld a, b
    ld [$c1f1], a
    inc hl
    inc hl
    ld a, $2f
    ld [hl+], a
    ld a, [$c0fa]
    add $12
    ld [hl+], a
    ld d, a
    xor a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld a, [$c0fe]
    add $04
    ld [hl+], a
    ld e, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    ld a, $04
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $02
    ld [hl], a
    ld a, $e1
    add l
    ld l, a

Jump_00a_6940:
    ld a, $01
    ld [hl+], a
    ld a, $c2
    ld [hl], a
    ld a, $0a
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $00
    ld [hl+], a
    push hl
    ld a, d
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, e
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
    add $40
    ld [hl+], a
    ld a, [$c109]
    and $60
    ld [hl+], a
    inc hl
    ld a, [$c0f8]
    and $01
    xor $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    inc hl
    ld a, $0c
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    ld e, a
    ld d, $00
    ld hl, $c0a6
    add hl, de
    ld [hl], $5c
    ld hl, $dd80
    inc [hl]
    ld a, $04
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    jp Jump_00a_7c51


    ret


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_69c9

    res 3, [hl]
    ld a, $06
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_69c9:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $69d8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and $69
    or $69
    jr nz, @+$6c

    ld [hl-], a
    ld l, d
    ld [hl], l
    ld l, d
    adc d
    ld l, d
    add l
    ld h, a
    ld a, [$c6da]
    sub $4a
    ld [$c6ee], a
    ld a, $01
    ld [$c10c], a
    jp Jump_00a_65aa


    ld a, $02
    ld [$c10b], a
    ld d, $28
    ld e, $f8
    ld b, $30
    ld c, $28
    call Call_00a_79e4
    jr nc, jr_00a_6a1d

    ld hl, $c10b
    dec [hl]
    ld d, $e8
    ld e, $20
    ld b, $50
    ld c, $30
    call Call_00a_79e4
    jr nc, jr_00a_6a1d

    ld hl, $c10b
    dec [hl]

jr_00a_6a1d:
    jp Jump_00a_65fb


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $10
    call Call_1d18
    add $0f
    ld [$c10c], a
    jp Jump_00a_663e


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $6a67
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    add $10
    ld b, a
    ld a, [$c0fe]
    add $18
    ld c, a
    call $2b00
    ld a, $f3
    add l
    ld l, a
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    dec a
    ld [hl], a
    jp Jump_00a_6ada


    xor $00
    nop
    nop
    nop
    add b
    add b
    ld d, e
    dec c
    inc c
    inc bc
    ld [bc], a
    nop
    db $db
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c0fa]
    ld [$c1f6], a
    ld a, [$c0fe]
    add $10
    ld [$c1f5], a
    jr jr_00a_6a9f

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c0fa]
    add $10
    ld [$c1f6], a
    ld a, [$c0fe]
    add $04
    ld [$c1f5], a

jr_00a_6a9f:
    call Call_00a_7a1a
    push de
    push hl
    ld hl, $6a67
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c1f6]
    ld b, a
    ld a, [$c1f5]
    ld c, a
    call $2b00
    ld a, $e6
    add l
    ld l, a
    pop de
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    inc hl
    inc hl
    pop de
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $08
    add l
    ld l, a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl], a

Jump_00a_6ada:
    ld a, $58
    ld [$c82f], a
    ld [$c835], a
    ld a, $04
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c51


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6b02
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $10
    ld l, e
    ld l, e
    ld l, e
    or [hl]
    ld l, e
    rrca
    ld l, h
    ld h, h
    ld l, h
    sub e
    ld l, h
    ld l, c
    ld l, l
    ld a, [$c6d8]
    sub $64
    ld [$c6ee], a
    ld a, [$c705]
    add a
    ld c, a
    ld b, $00
    ld hl, $6b5d
    add hl, bc
    ld b, $00
    ld a, [$c0fe]
    ld c, a
    add $08
    cp [hl]
    jr c, jr_00a_6b35

    inc b
    inc hl
    ld a, [hl]
    ld d, a
    sub c
    jr jr_00a_6b3a

jr_00a_6b35:
    ld a, c
    add $08
    ld d, $f8

jr_00a_6b3a:
    and $f8
    rrca
    rrca
    rrca
    ld [$c10d], a
    ld a, d
    ld [$c0fe], a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c103
    set 5, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $01
    ld [$c10c], a
    ret


    ld d, b
    xor b
    ld a, b
    ld hl, sp+$50
    xor b
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$50
    xor b
    ld a, b
    ld hl, sp+$21
    inc c
    pop bc
    dec [hl]
    ret nz

    ld a, [$c10d]
    ld [hl], a
    ld bc, $0100
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_6b80

    ld bc, $ff00

jr_00a_6b80:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    inc [hl]
    ld hl, $c103
    res 5, [hl]
    set 2, [hl]
    xor a
    ld [$c102], a
    ld hl, $c109
    res 0, [hl]
    ld de, $0732
    ld a, $04
    call Call_1d18
    and a
    jr nz, jr_00a_6bad

    ld de, $0030
    ld hl, $c109
    set 0, [hl]

jr_00a_6bad:
    ld a, d
    ld [$c0f9], a
    ld a, e
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$c109]
    rra
    jr nc, jr_00a_6bf1

    ld hl, $c103
    res 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $04
    ld [$c10c], a
    ld a, $04
    ld [$c0f9], a

Jump_00a_6bda:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $05
    ld [$c10e], a
    ld a, $66
    ld [$c831], a
    ld [$c835], a
    ret


jr_00a_6bf1:
    ld hl, $c103
    res 2, [hl]
    ld a, $02
    ld [$c10c], a
    ld a, $05
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $0c
    ld [$c0f9], a
    ld a, $33
    ld [$c116], a
    ret


    ld hl, $c0fd
    ld a, [hl]
    add $80
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $c10e
    dec [hl]
    ret nz

    ld hl, $c0f9
    inc [hl]
    ld hl, $c10c
    dec [hl]
    jp nz, Jump_00a_6bda

    ld hl, $c103
    set 2, [hl]
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a

Jump_00a_6c35:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $0100
    rra
    jr nc, jr_00a_6c45

    ld bc, $ff00

jr_00a_6c45:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, [$c10d]
    ld [$c10c], a
    ld a, $04
    ld [$c10a], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $30
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $1f
    call Call_1d18
    and a
    jr nz, jr_00a_6c72

    inc a

jr_00a_6c72:
    ld [$c10c], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $c103
    set 5, [hl]
    res 2, [hl]
    ld a, $01
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    set 2, [hl]
    ld hl, $c0f9
    inc [hl]
    ld hl, $6a67
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    add $f2
    ld b, a
    ld [$c1f6], a
    ld c, $fd
    ld a, [$c0f8]
    rra
    jr nz, jr_00a_6cc6

    ld c, $03

jr_00a_6cc6:
    ld a, [$c0fe]
    add c
    ld c, a
    ld [$c1f5], a
    call $2b00
    push hl
    ld e, $10
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_6cdc

    ld e, $90

jr_00a_6cdc:
    ld d, $d0
    ld b, $60
    ld c, $60
    call Call_00a_79e4
    jr nc, jr_00a_6d13

    ld a, [$c10b]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $6d5d
    add hl, bc
    ld a, [$c0f8]
    and $01
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    ld a, $ea
    add l
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $08
    add l
    ld l, a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl], a
    jr jr_00a_6d30

jr_00a_6d13:
    call Call_00a_7a1a
    ld c, l
    ld b, h
    pop hl
    ld a, $e6
    add l
    ld l, a
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    inc hl
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $08
    add l
    ld l, a
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl], a

jr_00a_6d30:
    ld a, $01
    add l
    ld l, a
    ld a, [$c0f8]
    and $01
    ld [hl], a
    ld a, $03
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ld hl, $c10b
    ld a, [hl]
    inc a
    cp $03
    jr c, jr_00a_6d4d

    xor a

jr_00a_6d4d:
    ld [hl], a
    ld a, $58
    ld [$c82f], a
    ld [$c835], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_00a_7c51


    nop
    add b
    rst $38
    add b
    ld bc, $ff00
    nop
    ld bc, $fe80
    add b
    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_00a_6c35


    ld b, $00
    ld a, [$c207]
    ld hl, $c0fe
    cp [hl]
    jr nc, jr_00a_6d7d

    inc b

jr_00a_6d7d:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6d94
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and d
    ld l, l
    rrca
    ld a, b
    rrca
    ld a, b
    and $6d
    rrca
    ld a, b
    sub e
    ld l, h
    inc [hl]
    ld l, [hl]
    ld a, [$c6fa]
    sub $64
    ld [$c6ee], a
    ld hl, $c0f8
    set 0, [hl]
    xor a
    ld [$dd8b], a
    ld hl, $c10a
    inc [hl]

Jump_00a_6db7:
    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c0f9], a
    ld a, $03
    ld [$c10a], a

Jump_00a_6dc5:
    ld a, $04
    ld [$c10c], a

Jump_00a_6dca:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $05
    ld [$c10e], a
    ld a, [$c10c]
    rra
    ret c

    ld a, $66
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c0fd
    ld a, [hl]
    add $80
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $c10e
    dec [hl]
    ret nz

    ld hl, $c0f9
    inc [hl]
    ld hl, $c10c
    dec [hl]
    jp nz, Jump_00a_6dca

    ld hl, $dd8b
    ld a, [hl]
    cp $01
    jp z, Jump_00a_6dc5

    inc [hl]
    ld hl, $c103
    set 2, [hl]
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $02
    ld [$c10c], a
    ld a, $05
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $31
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_00a_6db7


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_00a_6e4d

    res 3, [hl]
    ld a, $06
    ld [$c10a], a
    jp Jump_00a_5c4f


jr_00a_6e4d:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6e5c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, d
    ld l, [hl]
    ei
    ld h, l
    ld a, [hl+]
    ld h, [hl]
    adc a
    ld l, [hl]
    push de
    ld l, [hl]
    ld b, $6f
    add l
    ld h, a
    ld a, [$c108]
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
    ld de, $ddaa
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c10e
    ld a, $05
    ld [hl+], a
    ld a, $01
    ld [hl], a
    jp Jump_00a_65bc


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10d
    dec [hl]
    jr nz, jr_00a_6ea6

    ld hl, $c109
    ld a, [hl]
    xor $01
    ld [hl+], a
    inc hl
    and $01
    inc a
    ld [hl], a

jr_00a_6ea6:
    ld hl, $6ec7
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    push hl
    ld a, b
    ld [$c1f1], a
    call Call_00a_6678
    pop hl
    ld a, $15
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld a, $03
    ld [hl], a
    ret


    call nc, $002a
    nop
    nop
    and b
    add [hl]
    ld d, a
    ld c, $10
    ld [bc], a
    nop
    ld d, b
    jp nz, $0c21

    pop bc
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    ld hl, $6ef8
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    jp Jump_00a_66dd


    call nc, $002f
    ret nz

    ld bc, $8600
    ld d, a
    ld c, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp nz, $0c21

    pop bc
    dec [hl]
    ret nz

    xor a
    ld [$c10b], a
    ld a, $04
    ld [$c10d], a
    ld hl, $6f29
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    jp Jump_00a_6730


    call nc, $002f
    ret nz

    nop
    nop
    add [hl]
    ld d, a
    ld c, $0c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp nz, $0321

    pop bc
    bit 4, [hl]
    jr z, jr_00a_6f4e

    ld hl, $dd80
    dec [hl]
    ld hl, $c11e
    xor a
    ld c, $07
    call FillMemory
    jp Jump_00a_51e0


jr_00a_6f4e:
    call $2ab3
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6f60
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add b
    ld l, a
    dec a
    ld [hl], b
    ld d, e
    ld [hl], b
    rrca
    ld a, b
    dec sp
    ld c, e
    or [hl]
    ld c, e
    ld c, c
    ld c, h
    rrca
    ld a, b
    ld c, [hl]
    ld c, h
    add b
    ld l, a
    nop
    ld c, l
    ld de, $174d
    ld c, l
    rrca
    ld a, b
    ld h, c
    ld h, e
    ld b, c
    ld c, l
    ld a, [$dd92]
    and $c0
    jr nz, jr_00a_6fbc

    ld a, [$c10c]
    and a
    jp z, Jump_00a_491e

    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $7038
    add hl, bc
    ld de, $c0fd
    ld a, [de]
    add [hl]
    ld [de], a
    dec de
    dec hl
    ld a, [de]
    adc [hl]
    ld [de], a
    bit 7, a
    jp nz, Jump_00a_4970

    and a
    jp z, Jump_00a_4970

    inc de
    ld a, [de]
    cp $00
    jp c, Jump_00a_4970

    ld a, $00
    ld [de], a
    dec de
    ld a, $01
    ld [de], a
    jp Jump_00a_4970


jr_00a_6fbc:
    ld a, [$dd92]
    and $1f
    cp $0f
    jp z, Jump_00a_491e

    cp $12
    jp z, Jump_00a_491e

    cp $07
    jp z, Jump_00a_491e

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c10c
    ld a, [hl]
    and a
    jr nz, jr_00a_6ff4

    inc hl
    dec [hl]
    jp nz, Jump_00a_491e

    dec hl
    push hl
    ld a, $08
    call Call_1d18
    pop hl
    and a
    jr nz, jr_00a_702f

jr_00a_6ff4:
    inc [hl]
    ld a, [hl]
    cp $04
    jr nc, jr_00a_7017

    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $0080
    ld a, [$c10b]
    and a
    jr nz, jr_00a_7011

    ld bc, hOAMDMAFunction

jr_00a_7011:
    ld [hl], b
    inc hl
    ld [hl], c
    jp Jump_00a_491e


jr_00a_7017:
    xor a
    ld [hl], a
    ld hl, $c0fc
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $00a0
    ld a, [$c10b]
    and a
    jr nz, jr_00a_702c

    ld bc, $ff60

jr_00a_702c:
    ld [hl], b
    inc hl
    ld [hl], c

jr_00a_702f:
    ld a, $03
    ld [$c10d], a
    jp Jump_00a_491e


    nop
    add b
    nop
    add b
    nop
    add b
    ld de, $0080
    ld a, [$dd92]
    and $c0
    jp z, Jump_00a_497a

    ld hl, $c10c
    xor a
    ld [hl+], a
    ld a, $03
    ld [hl], a
    jp Jump_00a_497a


    ld de, $00a0
    jp Jump_00a_4a19


    ldh a, [$ff93]
    bit 5, a
    ret nz

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $706d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, e
    ld [hl], b
    rrca
    ld a, b
    and b
    ld [hl], b
    sub c
    ld [hl], d
    ld h, e
    ld [hl], e
    adc c
    ld [hl], e
    db $fa
    ld [hl], e

    ld hl, $c103
    res 4, [hl]
    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $728a
    add hl, bc
    ld a, [hl]
    ld b, a
    sub $10
    ld c, a
    ld hl, $c103
    res 5, [hl]
    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_709d

    cp b
    ret c

jr_00a_709d:
    set 5, [hl]
    ret


    ld a, [$c104]
    and $7f
    cp $21
    jr nz, jr_00a_70ae

    ld hl, $c109
    res 2, [hl]

jr_00a_70ae:
    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $728a
    add hl, bc
    ld a, [hl]
    ld b, a
    sub $10
    ld c, a
    ld hl, $c103
    res 5, [hl]
    ld d, $00
    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_70d5

    cp b
    jr nc, jr_00a_70d4

    cp c
    jp nc, Jump_00a_73db

    jr jr_00a_70f6

jr_00a_70d4:
    inc d

jr_00a_70d5:
    set 5, [hl]
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc [hl]
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, [$c104]
    and $7f
    cp $21
    jr z, jr_00a_70f3

    ld a, d
    and a
    jp nz, Jump_00a_7312

    ret


jr_00a_70f3:
    jp Jump_00a_57dd


jr_00a_70f6:
    res 5, [hl]
    bit 4, [hl]
    jr z, jr_00a_7174

    res 4, [hl]
    ld a, [$c108]
    sub $40
    add a
    ld c, a
    ld b, $00
    ld hl, $c16b
    add hl, bc
    ld a, [hl+]
    ld e, l
    ld d, h
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
    cp $4a
    jr nz, jr_00a_7130

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $01
    jr z, jr_00a_7130

    ld a, $f9
    add l
    ld l, a
    res 4, [hl]
    jr jr_00a_7174

jr_00a_7130:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $34
    ld [$c830], a
    ld [$c835], a
    ld bc, hOAMDMAFunction
    ld a, [$c109]
    rla
    jr c, jr_00a_714d

    ld bc, $0080

jr_00a_714d:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, [$c104]
    and $7f
    cp $21
    jr z, jr_00a_7165

    ld hl, $c116
    ld a, [hl]
    and $0f
    or $b0
    ld [hl], a

jr_00a_7165:
    ld a, [de]
    bit 6, a
    ret nz

    ld a, $05
    ld [$c10a], a
    ld a, $14
    ld [$c10c], a
    ret


jr_00a_7174:
    call $2ab3
    ld a, [$c109]
    and $80
    rlca
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl]
    and $1f
    cp $02
    jr nz, jr_00a_71a9

    inc hl
    ld a, [hl-]
    cp $04
    jr z, jr_00a_720b

    cp $05
    jr z, jr_00a_720b

    cp $06
    jr nz, jr_00a_71a9

    ld a, [$c105]
    cp $3f
    jr nz, jr_00a_71a9

    ld a, [$c104]
    and $7f
    cp $13
    jr z, jr_00a_720b

jr_00a_71a9:
    ld a, [hl]
    rla
    jr nc, jr_00a_720b

    ld bc, $fffc
    ld a, [$c109]
    rla
    jr nc, jr_00a_71b9

    ld bc, $0004

jr_00a_71b9:
    ld hl, $dd9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    rla
    jr nc, jr_00a_71e6

    ld a, [$dd92]
    and $c0
    jr z, jr_00a_720b

    ld a, [$dd94]
    bit 7, a
    jr z, jr_00a_720b

    cp $fe
    jr nc, jr_00a_720b

Jump_00a_71d6:
    ld hl, $c0fa
    dec [hl]
    dec [hl]
    xor a
    ld hl, $c0fc
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ret


jr_00a_71e6:
    ld hl, $c101
    ld a, [hl-]
    cpl
    add $01
    ld c, a
    ld a, [hl]
    cpl
    adc $00
    ld b, a
    ld a, [$c104]
    and $7f
    cp $21
    jr nz, jr_00a_7200

    sra b
    rr c

jr_00a_7200:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c109
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


jr_00a_720b:
    ld hl, $c100
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    rla
    jr nc, jr_00a_721a

    ld bc, $0008
    add hl, bc
    jr jr_00a_7222

jr_00a_721a:
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_00a_7222:
    jr nc, jr_00a_7227

    ld hl, $0000

jr_00a_7227:
    ld de, $c100
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $dd92
    ld a, [hl+]
    ld b, a
    and $c0
    jp z, Jump_00a_73db

    ld a, b
    and $1f
    cp $02
    jr nz, jr_00a_724b

    ld a, [hl]
    cp $04
    jp c, Jump_00a_724b

    cp $07
    jp c, Jump_00a_73db

Jump_00a_724b:
jr_00a_724b:
    push hl
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    pop hl
    rla
    jp c, Jump_00a_71d6

    ld a, [$c0fc]
    rla
    jp c, Jump_00a_73db

    inc hl
    ld a, [$c0fa]
    inc a
    add [hl]
    ld hl, $c0fa
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $ffe0
    ld a, [$c109]
    rla
    jr c, jr_00a_7282

    ld bc, $0020

jr_00a_7282:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    inc [hl]
    ret


    and b
    ldh a, [$fff0]
    and b
    and b
    ldh a, [$ffa0]

    ld a, [$c104]
    and $7f
    cp $21
    jr nz, jr_00a_729f

    ld hl, $c109
    res 2, [hl]

jr_00a_729f:
    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $728a
    add hl, bc
    ld a, [hl]
    ld b, a
    sub $10
    ld c, a
    ld hl, $c103
    res 5, [hl]
    ld d, $00
    ld a, [$c0fa]
    cp $10
    jr c, jr_00a_72c6

    cp b
    jr nc, jr_00a_72c5

    cp c
    jp nc, Jump_00a_73db

    jr jr_00a_72e6

jr_00a_72c5:
    inc d

jr_00a_72c6:
    set 5, [hl]
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc [hl]
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, [$c104]
    and $7f
    cp $21
    jr z, jr_00a_72e3

    ld a, d
    and a
    jr nz, jr_00a_7312

    ret


jr_00a_72e3:
    jp Jump_00a_57dd


jr_00a_72e6:
    call $2ab3
    ld hl, $dd92
    ld a, [hl+]
    ld b, a
    and $1f
    cp $02
    jr nz, jr_00a_72fd

    ld a, [hl]
    cp $04
    jr c, jr_00a_72fd

    cp $07
    jr c, jr_00a_733c

jr_00a_72fd:
    ld a, b
    and $c0
    jr z, jr_00a_733c

    ld a, [$c0fc]
    rla
    jr c, jr_00a_733c

    inc hl
    ld a, [$c0fa]
    inc a
    add [hl]
    ld hl, $c0fa
    ld [hl+], a

Jump_00a_7312:
jr_00a_7312:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, [$c104]
    and $7f
    cp $21
    jp z, Jump_00a_764b

    ld a, $04
    ld [$c10a], a
    ld a, $04
    ld [$c10c], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


jr_00a_733c:
    ld a, [$c109]
    rlca
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp nc, Jump_00a_73db

    ld hl, $c101
    ld a, [hl-]
    cpl
    add $01
    ld c, a
    ld a, [hl]
    cpl
    adc $00
    ld b, a
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c109
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    res 3, [hl]
    ld a, [$c104]
    and $7f
    ld [$c105], a
    ld c, a
    ld b, $00
    ld hl, $7dd8
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7e36
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_00a_7389:
    ld hl, $c0fa
    ld a, [hl+]
    cp $e0
    jr nc, jr_00a_7398

    ld a, [$c0fe]
    cp $f0
    jr c, jr_00a_73ab

jr_00a_7398:
    xor a
    ld [$c0f7], a
    ld [$c103], a
    ld a, [$c108]
    sub $40
    ld b, a
    call Call_00a_7b39
    jp Jump_00a_7c82


jr_00a_73ab:
    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_00a_73b3

    dec [hl]

jr_00a_73b3:
    ld hl, $c103
    bit 4, [hl]
    jr z, jr_00a_73db

    res 4, [hl]
    ld a, [$c10c]
    and a
    jr nz, jr_00a_73db

    ld a, [$c104]
    and $7f
    ld c, a
    ld b, $00
    ld hl, $7f3e
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7f9c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_00a_73db:
jr_00a_73db:
    ld hl, $c0fc
    bit 7, [hl]
    jr nz, jr_00a_73eb

    ld a, [hl]
    and a
    jr z, jr_00a_73eb

    ld bc, $0100
    jr jr_00a_73f4

jr_00a_73eb:
    inc hl
    ld a, [hl-]
    add $40
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a

jr_00a_73f4:
    ld [hl], b
    inc hl
    ld [hl], c
    jp Jump_00a_7489


    call $2ab3
    ld b, $00
    ld a, [$dd92]
    rla
    jr c, jr_00a_742b

    ld hl, $c867
    ld a, $98
    sub [hl]
    ld b, a
    ld a, [$c0fa]
    sub b
    jp c, Jump_00a_7389

    cp $30
    jp nc, Jump_00a_7389

    inc hl
    ld a, $40
    sub [hl]
    ld c, a
    ld a, [$c0fe]
    sub c
    jp c, Jump_00a_7389

    cp $20
    jp nc, Jump_00a_7389

    ld b, $01

jr_00a_742b:
    ld a, $34
    ld [$c105], a
    ld a, b
    and a
    jr z, jr_00a_7459

    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0f
    add l
    ld l, a
    bit 4, [hl]
    jr nz, jr_00a_7459

    ld a, $01
    add l
    ld l, a
    ld b, $08
    ld a, [$c0a4]
    cp $01
    jr nz, jr_00a_7458

    ld a, [$c1f0]
    cp $01
    jr nz, jr_00a_7458

    ld b, $0e

jr_00a_7458:
    ld [hl], b

jr_00a_7459:
    ld a, $05
    ld [$c10a], a
    ld a, $02
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $23
    ld [$c0f9], a
    ld a, $7b
    ld [$c116], a
    jr jr_00a_7473

jr_00a_7473:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


Jump_00a_7489:
    ld de, $74a4
    ld a, [$c104]
    and $7f
    cp $37
    jp z, Jump_00a_74b4

    cp $13
    ret nz

    ld a, [$c109]
    rra
    ret nc

    ld de, $74ac
    jp Jump_00a_74b4


    dec hl
    dec b
    add hl, sp
    ld b, $00
    ld [hl], a
    pop af
    ld [hl], l
    rla
    ld [bc], a
    ld a, [de]
    inc bc
    xor d
    ld [hl], l
    cp h
    ld [hl], l

Jump_00a_74b4:
    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    add $0c
    ld b, a
    ld a, [$c0fa]
    add $02
    sub b
    cp $0e
    jr c, jr_00a_74cb

    cp $f2
    ret c

jr_00a_74cb:
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $08
    ld b, a
    ld a, [$c0fe]
    add $02
    sub b
    cp $0e
    jr c, jr_00a_74df

    cp $f2
    ret c

jr_00a_74df:
    push hl
    push de
    ld a, $05
    call $0e12
    pop de
    pop hl
    ld bc, $c1f1
    ld a, [de]
    ld [bc], a
    inc de
    inc bc
    ld a, [de]
    ld [bc], a
    inc de
    inc bc
    ld a, [de]
    ld [bc], a
    inc de
    inc bc
    ld a, [de]
    ld [bc], a
    inc de
    ld a, $0c
    add l
    ld l, a
    ld a, [hl]
    cp $07
    jp z, Jump_00a_75a4

    ld a, $ef
    add l
    ld l, a
    ld bc, $c0a4
    ld a, [bc]
    cp $01
    jr z, jr_00a_753a

    dec a
    ld [bc], a
    ld a, [$c1f1]
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    ld a, $02
    ld [hl+], a
    inc hl
    ld a, $0f
    ld [hl], a
    ld a, $0a
    add l
    ld l, a
    ld a, [$c1f2]
    ld [hl], a
    ld a, $3a
    ld [$c82f], a
    ld [$c835], a
    jp Jump_00a_75a4


jr_00a_753a:
    ld a, [$c1f3]
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $08
    add l
    ld l, a
    ld a, $06
    ld [hl+], a
    inc hl
    ld a, $17
    ld [hl], a
    ld a, $0a
    add l
    ld l, a
    ld a, [$c1f4]
    ld [hl], a
    ld hl, $ff91
    set 7, [hl]
    ld a, $3b
    ld [$c82f], a
    ld [$c835], a
    ld hl, $c209
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c109
    set 4, [hl]
    ld hl, $ff92
    set 2, [hl]
    ld hl, $ff93
    set 5, [hl]
    ld a, [$dd18]
    cp $03
    jr z, jr_00a_759c

    ld b, $07
    cp $02
    jr nz, jr_00a_7593

    ld hl, $ff94
    set 2, [hl]
    ld hl, $dd1d
    ld a, [hl]
    and $01
    ld [hl], a
    dec b

jr_00a_7593:
    ld a, b
    ld [$dd18], a
    ld hl, $ff91
    set 7, [hl]

jr_00a_759c:
    inc de
    inc de
    xor a
    ld [$c1bf], a
    jr jr_00a_75a4

Jump_00a_75a4:
jr_00a_75a4:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    jp hl


jr_00a_75aa:
    ld a, $05
    ld [$c10a], a
    ld a, $14
    ld [$c10c], a
    ld hl, $c109
    res 0, [hl]
    jp Jump_00a_76e9


    ld hl, $c220
    ld de, $0020
    ld c, $1f

jr_00a_75c4:
    push hl
    ld a, [hl]
    and a
    jr z, jr_00a_75e6

    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    cp $13
    jr z, jr_00a_75de

    cp $09
    jr z, jr_00a_75de

    cp $26
    jr z, jr_00a_75de

    cp $3f
    jr nz, jr_00a_75e6

jr_00a_75de:
    push hl
    ld a, $f2
    add l
    ld l, a
    xor a
    ld [hl], a
    pop hl

jr_00a_75e6:
    pop hl
    add hl, de
    dec c
    jr nz, jr_00a_75c4

    xor a
    ld [$c0f7], a
    jr jr_00a_75aa

    ld hl, $c220
    ld de, $0020
    ld c, $1f

jr_00a_75f9:
    push hl
    ld a, [hl]
    and a
    jr z, jr_00a_762c

    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    cp $53
    jr z, jr_00a_7626

    cp $49
    jr z, jr_00a_7626

    cp $36
    jr z, jr_00a_7613

    cp $37
    jr nz, jr_00a_762c

jr_00a_7613:
    ld a, $36
    ld [hl-], a
    dec hl
    res 4, [hl]
    set 3, [hl]
    ld a, $07
    add l
    ld l, a
    ld a, $09
    ld [hl], a
    ld a, $fb
    add l
    ld l, a

jr_00a_7626:
    ld a, $04
    add l
    ld l, a
    set 4, [hl]

jr_00a_762c:
    pop hl
    add hl, de
    dec c
    jr nz, jr_00a_75f9

    jp Jump_00a_7700


    xor a
    ld [$c10a], a
    ret


    ld a, $01
    ld [$c10a], a
    ret


    ld a, $04
    ld [$c10a], a
    ret


    ld a, $07
    ld [$c10a], a
    ret


Jump_00a_764b:
    ld hl, $c109
    res 1, [hl]
    xor a
    ld [$c0f9], a
    ld a, $01
    ld [$c10a], a
    ld a, $21
    ld [$c105], a
    ld a, $01
    ld [$c10f], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


    xor a
    ld [$c102], a
    ld a, $02
    ld [$c10a], a
    ld a, $1e
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_00a_768d

    ld bc, $ffe0

jr_00a_768d:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    xor a
    ld [$c102], a
    ld a, $05
    ld [$c10a], a
    ld a, $0e
    ld [$c10c], a
    ld a, $25
    ld [$c0f9], a
    ld a, $04
    ld [$c116], a
    ret


    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $10
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $16
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c0fe
    ld a, [hl]
    and $f8
    ld [hl], a
    ld a, $0a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ret


Jump_00a_76e9:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $14
    ld [$c10c], a
    ld a, $34
    ld [$c831], a
    ld [$c835], a
    ret


Jump_00a_7700:
    ld a, $36
    ld [$c105], a
    ld a, $09
    ld [$c10a], a
    ld hl, $c103
    res 4, [hl]
    set 3, [hl]
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$dd9e], a
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_00a_7c51


    ldh a, [$ff93]
    bit 5, a
    jp nz, $2a3f

    bit 1, b
    jp z, $2a3f

    call $2af4
    ld hl, $dd9e
    ld a, [hl+]
    and a
    jp z, $2a3f

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
    cp $3f
    jr nz, jr_00a_77c6

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $02
    jr z, jr_00a_775f

    cp $05
    jr nz, jr_00a_77c6

jr_00a_775f:
    ld a, $fa
    add l
    ld l, a
    ld a, [hl]
    rla
    jr nc, jr_00a_776c

    ld a, $01
    call $0e12

jr_00a_776c:
    ld a, [$dd9f]
    bit 7, a
    jr nz, jr_00a_77c6

    ld hl, $c103
    set 2, [hl]
    ld hl, $c105
    ld a, [hl]
    cp $4a
    jr nz, jr_00a_778d

    ld a, [$c109]
    rra
    jr c, jr_00a_77c6

    ld a, [$c10a]
    cp $01
    jr nz, jr_00a_77c6

jr_00a_778d:
    ld l, [hl]
    ld h, $00
    ld bc, $7e4a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld c, l
    ld b, h
    add hl, hl
    add hl, bc
    ld bc, $7ea8
    add hl, bc
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_77a8

    ld [$c0f9], a

jr_00a_77a8:
    ld a, [hl]
    cp $ff
    jr z, jr_00a_77b4

    ld [$c116], a
    xor a
    ld [$c102], a

jr_00a_77b4:
    inc hl
    ld de, $c105
    ld a, [de]
    dec de
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_00a_77c6:
    ld hl, $dd9f
    set 4, [hl]
    jp $2a3f


    ld a, [$dd9f]
    ld bc, $ffe0
    bit 1, a
    jr z, jr_00a_77db

    ld bc, $0020

jr_00a_77db:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    jp $2a3f


    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$dd9e], a
    ld hl, $c103
    res 4, [hl]
    set 3, [hl]
    call Call_00a_7c82
    ld a, [$c108]
    sub $40
    ld b, a
    call Call_00a_7c51
    jp $2a3f


    ret


Call_00a_7810:
    ld b, $00
    ld a, [$dd1a]
    and a
    jr z, jr_00a_781a

    ld b, $83

jr_00a_781a:
    ld a, b
    ld [$dd1c], a
    xor a
    ld [$dd18], a
    ld [$dd1d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld hl, $c837
    ld a, [hl-]
    and a
    jr z, jr_00a_783b

    ld a, [$c836]
    cp $80
    jr nz, jr_00a_783f

jr_00a_783b:
    ld a, [$da45]
    ld [hl], a

jr_00a_783f:
    ld hl, $7877
    ldh a, [$ff94]
    bit 5, a
    jr z, jr_00a_784b

    ld hl, $7885

jr_00a_784b:
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c203]
    sub $10
    ld b, a
    ld a, [$c207]
    add $04
    ld c, a
    ldh a, [$ff8d]
    push af
    call $2b00
    ld a, [$c1f1]
    ld b, a
    call Call_00a_7c51
    pop af
    jp Bankswitch0fce


    jr jr_00a_7879

jr_00a_7879:
    rst $38
    ld b, b
    nop
    nop
    add l
    jr nz, jr_00a_7880

jr_00a_7880:
    nop
    nop
    nop
    nop
    ld bc, $0918
    rst $38
    ld b, b
    nop
    nop
    add l
    jr nz, jr_00a_788e

jr_00a_788e:
    nop
    nop
    nop
    db $01
    nop

Jump_00a_7893:
    call Call_00a_7b39
    call Call_00a_7c82
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, $01
    ld [hl+], a
    ld a, $8c
    ld [hl+], a
    xor a
    ld [hl+], a
    push hl
    ld hl, $c10d
    ld a, [hl+]
    sub $6d
    ld b, a
    ld a, [hl]
    sbc $c8
    ld h, a
    ld l, b
    ld a, h
    sla l
    rla
    add a
    add a
    add a
    sub $08
    pop hl
    ld [hl+], a
    ld d, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, b
    and $7c
    add a
    ld [hl+], a
    ld e, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $1e
    ld [hl+], a
    push hl
    ld a, d
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, e
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
    add $40
    ld [hl+], a
    set 0, [hl]
    inc hl
    inc hl
    ld a, [$c10b]
    xor $01
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, [$c110]
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $40
    ld [hl], a
    ld a, [$c1f1]
    ld e, a
    ld d, $00
    ld hl, $c0a6
    add hl, de
    ld [hl], $02
    ld hl, $c10d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f1]
    ld [hl], $91
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $91
    inc hl
    ld [hl], a
    ld de, $007b
    add hl, de
    ld [hl], $91
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], $91
    inc hl
    ld [hl], a
    ld hl, $dd80
    dec [hl]
    ld b, a
    jp Jump_00a_7c51


Jump_00a_794b:
    ld [$c1f1], a
    ld a, [$c109]
    rra
    jr c, jr_00a_796a

    push de
    ld a, $02
    call Call_1d18
    pop de
    and a
    jr nz, jr_00a_796a

    ld hl, $c109
    set 0, [hl]
    ld a, [$c1f1]
    ld [$c10c], a
    ret


jr_00a_796a:
    ld hl, $c109
    res 0, [hl]
    xor a
    ld [$c102], a
    ld hl, $c10b
    ld a, [hl]
    add a
    add a
    add [hl]
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld [$c10c], a
    ld a, [hl+]
    ld [$c10a], a
    ld de, $c0f8
    ld a, [de]
    and $fe
    or [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    ld [$c116], a
    ret


Call_00a_7997:
    ld a, [$c10b]
    add a
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$c0fa]
    add [hl]
    ld [$c1f4], a
    inc hl
    ld a, [$c0fe]
    add [hl]
    ld [$c1f3], a
    inc hl
    ld a, [hl+]
    ld [$c1f5], a
    ld a, [hl+]
    ld [$c1f6], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c1ab
    ld c, $14
    call CopyData
    call Call_1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c1f4]
    ld b, a
    ld a, [$c1f3]
    ld c, a
    call $2b00
    ld a, $f3
    add l
    ld l, a
    ld a, [$c1f5]
    ld [hl+], a
    ld a, [$c1f6]
    ld [hl+], a
    ret


Call_00a_79e4:
    ldh a, [$ff94]
    rla
    jr nc, jr_00a_79f0

    ld a, [$dd18]
    cp $08
    jr z, jr_00a_7a18

jr_00a_79f0:
    ld a, [$c0fa]
    add d
    ld d, a
    cp $e8
    jr c, jr_00a_79fb

    ld d, $00

jr_00a_79fb:
    ld a, [$c203]
    sub d
    ret c

    cp b
    jr nc, jr_00a_7a18

    ld a, [$c0fe]
    add e
    ld e, a
    cp $f0
    jr c, jr_00a_7a0e

    ld e, $00

jr_00a_7a0e:
    ld a, [$c207]
    sub e
    ret c

    cp c
    jr nc, jr_00a_7a18

    and a
    ret


jr_00a_7a18:
    scf
    ret


Call_00a_7a1a:
    xor a
    ld [$c1f2], a
    ld a, [$c203]
    ld hl, $c1f6
    sub [hl]
    jr nc, jr_00a_7a2e

    cpl
    inc a
    ld hl, $c1f2
    set 0, [hl]

jr_00a_7a2e:
    ld d, a
    ld a, [$c207]
    ld hl, $c1f5
    sub [hl]
    jr nc, jr_00a_7a3f

    cpl
    inc a
    ld hl, $c1f2
    set 1, [hl]

jr_00a_7a3f:
    ld e, a
    cp d
    jr c, jr_00a_7a53

    ld h, d
    ld l, $00
    ld b, e
    call Call_105e
    srl h
    rr l
    ld de, $0080
    jr jr_00a_7a63

jr_00a_7a53:
    ld h, e
    ld l, $00
    ld b, d
    call Call_105e
    ld e, l
    ld d, h
    srl d
    rr e
    ld hl, $0080

jr_00a_7a63:
    ld a, [$c1f2]
    rra
    jr nc, jr_00a_7a73

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_00a_7a73:
    ld a, [$c1f2]
    bit 1, a
    ret z

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a
    ret


Call_00a_7a84:
    ld a, [$c705]
    add a
    ld c, a
    ld b, $00
    ld hl, $7aa4
    add hl, bc
    ld a, [$c0fa]
    cp $08
    jr c, jr_00a_7aa2

    cp [hl]
    jr nc, jr_00a_7aa2

    ld a, [$c0fe]
    inc hl
    cp [hl]
    jr nc, jr_00a_7aa2

    and a
    ret


jr_00a_7aa2:
    scf
    ret


    sbc b
    and b
    add sp, -$10
    add sp, -$60
    sbc b
    ldh a, [$ffe8]
    ldh a, [$ffe8]
    and b
    sbc b
    ldh a, [$ffaf]
    ld [$c0f7], a
    ld [$c103], a
    ld hl, $c108
    ld a, [hl-]
    ld [$c1f1], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld de, $0078
    ld b, $02

jr_00a_7ac8:
    ld c, $02

jr_00a_7aca:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_00a_7ad4

    xor a
    ld [hl-], a
    ld [hl+], a

jr_00a_7ad4:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_00a_7aca

    add hl, de
    dec b
    jr nz, jr_00a_7ac8

    ret


Call_00a_7adf:
    xor a
    ld [$c0f7], a
    ld [$c103], a
    ld hl, $c108
    ld a, [hl-]
    ld [$c1f1], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld de, $0074
    ld b, $02

jr_00a_7af5:
    ld c, $03

jr_00a_7af7:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_00a_7b01

    xor a
    ld [hl-], a
    ld [hl+], a

jr_00a_7b01:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_00a_7af7

    add hl, de
    dec b
    jr nz, jr_00a_7af5

    ret


    xor a
    ld [$c0f7], a
    ld [$c103], a
    ld hl, $c108
    ld a, [hl-]
    ld [$c1f1], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld de, $0078
    ld b, $03

jr_00a_7b22:
    ld c, $02

jr_00a_7b24:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_00a_7b2e

    xor a
    ld [hl-], a
    ld [hl+], a

jr_00a_7b2e:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_00a_7b24

    add hl, de
    dec b
    jr nz, jr_00a_7b22

    ret


Call_00a_7b39:
    xor a
    ld [$c0f7], a
    ld [$c103], a

Jump_00a_7b40:
    ld hl, $c108
    ld a, [hl-]
    ld [$c1f1], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld de, $0070
    ld b, $04

jr_00a_7b4f:
    ld c, $04

jr_00a_7b51:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_00a_7b5b

    xor a
    ld [hl-], a
    ld [hl+], a

jr_00a_7b5b:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_00a_7b51

    add hl, de
    dec b
    jr nz, jr_00a_7b4f

    ret


    ld de, $c1ab
    ld a, $01
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], c
    inc hl
    xor a
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc hl
    inc de
    ld a, [de]
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
    ld c, a
    add $40
    ld [hl], a
    ld a, $0a
    add l
    ld l, a
    inc de
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
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $a6
    add c
    ld c, a
    ld a, $c0
    adc $00
    ld b, a
    inc de
    ld a, [de]
    ld [bc], a
    ldh a, [$ff8d]
    jp Bankswitch0fce


    ld hl, $c0c7
    ld c, $08

jr_00a_7bde:
    ld de, $0005
    inc [hl]

jr_00a_7be2:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_00a_7bec

    dec e
    jr nz, jr_00a_7be2

jr_00a_7bea:
    jr jr_00a_7bea

jr_00a_7bec:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_00a_7bde

    ld d, $00
    jp Jump_00a_7c79


Jump_00a_7bf6:
    ld a, [$c0c7]
    ld hl, $c0cd
    cp [hl]
    jr nc, jr_00a_7c02

    ld hl, $c0c7

jr_00a_7c02:
    ld c, $04

jr_00a_7c04:
    ld de, $000b
    inc [hl]

jr_00a_7c08:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_00a_7c15

    dec e
    ld a, $06
    cp e
    jr nz, jr_00a_7c08

jr_00a_7c13:
    jr jr_00a_7c13

jr_00a_7c15:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_00a_7c04

    ld d, $03
    jr jr_00a_7c79

Jump_00a_7c1e:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $03

jr_00a_7c26:
    ld a, [de]
    cp [hl]
    jr nc, jr_00a_7c2c

    ld l, e
    ld h, d

jr_00a_7c2c:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_00a_7c26

    ld c, $02

jr_00a_7c37:
    ld de, $0017
    inc [hl]

jr_00a_7c3b:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_00a_7c48

    dec e
    ld a, $12
    cp e
    jr nz, jr_00a_7c3b

jr_00a_7c46:
    jr jr_00a_7c46

jr_00a_7c48:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_00a_7c37

    ld d, $02
    jr jr_00a_7c79

Call_00a_7c51:
Jump_00a_7c51:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $07

jr_00a_7c59:
    ld a, [de]
    cp [hl]
    jr nc, jr_00a_7c5f

    ld l, e
    ld h, d

jr_00a_7c5f:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_00a_7c59

    inc [hl]

jr_00a_7c69:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_00a_7c76

    dec e
    ld a, $12
    cp e
    jr nz, jr_00a_7c69

jr_00a_7c74:
    jr jr_00a_7c74

jr_00a_7c76:
    ld [hl], b
    ld d, $01

Jump_00a_7c79:
jr_00a_7c79:
    ld hl, $c103
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    ret


Call_00a_7c82:
Jump_00a_7c82:
    ld a, [$c108]
    sub $40
    ld b, a
    ld hl, $c0c8
    ld c, $08

jr_00a_7c8d:
    ld de, $ffff

jr_00a_7c90:
    ld a, [hl]
    cp b
    jr z, jr_00a_7c9e

    inc hl
    dec e
    ld a, $fa
    cp e
    jr nz, jr_00a_7c90

    inc hl
    jr jr_00a_7ca6

jr_00a_7c9e:
    ld [hl], $00
    add hl, de
    dec [hl]
    ld de, $0007
    add hl, de

jr_00a_7ca6:
    dec c
    jr nz, jr_00a_7c8d

    ret


    push de
    ld a, b
    ld [$c812], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20c
    add hl, bc
    push hl
    ld c, $14
    xor a
    call FillMemory
    ld a, [$c80d]
    ld hl, $7d10
    ld bc, $0004

jr_00a_7ccb:
    cp [hl]
    jr z, jr_00a_7cd1

    add hl, bc
    jr jr_00a_7ccb

jr_00a_7cd1:
    inc hl
    ld a, [hl+]
    ld [$c814], a
    pop de
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $05
    add e
    ld e, a
    ld a, [hl]
    ld [de], a
    ld a, $fe
    add e
    ld l, a
    ld h, d
    ld a, [$c812]
    add $40
    ld [hl-], a
    pop de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, [$c812]
    ld b, a
    ld a, [$c814]
    and $03
    add a
    push bc
    ld c, a
    ld b, $00
    ld hl, $7d08
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    reti


    ld a, e
    ld d, c
    ld a, h
    ld e, $7c
    or $7b
    ld d, h
    add d
    ld b, b
    nop
    ld bc, $3d82
    nop
    adc [hl]
    xor c
    inc a
    nop
    sub [hl]
    adc c
    ld c, c
    nop
    add h
    adc c
    ld e, c
    nop
    cp b
    xor c
    inc d
    nop
    ld a, h
    add c
    ld bc, $3c07
    add c
    ld [$4703], sp
    add c
    rrca
    inc b
    ld c, l
    add c
    ld c, l
    nop
    ld c, [hl]
    add c
    ld [de], a
    nop
    add b
    add c
    ld a, [de]
    ld a, [bc]
    sbc b
    add c
    jr c, jr_00a_7d4e

    add [hl]
    add c
    dec de
    inc bc
    adc b
    add c
    inc e
    nop
    ld e, d
    add c

jr_00a_7d4e:
    dec e
    ld bc, $81b6
    inc h
    nop
    cp d
    add c
    rlca
    nop
    ret nz

    add c
    ld [hl-], a
    nop
    ret z

    add c
    inc sp
    ld b, $c2
    add c
    inc hl
    nop
    ld h, h
    add c
    dec l
    nop
    ld e, h
    add c
    cpl
    nop
    or b
    add c
    ld b, [hl]
    nop
    xor h
    add c
    ld b, a
    nop
    xor [hl]
    add c
    ld c, b
    nop
    ld c, a
    add c
    ld c, d
    nop
    and d
    add c
    ld c, e
    nop
    ld e, b
    add c
    ld c, [hl]
    nop
    ld c, b
    add c
    ld d, b
    nop
    and b
    add c
    inc c
    nop
    sub h
    add c
    dec sp
    nop
    ld d, b
    add c
    ld e, d
    nop
    ld l, [hl]
    add c
    ld a, [hl-]
    nop
    ld b, h
    add c
    ld l, $00
    sub b
    add c
    add hl, sp
    nop
    ld e, [hl]
    add c
    rra
    nop
    sub d
    add c
    ld a, $00
    and [hl]
    add c
    ld [hl+], a
    nop
    sbc d
    add c
    ld a, [bc]
    nop
    ld a, [hl-]
    add c
    dec c
    nop
    xor d
    add c
    ld d, h
    nop
    and h
    add c
    ld d, [hl]
    nop
    adc d
    add c
    ld c, $00
    call z, $3581
    nop
    cp [hl]
    add c
    ld de, $c600
    add c
    dec h
    nop
    xor b
    add c
    ld d, l
    nop
    jp z, $3181

    nop
    ld a, d
    and c
    ld e, e
    nop
    nop
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
    ld bc, $0000
    nop
    dec b
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    add hl, bc
    ld [bc], a
    ld bc, $0002
    nop
    nop
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0007
    nop
    nop
    nop
    add hl, bc
    nop
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
    ld bc, $0108
    nop
    nop
    ld bc, $0000
    ld bc, $0000
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
    rrca
    ld a, b
    inc [hl]
    halt
    add hl, sp
    halt
    ccf
    halt
    ld b, l
    halt
    ld l, a
    halt
    ld c, e
    halt
    sub h
    halt
    xor l
    halt
    ret c

    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00a_7e55

jr_00a_7e55:
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    jr jr_00a_7e75

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_7e75:
    nop
    nop
    ld [$0000], sp
    nop
    nop
    add hl, bc
    ld a, [bc]
    nop
    nop
    dec bc
    dec bc
    nop
    nop
    nop
    dec d
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
    inc c
    dec c
    nop
    ld c, $0f
    nop
    jr jr_00a_7ea9

    nop
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $00
    nop
    nop
    rst $38

jr_00a_7ea9:
    rst $38
    ccf
    dec b
    adc $77
    rst $38
    rst $38
    ccf
    dec b
    adc $77
    ld de, $3f73
    dec b
    adc $77
    inc h
    ld [hl], d
    ccf
    dec b
    adc $77
    rst $38
    rst $38
    ccf
    dec b
    adc $77
    inc bc
    ld [hl], c
    ccf
    dec b
    adc $77
    ld a, [bc]
    ld [hl], e
    ccf
    dec b
    adc $77
    ld b, $73
    ccf
    dec b
    adc $77
    ld b, $72
    ccf
    dec b
    adc $77
    rrca
    ld [hl], e
    ccf
    dec b
    adc $77
    ld a, [hl-]
    ld [hl], l
    ccf
    dec b
    adc $77
    rst $38
    rst $38
    ld [hl], $09
    db $ec
    ld [hl], a
    ld d, $73
    ccf
    dec b
    adc $77
    ld [bc], a
    sub b
    ccf
    dec b
    adc $77
    ld [$3f72], sp
    dec b
    adc $77
    rlca
    ld [hl], h
    ccf
    dec b
    adc $77
    ld b, $73
    ccf
    dec b
    adc $77
    add hl, bc
    or l
    ccf
    dec b
    adc $77
    ld de, $3f73
    dec b
    adc $77
    inc bc
    ld [hl], e
    ccf
    dec b
    adc $77
    add hl, bc
    ld [hl], e
    ccf
    dec b
    adc $77
    inc bc
    add c
    ccf
    dec b
    adc $77
    ld [$3f73], sp
    dec b
    adc $77
    dec l
    or d
    ccf
    dec b
    adc $77
    rst $38
    or b
    ccf
    dec b
    adc $77
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

jr_00a_7f5f:
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
    ld [bc], a
    ld [bc], a
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

jr_00a_7f89:
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
    jp hl


    halt
    nop
    nop
    nop
    ld [hl], a
    rst $38
    or b
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    ret nz

    rst $38
    ld b, b
    nop
    ret nz

    nop
    nop
    db $fc
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    ret nz

    ld a, a
    add $7f
    call z, $d47f
    ld a, a
    ld c, b
    jr @+$6a

    db $10
    adc b
    ld [$8848], sp
    ld l, b
    sub b
    adc b
    sbc b
    ld l, b
    jr nz, jr_00a_7f5f

    jr jr_00a_7f89

    db $10
    ret c

    ld [$d068], sp
    sub b
    ret c

    cp b
    ldh [$ffd8], a
    add sp, $06
    inc bc
    rla
    ld [bc], a
    rlca
    inc b
    dec e
    inc bc
    ld [$2305], sp
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
