; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    call Call_00c_4009
    ld hl, $c7f7
    jp $16ab


Call_00c_4009:
    ld bc, $c7f7
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    inc bc
    ld hl, $d93d
    ld d, $00
    ld a, [$c725]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [bc], a
    inc bc
    xor a
    ld [bc], a
    ret


    call $313d
    push de
    call Call_00c_4037
    pop de
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], e
    ret


Call_00c_4037:
    call $332d
    ld a, $01
    ld [hl+], a
    ld a, [$c725]
    cp $7f
    jr nz, jr_00c_4046

    ld a, $d0

jr_00c_4046:
    add $30
    ld [hl+], a
    inc hl
    ret


    ld a, c
    or a
    ret z

    cp $05
    jr z, jr_00c_407e

    cp $06
    jr z, jr_00c_40ca

    cp $08
    jr z, jr_00c_40ca

    cp $09
    jp z, Jump_00c_4119

    cp $0c
    jp z, Jump_00c_4174

    cp $0d
    jp z, Jump_00c_419b

    cp $0e
    jp z, Jump_00c_423e

    cp $0f
    jp z, Jump_00c_40ca

    cp $10
    jp z, Jump_00c_4269

    cp $12
    jp z, Jump_00c_429e

    ret


jr_00c_407e:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    ldh a, [rDIV]
    and $07
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push de
    push hl
    ld h, d
    ld l, e
    call $3375
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    pop de
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    push hl
    ld hl, $d93d
    ld a, [$c80d]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    pop bc
    pop hl
    ret


Jump_00c_40ca:
jr_00c_40ca:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    ldh a, [rDIV]
    and $03
    ld [hl+], a
    ld a, $25
    ld [hl+], a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push de
    push hl
    ld h, d
    ld l, e
    call $3375
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    pop de
    push hl
    ld h, d
    ld l, e
    call $338d
    ld d, h
    ld e, l
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    push hl
    ld hl, $d93d
    ld a, [$c80d]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    pop bc
    pop hl
    ret


Jump_00c_4119:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    push de
    push hl
    ld h, d
    ld l, e
    call $3375
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    pop de
    inc de
    inc de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    dec hl
    dec hl
    ld de, $0080
    ld bc, $068d
    ld a, [$c80d]
    cp $70
    jr nz, jr_00c_4155

    ld de, hOAMDMAFunction
    ld bc, $028d

jr_00c_4155:
    ld a, c
    cp [hl]
    jr nz, jr_00c_415e

    inc hl
    ld a, [hl-]
    cp b
    jr z, jr_00c_4161

jr_00c_415e:
    add hl, de
    jr jr_00c_4155

jr_00c_4161:
    push hl
    call $3375
    pop bc
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld [hl], b
    pop de
    pop bc
    pop hl
    ret


Jump_00c_4174:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop de
    pop bc
    pop hl
    ret


Jump_00c_419b:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    push hl
    push de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop de
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    push de
    call Call_00c_41d8
    pop de
    pop hl
    ld a, c
    ld [hl+], a
    push hl
    call Call_00c_420b
    pop hl
    ld [hl], c
    pop de
    pop bc
    pop hl
    ret


Call_00c_41d8:
    ld c, $00
    ld h, d
    ld l, e
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    or a
    ret nz

    ld a, [hl]
    or a
    jr z, jr_00c_41ea

    cp $20
    ret c

jr_00c_41ea:
    push de
    call $331d
    pop de
    dec c
    push bc
    ld a, $43
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop bc
    ret


Call_00c_420b:
    ld c, $00
    ld h, d
    ld l, e
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    ret nz

    ld a, [hl]
    or a
    jr z, jr_00c_421d

    cp $20
    ret c

jr_00c_421d:
    push de
    call $331d
    pop de
    dec c
    push bc
    ld a, $42
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $338d
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop bc
    ret


Jump_00c_423e:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    ldh a, [rDIV]
    and $03
    ld [hl+], a
    ld a, $1e
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    ld h, d
    ld l, e
    call $3375
    pop hl
    ld a, d
    ld [hl+], a
    ld [hl], e
    pop de
    pop bc
    pop hl
    ret


Jump_00c_4269:
    push hl
    push bc
    push de
    push de
    call $331d
    pop de
    ld a, [$c80d]
    add $30
    ld [hl+], a
    ld [hl+], a
    ldh a, [rDIV]
    and $1f
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
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
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    pop de
    pop bc
    pop hl
    ret


Jump_00c_429e:
    push hl
    push bc
    push de
    ld hl, $db16
    ld de, $0010
    ld c, $20
    ld a, $7c

jr_00c_42ab:
    cp [hl]
    jr z, jr_00c_42c4

    add hl, de
    dec c
    jr nz, jr_00c_42ab

    call $331d
    ld a, $7c
    ld [hl+], a
    ld [hl+], a
    ldh a, [rDIV]
    and $1f
    cpl
    ld [hl+], a
    ldh a, [rDIV]
    and $7f
    ld [hl], a

jr_00c_42c4:
    pop de
    pop bc
    pop hl
    ret


    call Call_000_1ea9
    xor a
    call Call_000_1ea8
    ld hl, $d44d
    ld de, $b4c0
    ld bc, $0380
    call Call_00c_42de
    jp Call_000_1eb2


Call_00c_42de:
jr_00c_42de:
    ld a, [hl]
    ld [de], a
    inc de
    ld a, [hl+]
    swap a
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_00c_42de

    ret


    call Call_000_1ea9
    push de
    ld h, d
    ld l, e
    xor a
    ld c, $c0
    call FillMemory
    pop de
    ld hl, $da75
    ld bc, $0380

jr_00c_42ff:
    ld a, [hl]
    cp $ff
    jr z, jr_00c_4320

    cp $fe
    jr z, jr_00c_4320

    ld [de], a
    inc de
    swap a
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    swap a
    and $0f
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    swap a
    and $0f
    ld [de], a
    inc de

jr_00c_4320:
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_00c_42ff

    ld [de], a
    inc de
    ld [de], a
    jp Call_000_1eb2

Call_0c_432c:
    ld a, [$d89c]
    ld b, a
    ld c, $08

jr_00c_4332:
    sla b
    jr nc, jr_00c_43ab

    push bc
    dec c
    push bc
    call $331d
    pop bc
    ld a, $5e
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [$c80b], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    ld de, $000a
    add hl, de
    push hl
    call Call_00c_4640
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    call Call_00c_4651
    pop bc
    ld a, l
    ld d, h
    pop hl
    ld [hl+], a
    ld [hl], d
    call Call_00c_4a57
    call Call_00c_4640
    call Call_00c_467f
    ld hl, $d89d
    ld b, $00
    add hl, bc
    ld d, [hl]
    ld e, $08

jr_00c_4377:
    sla d
    jr nc, jr_00c_43a7

    push de
    push bc
    call Call_00c_4640
    call Call_00c_467f
    ld d, b
    sla e
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_00c_4658
    call Call_00c_4464
    call Call_00c_4489
    call Call_00c_44ae
    call Call_00c_44f3
    call Call_00c_4533
    call Call_00c_4570
    call Call_00c_45b4
    call Call_00c_460f
    pop bc
    pop de

jr_00c_43a7:
    dec e
    jr nz, jr_00c_4377

    pop bc

jr_00c_43ab:
    dec c
    jr nz, jr_00c_4332

    ld hl, $d8ad
    ld c, $48

jr_00c_43b3:
    ld a, [hl+]
    push hl
    ld d, h
    ld e, l
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_00c_43c8

    push bc
    push de
    call Call_00c_4658
    pop de
    pop bc
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a

jr_00c_43c8:
    pop hl
    inc hl
    dec c
    jr nz, jr_00c_43b3

    ld hl, $d8bf
    ld c, $07

jr_00c_43d2:
    push bc
    push hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld bc, $0010
    add hl, bc
    call Call_00c_4434
    ld c, $08

jr_00c_43e0:
    push hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    or l
    jr z, jr_00c_4403

    ld a, [hl+]
    cp $18
    jr z, jr_00c_43fa

    cp $15
    jr nz, jr_00c_4402

    ld a, [hl]
    and $f0
    swap a
    add $20
    ld [de], a
    jr jr_00c_4402

jr_00c_43fa:
    ld a, [hl]
    and $f0
    swap a
    add $b0
    ld [de], a

jr_00c_4402:
    inc de

jr_00c_4403:
    pop hl
    dec hl
    dec hl
    dec c
    jr nz, jr_00c_43e0

    pop hl
    ld bc, $0012
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00c_43d2

    ld hl, $d8ad
    ld c, $48

jr_00c_4417:
    ld a, [hl+]
    push hl
    ld d, h
    ld e, l
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_00c_442e

    push bc
    push de
    ld d, h
    ld e, l
    call $33a9
    pop de
    pop bc
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a

jr_00c_442e:
    pop hl
    inc hl
    dec c
    jr nz, jr_00c_4417

    ret


Call_00c_4434:
    push hl
    ld hl, $db23
    ld c, $20

jr_00c_443a:
    push bc
    push hl
    ld a, [hl+]
    cp e
    jr nz, jr_00c_4459

    ld a, [hl]
    cp d
    jr nz, jr_00c_4459

    ld bc, $fff1
    add hl, bc
    ld a, [hl+]
    or a
    jr z, jr_00c_4459

    ld a, [hl+]
    cp $5e
    jr nz, jr_00c_4459

    inc hl
    inc hl
    ld d, h
    ld e, l
    pop hl
    pop hl
    pop hl
    ret


jr_00c_4459:
    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00c_443a

    pop hl
    ret


Call_00c_4464:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $15
    ret nz

    push hl
    inc hl
    ld a, [hl]
    swap a
    and $0f
    add $20
    push af
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    pop af
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    ret


Call_00c_4489:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $18
    ret nz

    push hl
    inc hl
    ld a, [hl]
    swap a
    and $0f
    add $b0
    push af
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    pop af
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    ret


Call_00c_44ae:
    ld a, e
    or a
    ret z

    ld a, [hl]
    cp $43
    ret nz

    push de
    push hl
    inc hl
    ld a, [hl]
    sub $40
    push af
    call Call_00c_44d4
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    pop af
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    pop de
    ret


Call_00c_44d4:
    ld de, $c216
    ld h, $00
    add a
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    push hl
    ld hl, $d8a5
    ld a, [$c80b]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_44f0

    inc a

jr_00c_44f0:
    pop hl
    ld [hl], a
    ret


Call_00c_44f3:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $8d
    ret nz

    push hl
    push de
    inc hl
    inc hl
    ld d, h
    ld e, l
    ld hl, $dd0a
    call Call_00c_4aaf
    ld de, $0006
    add hl, de
    push hl
    ld hl, $d8a5
    ld a, [$c80b]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_451a
    inc a
jr_00c_451a:
    pop hl
    ld [hl], a
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    ld a, c
    add $3f
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop de
    pop hl
    ret


Call_00c_4533:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $43
    ret nz

    push de
    push bc
    push hl
    inc hl
    ld b, [hl]
    ld hl, $d8a5
    ld a, [$c80b]
    ld d, $00
    ld e, a
    add hl, de
    ld e, [hl]
    ld c, $60
    ld hl, $c853
    ld a, b
    cp $00
    jr z, jr_00c_4559

    ld c, $61
    ld hl, $c854

jr_00c_4559:
    ld [hl], e
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    ld a, c
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    pop bc
    pop de
    ret


Call_00c_4570:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $82
    ret nz

    push de
    push bc
    push hl
    ld d, h
    ld e, l
    ld hl, $dd0a
    call Call_00c_4aaf
    dec hl
    dec hl
    push hl
    ld hl, $d8a5
    ld a, [$c80b]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    cp $02
    jr nz, jr_00c_4596

    ld a, $ff

jr_00c_4596:
    inc a
    pop hl
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    ld a, c
    add $6f
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    pop bc
    pop de
    ret


Call_00c_45b4:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $57
    ret nz

    push de
    push bc
    push hl
    ld d, h
    ld e, l
    ld hl, $dd09
    call Call_00c_4aaf
    dec hl
    push hl
    ld hl, $d8a5
    ld a, [$c80b]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_00c_45d7

    inc a

jr_00c_45d7:
    pop hl
    ld [hl+], a
    ld b, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    or a
    call nz, Call_00c_4600
    ld a, [hl]
    or a
    call nz, Call_00c_4600
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    ld a, c
    add $8f
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    pop bc
    pop de
    ret


Call_00c_4600:
    push hl
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db18
    add hl, de
    ld [hl], b
    pop hl
    ret


Call_00c_460f:
    ld a, e
    or a
    ret nz

    ld a, [hl]
    cp $16
    ret nz

    push de
    push bc
    push hl
    ld d, h
    ld e, l
    ld hl, $dd0a
    call Call_00c_4aaf
    ld de, $000a
    add hl, de
    ld a, $01
    ld [hl], a
    ld a, [$c809]
    ld l, a
    ld a, [$c80a]
    ld h, a
    ld a, c
    add $cf
    ld [hl+], a
    ld a, l
    ld [$c809], a
    ld a, h
    ld [$c80a], a
    pop hl
    pop bc
    pop de
    ret


Call_00c_4640:
    push bc
    ld hl, $d8ad
    ld a, c
    swap a
    srl a
    add c
    add a
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    ret


Call_00c_4651:
    ld bc, $2bb3
    ld e, $00
    jr jr_00c_4667

Call_00c_4658:
    ld bc, $2bb3
    ld e, $00
    ld a, h
    cp $da
    jr c, jr_00c_4667

    ld bc, $258b
    ld e, $02

jr_00c_4667:
    add hl, bc
    ld a, l
    and $1f
    add a
    add a
    add $04
    add e
    ld b, $00
    ld c, a
    ld a, l
    and $e0
    ld l, a
    add hl, hl
    add hl, hl
    add hl, bc
    ld bc, $c8ed
    add hl, bc
    ret


Call_00c_467f:
    push hl
    push de
    push bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    call Call_00c_4651
    pop bc
    inc hl
    ld a, c
    swap a
    ld e, a
    ld a, [hl]
    or e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    or e
    ld [hl], a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    or e
    ld [hl-], a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    or e
    ld [hl], a
    pop bc
    pop de
    pop hl
    ret

Call_0c_46a9:
    ld hl, $c864
    xor a
    ld [hl], a
    ld a, [$da4b]
    and $0f
    cp $01
    jr z, jr_00c_46bf

    cp $05
    jr z, jr_00c_46bf

    cp $0d
    jr nz, jr_00c_46bf

jr_00c_46bf:
    ld hl, $c201
    ld d, $00
    ld c, $20

jr_00c_46c6:
    ld a, [hl]
    cp $b0
    jr z, jr_00c_46cf

    cp $c8
    jr nz, jr_00c_46d6

jr_00c_46cf:
    push hl
    ld e, $16
    add hl, de
    ld [hl], $03
    pop hl

jr_00c_46d6:
    ld e, $20
    add hl, de
    dec c
    jr nz, jr_00c_46c6

    ld hl, $d84c
    ld c, $10

jr_00c_46e1:
    ld a, [hl+]
    or a
    ret z

    push hl
    push bc
    cp $7f
    jr z, jr_00c_4717

    cp $70
    jr z, jr_00c_471f

    cp $72
    jr z, jr_00c_471f

    cp $80
    jr z, jr_00c_4748

    cp $98
    jr z, jr_00c_4748

    cp $84
    jr z, jr_00c_4748

    cp $9a
    jr z, jr_00c_4748

    cp $6e
    jr z, jr_00c_4768

    cp $cc
    jr z, jr_00c_4768

    cp $b8
    jr z, jr_00c_477c

Jump_00c_470e:
jr_00c_470e:
    pop bc
    pop hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_00c_46e1

    ret


jr_00c_4717:
    inc hl
    inc hl
    ld a, [hl]
    ld [$c201], a
    jr jr_00c_470e

jr_00c_471f:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_00c_4651
    call Call_00c_4933
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db21
    add hl, de
    pop de
    inc de
    ld a, [de]
    add a
    push hl
    ld hl, $4f77
    ld d, $00
    ld e, a
    add hl, de
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jr jr_00c_470e

jr_00c_4748:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call $3138
    call $31ca
    or a
    jr nz, jr_00c_475e

jr_00c_4755:
    pop hl
    dec hl
    dec hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_00c_470e

jr_00c_475e:
    ld de, $0017

jr_00c_4761:
    add hl, de
    pop de
    inc de
    ld a, [de]
    ld [hl], a
    jr jr_00c_470e

jr_00c_4768:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call $3138
    call $31ca
    or a
    jr nz, jr_00c_4777

    jr jr_00c_4755

jr_00c_4777:
    ld de, $0019
    jr jr_00c_4761

jr_00c_477c:
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call $3138
    call $31ca
    or a
    jr nz, jr_00c_478b

    jr jr_00c_4755

jr_00c_478b:
    ld de, $0007
    add hl, de
    pop de
    inc de
    push de
    ld a, [de]
    or a
    ld a, $fe
    jr z, jr_00c_479a

    ld a, $02

jr_00c_479a:
    add [hl]
    ld [hl], a
    ld de, $000b
    add hl, de
    pop de
    ld a, [de]
    or [hl]
    ld [hl], a
    jp Jump_00c_470e

Call_0c_47a7:
    ld hl, $c858
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c0a4], a
    ld [$c863], a
    ld hl, $c86d
    ld bc, $03c0

jr_00c_47b9:
    ld a, [hl+]
    cp $08
    call z, Call_00c_48ca
    cp $50
    call z, Call_00c_4876
    cp $42
    call z, Call_00c_4884
    cp $82
    call z, Call_00c_4892
    cp $0b
    call z, Call_00c_48a0
    cp $0b
    call z, Call_00c_48ae
    cp $0b
    call z, Call_00c_48bc
    cp $8d
    jr nz, jr_00c_482e

    push bc
    push hl
    ld a, [hl-]
    cp $00
    jr z, jr_00c_480c

    cp $04
    jr nz, jr_00c_482c

    call Call_00c_4933
    call Call_00c_4ac3

jr_00c_47f2:
    call Call_00c_49cb
    call Call_00c_4ac3
    ld de, $0080

jr_00c_47fb:
    add hl, de
    ld a, [hl]
    cp $8d
    jr nz, jr_00c_4807

    inc hl
    ld a, [hl-]
    cp $06
    jr z, jr_00c_482c

jr_00c_4807:
    dec c
    jr nz, jr_00c_47fb

    jr jr_00c_47f2

jr_00c_480c:
    call Call_00c_4933
    call Call_00c_4ac3

jr_00c_4812:
    call Call_00c_4956
    call Call_00c_4ac3
    ld de, hOAMDMAFunction

jr_00c_481b:
    add hl, de
    ld a, [hl]
    cp $8d
    jr nz, jr_00c_4827

    inc hl
    ld a, [hl-]
    cp $02
    jr z, jr_00c_482c

jr_00c_4827:
    dec c
    jr nz, jr_00c_481b

    jr jr_00c_4812

jr_00c_482c:
    pop hl
    pop bc

jr_00c_482e:
    inc hl
    inc hl
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_00c_47b9

    ld a, [$c863]
    or a
    jr z, jr_00c_485e

    ld c, a
    ld hl, $db16
    ld de, $0010
    ld a, $7c

jr_00c_4845:
    cp [hl]
    jr z, jr_00c_484b

    add hl, de
    jr jr_00c_4845

jr_00c_484b:
    inc hl
    inc hl
    inc hl
    push bc
    push hl
    ld h, $00
    ld l, c
    ld b, $05
    call $105e
    inc hl
    ld a, l
    pop hl
    pop bc
    ld [hl+], a
    ld [hl], c

jr_00c_485e:
    ld hl, $c0a4
    ld a, [hl]
    or a
    jr nz, jr_00c_4866

    dec [hl]

jr_00c_4866:
    ld hl, $c858
    ld a, [hl]
    cp $03
    jr nc, jr_00c_4872

    ld a, $ff
    ld [hl], a
    ret


jr_00c_4872:
    ld a, $03
    ld [hl], a
    ret


Call_00c_4876:
    push hl
    push af
    ld a, [hl]
    cp $00
    jr nz, jr_00c_4881

    ld hl, $c0a4
    inc [hl]

jr_00c_4881:
    pop af
    pop hl
    ret


Call_00c_4884:
    push hl
    push af
    ld a, [hl]
    cp $38
    jr nz, jr_00c_488f

    ld hl, $c863
    inc [hl]

jr_00c_488f:
    pop af
    pop hl
    ret


Call_00c_4892:
    push hl
    push af
    ld a, [hl]
    cp $39
    jr nz, jr_00c_489d

    ld hl, $c863
    inc [hl]

jr_00c_489d:
    pop af
    pop hl
    ret


Call_00c_48a0:
    push hl
    push af
    ld a, [hl]
    cp $20
    jr nz, jr_00c_48ab

    ld hl, $c858
    inc [hl]

jr_00c_48ab:
    pop af
    pop hl
    ret


Call_00c_48ae:
    push hl
    push af
    ld a, [hl]
    cp $22
    jr nz, jr_00c_48b9

    ld hl, $c858
    inc [hl]

jr_00c_48b9:
    pop af
    pop hl
    ret


Call_00c_48bc:
    push hl
    push af
    ld a, [hl]
    cp $4a
    jr nz, jr_00c_48c7

    ld hl, $c858
    inc [hl]

jr_00c_48c7:
    pop af
    pop hl
    ret


Call_00c_48ca:
    push hl
    push af
    push bc
    ld a, [hl]
    cp $10
    jr nz, jr_00c_4924

    dec hl
    call Call_00c_4930
    ld a, [$c70d]
    cp $ff
    jr z, jr_00c_4924

    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db19
    add hl, de
    ldh a, [rDIV]
    and $01
    add a
    ld c, a
    add a
    ld [hl+], a
    push hl
    ld d, $00
    ld e, a
    ld hl, $4928
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    push bc
    ld bc, $007f
    add hl, bc
    pop bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop hl
    inc hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d969]
    ld b, a
    ld a, c
    add a
    add c
    add b
    ld [hl], a
    pop hl
    call $16ab

jr_00c_4924:
    pop bc
    pop af
    pop hl
    ret


    ld [$0810], sp
    ld bc, $0108
    db $08
    db $01

Call_00c_4930:
    push hl
    jr jr_00c_4936

Call_00c_4933:
    push hl
    inc hl
    inc hl

jr_00c_4936:
    ld d, h
    ld e, l
    ld hl, $dd0a
    ld c, $20

jr_00c_493d:
    ld a, e
    cp [hl]
    jr nz, jr_00c_4946

    inc hl
    ld a, [hl-]
    cp d
    jr z, jr_00c_494f

jr_00c_4946:
    push de
    ld de, $fff0
    add hl, de
    pop de
    dec c
    jr nz, jr_00c_493d

jr_00c_494f:
    dec c
    ld a, c
    ld [$c70d], a
    pop hl
    ret


Call_00c_4956:
    push hl
    push hl
    call $3375
    push de
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
    ld a, d
    ld [hl+], a
    ld [$c80d], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, [$c80f]
    cpl
    inc a
    ld [hl+], a
    ld a, e
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
    pop bc
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
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
    call $32f5
    pop hl
    ret


Call_00c_49cb:
    push hl
    push hl
    call $3375
    push de
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
    ld a, d
    ld [hl+], a
    ld [$c80d], a
    inc hl
    inc hl
    ld a, [$c80f]
    ld [hl+], a
    ld a, e
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
    pop bc
    inc bc
    inc bc
    ld a, c
    ld [hl+], a
    ld a, b
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
    call $32f5
    pop hl
    ret

Call_0c_4a3e:
    push hl
    ld hl, $4eeb
    ld a, [$da4b]
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, b
    cp $fd
    jr z, jr_00c_4a54

    cp $cd
    jr c, jr_00c_4a54

    inc hl

jr_00c_4a54:
    ld e, [hl]
    pop hl
    ret


Call_00c_4a57:
    push bc
    push de
    push hl
    ld h, d
    ld l, a
    push hl
    call $338d
    push hl
    ld hl, $d8a5
    ld d, $00
    ld a, [$c80b]
    ld e, a
    add hl, de
    ld c, [hl]
    sla c
    sla c
    pop de
    pop hl
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_00c_4a7c

    res 2, c
    srl c

jr_00c_4a7c:
    push de
    ld a, [hl]
    add c
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add c
    ld [hl], a
    ld de, $0080
    add hl, de
    ld a, [hl]
    add c
    ld [hl-], a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    add c
    ld [hl], a
    pop hl
    ld a, c
    cp $0c
    jr nz, jr_00c_4a9b

    ld c, $04

jr_00c_4a9b:
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    add c
    ld [hl], a
    ld de, $0020
    add hl, de
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    add c
    ld [hl], a
    pop hl
    pop de
    pop bc
    ret


Call_00c_4aaf:
    ld c, $20

jr_00c_4ab1:
    ld a, e
    cp [hl]
    jr nz, jr_00c_4ab9

    inc hl
    ld a, [hl-]
    cp d
    ret z

jr_00c_4ab9:
    push de
    ld de, $fff0
    add hl, de
    pop de
    dec c
    jr nz, jr_00c_4ab1
    ret


Call_00c_4ac3:
    push hl
    push de
    ld a, [$c70d]
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $db21
    add hl, de
    ld a, [hl+]
    ld [$c80f], a
    swap a
    ld c, a
    ld b, [hl]
    swap b
    xor a

jr_00c_4ade:
    add b
    dec c
    jr nz, jr_00c_4ade

    srl a
    srl a
    jr z, jr_00c_4aec

    ld c, a
    pop de
    pop hl
    ret


jr_00c_4aec:
    ld a, $40
    ld [hl-], a
    ld a, $60
    ld [hl], a
    ld [$c80f], a
    ld c, $06
    pop de
    pop hl
    ret

Call_0c_4afa:
    ld b, $09
    ld hl, $4eb5
jr_00c_4aff:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld c, $04
    call $1057
    dec b
    jr nz, jr_00c_4aff
    ld a, [$c851]
    ldh [$ff90], a
    ret

Call_0c_4b11:
    ld hl, $c86d
    push hl
    ld a, $82
    ld e, a
    ld a, $04
    ld d, a
    call Call_00c_4b49
    pop hl
    ld a, $82
    ld e, a
    ld a, $06
    ld d, a
    call Call_00c_4b59
    ld hl, $c8e9
    ld a, [$c705]
    or a
    jr nz, jr_00c_4b34
    ld hl, $c8c1
jr_00c_4b34:
    call Call_00c_4b59
    ld a, $a2
    ld e, a
    ld a, $05
    ld d, a
    ld hl, $d6ed
    ld a, [$c705]
    or a
    jr nz, jr_00c_4b49
    ld hl, $d26d

Call_00c_4b49:
jr_00c_4b49:
    ld bc, $0020
jr_00c_4b4c:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00c_4b4c
    ret


Call_00c_4b59:
    ld bc, $001e
jr_00c_4b5c:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $7d
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec bc
    ld a, b
    or c
    jr nz, jr_00c_4b5c
    ret


    call $20a3
    ld d, $00
    ld hl, $d44d
    call Call_00c_4bba
    ld hl, $da75
    call Call_00c_4bba
    ld hl, $de74
    set 0, [hl]
    ld hl, $def3
    res 0, [hl]
    ld hl, $def4
    res 0, [hl]
    ld hl, $4e55
jr_00c_4b94:
    ld a, [hl+]
    cp $ff
    ret z
    ld b, a
    ld a, [hl+]
    ld c, [hl]
    push hl
    ld hl, $ddf5
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop hl
    or a
    jr z, jr_00c_4bb6
jr_00c_4ba8:
    push hl
    ld hl, $ddf5
    ld e, c
    add hl, de
    set 0, [hl]
    pop hl
    inc hl
    ld c, [hl]
    dec b
    jr nz, jr_00c_4ba8
jr_00c_4bb6:
    ld e, b
    add hl, de
    jr jr_00c_4b94

Call_00c_4bba:
    ld bc, $0380
jr_00c_4bbd:
    ld a, [hl+]
    push hl
    ld hl, $ddf5
    ld e, a
    add hl, de
    set 0, [hl]
    pop hl
    dec bc
    ld a, b
    or c
    jr nz, jr_00c_4bbd
    ret


    ld a, [$c864]
    or a
    jr nz, jr_00c_4bd9
    call $1517
    jp Call_000_10c6


jr_00c_4bd9:
    call Call_00c_4c15
    call Call_00c_4c50
    ld hl, $c707
    ld a, [hl]
    push af
    ld a, [$c706]
    add [hl]
    ld [hl], a
    call Call_000_10c6
    pop af
    ld [$c707], a
    ret


    ld a, [$c864]
    or a
    jr nz, jr_00c_4bfd

    call $1517
    jp $11d1


jr_00c_4bfd:
    call Call_00c_4c15
    call Call_00c_4c50
    ld hl, $c707
    ld a, [hl]
    push af
    ld a, [$c706]
    add [hl]
    ld [hl], a
    call $11d1
    pop af
    ld [$c707], a
    ret


Call_00c_4c15:
    ld hl, $c865
    inc [hl]
    ld a, [hl]
    cp $10
    ret nz

    xor a
    ld [hl+], a
    inc [hl]
    ld a, [hl]
    and $1f
    ld [hl], a
    ld d, $00
    ld e, a
    ld hl, $4c30
    add hl, de
    ld a, [hl]
    ld [$c706], a
    ret


    nop
    nop
    nop
    rst $38
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $ff

Call_00c_4c50:
    ld a, [$c705]
    or a
    ret z

    dec a
    jr z, jr_00c_4cb4

    dec a
    jr z, jr_00c_4c86

    dec a
    jr z, jr_00c_4c63

    dec a
    ret z

    dec a
    jr z, jr_00c_4c86

jr_00c_4c63:
    ld hl, $c207
    ld de, $ff43
    ld a, [de]
    add $38
    sub [hl]
    jr c, jr_00c_4c77

    ld b, a
    ld a, [de]
    sub b
    jr c, jr_00c_4c77

    ld [$c708], a

jr_00c_4c77:
    ld a, [de]
    add $68
    sub [hl]
    ret nc

    ld b, a
    ld a, [de]
    sub b
    cp $51
    ret nc

    ld [$c708], a
    ret


jr_00c_4c86:
    ld hl, $c203
    ld de, $c707
    ldh a, [rSCY]
    ld c, a
    ld a, [$c706]
    cpl
    inc a
    add c
    ld c, a
    add $38
    sub [hl]
    jr c, jr_00c_4ca7

    ld b, a
    ld a, c
    sub b
    add $05
    cp $54
    jr nc, jr_00c_4ca7

    sub $05
    ld [de], a

jr_00c_4ca7:
    ld a, c
    add $68
    sub [hl]
    ret nc

    ld b, a
    ld a, c
    sub b
    cp $51
    ret nc

    ld [de], a
    ret


jr_00c_4cb4:
    ld hl, $c203
    ld de, $c707
    ldh a, [rSCY]
    ld c, a
    ld a, [$c706]
    cpl
    inc a
    add c
    ld c, a
    add $38
    sub [hl]
    jr c, jr_00c_4cd5

    ld b, a
    ld a, c
    sub b
    add $05
    cp $54
    jr nc, jr_00c_4cd5

    sub $05
    ld [de], a

jr_00c_4cd5:
    ld a, c
    add $68
    sub [hl]
    jr nc, jr_00c_4ce3

    ld b, a
    ld a, c
    sub b
    cp $51
    jr nc, jr_00c_4ce3

    ld [de], a

jr_00c_4ce3:
    inc hl
    inc hl
    inc hl
    inc hl
    inc de
    ldh a, [rSCX]
    add $38
    sub [hl]
    jr c, jr_00c_4cf6

    ld b, a
    ldh a, [rSCX]
    sub b
    jr c, jr_00c_4cf6

    ld [de], a

jr_00c_4cf6:
    ldh a, [rSCX]
    add $68
    sub [hl]
    ret nc

    ld b, a
    ldh a, [rSCX]
    sub b
    cp $51
    ret nc

    ld [de], a
    ret

Call_0c_4d05:
    ldh a, [$90]
    cp $03
    ret c
    cp $0b
    ret nc
    ld hl, $def7
    ld a, [hl+]
    ld e, a
    or [hl]
    jr z, jr_00c_4d1e
    ld d, [hl]
    dec de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    ld a, [hl]
    ret
jr_00c_4d1e:
    ld hl, $defb
    ld a, [hl-]
    cp $05
    jr nz, jr_00c_4d27
    xor a
jr_00c_4d27:
    push hl
    add a
    ld d, $00
    ld e, a
    ld hl, $4d69
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ld a, [bc]
    inc a
    ld [bc], a
    dec a
    dec bc
    add a
    ld e, a
    add hl, de
    inc hl
    ld a, [hl-]
    ld e, a
    and $f0
    swap a
    push hl
    push de
    ld hl, $4d59
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    push af
    ld [bc], a
    dec bc
    ld a, e
    and $0f
jr_00c_4d53:
    ld [bc], a
    dec bc
    ld a, [hl]
    ld [bc], a
    pop af
    ret


    ld b, b
    add b
    jr nz, jr_00c_4d6d

    ld b, c
    add c
    ld hl, $4211
    add d
    ld [hl+], a
    ld [de], a
    nop
    ld d, b
    ld h, b
    rst $38
    nop
    nop
    ld [hl], e
    ld c, l

jr_00c_4d6d:
    adc l
    ld c, l
    or l
    ld c, l
    db $db
    ld c, l
    jr nc, jr_00c_4da5

    ld [$4c70], sp
    jr nc, jr_00c_4dba

    nop
    inc b
    jr nc, jr_00c_4d96

    ret nz

    ld [$3840], sp
    ret nz

    jr nc, jr_00c_4da5

    jr nz, jr_00c_4db7

    jr nc, jr_00c_4da9

    ld b, b
    ret nz

jr_00c_4d8b:
    nop
    ldh a, [rNR14]
    jr nc, @+$1a

    ld [hl], b
    jr nz, jr_00c_4d53

    ld [$3080], sp

jr_00c_4d96:
    ret nz

    jr z, jr_00c_4dc9

    ld [$10b0], sp
    ret nz

    jr nc, jr_00c_4dbf

    inc b
    db $10
    inc b
    ld d, b
    jr nz, @+$12

jr_00c_4da5:
    inc b
    ld d, b
    ld c, $20

jr_00c_4da9:
    ld d, $10
    inc b
    ld d, b
    ld c, $20
    ld d, $10
    db $10
    ret nz

    nop
    ldh a, [$a0]
    pop bc

jr_00c_4db7:
    ld [$4030], sp

jr_00c_4dba:
    ret nz

jr_00c_4dbb:
    ld [$1c30], sp
    ld h, b

jr_00c_4dbf:
    jr nz, @-$3e

    inc a
    jr nz, @+$42

    nop
    jr jr_00c_4de7

jr_00c_4dc7:
    and b
    nop

jr_00c_4dc9:
    jr nc, jr_00c_4d8b

    ld b, b
    or b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    ret nz

    jr nz, jr_00c_4df5

    inc b
    ld h, b
    inc a
    jr nz, jr_00c_4dda

jr_00c_4dda:
    ldh a, [rSC]
    jr nc, jr_00c_4e1e

    ret nz

    ld bc, $1840
    ret nz

    nop
    nop
    ld b, b
    ret nz

jr_00c_4de7:
    ld h, b
    nop
    inc b
    ld b, b
    ld d, b
    ret nz

    ld bc, $1840
    ret nz

    nop
    nop
    db $10
    ret nz

jr_00c_4df5:
    db $ec
    nop
    inc b
    ld b, b
    jr c, jr_00c_4dbb

    nop
    jr nz, jr_00c_4dfe

jr_00c_4dfe:
    and b
    ld b, b
    or b
    ld b, b
    ret nz

    jr nz, jr_00c_4e35

    jr z, jr_00c_4dc7

    jr @+$32

    inc b
    db $10
    inc b
    ld d, b
    jr nz, @+$32

    inc b
    ld d, b
    inc h
    jr nc, jr_00c_4e14

jr_00c_4e14:
    db $f0

    ld hl, $c103
    set 6, [hl]
    ld a, [$c106]
    ld l, a

jr_00c_4e1e:
    ld a, [$c107]
    ld h, a
    ld de, $007e
    add hl, de
    ld a, [hl+]
    cp $8d
    ret nz

    ld a, [hl]
    cp $02
    jr z, jr_00c_4e32

    cp $04
    ret nz

jr_00c_4e32:
    jp $33e1


jr_00c_4e35:
    ld hl, $c103
    set 6, [hl]
    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    ld de, $fffe
    add hl, de
    ld a, [hl+]
    cp $8d
    ret nz

    ld a, [hl]
    cp $06
    jr z, jr_00c_4e52

    cp $00
    ret nz

jr_00c_4e52:
    jp $33e1


    ld bc, $5b57
    ld bc, $385e
    ld [bc], a
    ld b, h
    ld b, [hl]
    ld a, h
    ld [bc], a
    ld l, [hl]
    ld e, h
    ld a, h
    ld [bc], a
    sub d
    ld e, h
    ld a, h
    inc bc
    ld a, b
    ld [hl], l
    halt
    ld [hl], a
    ld bc, $7470
    ld bc, $7471
    ld bc, $7472
    ld bc, $7473
    ld bc, $9cc4
    ld bc, $3e4a
    ld bc, $3db9
    ld bc, $3d67
    ld bc, $7e4c
    ld bc, $7e52
    rst $38
    nop
    add l
    nop
    sub e
    ld d, b
    jr nc, jr_00c_4e93

    nop

jr_00c_4e93:
    nop
    and b
    ld bc, $5e00
    xor c
    ld bc, $bc00
    or d
    ld [bc], a
    nop
    nop
    and b
    ld [bc], a
    nop
    ld e, [hl]
    xor c
    ld [bc], a
    nop
    cp h
    or d
    inc bc
    nop
    nop
    and b
    inc bc
    nop
    ld e, [hl]
    xor c
    inc bc
    nop
    cp h
    or d
    ld [hl+], a
    ret z

    ld bc, $2603
    ret z

    ld l, a
    ret


    ld bc, $7303
    ret


    ld a, b
    ret


    ld bc, $7c03
    ret


    add c
    ret


    ld bc, $8503
    ret


    adc d
    ret


    ld bc, $8e03
    ret


    sub e
    ret


    ld bc, $9703
    ret


    sbc h
    ret


    ld bc, $a003
    ret


    and l
    ret


    ld bc, $a903
    ret


    xor [hl]
    ret


    ld bc, $b203
    ret


    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld [$0a08], sp
    ld a, [bc]
    inc c
    inc c
    ld c, $0e
    db $10

jr_00c_4efc:
    db $10
    ld [de], a
    ld [de], a
    inc d
    inc d
    ld d, $16
    jr @+$1a

    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld e, $1e
    nop
    jr nz, jr_00c_4f10

    ld [hl+], a
    inc b

jr_00c_4f10:
    inc h
    ld b, $26
    ld [$0a28], sp
    ld a, [hl+]
    inc c
    inc l
    ld c, $2e
    db $10
    jr nc, jr_00c_4f30

jr_00c_4f1e:
    ld [hl-], a
    inc d
    inc [hl]
    ld d, $36
    jr jr_00c_4f5d

    ld a, [de]
    ld a, [hl-]
    inc e
    inc a
    ld e, $3e
    nop
    nop
    ld e, $40
    nop

jr_00c_4f30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_4f5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $20
    ld d, h
    add hl, bc
    ld a, [bc]
    ld [hl], d
    ld [hl], b
    ld a, [hl+]
    add hl, hl
    ld a, [de]
    cp c
    ld h, a
    ld b, b
    jr nz, jr_00c_4fda

    jr nz, jr_00c_4efc

    jr nz, jr_00c_4f1e

    jr nz, jr_00c_4fc0

    ld b, b
    ld h, b
    ld b, b
    add b
    ld b, b
    and b
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld h, b
    add b
    ld h, b
    and b
    ld h, b
    ld b, b
    add b
    ld h, b
    add b
    add b
    add b
    and b
    add b
    inc bc
    nop
    ld [bc], a
    ret z

    ld bc, $0400
    nop
    ld [bc], a
    ret


    ld bc, $0401
    nop
    ld [bc], a
    jp z, $0201

    inc b
    nop
    ld [bc], a
    rlc c
    inc bc
    inc b
    ld bc, $0014
    ld [bc], a
    nop
    inc bc
    ld bc, $0401
    ld [bc], a
    ld bc, $0203
    ld bc, $0205

jr_00c_4fc0:
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0206
    inc bc
    ld bc, $0407
    nop
    inc d
    ld bc, $0402
    inc bc
    ld bc, $0801
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    ld bc, $0209

jr_00c_4fda:
    ld b, $03
    ld [bc], a
    ld bc, $020a
    rlca
    ld bc, $040b
    dec b
    inc d
    ld [bc], a
    ld [bc], a
    ld [$0103], sp
    ld bc, $020c
    add hl, bc
    inc bc
    ld [bc], a
    ld bc, $020d
    ld a, [bc]
    inc bc
    ld [bc], a
    ld bc, $020e
    dec bc
    ld bc, $040f
    nop
    inc d
    inc b
    ld [bc], a
    inc c
    inc bc
    ld bc, $1001
    ld [bc], a
    dec c
    inc bc
    ld [bc], a
    ld bc, $0211
    ld c, $03
    ld [bc], a
    ld bc, $0212
    rrca
    ld bc, $0413
    nop
    inc d
    inc bc
    ld [bc], a
    db $10
    inc bc
    ld bc, $1401
    ld [bc], a
    ld de, $0203
    ld bc, $0215
    ld [de], a
    inc bc
    ld [bc], a
    ld bc, $0216
    inc de
    ld bc, $0417
    dec b
    inc d
    dec b
    ld [bc], a
    inc d
    inc bc
    ld bc, $1801
    ld [bc], a
    dec d
    inc bc
    ld [bc], a
    ld bc, $0219
    ld d, $03
    ld [bc], a
    ld bc, $021a
    rla
    ld bc, $041b
    nop
    inc d
    ld b, $02
    jr jr_00c_5055

    ld bc, $1c01

jr_00c_5055:
    ld [bc], a
    add hl, de
    inc bc
    ld [bc], a
    ld bc, $021d
    ld a, [de]
    inc bc
    ld [bc], a
    ld bc, $021e
    dec de
    ld bc, $041f
    dec b
    inc d
    rlca
    ld [bc], a
    inc e
    inc bc
    ld bc, $2001
    ld [bc], a
    dec e
    inc bc
    ld [bc], a
    ld bc, $0221
    ld e, $03
    ld [bc], a
    ld bc, $0222
    rra
    ld bc, $0423
    nop
    inc d
    ld [$2002], sp
    inc bc
    ld bc, $2401
    ld [bc], a
    ld hl, $0203
    ld bc, $0225
    ld [hl+], a
    inc bc
    ld [bc], a
    ld bc, $0226
    inc hl
    ld bc, $0427
    nop
    inc d
    add hl, bc
    ld [bc], a
    inc h
    inc bc
    ld bc, $2801
    ld [bc], a
    dec h
    inc bc
    ld [bc], a
    ld bc, $0229
    ld h, $03
    ld [bc], a
    ld bc, $022a
    daa
    ld bc, $042b
    dec b
    inc d
    ld a, [bc]
    ld [bc], a
    jr z, jr_00c_50bd

    ld bc, $2c01

jr_00c_50bd:
    ld [bc], a
    add hl, hl
    inc bc
    ld [bc], a
    ld bc, $022d
    ld a, [hl+]
    inc bc
    ld [bc], a
    ld bc, $022e
    dec hl
    ld bc, $042f
    nop
    inc d
    inc c
    ld [bc], a
    inc l
    inc bc
    ld bc, $3001
    ld [bc], a
    dec l
    inc bc
    ld [bc], a
    ld bc, $0231
    ld l, $03
    ld [bc], a
    ld bc, $0232
    cpl
    ld bc, $0433
    nop
    inc d
    dec bc
    ld [bc], a
    jr nc, jr_00c_50f1

    ld bc, $3401

jr_00c_50f1:
    ld [bc], a
    ld sp, $0203
    ld bc, $0235
    ld [hl-], a
    inc bc
    ld [bc], a
    ld bc, $0236
    inc sp
    ld bc, $0437
    dec b
    inc d
    dec c
    ld [bc], a
    inc [hl]
    inc bc
    ld bc, $3801
    ld [bc], a
    dec [hl]
    inc bc
    ld [bc], a
    ld bc, $0239
    ld [hl], $03
    ld [bc], a
    ld bc, $023a
    scf
    ld bc, $043b
    nop
    inc d
    ld c, $02
    jr c, jr_00c_5125

    ld bc, $3c01

jr_00c_5125:
    ld [bc], a
    add hl, sp
    inc bc
    ld [bc], a
    ld bc, $023d
    ld a, [hl-]
    inc bc
    ld [bc], a
    ld bc, $023e
    dec sp
    ld bc, $043f
    dec b
    inc d
    rrca
    ld [bc], a
    inc a
    inc bc
    ld bc, $4001
    ld [bc], a
    dec a
    inc bc
    ld [bc], a
    ld bc, $0241
    ld a, $03
    ld [bc], a
    ld bc, $0242
    ccf
    ld bc, $0443
    nop
    inc d
    ld de, $4002
    inc bc
    ld bc, $4401
    ld [bc], a
    ld b, c
    inc bc
    ld [bc], a
    ld bc, $0245
    ld b, d
    inc bc
    ld [bc], a
    ld bc, $0246
    ld b, e
    ld bc, $0447
    nop
    inc d
    db $10
    ld [bc], a
    ld b, h
    inc bc
    ld bc, $4801
    ld [bc], a
    ld b, l
    inc bc
    ld [bc], a
    ld bc, $0249
    ld b, [hl]
    inc bc
    ld [bc], a
    ld bc, $024a
    ld b, a
    ld bc, $044b
    dec b
    inc d
    ld [de], a
    ld [bc], a
    ld c, b
    inc bc
    ld bc, $4c01
    ld [bc], a
    ld c, c
    inc bc
    ld [bc], a
    ld bc, $024d
    ld c, d
    inc bc
    ld [bc], a
    ld bc, $024e
    ld c, e
    ld bc, $044f
    nop
    inc d
    inc de
    ld [bc], a
    ld c, h
    inc bc
    ld bc, $5001
    ld [bc], a
    ld c, l
    inc bc
    ld [bc], a
    ld bc, $0251
    ld c, [hl]
    inc bc
    ld [bc], a
    ld bc, $0252
    ld c, a
    ld bc, $0453
    nop
    inc d
    inc d
    ld [bc], a
    ld d, b
    inc bc
    ld bc, $5401
    ld [bc], a
    ld d, c
    inc bc
    ld [bc], a
    ld bc, $0255
    ld d, d
    inc bc
    ld [bc], a
    ld bc, $0256
    ld d, e
    ld bc, $0457
    nop
    inc d
    dec d
    ld [bc], a
    ld d, h
    inc bc
    ld bc, $5801
    ld [bc], a
    ld d, l
    inc bc
    ld [bc], a
    ld bc, $0259
    ld d, [hl]
    inc bc
    ld [bc], a
    ld bc, $025a
    ld d, a
    ld bc, $045b
    dec b
    inc d
    ld d, $02
    ld e, b
    ld bc, $045c
    nop
    ld [bc], a
    ld e, c
    ld bc, $045d
    nop
    ld [bc], a
    ld e, d
    ld bc, $045e
    nop
    ld [bc], a
    ld e, e
    ld bc, $045f
    ld [bc], a
    inc d
    rla
    ld [bc], a
    ld e, h
    ld bc, $0460
    nop
    ld [bc], a
    ld e, l
    ld bc, $0461
    nop
    ld [bc], a
    ld e, [hl]
    ld bc, $0462
    nop
    ld [bc], a
    ld e, a
    ld bc, $0463
    inc bc
    inc d
    ld a, [de]

Jump_00c_5223:
    ld [bc], a
    ld h, b
    inc bc
    inc b
    ld bc, $0464
    inc b
    inc d
    jr jr_00c_5244

    nop
    inc de
    nop
    ld [bc], a
    inc bc
    ld bc, $0407
    nop
    ld [bc], a
    rlca
    ld bc, $040b
    dec b
    ld [bc], a
    dec bc
    ld bc, $040f
    nop
    ld [bc], a

jr_00c_5244:
    rrca
    ld bc, $0413
    nop
    ld [bc], a
    inc de
    ld bc, $0417
    dec b
    ld [bc], a
    rla
    ld bc, $041b
    nop
    ld [bc], a
    dec de
    ld bc, $041f
    dec b
    ld [bc], a
    rra
    ld bc, $0423
    nop
    ld [bc], a
    inc hl
    ld bc, $0427
    nop
    ld [bc], a
    daa
    ld bc, $042b
    dec b
    ld [bc], a
    dec hl
    ld bc, $042f
    nop
    ld [bc], a
    cpl
    ld bc, $0433
    nop
    ld [bc], a
    inc sp
    ld bc, $0437
    dec b
    ld [bc], a
    scf
    ld bc, $043b
    nop
    ld [bc], a
    dec sp
    ld bc, $043f
    dec b
    ld [bc], a
    ccf
    ld bc, $0443
    nop
    ld [bc], a
    ld b, e
    ld bc, $0447
    nop
    ld [bc], a
    ld b, a
    ld bc, $044b
    dec b
    ld [bc], a
    ld c, e
    ld bc, $044f
    nop
    ld [bc], a
    ld c, a
    ld bc, $0453
    nop
    ld [bc], a
    ld d, e
    ld bc, $0457
    nop
    ld [bc], a
    ld d, a
    ld bc, $045b
    dec b
    ld [bc], a
    ld e, e
    ld bc, $045f
    ld [bc], a
    ld [bc], a
    ld e, a
    ld bc, $0463
    inc bc
    inc d
    ld a, [de]
    ld [bc], a
    ld h, b
    inc bc
    inc b
    ld bc, $0464
    inc b
    inc d
    jr jr_00c_52e4

    nop
    inc de
    nop
    inc d
    add hl, de
    inc de
    nop
    inc a
    and $01
    ld [$c80f], a
    push de
    push de
    ld hl, $552b
    ld d, $00
    ld e, a
    add hl, de

jr_00c_52e4:
    ld a, [$d95d]
    add [hl]
    ld [$c80d], a
    ld hl, $552d
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
    and $70
    ld c, a
    swap a
    ld [$c810], a
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
    call $338d
    push hl
    call $1635
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, [$c80d]
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $db16
    ld c, $20

jr_00c_5340:
    ld a, $5e
    cp [hl]
    jr nz, jr_00c_5377

    push hl
    inc hl
    inc hl
    ld a, [$c810]
    cp [hl]
    jr nz, jr_00c_5376

    inc hl

Jump_00c_534f:
jr_00c_534f:
    ld a, [hl+]
    or a
    jr z, jr_00c_5376

    cp $20
    jr c, jr_00c_537f

    cp $40
    jr c, jr_00c_5398

    cp $60
    jr c, jr_00c_53ad

    cp $70
    jr c, jr_00c_53c7

    cp $90
    jr c, jr_00c_53dc

    cp $b0
    jp c, Jump_00c_53f7

    cp $d0
    jp c, Jump_00c_5412

    cp $f0
    jp c, Jump_00c_5428

jr_00c_5376:
    pop hl

jr_00c_5377:
    ld de, $0010
    add hl, de
    dec c
    jr nz, jr_00c_5340

    ret


jr_00c_537f:
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
    ld a, [$c80f]
    add a
    inc a
    ld [hl], a
    call Call_00c_543b
    pop hl
    jr jr_00c_534f

jr_00c_5398:
    sub $20
    push hl
    ld [$c80e], a
    call Call_00c_54e7
    ld a, [$c80f]
    add a
    push bc
    call $3301
    pop bc
    pop hl
    jr jr_00c_534f

jr_00c_53ad:
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
    ld a, [$c80f]
    add a
    inc a
    ld [hl], a
    call Call_00c_543b
    pop hl
    jr jr_00c_534f

jr_00c_53c7:
    push hl
    ld hl, $c7f3
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$c80f]
    add a
    ld [hl], a
    inc a
    call Call_00c_543b
    pop hl
    jp Jump_00c_534f


jr_00c_53dc:
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
    ld a, [$c80f]
    add a
    inc a
    ld [hl], a
    call Call_00c_544b
    pop hl
    jp Jump_00c_534f


Jump_00c_53f7:
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
    ld a, [$c80f]
    add a
    inc a
    ld [hl], a
    call Call_00c_545b
    pop hl
    jp Jump_00c_534f


Jump_00c_5412:
    sub $b0
    push hl
    ld [$c80e], a
    call Call_00c_5509
    ld a, [$c80f]
    add a
    push bc
    call $330f
    pop bc
    pop hl
    jp Jump_00c_534f


Jump_00c_5428:
    push hl
    sub $d0
    add a
    add a
    add a
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $db24
    add hl, de
    inc [hl]
    pop hl
    jp Jump_00c_534f


Call_00c_543b:
    bit 0, a
    ld e, $2d
    jr z, jr_00c_5443

    ld e, $2c

Jump_00c_5443:
jr_00c_5443:
    ld a, e
    ld [$c82f], a
    ld [$c835], a
    ret


Call_00c_544b:
    bit 0, a
    ld e, $30
    jr z, jr_00c_5458

    dec a
    ld e, $2a
    jr z, jr_00c_5458

    ld e, $2b

jr_00c_5458:
    jp Jump_00c_5443


Call_00c_545b:
    bit 0, a
    ret z

    dec a
    jr z, jr_00c_5470

    ld de, $0005
    add hl, de
    ld a, [hl+]
    or a
    call nz, Call_00c_5495
    ld a, [hl]
    or a
    call nz, Call_00c_54be
    ret


jr_00c_5470:
    ld de, $0005
    add hl, de
    ld a, [hl+]
    or a
    call nz, Call_00c_547c
    ld a, [hl]
    or a
    ret z

Call_00c_547c:
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


Call_00c_5495:
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
    jr nz, jr_00c_54bc

    ld a, [hl]
    or a
    jr z, jr_00c_54b4

    cp $20
    jr c, jr_00c_54bc

jr_00c_54b4:
    ld a, $2e
    ld [$c82f], a
    ld [$c835], a

jr_00c_54bc:
    pop hl
    ret


Call_00c_54be:
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
    jr nz, jr_00c_54e5

    ld a, [hl]
    or a
    jr z, jr_00c_54dd

    cp $20
    jr c, jr_00c_54e5

jr_00c_54dd:
    ld a, $2e
    ld [$c82f], a
    ld [$c835], a

jr_00c_54e5:
    pop hl
    ret


Call_00c_54e7:
    ld hl, $db16
    ld de, $0010

jr_00c_54ed:
    ld a, $5e
    cp [hl]
    jr z, jr_00c_54f5

jr_00c_54f2:
    add hl, de
    jr jr_00c_54ed

jr_00c_54f5:
    inc hl
    inc hl
    ld a, [$c80e]
    cp [hl]
    jr z, jr_00c_5501

    dec hl
    dec hl
    jr jr_00c_54f2

jr_00c_5501:
    ld de, $000b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


Call_00c_5509:
    ld hl, $db16
    ld de, $0010

jr_00c_550f:
    ld a, $5e
    cp [hl]
    jr z, jr_00c_5517

jr_00c_5514:
    add hl, de
    jr jr_00c_550f

jr_00c_5517:
    inc hl
    inc hl
    ld a, [$c80e]
    cp [hl]
    jr z, jr_00c_5523

    dec hl
    dec hl
    jr jr_00c_5514

jr_00c_5523:
    ld de, $000b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


    nop
    inc b
    sub l
    add b
    sub l
    add c
    sub l
    add d
    sub l
    add e
    sub l
    add h
    sub l
    add l
    sub l
    add [hl]
    sub l
    add a

    call $1cfa
    call $0fd4
    call $162c
    call Call_000_1e27
    ld a, $07
    call LoadGraphicsDataHeader
    ld a, $0d
    call $1d6b
    ld a, $07
    call Call_000_1e38
    ld a, $0e
    call Call_000_1de1
    call Call_00c_55b8
    call Call_00c_55c9
    call Call_00c_55c1
    ld [$c22c], a
    call Call_00c_55b8
    call Call_00c_55d6
    call Call_00c_55c1
    ld [$c28c], a
    call Call_00c_55b8
    call Call_00c_55e3
    call Call_00c_55c1
    ld [$c2ec], a
    ld a, $35
    ld [$c836], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$ff95], a
    ld [$c809], a
    ld hl, $c707
    ld [hl+], a
    ld [hl], a
    ld a, $26
    ldh [$ff8f], a
    ld a, [$da43]
    cp $0a
    jr c, jr_00c_55ad

    ld a, $04
    call Call_1d18
    or a
    jr nz, jr_00c_55ad

    ld a, $fe
    ld [$c809], a

jr_00c_55ad:
    call IncrementFF90
    call $0fe6
    ld a, $29
    jp Call_000_3872


Call_00c_55b8:
    ld a, $08
    call Call_1d18
    add a
    add a
    add a
    ret


Call_00c_55c1:
    ld a, [$defe]
    and $1f
    add $20
    ret


Call_00c_55c9:
Jump_00c_55c9:
    and $1f
    ld [$c22e], a
    ld hl, $c220
    ld bc, $5918
    jr jr_00c_55ee

Call_00c_55d6:
Jump_00c_55d6:
    and $1f
    ld [$c28e], a
    ld hl, $c280
    ld bc, $5922
    jr jr_00c_55ee

Call_00c_55e3:
Jump_00c_55e3:
    and $1f
    ld [$c2ee], a
    ld hl, $c2e0
    ld bc, $592c

jr_00c_55ee:
    push de
    push hl
    ld h, $00
    ld l, a
    srl l
    srl l
    add hl, bc
    and $03
    add a
    add a
    add $48
    ld b, a
    ld d, h
    ld e, l
    dec de
    pop hl
    ld c, $03

jr_00c_5605:
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld a, b
    ld [hl], a
    sub $10
    ld b, a
    ld a, $1d
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_00c_5605

    pop de
    ret


    ldh a, [$95]
    call Call_00c_5793
    cp $b5
    call z, IncrementFF90
    call Call_00c_5753
    jp Call_000_10c6


    call Call_000_10c6
    call Call_00c_579f
    call Call_00c_5793
    cp $32
    ret nz

    ld hl, $c80a
    ld a, [hl]
    or a
    jp z, IncrementFF90

    dec [hl]
    xor a
    ldh [$ff95], a
    ld a, $37
    ld [$c82f], a
    ld [$c835], a
    ld a, $01
    jp $0ddd


    xor a
    ldh [$ff95], a
    ld [$c818], a
    call Call_00c_5753
    call Call_000_10c6
    ldh a, [$8b]
    bit 0, a
    ret z

    ld a, $05
    ld [$c82d], a
    ld [$c835], a
    ldh a, [$90]
    sub $02
    swap a
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $c22f
    add hl, de
    ld [hl], h
    jp IncrementFF90


    xor a
    ld [$c200], a
    call Call_000_10c6
    ldh a, [$95]
    cp $6e
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

    call Call_00c_5753
    call Call_000_10c6
    call Call_00c_5793
    cp $1e
    ret nz
    call IncrementFF90
    xor a
    ld [$c80a], a
    ld [$c80b], a
    ldh [$ff95], a
    call Call_00c_56da
    ld a, [$c80a]
    ld [$c200], a
    or a
    jr nz, jr_00c_56c7
    ld a, $02
    ld [$c82f], a
    ld [$c835], a
jr_00c_56c7:
    ld a, c
    add a
    ret z
    ld hl, $597b
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c203], a
    ld a, [hl]
    ld [$c207], a
    ret


Call_00c_56da:
    ld hl, $5935
    ld c, $0c
jr_00c_56df:
    push hl
    ld a, [$c242]
    cp [hl]
    jr z, jr_00c_56ec
    ld a, [hl]
    or a
    jr z, jr_00c_56ec
    jr jr_00c_572e
jr_00c_56ec:
    inc hl
    ld a, [$c2a2]
    cp [hl]
    jr z, jr_00c_56f9
    ld a, [hl]
    or a
    jr z, jr_00c_56f9
    jr jr_00c_572e
jr_00c_56f9:
    inc hl
    ld a, [$c302]
    cp [hl]
    jr z, jr_00c_5706
    ld a, [hl]
    or a
    jr z, jr_00c_5706
    jr jr_00c_572e
jr_00c_5706:
    inc hl
    ld a, [hl]
    push af
    inc hl
    ld a, [hl]
    ld [$c80b], a
    pop af
    pop hl
    ld [$c80a], a
    or a
    ret nz
    ld de, $da41
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    ld h, a
    push bc
    call Call_000_2006
    pop bc
    ld a, [$c81f]
    or a
    jr nz, jr_00c_572a
    ld a, $0a
jr_00c_572a:
    ld [$c80a], a
    ret
jr_00c_572e:
    pop hl
    ld a, l
    add $06
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_00c_56df
    ret


Call_00c_573b:
    ld hl, $c22c
    ld a, [hl-]
    cp [hl]
    ret nz
    call Call_00c_5765
    jp Jump_00c_55c9


Call_00c_5747:
    ld hl, $c28c
    ld a, [hl-]
    cp [hl]
    ret nz
    call Call_00c_5765
    jp Jump_00c_55d6


Call_00c_5753:
    call Call_00c_573b
    call Call_00c_5747
    ld hl, $c2ec
    ld a, [hl-]
    cp [hl]
    ret nz
    call Call_00c_5765
    jp Jump_00c_55e3


Call_00c_5765:
    xor a
    ld [hl+], a
    ld a, [hl]
    srl a
    inc a
    nop
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl-]
    or a
    jr z, jr_00c_578e

    ld a, [hl]
    ld b, a
    and $03
    jr nz, jr_00c_578e

    ldh a, [$90]
    cp $05
    jr nz, jr_00c_5791

    ld a, l
    cp $ee
    jr nz, jr_00c_5791

    ld a, [$c809]
    or a
    jr z, jr_00c_5791

    xor a
    ld [$c809], a

jr_00c_578e:
    inc [hl]
    ld a, [hl]
    ret


jr_00c_5791:
    ld a, b
    ret


Call_00c_5793:
    ldh a, [$95]
    push af
    and $08
    xor $08
    ld [$c817], a
    pop af
    ret


Call_00c_579f:
    ld a, $01
    ld [$c240], a
    ld [$c2a0], a
    ld [$c300], a
    ldh a, [$95]
    and $08
    xor $08
    ld [$c200], a
    ret nz

    ld hl, $c300
    ld de, $ffa0
    ld c, $03
    ld a, [$c80b]
    ld b, a

jr_00c_57c0:
    srl b
    jr nc, jr_00c_57c5

    dec [hl]

jr_00c_57c5:
    add hl, de
    dec c
    jr nz, jr_00c_57c0

    ret


    call $0fd4
    call $1cfa
    call $162c
    call Call_000_1e2f
    xor a
    ldh [$ff8f], a
    ld a, $30
    call LoadGraphicsDataHeader
    ld hl, $9000 ;57de (0x317de)
    ld c, $10
    xor a
    call FillMemory
    ld hl, $9200
    ld c, $10
    xor a
    ldh [$ff95], a
    call FillMemory
    call Call_000_1094
    ld hl, wIsOnSGB
    ld a, $11
    bit 7, [hl]
    jr nz, jr_00c_57ff
    inc a
jr_00c_57ff:
    call Call_000_1e38
    call IncrementFF90
    ld hl, $c809
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $95
    ld [hl+], a
    ld a, $59
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $c707
    ld a, $70
    ld [hl+], a
    ld [hl], $08
    call Call_00c_58ed
    call $0fe6
    ld a, $2b
    jp Call_000_3872

;this sets something in the palette data for the credits graphics, depending if running on sgb or not
;called after loading the credits picture   
Call_0c_5827:
    call Call_00c_58ed
    ld hl, $ff95
    ld a, [hl]
    cp $05
    ret nz
    xor a
    ld [hl], a
    ld hl, $c80e
    ld a, [hl]
    inc [hl]
    cp $07
    jp z, IncrementFF90
.jr_0c_583d 
    ld d, $00
    ld e, a
    ld hl, $5854
    ld a, [wIsOnSGB]
    bit 7, a ;are we running on sgb?
    jr nz, jr_00c_584d ;no, keep 0x5854 as the offset
    ld hl, $585b ;use the sgb offset instead
jr_00c_584d:
    add hl, de
    ld a, [hl]
    ldh [rBGP], a
    ldh [rOBP0], a
    ret


    nop
    ld b, b
    ld d, b
    sub b
    sub h
    and h
    db $e4
    rst $38
    cp a
    xor a
    ld l, a
    ld l, e
    ld e, e
    dec de
    call Call_00c_58ed
    ld hl, $ff95
    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [hl], a
    ld hl, $c707
    ld a, [hl]
    inc [hl]
    and $07
    ret nz

    ld de, $c80b
    ld a, [de]
    ld h, $00
    ld l, a
    inc a
    and $1f
    ld [de], a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c86d
    call Call_00c_58a3
    ld hl, $c87d
    call Call_00c_58a3
    ld hl, $c80c
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e
    ret


Call_00c_58a3:
    push de
    push hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld d, h
    ld e, l
    inc de
    inc de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld de, $c80c
    push de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld e, $0a

jr_00c_58c2:
    ld a, [bc]
    or a
    jr z, jr_00c_58cb

    cp $ff
    jr z, jr_00c_58e1

    inc bc

jr_00c_58cb:
    ld [hl+], a
    dec e
    jr nz, jr_00c_58c2

    pop de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    pop de
    call $1685
    pop de
    ld hl, $000a
    add hl, de
    ld d, h
    ld e, l
    ret
jr_00c_58e1:
    pop de
    pop de
    pop de
    pop de
    ld a, $4d
    call Call_000_3872
    jp IncrementFF90


Call_00c_58ed:
    ld hl, $c000
    ld e, l
    ld b, $38
jr_00c_58f3:
    ld c, $30
jr_00c_58f5:
    ld a, [$c809]
    add b
    ld [hl+], a
    ld a, [$c80a]
    add c
    ld [hl+], a
    ld a, e
    inc e
    inc e
    ld [hl+], a
    ld a, $80
    ld [hl+], a
jr_00c_5906:
    ld a, c
    add $08
    ld c, a
jr_00c_590a:
    cp $80
    jr nz, jr_00c_58f5
    ld a, b
    add $10
    ld b, a
    cp $78
    jr nz, jr_00c_58f3
    ret

;0x5917
db $4A,$4E,$4A,$4B,$4A,$4C,$4A,$4D,$4A,$4E,$4A,$4B,$4D,$4B,$4C,$4E
db $4A,$4C,$4A,$4B,$4B,$4A,$4C,$4B,$4E,$4A,$4C,$4D,$4B,$4A,$4C,$4C
db $4C,$05,$07,$00,$4A,$4A,$4A,$03,$07,$00,$4A,$4A,$00,$02,$06,$00
db $4B,$4B,$4B,$02,$07,$00,$4E,$4E,$4E,$01,$07,$00,$4D,$4D,$4D,$01
db $07,$00,$4C,$4A,$4B,$00,$07,$00,$4A,$00,$4A,$02,$05,$00,$00,$4A
db $4A,$02,$03,$00,$00,$4A,$00,$01,$02,$00,$00,$00,$4A,$01,$01,$00
db $4A,$00,$00,$01,$04,$00,$88,$28,$88,$28,$88,$28,$80,$28,$80,$28
db $88,$60,$80,$60,$78,$60,$70,$60,$80
;0x5990
db $28,$78,$28,$70,$28,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00
db "  EXECUTIVE PRODUCER"
db $00,$00,$00
db "   HIROSHI YAMAUCHI"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "       PRODUCER"
db $00,$00,$00
db "   SHIGERU MIYAMOTO"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "      DIRECTORS"
db $00,$00,$00
db "  MASAYUKI KAMEYAMA"
db $00,$00
db "    TAKAO SHIMIZU"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "   MAIN PROGRAMMERS"
db $00,$00,$00
db "   YOSHIAKI HOSHINO"
db $00,$00
db "  MASAYUKI HIRASHIMA"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "    CO-PROGRAMMER"
db $00,$00,$00
db "     MOTOO YASUMA"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "    C.G. DESIGNERS"
db $00,$00,$00
db "      HIDEO KON"
db $00,$00
db "      KENTA USUI"
db $00,$00
db "    TAKAYA IMAMURA"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "    SOUND COMPOSER"
db $00,$00,$00
db "     TAISUKE ARAKI"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "   COURSE DESIGNERS"
db $00,$00,$00
db "    KUNIKO SAKURAI"
db $00,$00
db "   KATSUTOMO MAEIWA"
db $00,$00
db "     KENJI UMEDA"
db $00,$00
db "  MASAYUKI KAMEYAMA"
db $00,$00
db "      HIDEO KON"
db $00,$00
db "      KENTA USUI"
db $00,$00
db "    TAKAO SHIMIZU"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "  SPECIAL THANKS TO"
db $00,$00,$00
db "  SHIGEKI YAMASHIRO"
db $00,$00,$00
db "   SUPER GAMEBOY"
db $00
db "       HARDWARE TEAM"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "     ILLUSTRATOR"
db $00,$00,$00
db "    YōICHI KOTABE"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "    MANUAL EDITOR"
db $00,$00,$00
db "    ATSUSHI TEJIMA"
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db "        ARCADE"
db $00,$00
db "     DONKEY KONG"
db $00,$00
db "    ©",$5B,$5C,$5D,$62," NINTENDO" ;1980
db $00,$00,$00,$00,$00
db "    DONKEY KONG JR."
db $00,$00
db "    ©",$5B,$5C,$5D,$5B," NINTENDO" ;1981
db $00,$00,$00,$00,$00
db "    HOME VERSION"
db $00,$00
db "     DONKEY KONG"
db $00,$00
db "    ©",$5B,$5C,$5D,$5E," NINTENDO" ;1983
db $00,$00,$00,$00,$00
db "    DONKEY KONG JR."
db $00,$00
db "    ©",$5B,$5C,$5D,$5E," NINTENDO" ;1983
db $00,$00,$00,$00,$00
db "       GAME BOY"
db $00,$00
db "     DONKEY KONG"
db $00,$00
db "    ©",$5B,$5C,$5C,$63," NINTENDO" ;1994
;this data is part of the credits text data?
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$20,$20,$20,$20,$20,$20,$20,$20,$64,$65,$66,$67,$68,$69
db $00,$20,$20,$20,$20,$20,$20,$20,$20,$6A,$6B,$6C,$6D,$6E,$6F,$00
db $00,$00,$FF

;the function in bank 0 loading this data also loads some of the start
;of the pauline sfx data for some reason, so this may not be the real
;end of this data, though bsnes starts at the same point for
;the loaded sfx data (examine this more)
UnknownData_0c_5ddd::
INCBIN "data/bank_0c_5ddd.bin"

;the same function also does the same thing for the sfx data, instead
;starting earlier than the current file start offset
;the data for the sfx might start earlier/end later than this
SGBPaulineHelpScreamSFX::
INCBIN "audio/sfx/sgb_pauline_help_scream.brr"

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc b
    REPT 4094
    db $FF
    ENDR
