; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    ld hl, $c103
    bit 4, [hl]
    jr z, jr_01f_4044

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
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $70
    ld [$c116], a
    ld a, $05
    ld [$c10a], a
    ld a, $14
    ld [$c10c], a
    ld hl, $c11e
    xor a
    ld c, $07
    call FillMemory
    call Call_01f_7ecf
    call Call_01f_7ea0
    jp Jump_01f_7e3c


Call_01f_4044:
jr_01f_4044:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4053
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, c
    ld b, b
    or e
    ld b, b
    cp a
    ld b, b

    call $2ab3
    ld hl, $dd92
    ld a, [hl+]
    ld b, a
    and $c0
    jr z, jr_01f_408d

    ld a, b
    cp $57
    jr z, jr_01f_4077

    ld a, [hl]
    cp $75
    jr z, jr_01f_4077

    cp $04
    jr z, jr_01f_4077

    cp $05
    jr nz, jr_01f_408d

jr_01f_4077:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    ld [$c0f9], a
    ld a, $02
    ld [$c10a], a
    ld a, $02
    ld [$c10c], a
    ret


jr_01f_408d:
    ld hl, $c0fd
    ld a, [hl]
    add $40
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    dec hl
    ld a, [$c10f]
    cp [hl]
    ret nc

    ld bc, $0006
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c10a], a
    ld a, $1d
    ld [$c831], a
    ld [$c835], a
    ret


    ld a, [$c0fa]
    cp $e0
    ret c

    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fc
    ld de, $c10d
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $1e
    ld [$c0f9], a
    xor a
    ld [$c10a], a
    ld a, $1c
    ld [$c831], a
    ld [$c835], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $40f0
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or $40
    ld e, $41
    ld b, d
    ld b, c

Jump_01f_40f6:
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $60
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
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
    ld a, $01
    ld [hl], a
    ret


    call $2ab3
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld a, $04
    ld [$c10c], a
    xor a
    ld [$c102], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c10a], a
    jp Jump_01f_40f6


    ld hl, $c103
    set 6, [hl]
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4162
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, h
    ld b, c
    sub e
    ld b, c
    or h
    ld b, c
    rst $00
    ld b, c
    reti


    ld b, c
    ld hl, $c207
    ld a, [$c0fe]
    sub $18
    cp $f0
    jr c, jr_01f_4179

    xor a

jr_01f_4179:
    cp [hl]
    ret nc

    add $30
    cp [hl]
    ret c

    ld a, [$c0fa]
    ld [$c10c], a
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ret


    call $2ab3
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld [$c10d], a
    ld hl, $c10a
    inc [hl]
    ld a, $3d
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c10d
    dec [hl]
    ret nz

    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ret


    ld a, [$c10c]
    ld hl, $c0fa
    cp [hl]
    ret c

    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c10a], a
    ret


    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c10a], a
    ld a, $10
    ld [$c116], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $41fb
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec b
    ld b, d
    ccf
    ld b, d
    ld [hl], d
    ld b, d
    sbc a
    ld b, d
    inc a
    ld b, e
    ld a, $02
    call Call_1d18
    ld d, a
    ld bc, $0040
    and a
    jr z, jr_01f_4214

    ld bc, $ffc0

jr_01f_4214:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    ld b, a
    and $1f
    cp $01
    jr nz, jr_01f_4255

    ld a, b
    rla
    jp nc, Jump_01f_436d

jr_01f_4255:
    ld hl, $c10a
    inc [hl]

Jump_01f_4259:
    xor a
    ld hl, $c100
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld a, $01
    ld [$c10c], a
    ld a, $06
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl+], a
    ld bc, $0040
    rra
    jr nc, jr_01f_4287

    ld bc, $ffc0

jr_01f_4287:
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c116], a
    jp Jump_01f_436d


    ld hl, $c0fd
    ld a, [hl-]
    or [hl]
    jr z, jr_01f_430f

    ld a, [hl]
    rla
    jr c, jr_01f_42c0

    call $2ab3
    ld a, [$dd92]
    ld b, a
    and $1f
    cp $01
    jr nz, jr_01f_42bb

    ld a, b
    rla
    jr nc, jr_01f_430f

jr_01f_42bb:
    ld a, [$dd94]
    jr jr_01f_42d4

jr_01f_42c0:
    call $2a9b
    ld a, [$dd8c]
    ld b, a
    and $1f
    cp $01
    jr nz, jr_01f_42d1

    ld a, b
    rla
    jr nc, jr_01f_430f

jr_01f_42d1:
    ld a, [$dd8e]

jr_01f_42d4:
    inc a
    ld hl, $c0fa
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$c0f8]
    ld bc, $0040
    rra
    jr nc, jr_01f_42e8

    ld bc, $ffc0

jr_01f_42e8:
    ld hl, $c0f9
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c116], a
    ld a, $10
    ld [$c10d], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


jr_01f_430f:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    ld b, a
    and $1f
    cp $01
    jr nz, jr_01f_4323

    ld a, b
    rla
    ret nc

jr_01f_4323:
    ld a, $08
    ld [$c10d], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    call Call_01f_7ea0
    call Call_01f_7e6f
    jp Jump_01f_4259


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10e
    ld de, $c0fc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $03
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e3c


Jump_01f_436d:
    ld hl, $c10d
    ld a, [hl]
    and a
    jr z, jr_01f_4376

    dec [hl]
    ret


jr_01f_4376:
    ldh a, [$94]
    rla
    jr nc, jr_01f_4381

    ld a, [$dd18]
    cp $08
    ret z

jr_01f_4381:
    ld e, $00
    ld a, [$c0fe]
    add $08
    ld b, a
    ld a, [$c207]
    add $08
    sub b
    jr nc, jr_01f_4394

    cpl
    inc a
    inc e

jr_01f_4394:
    cp $50
    ret nc

    ld [$c1f1], a
    srl a
    ld b, a
    add $10
    ld c, a
    srl b
    ld a, [$c0fa]
    sub b
    sub $10
    ld b, a
    ld a, [$c203]
    sub b
    ret c

    cp c
    ret nc

    ld a, [$c0f8]
    and $01
    xor e
    jr z, jr_01f_43c0

    ld a, $02
    ld [$c10a], a
    jp Jump_01f_4259


jr_01f_43c0:
    ld bc, $0080
    bit 0, e
    jr z, jr_01f_43ca

    ld bc, hOAMDMAFunction

jr_01f_43ca:
    ld hl, $c110
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, [$c203]
    ld hl, $c0fa
    sub [hl]
    jr nc, jr_01f_43db

    cpl
    inc a

jr_01f_43db:
    ld h, a
    ld l, $00
    ld a, [$c1f1]
    ld b, a
    call $105e
    srl h
    rr l
    srl h
    rr l
    ld a, h
    cp $01
    jr c, jr_01f_43f5

    ld hl, $0100

jr_01f_43f5:
    ld a, [$c0fa]
    ld b, a
    ld a, [$c203]
    sub b
    jr nc, jr_01f_4409

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_01f_4409:
    ld de, $c10e
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld a, $04
    ld [$c10c], a
    ld a, $04
    ld [$c10a], a
    ld a, $08
    ld [$c0f9], a
    ld a, $03
    ld [$c116], a
    ret


    ld hl, $c103
    bit 4, [hl]
    jr z, jr_01f_4468

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
    call Call_01f_7ea0
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_01f_7e3c


jr_01f_4468:
    ld a, [$c705]
    add a
    ld c, a
    ld b, $00
    ld hl, $68aa
    add hl, bc
    ld a, [$c0fa]
    cp $08
    jr c, jr_01f_4484

    cp [hl]
    jr nc, jr_01f_4484

    ld a, [$c0fe]
    inc hl
    cp [hl]
    jr c, jr_01f_448a

jr_01f_4484:
    call Call_01f_7ec8
    jp Jump_01f_7ea0


jr_01f_448a:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4499
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sbc a
    ld b, h
    call c, Call_01f_4044
    ld b, l
    ld hl, $c103
    set 2, [hl]
    ld hl, $c109
    set 0, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $02
    call Call_1d18
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a

Jump_01f_44bb:
    ld bc, $0040
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_44c7

    ld bc, $ffc0

jr_01f_44c7:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld a, $2a
    ld [$c0f9], a
    ld a, $51
    ld [$c116], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    ld b, a
    and $c0
    jr z, jr_01f_44fc

    ld a, b
    and $1f
    cp $02
    jr nz, jr_01f_452f

    ld a, [hl]
    cp $04
    jr c, jr_01f_452f

    cp $07
    jr nc, jr_01f_44fc

jr_01f_44fc:
    call $2ab3
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_4528

    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $2d
    ld [$c0f9], a
    ld a, $52
    ld [$c116], a

jr_01f_4528:
    call Call_01f_7d9d
    jp c, Jump_01f_4534

    ret


jr_01f_452f:
    ld a, [$c0f8]
    xor $01

Jump_01f_4534:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jp Jump_01f_44bb


    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    ret z

    ld a, [hl]
    and $1f
    cp $02
    jr nz, jr_01f_4559

    ld a, [hl]
    cp $04
    jr c, jr_01f_4559

    cp $07
    ret c

jr_01f_4559:
    ld a, $01
    ld [$c10a], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_01f_44bb


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4576
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, h
    ld b, l
    sub b
    ld b, l
    adc c
    ld b, [hl]
    ld a, $40
    ld [$c116], a
    ld a, $05
    ld [$c0a4], a
    ld a, $02
    ld [$c0a5], a
    ld hl, $c10a
    inc [hl]
    ret


    ld a, [$dd18]
    cp $02
    ret nz

    ldh a, [hJoypad]
    bit 6, a
    ret z

    ld a, [$dd1d]
    cp $02
    ret nc

    ld d, $f8
    ld b, $08
    and a
    jr nz, jr_01f_45c2

    ld a, [$c201]
    rra
    jr nc, jr_01f_45b8

    ld e, $fe
    ld c, $08
    call Call_01f_7d19
    jr nc, jr_01f_45d1

    ret


jr_01f_45b8:
    ld e, $f0
    ld c, $10
    call Call_01f_7d19
    jr nc, jr_01f_45d1

    ret


jr_01f_45c2:
    ld e, $fe
    ld c, $08
    call Call_01f_7d19
    jr nc, jr_01f_45d1

    ld d, $f8
    ld b, $08
    jr jr_01f_45b8

jr_01f_45d1:
    ld hl, $c0fa
    ld a, [$c203]
    sub $02
    ld [hl], a
    cp $8d
    ret nc

    ld a, $02
    call $0e12
    ld a, [$c0fe]
    and $f8
    rrca
    ld c, a
    ld b, $00
    ld hl, $d06d
    add hl, bc
    ld a, $82
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], a
    ld a, [$c109]
    and $01
    add a
    add $f9
    ld c, a
    ld b, $00
    ld hl, $d93d
    add hl, bc
    ld de, $c1c2
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $01e0
    ld a, [$c0fe]
    sub $08
    and $f8
    rrca
    rrca
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $9800
    add hl, bc
    push hl
    call Call_000_1635
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, $01
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $c2
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ld a, $2a
    ld [$c82e], a
    ld [$c835], a
    ld hl, $c0a4
    ld a, [hl]
    cp $01
    jr z, jr_01f_4661

    dec [hl]
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $467f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ld [hl], a

jr_01f_4656:
    xor a
    ld [$c0f7], a
    xor a
    ld [$c103], a
    jp Jump_01f_7ea0


jr_01f_4661:
    ld a, [hl]
    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $467f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ld [hl], a
    xor a
    ld [$c0fa], a
    ld a, $0a
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ret


    ret c

    call c, $dce8
    ret z

    call c, $dcf8
    cp b
    call c, $0c21
    pop bc
    ld a, [hl]
    and a
    jr z, jr_01f_4692

    dec [hl]
    ret nz

jr_01f_4692:
    ld hl, $c0a4
    ld a, [hl]
    cp $01
    jr nz, jr_01f_4692

    ld a, [$dd1a]
    and a
    ret nz

    ld a, [$dd17]
    rla
    jr nc, jr_01f_46ae

    ld hl, $dd45
    ld a, $01
    ld [hl+], a
    dec a
    ld [hl], a
    ret


jr_01f_46ae:
    dec [hl]
    jr jr_01f_4656

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $46c0
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ret z

    ld b, [hl]
    rrca
    ld b, a
    ld de, $4048
    ld c, b
    ld hl, $c103
    set 2, [hl]
    ld a, $02
    call Call_1d18
    ld hl, $c0f8
    xor [hl]
    ld [hl], a
    ld a, $01
    ld [$c10a], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl], a

Jump_01f_46ea:
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $a0
    ld [$c116], a

Jump_01f_46f7:
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_4703

    ld bc, $ffe0

jr_01f_4703:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c109
    res 0, [hl]
    ret


    ld e, $09
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_4719

    ld e, $f3

jr_01f_4719:
    ld d, $f8
    ld bc, $1806
    call Call_01f_7d19
    jr c, jr_01f_4732

    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $7ef6
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_01f_47e8

jr_01f_4732:
    call Call_01f_7d9d
    jp c, Jump_01f_47ed

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp c, Jump_01f_47e8

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_4761

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jp nc, Jump_01f_47e8

    ld de, $0a73
    jp Jump_01f_7c4e


jr_01f_4761:
    ld a, [$dd1a]
    and a
    ret nz

    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $7ef6
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    ld a, [$c109]
    rra
    ret c

    ldh a, [$91]
    rra
    ret c

    ld hl, $c0fa
    ld a, [$c203]
    cp [hl]
    ret nz

    ld bc, $0004
    xor a
    ld [$c1f1], a
    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    jr nc, jr_01f_479c

    ld bc, $fffc
    ld a, $01
    ld [$c1f1], a

jr_01f_479c:
    ld hl, $c129
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01f_47a8:
    ld a, h
    cp d
    jr nz, jr_01f_47b0

    ld a, l
    cp e
    jr z, jr_01f_47bd

jr_01f_47b0:
    ld a, [hl]
    bit 5, a
    ret nz

    cp $52
    ret z

    and $c0
    ret z

    add hl, bc
    jr jr_01f_47a8

jr_01f_47bd:
    ld a, [$c1f1]
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $0d
    ld [$c0f9], a
    ld a, $a2
    ld [$c116], a
    ret


Jump_01f_47e8:
    ld a, [$c0f8]
    xor $01

Jump_01f_47ed:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $01
    cp b
    ret z

    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, $03
    ld [$c10a], a
    ld a, $05
    ld [$c10c], a
    ld hl, $c116
    ld a, [hl]
    cp $a0
    jp z, Jump_01f_46f7

    jp Jump_01f_46ea


    ld hl, $c10c
    dec [hl]
    ret nz

    ld bc, $00c0
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_4822

    ld bc, $ff40

jr_01f_4822:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld a, $05
    ld [$c0f9], a
    ld a, $a1
    ld [$c116], a
    ld hl, $c109
    set 0, [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $01
    ld [$c10a], a
    ret


    ld a, [$dd7f]
    cp $02
    jr c, jr_01f_485d

    ld hl, $c103
    res 7, [hl]
    call Call_01f_7ecf
    jp Jump_01f_7ea0


jr_01f_485d:
    ld hl, $c109
    bit 0, [hl]
    ret z

    res 0, [hl]
    ld hl, $dd7f
    inc [hl]
    ld hl, $48c7
    ld a, [$c10b]
    and a
    jr nz, jr_01f_4875

    ld hl, $48d5

jr_01f_4875:
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    ld b, a
    ld a, [$c0fe]
    add $03
    ld c, a
    call $2b00
    ld a, $ef
    add l
    ld l, a
    ld a, [$c110]
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $06
    ld [hl+], a
    ld a, [$c10b]
    add $03
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, [$c110]
    ld [hl], a
    cp $04
    jr nz, jr_01f_48bc

    ld a, $fd
    add l
    ld l, a
    ld a, [$c10c]
    xor $01
    ld [hl], a

jr_01f_48bc:
    ld hl, $c10c
    inc [hl]
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


    xor h
    nop
    rst $38
    add b
    nop
    add b
    add l
    nop
    ld b, $0c
    ld a, [bc]
    ld [bc], a
    nop
    sbc c
    xor l
    nop
    rst $38
    add b
    rst $38
    add b
    add l
    nop
    ld b, $0c
    ld a, [bc]
    ld [bc], a
    nop
    sbc c

    ld hl, $c103
    set 5, [hl]
    ld a, [$c0fa]
    cp $10
    jr c, jr_01f_48f5

    cp $e0
    jr nc, jr_01f_48f5

    res 5, [hl]

jr_01f_48f5:
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld bc, $0020
    add hl, bc
    ld a, h
    bit 7, a
    jr nz, jr_01f_490f

    and a
    jr nz, jr_01f_490c

    ld a, l
    cp $c0
    jr c, jr_01f_490f

jr_01f_490c:
    ld hl, $00c0

jr_01f_490f:
    ld c, l
    ld b, h
    ld hl, $c0fc
    ld [hl], b
    inc hl
    ld [hl], c
    bit 7, b
    ret nz

    ld a, [$c0fa]
    cp $e0
    jr nc, jr_01f_4927

    ld hl, $c109
    set 0, [hl]
    ret


jr_01f_4927:
    ld a, [$c109]
    rra
    ret nc

    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4941
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, l
    ld c, c
    ld [hl], a
    ld c, c

    ld hl, $c103
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $01
    ld [$c10b], a
    ld b, $b0
    ld hl, $c860
    ld a, [hl+]
    and a
    jr nz, jr_01f_4961

    ld a, [hl-]
    cp $04
    jr z, jr_01f_4972

jr_01f_4961:
    dec hl
    ld a, [hl+]
    cp $09
    jr nz, jr_01f_4970

    ld a, [hl]
    cp $06
    jr z, jr_01f_4972

    cp $08
    jr z, jr_01f_4972

jr_01f_4970:
    ld b, $c0

jr_01f_4972:
    ld a, b
    ld [$c116], a
    ret


    ld hl, $c103
    ld a, [hl]
    or $28
    ld [hl], a
    ld hl, $c10b
    dec [hl]
    ret nz

    ld hl, $c0f9
    ld a, [hl]
    cp $02
    jr c, jr_01f_499f

    xor a
    ld [hl], a
    ld a, $18
    call Call_1d18
    add $18
    ld [$c10b], a
    xor a
    ld [$c102], a
    ld [$c116], a
    ret


jr_01f_499f:
    ld a, $03
    ld [hl], a
    ld a, $0c
    ld [$c10b], a
    xor a
    ld [$c102], a
    inc a
    ld [$c116], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $49bf
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp $fd49


    ld c, c

    ld a, $02
    call Call_1d18
    ld d, a
    ld bc, $0020
    and a
    jr z, jr_01f_49d2

    ld bc, $ffe0

jr_01f_49d2:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    inc a
    ld [$c10a], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $50
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    rla
    jr c, jr_01f_4a2d

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_4a25

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_4a2d

    ld de, $0672
    jp Jump_01f_7c4e


jr_01f_4a25:
    call Call_01f_7d9d
    jp c, Jump_01f_4a32

    jr jr_01f_4a3d

jr_01f_4a2d:
    ld a, [$c0f8]
    xor $01

Jump_01f_4a32:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jr jr_01f_4a6e

jr_01f_4a3d:
    ld hl, $c109
    ld a, [$dd18]
    cp $0a
    jr nz, jr_01f_4a5c

    ld a, [hl]
    rra
    ret c

    set 0, [hl]
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $51
    ld [$c116], a
    jr jr_01f_4a6e

jr_01f_4a5c:
    ld a, [hl]
    rra
    ret nc

    res 0, [hl]
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $50
    ld [$c116], a

jr_01f_4a6e:
    ld a, [$c109]
    rra
    jr nc, jr_01f_4a82

    ld bc, $00c0
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_4a8e

    ld bc, $ff40
    jr jr_01f_4a8e

jr_01f_4a82:
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_4a8e

    ld bc, $ffe0

jr_01f_4a8e:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4aa4
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor d
    ld c, d
    db $ed
    ld c, d
    db $d3
    ld c, h

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
    ld hl, $c100
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c855], a
    ld a, $1f
    ld [$c10c], a
    ld a, $08
    ld [$c10d], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld hl, $c109
    bit 3, [hl]
    jp z, Jump_01f_4b8b

    res 3, [hl]
    ld a, $02
    ld [$c10a], a
    ld a, $46
    ld [$c201], a
    ld hl, $c207
    ld a, [$c0fe]
    cp [hl]
    jr c, jr_01f_4b1c

    ld hl, $c0f8
    set 0, [hl]
    ld hl, $c201
    res 0, [hl]
    ld hl, $c207
    add $f2
    ld [hl], a
    jr jr_01f_4b2c

jr_01f_4b1c:
    ld hl, $c0f8
    res 0, [hl]
    ld hl, $c201
    set 0, [hl]
    ld hl, $c207
    add $16
    ld [hl], a

jr_01f_4b2c:
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
    ldh [$ff90], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c102], a
    ld a, $0a
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


Jump_01f_4b8b:
    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_4bb7

    ld a, $1e
    ld [hl], a
    ld hl, $c100
    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d
    ld hl, $c855
    ld a, [hl]
    xor $02
    ld [hl-], a
    jr nz, jr_01f_4bd2

    ld a, [hl]
    xor $02
    ld [hl-], a
    ld a, [hl]
    xor $02
    ld [hl], a
    ld c, $1f
    ld hl, $c22e

jr_01f_4bb7:
    ld b, [hl]
    ld a, $fb
    add l
    ld l, a
    ld a, b
    cp $30
    jr nz, jr_01f_4bcb

    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d

jr_01f_4bcb:
    ld de, $0025
    add hl, de
    dec c
    jr nz, jr_01f_4bb7

jr_01f_4bd2:
    ld hl, $c10d
    ld a, [$c853]
    and a
    jp nz, Jump_01f_4c6b

    inc [hl]
    ld a, [hl]
    cp $20
    ret c

    ld a, $01
    ld [hl], a
    ld a, [$defe]
    ld [$c1f4], a
    rra
    jr nc, jr_01f_4c12

    ld hl, $4c9b
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $9008
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_01f_7e6f

jr_01f_4c12:
    ld a, [$c1f4]
    bit 1, a
    jr z, jr_01f_4c3f

    ld hl, $4ca9
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $90d8
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_01f_7e6f

jr_01f_4c3f:
    ld a, [$c1f4]
    bit 1, a
    ret z

    ld hl, $4cb7
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $c008
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld a, $02
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


Jump_01f_4c6b:
    dec [hl]
    ret nz

    ld a, $20
    ld [hl], a
    ld a, [$defe]
    rra
    ret nc

    ld hl, $4cc5
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $c0d8
    call $2b00
    ld a, $f4
    add l
    ld l, a
    ld a, $02
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


    halt
    nop
    nop
    nop
    nop
    add b
    add l
    jr nc, jr_01f_4ca4

jr_01f_4ca4:
    nop
    nop
    nop
    nop
    ld h, e
    halt
    nop
    nop
    nop
    rst $38
    add b
    add l
    jr nc, jr_01f_4cb2

jr_01f_4cb2:
    nop
    nop
    nop
    nop
    ld h, e
    halt
    nop
    nop
    nop
    nop
    add b
    add l
    jr nc, jr_01f_4cc0

jr_01f_4cc0:
    nop
    nop
    nop
    nop
    ld h, e
    halt
    nop
    nop
    nop
    rst $38
    add b
    add l
    jr nc, jr_01f_4cce

jr_01f_4cce:
    nop
    nop
    nop
    nop
    ld h, e
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4ce3
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp hl


    ld c, h
    dec b
    ld c, l
    ld c, $4d

    ld hl, $c10a
    inc [hl]
    ld hl, $c103
    set 2, [hl]
    ld a, $07
    ld [$c10c], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $40
    ld [$c116], a
    ret


    ld hl, $c10a
    inc [hl]
    ld hl, $c103
    set 5, [hl]
    ld a, [$dd7f]
    cp $02
    ret nc

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $07
    ld [hl], a
    ld hl, $dd7f
    inc [hl]
    ld a, $02
    call Call_1d18
    and a
    jr nz, jr_01f_4d49

    ld hl, $4d89
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $8870
    call $2b00
    ld a, $f5
    add l
    ld l, a
    ld a, $04
    ld [hl-], a
    jr jr_01f_4d68

jr_01f_4d49:
    ld hl, $4d97
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld bc, $8870
    call $2b00
    ld a, $f5
    add l
    ld l, a
    ld a, $03
    ld [hl-], a

jr_01f_4d68:
    ld a, $06
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, $02
    add l
    ld l, a
    ld a, $06
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


    xor h
    nop
    rst $38
    add b
    nop
    add b
    add l
    ld bc, $0000
    nop
    nop
    nop
    sbc c
    xor l
    nop
    rst $38
    add b
    rst $38
    add b
    add l
    ld bc, $0000
    nop
    nop
    nop
    sbc c

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4db4
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp d
    ld c, l
    add sp, $4d
    ld d, $4e

    ld a, [$c853]
    and a
    jr nz, jr_01f_4dd0

    ld a, [$c0fe]
    cp $60
    ret c

    ld hl, $c0f9
    ld [hl], $02
    cp $70
    ret c

    jr jr_01f_4de2

jr_01f_4dd0:
    ld a, [$c0fe]
    cp $60
    ret nc

    cp $58
    jr c, jr_01f_4ddf

    xor a
    ld [$c0f9], a
    ret


jr_01f_4ddf:
    cp $19
    ret nc

jr_01f_4de2:
    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c853]
    and a
    jr nz, jr_01f_4dfe

    ld a, [$c0fe]
    cp $80
    ret nc

    ld hl, $c0f9
    ld [hl], $02
    cp $70
    ret nc

    jr jr_01f_4e10

jr_01f_4dfe:
    ld a, [$c0fe]
    cp $80
    ret c

    cp $88
    jr nc, jr_01f_4e0d

    xor a
    ld [$c0f9], a
    ret


jr_01f_4e0d:
    cp $c8
    ret c

jr_01f_4e10:
    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c853]
    and a
    jr nz, jr_01f_4e24

    ld a, [$c0fe]
    cp $c8
    ret c

    jr jr_01f_4e2a

jr_01f_4e24:
    ld a, [$c0fe]
    cp $19
    ret nc

jr_01f_4e2a:
    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4e3f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, a
    ld c, [hl]
    adc h
    ld c, [hl]
    db $fd
    ld c, [hl]
    ld hl, $214f
    inc bc
    pop bc
    set 2, [hl]
    ld a, $1f
    call Call_1d18
    add $2d
    ld bc, $0020
    bit 0, a
    jr z, jr_01f_4e5d

    ld bc, $ffe0

jr_01f_4e5d:
    ld [$c10c], a
    and $01
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_4ebc

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_4eb5

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_4ebc

    ld de, $0f73
    jp Jump_01f_7c4e


jr_01f_4eb5:
    call Call_01f_7d9d
    jr c, jr_01f_4ec1

    jr jr_01f_4edc

jr_01f_4ebc:
    ld a, [$c0f8]
    xor $01

jr_01f_4ec1:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld bc, $ffe0
    ld a, [$c0f8]
    rra
    jr c, jr_01f_4ed6

    ld bc, $0020

jr_01f_4ed6:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c

jr_01f_4edc:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $08
    ld [hl], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $01
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c10d], a
    xor a
    ld [$c102], a
    ld a, $0c
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ret


    ld hl, $c0f9
    inc [hl]
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $02
    ld [hl], a
    ld a, $14
    ld [$c831], a
    ld [$c835], a
    ld a, $02
    ld [$c1f2], a

jr_01f_4f3a:
    ld hl, $4f9a
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    sub $01
    ld b, a
    ld a, [$c0fe]
    add $04
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $04
    add l
    ld l, a
    push hl
    ld a, [$c10d]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $4fa8
    add hl, bc
    pop de
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
    ld a, [$c1f1]
    ld b, a
    call Call_01f_7e6f
    ld hl, $c10d
    inc [hl]
    ld de, $c1f2
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_01f_4f3a

    ld a, [hl]
    cp $04
    ret c

    xor a
    ld [$c10a], a
    ret


    ldh a, [rNR12]
    rst $38
    nop
    nop
    nop
    add c
    ld c, h
    nop
    nop
    nop
    nop
    jr nc, jr_01f_4fb1

    nop
    jr nz, @+$01

    db $ed
    nop
    jr nz, jr_01f_4faf

jr_01f_4faf:
    inc de
    nop

jr_01f_4fb1:
    jr nc, @+$01

    db $f4
    nop
    jr nc, jr_01f_4fb7

jr_01f_4fb7:
    inc c
    call Call_01f_7ce2
    jr c, jr_01f_4fc3

    call Call_01f_7ec8
    jp Jump_01f_7ea0


jr_01f_4fc3:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $4fd2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ret c

    ld c, a
    add hl, bc
    ld d, b
    ld a, [hl-]
    ld d, b
    ld hl, $c101
    ld de, $c111
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld hl, $c0fd
    ld de, $c10f
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    rla
    ret c

    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c110
    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c101
    ld de, $c111
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld hl, $c0fd
    ld de, $c10f
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl+], a
    and a
    jr nz, jr_01f_5029

    cp $80
    ret c

jr_01f_5029:
    ld a, $80
    ld [hl-], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ret


    ret


    ld a, [$c10a]
    cp $06
    jr z, jr_01f_505c

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_505c

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_505c

    ld de, $3a75
    jp Jump_01f_7c4e


jr_01f_505c:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $506b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, c
    ld d, b
    rst $18
    ld d, b
    ld c, $51
    ld [hl], h
    ld d, c
    sbc d
    ld d, c
    call $e251
    ld d, c
    ld a, [$dd47]
    and a
    ret z

    ld hl, $c0fa
    ld a, [$c203]
    cp [hl]
    ret nz

    ld bc, $0004
    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    jr nc, jr_01f_5095

    ld bc, $fffc

jr_01f_5095:
    ld hl, $c129
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01f_50a1:
    ld a, h
    cp d
    jr nz, jr_01f_50a9

    ld a, l
    cp e
    jr z, jr_01f_50b6

jr_01f_50a9:
    ld a, [hl]
    bit 5, a
    ret nz

    cp $52
    ret z

    and $c0
    ret z

    add hl, bc
    jr jr_01f_50a1

jr_01f_50b6:
    ld b, $00
    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    rl b
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    inc hl
    inc hl
    ld a, $0c
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $01
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld bc, $fe80
    ld a, [$c0f8]
    rra
    jr c, jr_01f_50f0

    ld bc, $0180

jr_01f_50f0:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c102], a
    ld a, $36
    ld [$c0f9], a
    ld a, $06
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e3c


Jump_01f_510e:
    call Call_01f_7d9d
    jr c, jr_01f_5134

    ld a, [$dd92]
    and $c0
    jr z, jr_01f_512f

    ld a, [$dd92]
    bit 5, a
    jr nz, jr_01f_512f

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    ret z

jr_01f_512f:
    ld a, [$c0f8]
    xor $01

jr_01f_5134:
    ld b, a
    ld hl, $c10b
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, [$c0f8]
    and $01
    xor b
    ret z

    ld a, [$c10a]
    cp $02
    jr nz, jr_01f_5150

    ld a, $10
    ld [$c10d], a

jr_01f_5150:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $04
    ld [$c10a], a
    ld a, $19
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld hl, $c10d
    dec [hl]
    jp nz, Jump_01f_510e

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $05
    ld [$c10a], a
    ld a, $0c
    ld [$c10c], a
    ld a, $1f
    ld [$c0f9], a
    ld a, $03
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c10b]
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl+], a
    ld a, $32
    ld [hl], a
    ld bc, $ffe0
    bit 0, d
    jr nz, jr_01f_51b8

    ld bc, $0020

jr_01f_51b8:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c10a], a
    ld a, $05
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c102], a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $520f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rla
    ld d, d
    ld a, l
    ld d, d
    ld [hl], l
    ld d, e
    or d
    ld d, e
    ld a, $02
    call Call_1d18
    ld d, a
    ld bc, $0020
    and a
    jr z, jr_01f_5226

    ld bc, $ffe0

jr_01f_5226:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld a, [$c0fa]
    add $10
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c0fe]
    add $06
    and $f8
    srl a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86f
    add hl, bc
    ld de, $c10d
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


    ld hl, $c10d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $03

jr_01f_5285:
    ld c, $02

jr_01f_5287:
    ld a, [hl+]
    cp $0c
    jr nz, jr_01f_5295

    ld a, [$c108]
    cp [hl]
    jr nz, jr_01f_5295

    xor a
    ld [hl-], a
    ld [hl+], a

jr_01f_5295:
    ld de, $0003
    add hl, de
    dec c
    jr nz, jr_01f_5287

    ld de, $0078
    add hl, de
    dec b
    jr nz, jr_01f_5285

    ld a, [$c0fa]
    add $10
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c0fe]
    add $06
    and $f8
    srl a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86f
    add hl, bc
    ld de, $c10d
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld b, $03

jr_01f_52ce:
    ld c, $02

jr_01f_52d0:
    ld a, [hl]
    and a
    jr nz, jr_01f_52db

    ld a, $0c
    ld [hl+], a
    ld a, [$c108]
    ld [hl-], a

jr_01f_52db:
    ld de, $0004
    add hl, de
    dec c
    jr nz, jr_01f_52d0

    ld de, $0078
    add hl, de
    dec b
    jr nz, jr_01f_52ce

    ld hl, $c109
    bit 0, [hl]
    jr z, jr_01f_5316

Jump_01f_52f0:
    res 0, [hl]
    bit 1, [hl]
    jr z, jr_01f_5303

    res 1, [hl]
    ld hl, $c10b
    ld a, [$c0f8]
    and $01
    cp [hl]
    jr nz, jr_01f_535d

jr_01f_5303:
    ld a, $03
    ld [$c10a], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $83
    ld [$c116], a
    ret


jr_01f_5316:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp c, Jump_01f_5344

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_533e

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_5344

    ld de, $0381
    jp Jump_01f_7c4e


jr_01f_533e:
    call Call_01f_7d9d
    jr c, jr_01f_534b

    ret


Jump_01f_5344:
jr_01f_5344:
    ld a, [$c0f8]
    and $01
    xor $01

jr_01f_534b:
    ld b, a
    ld a, [$c0f8]
    and $01
    xor b
    ret z

    ld a, b
    ld [$c10b], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a

jr_01f_535d:
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c10c], a
    ld a, $06
    ld [$c0f9], a
    ld a, $82
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c10b]
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c109
    bit 0, [hl]
    jp nz, Jump_01f_52f0

jr_01f_538e:
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_539a

    ld bc, $ffe0

jr_01f_539a:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld a, $80
    ld [$c116], a
    ret


    ld a, [$c0f9]
    and a
    jr nz, jr_01f_53c0

    ld a, $68
    ld [$c831], a
    ld [$c835], a

jr_01f_53c0:
    ld hl, $c109
    ld a, [hl]
    res 0, [hl]
    rra
    ret c

    jr jr_01f_538e

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $53d9
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    rst $18
    ld d, e
    dec c
    ld d, h
    ld c, d
    ld d, h
    ld a, $01
    ld [$c1bf], a
    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $5406
    add hl, bc
    ld a, [hl]
    ld [$c10d], a

jr_01f_53f2:
    ld a, $10
    call Call_1d18
    add $07
    ld [$c10c], a
    xor a
    ld [$c0fa], a
    ld a, $01
    ld [$c10a], a
    ret


    xor b
    ldh [$ffa8], a
    ldh [$ffa8], a
    xor b
    ldh [rNR42], a
    inc c
    pop bc
    dec [hl]
    ret nz

    ld a, $03
    call Call_1d18
    add a
    ld c, a
    ld b, $00
    ld hl, $5444
    add hl, bc
    ld de, $c100
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$defe]
    ld b, a
    and $70
    ld [$c0fa], a
    ld a, b
    and $01
    ld [$c0f9], a
    xor a
    ld [$c0fe], a
    ld a, $be
    ld [$c0f8], a
    ld hl, $c10a
    inc [hl]
    ret


    ld bc, $0180
    ret nz

    ld [bc], a
    nop
    ld hl, $c10d
    ld a, [$c0fe]
    cp [hl]
    ret c

    jr jr_01f_53f2

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5463
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, a
    ld d, h
    add e
    ld d, h
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld a, [$c0fa]
    cp $e0
    jr c, jr_01f_5496

    ld a, [$c108]
    sub $40
    ld b, a
    call Call_01f_7ec8
    jp Jump_01f_7ea0


jr_01f_5496:
    ld c, $01
    ld hl, $c22c

jr_01f_549b:
    push hl
    ld a, [hl]
    rla
    jr nc, jr_01f_54cf

    ld a, $f7
    add l
    ld l, a
    ld a, [$c0fa]
    sub [hl]
    cp $0c
    jr c, jr_01f_54b0

    cp $f4
    jr c, jr_01f_54cf

jr_01f_54b0:
    ld a, $04
    add l
    ld l, a
    ld a, [$c0fe]
    sub [hl]
    cp $0c
    jr c, jr_01f_54c0

    cp $f4
    jr c, jr_01f_54cf

jr_01f_54c0:
    ld a, $07
    add l
    ld l, a
    ld e, [hl]
    ld d, $00
    ld hl, $7f02
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_01f_54db

jr_01f_54cf:
    pop hl
    ld de, $0020
    add hl, de
    inc c
    ld a, c
    cp $20
    jr c, jr_01f_549b

    ret


jr_01f_54db:
    pop hl
    inc hl
    inc hl
    ld a, [hl]
    cp $4a
    jr nz, jr_01f_54f1

    ld a, $05
    add l
    ld l, a
    ld a, [hl-]
    cp $01
    ret nz

    ld a, [hl-]
    rra
    ret c

    dec hl
    dec hl
    dec hl

jr_01f_54f1:
    ld a, c
    ld [$dd7d], a
    ld a, $f3
    add l
    ld l, a
    ld a, $cd
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld a, $10
    add l
    ld l, a
    ld a, $58
    ld [hl], a
    ld a, $fa
    add l
    ld l, a
    xor a
    ld [hl], a
    push hl
    ld b, c
    call Call_01f_7ea6
    pop hl
    dec hl
    xor a
    ld [hl], a
    ld a, $14
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    ld a, $ef
    add l
    ld l, a
    ld a, $44
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld b, [hl]
    ld a, $fe
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld c, $03
    ld de, $0078

jr_01f_5535:
    ld a, [hl]
    cp b
    jr nz, jr_01f_553c

    xor a
    ld [hl-], a
    ld [hl+], a

jr_01f_553c:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_01f_5547

    xor a
    ld [hl-], a
    ld [hl+], a

jr_01f_5547:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_01f_5552

    xor a
    ld [hl-], a
    ld [hl+], a

jr_01f_5552:
    add hl, de
    dec c
    jr nz, jr_01f_5535

    ld de, $ff90
    ld a, [de]
    ld [$c70b], a
    ld a, $10
    ld [de], a
    ld a, $19
    ld [$c82f], a
    ld [$c835], a
    ld a, $05
    jp $0e12


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $557c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add d
    ld d, l
    cp a
    ld d, l
    ld c, h
    ld d, [hl]
    ld hl, $c102
    xor a
    ld [hl+], a
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $a0
    ld [hl], a
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a

Jump_01f_55ac:
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_55b8

    ld bc, $ffe0

jr_01f_55b8:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $7ef6
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01f_55e3

    ld e, $08
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_55d7

    ld e, $f6

jr_01f_55d7:
    ld d, $f3
    ld bc, $2003
    call Call_01f_7d19
    jr nc, jr_01f_55f7

    jr jr_01f_560f

jr_01f_55e3:
    ld e, $08
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_55ed

    ld e, $f4

jr_01f_55ed:
    ld d, $f1
    ld bc, $1f06
    call Call_01f_7d19
    jr c, jr_01f_560f

jr_01f_55f7:
    ld hl, $c10a
    inc [hl]
    ld a, $02
    ld [$c10c], a
    ld b, $00
    ld hl, $c207
    ld a, [$c0fe]
    cp [hl]
    jr nc, jr_01f_560c

    inc b

jr_01f_560c:
    ld a, b
    jr jr_01f_5640

jr_01f_560f:
    call Call_01f_7d9d
    jr c, jr_01f_5640

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    rla
    jr c, jr_01f_563b

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    ret nz

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_563b

    ld de, $0371
    jp Jump_01f_7c4e


jr_01f_563b:
    ld a, [$c0f8]
    xor $01

jr_01f_5640:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jp Jump_01f_55ac


    ld hl, $c10c
    dec [hl]
    ret nz

    dec hl
    dec hl
    dec [hl]
    ld hl, $c109
    res 7, [hl]
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5669
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld d, [hl]
    xor a
    ld d, [hl]
    ret c

    ld d, [hl]
    ld h, l
    ld d, a
    sub d
    ld d, a

    ld hl, $c10a
    inc [hl]
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $10
    ld [hl], a
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $90
    ld [hl], a
    ret


    ld hl, $c109
    bit 3, [hl]
    ret z

    set 0, [hl]
    ld hl, $c10a
    inc [hl]

Jump_01f_56bb:
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c0f9], a
    ld a, $61
    ld [$c116], a
    ld a, $01
    ld [$c10c], a
    xor a
    ld [$c10d], a
    call Call_01f_7ea0
    jp Jump_01f_7e3c


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10d
    ld a, [hl]
    cp $0f
    jr nc, jr_01f_5706

    inc [hl]
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $5745
    add hl, bc
    ld a, [hl+]
    ld [$c10c], a
    ld d, [hl]
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld [hl], d
    ld hl, $c0f9
    inc [hl]
    ret


jr_01f_5706:
    ld bc, $0040
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5712

    ld bc, $ffc0

jr_01f_5712:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $1f
    call Call_1d18
    add $0f
    ld [$c10c], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c109
    res 3, [hl]
    ld a, $04
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $13
    ld [$c0f9], a
    ld a, $62
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld bc, $0211
    ld [de], a
    ld bc, $0111
    inc de
    ld [bc], a
    inc d
    inc b
    db $10
    ld bc, $0211
    ld [de], a
    ld bc, $0111
    inc de
    ld bc, $0114
    rla
    ld bc, $0215
    ld d, $01
    dec d
    ld [bc], a
    rla

    ld hl, $c109
    bit 3, [hl]
    jr nz, jr_01f_5772

    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_577a

jr_01f_5772:
    ld a, $02
    ld [$c10a], a
    jp Jump_01f_56bb


jr_01f_577a:
    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    ret nz

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    ret nc

    ld de, $1673
    jp Jump_01f_7c4e


    ld a, [$c109]
    bit 3, a
    jr nz, jr_01f_57ae

    bit 1, a
    jr nz, jr_01f_57b5

    set 1, a
    ld [$c109], a
    ld a, $1f
    call Call_1d18
    add $0f
    ld [$c10c], a
    jr jr_01f_57f2

jr_01f_57ae:
    and $f5
    ld [$c109], a
    jr jr_01f_57f2

jr_01f_57b5:
    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_57f2

    ld a, $2e
    call Call_1d18
    add $0f
    ld [$c10c], a
    ld hl, $c103
    res 2, [hl]
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $10
    ld [hl], a
    ld a, $03
    ld [$c10a], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $90
    ld [$c116], a
    ret


jr_01f_57f2:
    call Call_01f_7d9d
    jr c, jr_01f_5824

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_581f

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    ret nz

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_581f

    ld de, $1673
    jp Jump_01f_7c4e


jr_01f_581f:
    ld a, [$c0f8]
    xor $01

jr_01f_5824:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld bc, $0040
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5839

    ld bc, $ffc0

jr_01f_5839:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $584f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, e
    ld e, b
    add b
    ld e, b

    ld hl, $c10a
    inc [hl]
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $18
    ld [hl], a
    ld hl, $c103
    res 5, [hl]
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $0d
    ld [hl+], a
    dec a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    dec a
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ret


    ld hl, $c103
    set 5, [hl]
    ret


    ld a, [$c109]
    bit 4, a
    jr z, jr_01f_5893

    ld a, $ff
    ld [$c0fe], a
    ret


jr_01f_5893:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $58a2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or d
    ld e, b
    ret c

    ld e, b
    inc c
    ld e, c
    inc [hl]
    ld e, c
    ld d, [hl]
    ld e, c
    halt
    ld e, c
    adc a
    ld e, c
    pop bc
    ld e, c
    ld hl, $c10d
    ld a, [$c0fa]
    ld [hl+], a
    ld a, [$c0fe]
    ld [hl], a
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $d2
    ld [hl], a
    ld a, $19
    ld [$c0f9], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c103
    res 5, [hl]
    ld de, $00e8
    ld bc, $e028
    call Call_01f_7d19
    ret c

    xor a
    ld [$c102], a
    ld a, $16
    ld [$c0f9], a
    ld a, $d1
    ld [$c116], a
    ld a, $08
    ld [$c10c], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $64
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    ld a, [hl]
    and $db
    ld [hl], a
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $19
    ld [$c0f9], a
    ld a, $d2
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    call $2ab3
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c0fa
    inc [hl]
    inc [hl]
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 5, [hl]
    ld a, $0f
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $08
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $16
    ld [$c0f9], a
    ld a, $d1
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $1e
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $ff
    ld [$c0fe], a
    ld hl, $c10a
    inc [hl]
    jp Jump_01f_7ecf


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fa
    ld de, $c10d
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld a, $0b
    ld [$c10c], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $e0
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    ld a, [hl]
    and $db
    ld [hl], a
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld a, $19
    ld [$c0f9], a
    ld a, $d2
    ld [$c116], a
    ret


    ld hl, $c109
    bit 0, [hl]
    jr z, jr_01f_5a20

    res 0, [hl]
    ld a, [$c118]
    cp $cd
    jr nz, jr_01f_59f1

    ret


jr_01f_59f1:
    ld hl, $c0fc
    ld de, $c110
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $ff91
    res 2, [hl]
    ld a, $02
    ld [$c10a], a
    ld a, $01
    ld [$c213], a
    ld a, $30
    ld [$dd21], a
    ld a, $62
    ld [$c82f], a
    ld [$c835], a

jr_01f_5a20:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5a2f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec [hl]
    ld e, d
    adc e
    ld e, d
    ret nc

    ld e, d
    ld hl, $c103
    set 2, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl], a
    ld hl, $c10e
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl], a
    ld a, $05
    ld [$c10c], a
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a

Jump_01f_5a5f:
    ld bc, $0080
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5a6b

    ld bc, hOAMDMAFunction

jr_01f_5a6b:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl]
    rla
    jr nc, jr_01f_5aad

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $c100
    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d

jr_01f_5aad:
    ld hl, $c0fd
    ld de, $c10f
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    ld [hl], a
    ld hl, $c10e
    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    ld [hl], e
    dec hl
    ld [hl], d
    ret


    ld hl, $c109
    bit 1, [hl]
    ret z

    res 1, [hl]
    ld hl, $c0fc
    ld de, $c110
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    jp Jump_01f_5a5f


    ld hl, $5af9
    push hl
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5aff
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld hl, $c109
    res 3, [hl]
    ret


    ld de, $4f5b
    ld e, e
    cp [hl]
    ld e, e
    ccf
    ld e, h
    sbc d
    ld e, h
    sbc e
    ld e, h
    jr c, @+$5f

    ld b, b
    ld e, l
    ld h, h
    ld e, l
    ld hl, $c103
    set 2, [hl]

Jump_01f_5b16:
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld a, $05
    call Call_1d18
    add $04
    ld [$c10c], a
    ld a, $01
    ld [$c10f], a
    ld a, $08
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $f1
    ld [hl], a
    ret


    ld hl, $c10f
    dec [hl]
    jr nz, jr_01f_5b81

    ld a, $02
    ld [hl], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $f1
    ld [$c116], a
    ld a, $08
    ld [$c10a], a
    ld b, $02
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5b7b

    ld b, $fe

jr_01f_5b7b:
    ld hl, $c0fe
    ld a, [hl]
    add b
    ld [hl], a

jr_01f_5b81:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr c, jr_01f_5ba7

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    ret nz

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_5ba7

    ld de, $0774
    jp Jump_01f_7c4e


jr_01f_5ba7:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $0040
    rra
    jr nc, jr_01f_5bb7

    ld bc, $ffc0

jr_01f_5bb7:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld hl, $c0fc
    ld a, [hl+]
    bit 7, a
    jr nz, jr_01f_5bca

    cp $01
    jr nc, jr_01f_5bd4

jr_01f_5bca:
    ld a, [hl]
    add $40
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jr jr_01f_5bda

jr_01f_5bd4:
    ld a, $00
    ld [hl-], a
    ld a, $01
    ld [hl], a

jr_01f_5bda:
    ld a, [$c0fc]
    rla
    jr nc, jr_01f_5bfe

    call $2a9b
    ld hl, $dd8c
    ld a, [hl+]
    cp $82
    ret nz

    ld a, [hl+]
    cp $04
    ret nz

    ld a, [hl]
    ld hl, $c0fa
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c109
    set 0, [hl]
    ret


jr_01f_5bfe:
    call $2abf
    ld hl, $dd92
    ld a, [hl]
    and $c0
    ret z

    ld a, [hl+]
    cp $82
    jr nz, jr_01f_5c11

    ld a, [hl]
    cp $06
    ret z

jr_01f_5c11:
    ld hl, $c0fa
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
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld a, $06
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $f1
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld hl, $c10c
    dec [hl]
    jr z, jr_01f_5c5d

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    ret nz

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    ret nc

    ld de, $0774
    jp Jump_01f_7c4e


jr_01f_5c5d:
    ld hl, $c109
    bit 3, [hl]
    jr z, jr_01f_5c69

    res 3, [hl]
    jp Jump_01f_5de6


jr_01f_5c69:
    ld hl, $c10d
    ld a, [$c0fa]
    cp [hl]
    jp z, Jump_01f_5b16

    ld a, $05
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $05
    ld [$c0f9], a
    ld a, $f2
    ld [$c116], a
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_01f_7ea0
    jp Jump_01f_7e3c


    ret


    ld hl, $c0fc
    ld a, [hl+]
    bit 7, a
    jr nz, jr_01f_5ca7

    cp $01
    jr nc, jr_01f_5cb1

jr_01f_5ca7:
    ld a, [hl]
    add $20
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jr jr_01f_5cb7

jr_01f_5cb1:
    ld a, $00
    ld [hl-], a
    ld a, $01
    ld [hl], a

jr_01f_5cb7:
    ld a, [$c0fc]
    rla
    jr nc, jr_01f_5cdc

    call $2a9b
    ld hl, $dd8c
    ld a, [hl+]
    cp $82
    jr nz, jr_01f_5cdc

    ld a, [hl+]
    cp $04
    jr nz, jr_01f_5cdc

    ld a, [hl]
    ld hl, $c0fa
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c109
    set 1, [hl]

jr_01f_5cdc:
    ld a, [$c109]
    bit 1, a
    jr nz, jr_01f_5cf7

    ld a, [$c10d]
    sub $08
    ld hl, $c0fa
    sub [hl]
    ret nc

    cpl
    inc a
    cp $10
    ret nc

    ld hl, $c109
    set 1, [hl]

jr_01f_5cf7:
    call $2abf
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c0fb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld a, $0c
    ld [$c10c], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $f0
    ld [$c116], a
    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld hl, $c109
    ld a, [hl]
    and $fc
    ld [hl], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_01f_5b16


    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_5d5a

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_5d5a

    ld de, $0774
    jp Jump_01f_7c4e


jr_01f_5d5a:
    ld hl, $c10c
    dec [hl]
    jp nz, Jump_01f_5dd6

    jp Jump_01f_5b16


    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_5d7e

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_5d7e

    ld de, $0774
    jp Jump_01f_7c4e


jr_01f_5d7e:
    ld hl, $c10f
    dec [hl]
    jp nz, Jump_01f_5dd6

    ld a, $01
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_5dae

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $0c
    ld [$c10c], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $f0
    ld [$c116], a
    ld a, $07
    ld [$c10a], a
    jp Jump_01f_5dd6


jr_01f_5dae:
    ld bc, $0040
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5dba

    ld bc, $ffc0

jr_01f_5dba:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld a, $0a
    ld [$c0f9], a
    ld a, $f3
    ld [$c116], a
    ld a, $01
    ld [$c10a], a
    jp Jump_01f_5dd6


Jump_01f_5dd6:
    ld hl, $c109
    bit 3, [hl]
    ret z

    res 3, [hl]
    ld hl, $c0fa
    ld de, $c10d
    ld a, [hl+]
    ld [de], a

Jump_01f_5de6:
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $05
    ld [$c0f9], a
    ld a, $f2
    ld [$c116], a
    ld bc, $fe40
    ld a, [$dd17]
    rla
    jr nc, jr_01f_5e05

    ld bc, $fd80

jr_01f_5e05:
    ld hl, $c0fc
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_01f_7ea0
    jp Jump_01f_7e3c


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5e26
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc l
    ld e, [hl]
    ld e, h
    ld e, [hl]
    push bc
    ld e, [hl]
    ld a, $02
    call Call_1d18
    ld hl, $c0f8
    xor [hl]
    ld [hl], a

Jump_01f_5e36:
    ld bc, $0140
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5e42

    ld bc, $fec0

jr_01f_5e42:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c0f9], a
    ld a, $01
    ld [$c10a], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $c101
    ld a, [$dd98]
    and a
    jr z, jr_01f_5e6f

    rla
    jr nc, jr_01f_5e81

jr_01f_5e6f:
    ld a, [hl-]
    cpl
    ld e, a
    ld a, [hl]
    cpl
    ld d, a
    inc de
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c0f8]
    xor $01
    ld [$c0f8], a

jr_01f_5e81:
    ld bc, $ffc0
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_5e8d

    ld bc, $0040

jr_01f_5e8d:
    ld a, [hl]
    add c
    ld [hl-], a
    ld e, a
    ld a, [hl]
    adc b
    ld [hl], a
    or e
    ret nz

    ld a, $31
    call Call_1d18
    ld c, a
    ld b, $00
    ld hl, $0010
    add hl, bc
    ld a, [$c0f8]
    rra
    jr c, jr_01f_5eaf

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

jr_01f_5eaf:
    ld c, l
    ld b, h
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c0f9
    inc [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $04
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_01f_5e36


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5edc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor $5e
    ld [hl], $5f
    xor $5f
    jr jr_01f_5f44

    ld d, c
    ld h, b
    ld l, [hl]
    ld h, b
    ld [hl], l
    ld h, b
    ld bc, $825f
    ld h, b
    ld hl, $c103
    set 2, [hl]

Jump_01f_5ef3:
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a

Jump_01f_5f01:
    ld hl, $c0f8
    ld bc, $0040
    ld a, [hl+]
    rra
    jr nc, jr_01f_5f0e

    ld bc, $ffc0

jr_01f_5f0e:
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld a, $2d
    ld [$c10c], a
    ld hl, $c112
    ld a, $0c
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp c, Jump_01f_5fd6

jr_01f_5f44:
    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_5f5f

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jp nc, Jump_01f_5fd6

    ld de, $0673
    jp Jump_01f_7c4e


jr_01f_5f5f:
    call $2aa7
    ld a, $10
    ld [$c1f1], a
    call Call_01f_7bf2
    jr nc, jr_01f_5f7b

    srl a
    ld [$c10c], a
    ld hl, $c10b
    ld [hl], d
    ld a, $03
    ld [$c10a], a
    ret


jr_01f_5f7b:
    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_5f8e

    ld a, $02
    call Call_1d18
    ld b, a
    ld a, $07
    ld [$c110], a
    jr jr_01f_5fb0

jr_01f_5f8e:
    ld d, $d8
    ld e, $c8
    ld b, $50
    ld c, $70
    call Call_01f_7d19
    ret c

    ld a, $08
    ld [$c110], a
    ld a, $03
    ld [$c10e], a
    ld b, $00
    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    jr nc, jr_01f_5fb0

    inc b

jr_01f_5fb0:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ld a, $04
    ld [$c10c], a
    ld a, $06
    ld [$c10a], a
    ret


Jump_01f_5fd6:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $0040
    rra
    jr nc, jr_01f_5ffe

    ld bc, $ffc0

jr_01f_5ffe:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld [$c10b], a
    inc a
    ld [$c10a], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_01f_6021

    dec [hl]
    ret nz

jr_01f_6021:
    ld bc, $ffc0
    ld a, [$c10b]
    cp $03
    jr z, jr_01f_6033

    ld bc, $0040
    ld hl, $c109
    set 0, [hl]

jr_01f_6033:
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
    ld a, [$c10b]
    inc a
    ld [$c10a], a
    ld a, $03
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    call Call_01f_7c78
    and a
    ret z

    cp $02
    jp z, Jump_01f_5ef3

    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl], a
    ld a, $04
    ld [$c10b], a
    inc a
    ld [$c10a], a
    ret


    call Call_01f_7cb3
    ret nc

    jp Jump_01f_5ef3


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, [$c110]
    ld [$c10a], a
    jr jr_01f_60ab

    ld b, $00
    ld a, [$c207]
    ld hl, $c0fe
    cp [hl]
    jr nc, jr_01f_608e

    inc b

jr_01f_608e:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    jr z, jr_01f_60ab

    ld d, $d8
    ld e, $c8
    ld b, $50
    ld c, $70
    call Call_01f_7d19
    ret nc

    jp Jump_01f_5f01


jr_01f_60ab:
    ld b, $07
    ld hl, $c10e
    dec [hl]
    jr nz, jr_01f_60b8

    ld a, $03
    ld [hl], a
    ld b, $25

jr_01f_60b8:
    ld a, b
    ld [$c10c], a
    jp Jump_01f_60bf


Jump_01f_60bf:
    ld hl, $60f6
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_60cb

    ld hl, $6104

jr_01f_60cb:
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c1f1], a
    ld a, [$c0fa]
    sub $00
    ld b, a
    ld a, [$c0fe]
    add $00
    ld c, a
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


    adc b
    add hl, bc
    rst $38
    nop
    nop
    add b
    add l
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    adc c
    add hl, bc
    rst $38
    nop
    rst $38
    add b
    add l
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    call Call_01f_7ce2
    jr c, jr_01f_611d

    call Call_01f_7ec8
    jp Jump_01f_7ea0


jr_01f_611d:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $612c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl-], a
    ld h, c
    ld a, [hl-]
    ld h, c
    ld c, b
    ld h, c
    ld bc, $0030
    ld d, $01
    jp Jump_01f_7d4f


    ld de, $0100
    ld bc, $0030
    ld a, $02
    ld [$c1f1], a
    jp Jump_01f_7d62


    ret


    ldh a, [$94]
    rla
    jp c, Jump_01f_61cf

    ld a, [$c10a]
    cp $05
    jp nc, Jump_01f_61cf

    ld d, $f0
    ld e, $ec
    ld b, $20
    ld c, $38
    call Call_01f_7d19
    jr c, jr_01f_61cf

    ld a, [$c108]
    sub $40
    ld [$c20e], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$dd1e], a
    ld [$c102], a
    ld a, $05
    ld [$c10a], a
    ld a, $05
    ld [$c10c], a
    ld a, $03
    ld [$c0f9], a
    ld a, $b1
    ld [$c116], a
    ld hl, $c103
    set 2, [hl]
    ld b, $00
    ld c, $e8
    ld a, [$c207]
    ld hl, $c0fe
    cp [hl]
    jr nc, jr_01f_61ae

    inc b
    ld c, $10

jr_01f_61ae:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, [$c203]
    ld hl, $c0fa
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c207]
    add c
    ld [hl], a
    ld hl, $c10e
    ld [hl], c
    ld hl, $ff94
    set 7, [hl]
    ret


Jump_01f_61cf:
jr_01f_61cf:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    call Call_01f_7d7a
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $61e8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp $61
    ld d, h
    ld h, d
    jp hl


    ld h, d
    ld a, [$0d62]
    ld h, e
    jr nz, jr_01f_6257

    ld c, c
    ld h, e
    and c
    ld h, e
    ret c

    ld h, e
    dec sp
    ld h, h
    ld b, e
    ld h, h
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a

Jump_01f_620c:
    ld hl, $c103
    set 2, [hl]
    ld a, $01
    ld [$c10a], a

Jump_01f_6216:
    ld hl, $c0f8
    ld a, [$c109]
    rla
    jr c, jr_01f_622e

    ld de, $00b0
    ld bc, $0020
    ld a, [hl+]
    rra
    jr nc, jr_01f_623b

    ld bc, $ffe0
    jr jr_01f_623b

jr_01f_622e:
    ld de, $00b3
    ld bc, $002a
    ld a, [hl+]
    rra
    jr nc, jr_01f_623b

    ld bc, $ffd6

jr_01f_623b:
    ld [hl], d
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld [hl], e
    ret


    ld a, [$dd98]

jr_01f_6257:
    rla
    jp c, Jump_01f_62df

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_6275

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_62df

    ld de, $09b5
    jp Jump_01f_7c4e


jr_01f_6275:
    ldh a, [$94]
    rla
    ret c

    ld d, $c8
    ld e, $f4
    ld b, $70
    ld c, $20
    call Call_01f_7d19
    ret c

    ld e, $00
    ld hl, $c0fa
    ld a, [$c109]
    rla
    jr c, jr_01f_629f

    ld d, $04
    ld a, [$c203]
    sub $04
    cp [hl]
    jr c, jr_01f_62ac

    ld d, $02
    inc e
    jr jr_01f_62ac

jr_01f_629f:
    ld d, $10
    ld a, [$c203]
    sub $04
    cp [hl]
    jr c, jr_01f_62ac

    ld d, $02
    inc e

jr_01f_62ac:
    inc hl
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10c
    ld [hl], d
    ld hl, $c109
    ld a, [hl]
    and $fc
    or e
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $06
    ld [$c0f9], a
    ld a, $b2
    ld [$c116], a
    ret


Jump_01f_62df:
jr_01f_62df:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_01f_6216


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c10a], a
    ret


    call Call_01f_6457
    ret nc

    ld hl, $c0f8
    ld a, [hl]
    xor d
    ld [hl], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_01f_620c


    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c0f9
    inc [hl]
    ld a, $03
    ld [$c10a], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10a
    inc [hl]
    ld hl, $dd1e
    inc [hl]
    ld a, $4b
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $06
    ld [$c0f9], a
    ld a, $b2
    ld [$c116], a
    ld a, $61
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_01f_6352

    dec [hl]
    ret nz

jr_01f_6352:
    ld a, $02
    ld [hl], a
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    inc hl
    inc hl
    inc hl
    ld bc, $0040
    ld a, [$c201]
    rra
    jr c, jr_01f_636d

    ld bc, $ffc0

jr_01f_636d:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c109
    ld a, [hl]
    and $fc
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $06
    ld [$c0f9], a
    ld a, $07
    ld [$c10a], a
    ld hl, $ff94
    res 7, [hl]
    ld hl, $dd1c
    ld b, $04
    ld a, [hl]
    cp $09
    jr z, jr_01f_639f

    ld b, $83
    ld a, [$dd1a]
    and a
    jr nz, jr_01f_639f

    ld b, $00

jr_01f_639f:
    ld [hl], b
    ret


    ld a, [$c100]
    and $80
    rlca
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr nc, jr_01f_63c5

    ld b, $01
    ld a, [$c100]
    rla
    jr c, jr_01f_63bb

    ld b, $ff

jr_01f_63bb:
    ld hl, $c0fe
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a

jr_01f_63c5:
    ld bc, $0020
    ld d, $08
    call Call_01f_7d4f
    ld a, [$c10a]
    cp $08
    ret nz

    ld hl, $c0f9
    inc [hl]
    ret


    ld a, [$c100]
    and $80
    rlca
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr nc, jr_01f_63fc

    ld b, $01
    ld a, [$c100]
    rla
    jr c, jr_01f_63f2

    ld b, $ff

jr_01f_63f2:
    ld hl, $c0fe
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a

jr_01f_63fc:
    ld de, $0080
    ld bc, $0020
    ld a, $08
    ld [$c1f1], a
    call Call_01f_7d62
    call Call_01f_6457
    ret nc

    ld hl, $c0f8
    ld a, [hl]
    xor d
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld a, $10
    ld [$c10c], a
    ld a, $09
    ld [$c10a], a
    ld a, $b2
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_01f_620c


    ld hl, $c10d
    dec [hl]
    ret nz

    ld a, $06
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $b2
    ld [$c116], a
    ret


Call_01f_6457:
    call $2abf
    ld d, $00
    ld a, [$dd92]
    and $c0
    jr nz, jr_01f_6487

    inc d
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6476

    ld bc, $0004

jr_01f_6476:
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_01f_6487

    ld hl, $c109
    bit 1, [hl]
    jr z, jr_01f_6485

    res 0, [hl]

jr_01f_6485:
    and a
    ret


jr_01f_6487:
    ld hl, $c109
    set 1, [hl]
    bit 0, [hl]
    jr nz, jr_01f_6485

    scf
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $64a1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and a
    ld h, h
    db $eb
    ld h, h
    add h
    ld h, l
    ld a, $02
    call Call_1d18
    ld d, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld hl, $c103
    set 2, [hl]

Jump_01f_64ba:
    ld a, $01
    ld [$c10a], a
    ld hl, $c0f8
    ld bc, $0040
    ld a, [hl+]
    rra
    jr nc, jr_01f_64cc

    ld bc, $ffc0

jr_01f_64cc:
    ld a, $00
    ld [hl], a
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld hl, $c112
    ld a, $08
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $50
    ld [hl], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr c, jr_01f_6559

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_6512

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_6559

    ld de, $11c3
    jp Jump_01f_7c4e


jr_01f_6512:
    ld a, [$dd1a]
    and a
    ret nz

    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $6578
    add hl, bc
    ld a, [hl]
    and a
    ret nz

    ld e, $04
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_652e

    ld e, $c4

jr_01f_652e:
    ld d, $fe
    ld b, $12
    ld c, $38
    call Call_01f_7d19
    ret c

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $51
    ld [$c105], a
    ld a, $04
    ld [$c10c], a
    xor a
    ld [$c10a], a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ret


jr_01f_6559:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a

Jump_01f_655f:
    ld a, $03
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $0e
    ld [$c0f9], a
    ld a, $51
    ld [$c116], a
    ret


    nop
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0c21
    pop bc
    dec [hl]
    ret nz

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_01f_64ba


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $65a2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or b
    ld h, l
    pop hl
    ld h, l
    call z, $d966
    ld h, [hl]
    and $66
    dec d
    ld h, a
    dec l
    ld h, a
    ld hl, $c10c
    dec [hl]
    ret nz

    call Call_01f_7ea0
    call Call_01f_7e3c

Jump_01f_65bb:
    ld a, $01
    ld [$c10a], a
    ld bc, $0100
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_65cc

    ld bc, $ff00

jr_01f_65cc:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld a, $09
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ret


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp c, Jump_01f_66a9

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_660a

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jp nc, Jump_01f_66a9

    ld de, $11c3
    jp Jump_01f_7c4e


jr_01f_660a:
    ld a, [$dd1a]
    and a
    jp nz, Jump_01f_669d

    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $6578
    add hl, bc
    ld a, [hl]
    cp $02
    jr z, jr_01f_663e

    and a
    jr nz, jr_01f_669d

    ld e, $04
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_662d

    ld e, $c4

jr_01f_662d:
    ld d, $fe
    ld b, $12
    ld c, $38
    call Call_01f_7d19
    jr c, jr_01f_6643

    ld a, $0f
    ld [$c10c], a
    ret


jr_01f_663e:
    ld hl, $c109
    set 2, [hl]

jr_01f_6643:
    ld a, [$c109]
    bit 2, a
    jr z, jr_01f_669d

    ld hl, $c0fa
    ld a, [$c203]
    cp [hl]
    jr c, jr_01f_666e

    ld a, [$dd92]
    rla
    ret c

    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    ret nz

    ld d, $01
    ld a, [$dd95]
    ld e, a
    jr jr_01f_667d

jr_01f_666e:
    call $2aa7
    ld a, [$dd8c]
    cp $08
    ret nz

    ld d, $00
    ld a, [$dd8f]
    ld e, a

jr_01f_667d:
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6689

    ld a, $0c
    sub e
    scf
    jr jr_01f_668c

jr_01f_6689:
    ld a, $0c
    add e

jr_01f_668c:
    srl a
    srl a
    ld [$c10c], a
    ld hl, $c10b
    ld [hl], d
    ld a, $04
    ld [$c10a], a
    ret


Jump_01f_669d:
jr_01f_669d:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    ld [$c10a], a
    jr jr_01f_66ad

Jump_01f_66a9:
    ld hl, $c10a
    inc [hl]

jr_01f_66ad:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $06
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0c
    ld [$c105], a
    jp Jump_01f_655f


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0c
    ld [$c105], a
    jp Jump_01f_64ba


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_01f_66ef

    dec [hl]
    ret nz

jr_01f_66ef:
    ld bc, $ff00
    ld a, [$c10b]
    and a
    jr z, jr_01f_6700

    ld bc, $0100
    ld hl, $c109
    set 0, [hl]

jr_01f_6700:
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
    ld a, [$c10b]
    add $05
    ld [$c10a], a
    ret


    call Call_01f_7c78
    and a
    ret z

    cp $02
    jr z, jr_01f_6731

    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $06
    ld [$c10a], a
    ret


    call Call_01f_7cb3
    ret nc

jr_01f_6731:
    ld b, $00
    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    jr nc, jr_01f_673d

    inc b

jr_01f_673d:
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c109
    res 2, [hl]
    jp Jump_01f_65bb


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $675c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, [hl]
    ld h, a
    or c
    ld h, a
    ld a, [$5b67]
    ld l, b
    sub $67
    ld a, [$c0fe]
    and $f8
    rrca
    ld e, a
    ld d, $00
    ld a, [$c0fa]
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld de, $c106
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c10a
    inc [hl]
    ld hl, $c112
    ld a, $10
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld a, $18
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $06
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $1e
    call Call_1d18
    ld b, a
    and $01
    ld [$c10b], a
    ld a, $3c
    add b
    ld [$c10c], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $9b
    ld [hl], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld a, $02
    ld [$c10a], a

Call_01f_67e7:
    ld bc, $0020
    ld a, [$c10b]
    and a
    jr z, jr_01f_67f3

    ld bc, $ffe0

jr_01f_67f3:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr c, jr_01f_6821

    call $2ad7
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_682b

    ld a, [$c10b]
    ld d, a
    call Call_01f_7c37
    jr nc, jr_01f_6821

    ld de, $0373
    jp Jump_01f_7c4e


jr_01f_6821:
    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_01f_67e7

jr_01f_682b:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $05
    ld [hl], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $12
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $0b
    ld [hl], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c109]
    bit 4, a
    jr nz, jr_01f_6889

    ld a, [$c705]
    add a
    ld c, a
    ld b, $00
    ld hl, $68aa
    add hl, bc
    ld a, [$c0fa]
    cp $08
    jr c, jr_01f_6889

    cp [hl]
    jr nc, jr_01f_6889

    ld a, [$c0fe]
    inc hl
    cp [hl]
    jr c, jr_01f_6893

Jump_01f_6889:
jr_01f_6889:
    ld hl, $dd8b
    dec [hl]
    call Call_01f_7ec8
    jp Jump_01f_7ea0


jr_01f_6893:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $68a2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp b
    ld l, b
    jr nz, jr_01f_690f

    add h
    ld l, c
    add l
    ld l, c
    sbc b
    and b
    add sp, -$10
    add sp, -$60
    sbc b
    ldh a, [$e8]
    ldh a, [$e8]
    and b
    sbc b
    ldh a, [$cd]
    or e
    ld a, [hl+]
    ld hl, $dd92
    ld a, [hl+]
    ld b, a
    and $c0
    jr z, jr_01f_68ec

    ld a, b
    cp $99
    jr z, jr_01f_68ec

    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld bc, $0080
    ld a, [$c10b]
    and a
    jr z, jr_01f_68e4

    ld bc, hOAMDMAFunction

jr_01f_68e4:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    inc [hl]
    ret


jr_01f_68ec:
    ld de, $c0fd
    ld a, [de]
    ld l, a
    dec de
    ld a, [de]
    ld h, a
    bit 7, a
    jr nz, jr_01f_6915

    cp $00
    jr z, jr_01f_68fe

    jr nc, jr_01f_6903

jr_01f_68fe:
    ld a, l
    cp $80
    jr c, jr_01f_6915

jr_01f_6903:
    ld a, [$c109]
    bit 1, a
    jr nz, jr_01f_6910

    ld hl, $c100
    xor a
    ld [hl+], a

jr_01f_690f:
    ld [hl], a

jr_01f_6910:
    ld hl, $0080
    jr jr_01f_6919

jr_01f_6915:
    ld bc, $0020
    add hl, bc

jr_01f_6919:
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    jr jr_01f_694b

    call $2ab3
    ld hl, $dd92
    ld a, [hl+]
    ld b, a
    and $c0
    jr nz, jr_01f_694b

    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld bc, $0020
    ld a, [$c10b]
    and a
    jr z, jr_01f_6941

    ld bc, $ffe0

jr_01f_6941:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10a
    dec [hl]
    ret


jr_01f_694b:
    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    bit 7, a
    ret z

    cp $99
    ret z

    cp $82
    jr nz, jr_01f_6968

    ld a, [hl]
    cp $04
    jr c, jr_01f_6968

    cp $07
    ret c

jr_01f_6968:
    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $c100
    ld a, [hl+]
    cpl
    ld b, a
    ld a, [hl]
    cpl
    ld c, a
    inc bc
    ld [hl], c
    dec hl
    ld [hl], b
    ld hl, $c10c
    dec [hl]
    jp z, Jump_01f_6889

    ret


    ret


    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c0f7], a
    ld [$c103], a
    jp Jump_01f_7ea0


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $69a4
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor d
    ld l, c
    push af
    ld l, c
    inc b
    ld l, e
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl], a
    ld a, $02
    call Call_1d18
    and $01
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, $01
    ld [$c10a], a

Jump_01f_69cd:
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c0f9], a
    ld a, $51
    ld [$c116], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c10b], a
    ld a, $02
    ld [$c10c], a
    ld hl, $c109
    res 0, [hl]
    ret


    ld a, [$c109]
    rra
    jr c, jr_01f_6a46

    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_6a2b

    ld de, $c10b
    ld a, [de]
    xor $01
    ld [de], a
    ld d, $03
    ld bc, $0000
    rra
    jr nc, jr_01f_6a1e

    ld d, $08
    ld bc, $0080
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6a1e

    ld bc, hOAMDMAFunction

jr_01f_6a1e:
    ld [hl], d
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c0f9
    inc [hl]
    jr jr_01f_6a46

jr_01f_6a2b:
    ld a, [$c10b]
    and a
    jr z, jr_01f_6a46

    ld bc, $fff0
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6a3d

    ld bc, $0010

jr_01f_6a3d:
    ld hl, $c101
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a

jr_01f_6a46:
    call Call_01f_7d9d
    jp c, Jump_01f_6af3

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jp c, Jump_01f_6aee

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_01f_6a7a

    ld a, [$c0f8]
    ld d, a
    call Call_01f_7c37
    jp nc, Jump_01f_6aee

    ld hl, $c103
    set 2, [hl]
    ld de, $0873
    jp Jump_01f_7c4e


jr_01f_6a7a:
    ld a, [$dd1a]
    and a
    ret nz

    ld a, [$c109]
    rra
    ret c

    ldh a, [$91]
    rra
    ret c

    ld hl, $c0fa
    ld a, [$c203]
    cp [hl]
    ret nz

    ld hl, $c0fe
    ld a, [$c207]
    cp [hl]
    rla
    ld hl, $c0f8
    xor [hl]
    rra
    ret c

    ld bc, $0004
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6aaa

    ld bc, $fffc

jr_01f_6aaa:
    ld hl, $c129
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01f_6ab6:
    ld a, h
    cp d
    jr nz, jr_01f_6abe

    ld a, l
    cp e
    jr z, jr_01f_6acb

jr_01f_6abe:
    ld a, [hl]
    bit 5, a
    ret nz

    cp $52
    ret z

    and $c0
    ret z

    add hl, bc
    jr jr_01f_6ab6

jr_01f_6acb:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    ld [$c10c], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    ld a, $50
    ld [$c116], a
    ld hl, $c103
    set 2, [hl]
    ret


Jump_01f_6aee:
    ld a, [$c0f8]
    xor $01

Jump_01f_6af3:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $01
    cp b
    ret z

    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    jp Jump_01f_69cd


    ld hl, $c10c
    dec [hl]
    ret nz

    ld bc, $0080
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_6b15

    ld bc, hOAMDMAFunction

jr_01f_6b15:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld a, $06
    ld [$c0f9], a
    ld a, $52
    ld [$c116], a
    ld hl, $c109
    set 0, [hl]
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6b42
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, b
    ld l, e
    add hl, de
    ld l, h
    ld c, c
    ld l, h
    ld l, h
    ld l, h
    inc bc
    ld l, l
    ld l, d
    ld l, l
    ld c, l
    ld l, [hl]
    xor l
    ld l, [hl]
    jr c, @+$71

    ld a, c
    ld l, a
    and h
    ld [hl], b
    db $e3
    ld [hl], b
    daa
    ld [hl], c
    ld l, b
    ld [hl], c
    ld [hl], a
    ld [hl], c
    ld sp, hl
    ld [hl], c
    ld d, l
    ld [hl], d
    cp d
    ld [hl], d
    call nz, $fa72
    ld [$d6c1], sp
    ld b, b
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
    ld a, $02
    ld [$c1ec], a
    ld a, $01
    ld [$c1ee], a
    xor a
    ld [$c869], a
    ld a, $60
    ld [$c116], a
    ld a, $01
    ld [$c10c], a
    ld a, $01
    ld [$c10a], a
    ld a, $03
    ld [$c0a4], a
    ld a, $03
    ld [$c0a5], a
    ld a, $80
    ld [$c836], a
    ld hl, $6bfd
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c111], a
    ld [$c1f1], a
    ld bc, $9098
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_01f_7e6f
    ld hl, $6c0b
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
    ld a, b
    ld [$c112], a
    ld [$c1f1], a
    ld bc, $90f0
    call $2b00
    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    jp Jump_01f_7e6f


    xor d
    ld [bc], a
    nop
    nop
    nop
    nop
    xor c
    ld e, h
    nop
    nop
    nop
    nop
    ld b, c
    ld h, a
    xor e
    ld [bc], a
    nop
    nop
    nop
    nop
    xor c
    ld e, h
    nop
    nop
    nop
    nop
    ld b, c
    ld h, a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $10
    ld [hl], a
    ld a, $1d
    ld [$c836], a
    ld hl, $c103
    res 5, [hl]
    ld a, $02
    ld [$c10a], a
    ld a, $b0
    ld [$c0fa], a
    ld a, $50
    ld [$c0fe], a
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl], a
    ld a, $08
    ld [$c867], a
    ret


    ld hl, $c867
    inc [hl]
    inc [hl]
    inc hl
    ld a, [hl]
    xor $02
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    ld [hl], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c113], a
    ld a, $06
    ld [$c10a], a
    ret


    ld hl, $c10c
    dec [hl]
    jp nz, Jump_01f_72d6

    ld a, [$c10e]
    cp $02
    jr nz, jr_01f_6c98

    ld a, [$c0a4]
    cp $03
    jr z, jr_01f_6c9f

    ld a, [$dd1a]
    and a
    jr z, jr_01f_6c8b

    cp $04
    jr nz, jr_01f_6c94

jr_01f_6c8b:
    ld a, [$c203]
    cp $70
    jr nz, jr_01f_6c94

    ld b, $01

jr_01f_6c94:
    ld a, b
    ld [$c114], a

jr_01f_6c98:
    ld a, [$c114]
    and a
    jp nz, Jump_01f_70e8

jr_01f_6c9f:
    ld hl, $c109
    bit 1, [hl]
    jr nz, jr_01f_6cb5

    ld b, $02
    ld a, [$c207]
    cp $50
    jr c, jr_01f_6cb0

    inc b

jr_01f_6cb0:
    ld a, [hl]
    and $fc
    or b
    ld [hl], a

jr_01f_6cb5:
    ld a, [hl]
    xor $01
    ld [hl], a
    ld d, $01
    ld hl, $c111
    rra
    jr nc, jr_01f_6cc3

    inc d
    inc hl

jr_01f_6cc3:
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c108]
    sub $40
    ld [hl], a
    ld a, $fb
    add l
    ld l, a
    ld e, l
    ld d, h
    ld hl, $c10e
    dec [hl]
    jr z, jr_01f_6cf2

    ld a, [de]
    res 0, a
    ld [de], a
    ld a, $04
    ld [$c10c], a
    jp Jump_01f_72d6


jr_01f_6cf2:
    ld a, [de]
    set 0, a
    ld [de], a
    ld hl, $c109
    res 2, [hl]
    ld a, $04
    ld [$c10a], a
    jp Jump_01f_72d6


    ld a, [$c109]
    bit 2, a
    jp z, Jump_01f_72d6

    res 2, a
    ld [$c109], a
    xor a
    ld [$c10b], a
    ld b, $04
    ld a, [$c114]
    cp $02
    jr c, jr_01f_6d24

    ld a, $02
    ld [$c10b], a
    ld b, $02

jr_01f_6d24:
    ld a, b
    ld [$c10d], a
    ld a, $05
    ld [$c110], a
    ld b, a
    ld hl, $6d65
    ld de, $dd81

jr_01f_6d34:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_01f_6d34

    ld a, $01
    ld [$c10c], a
    ld a, $05
    ld [$c10a], a
    ld a, [$c109]
    bit 3, a
    jp nz, Jump_01f_72d6

    ld hl, $c109
    set 3, [hl]
    ld a, $01
    ld [$c10b], a
    ld a, $50
    ld [$c1f2], a
    ld a, $02
    ld [$c1f3], a
    ld hl, $6e31
    jr jr_01f_6db5

    jr jr_01f_6d8f

    ld d, b
    ld a, b
    adc b
    ld hl, $c10c
    dec [hl]
    jp nz, Jump_01f_72d6

    ld a, [$c110]
    call Call_1d18
    ld [$c1f3], a
    ld c, a
    ld b, $00
    ld hl, $dd81
    add hl, bc
    ld a, [hl]
    ld [$c1f2], a
    ld hl, $c10b
    ld a, [$defe]
    and $01
    jr z, jr_01f_6d9e

jr_01f_6d8f:
    ld a, [hl]
    and $f0
    cp $20
    jr z, jr_01f_6da5

jr_01f_6d96:
    ld a, [hl]
    add $10
    ld [hl], a
    ld a, $01
    jr jr_01f_6da7

jr_01f_6d9e:
    ld a, [hl]
    and $0f
    cp $02
    jr z, jr_01f_6d96

jr_01f_6da5:
    inc [hl]
    xor a

jr_01f_6da7:
    add a
    ld b, a
    add a
    ld c, a
    add a
    add b
    add c
    ld c, a
    ld b, $00
    ld hl, $6e31
    add hl, bc

jr_01f_6db5:
    ld de, $c1ab
    ld c, $14
    call $1057
    call $1080
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
    ld a, $07
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c1f1]
    ld b, a
    call Call_01f_7e6f
    ld hl, $c10d
    dec [hl]
    jr z, jr_01f_6e11

    ld a, $03
    call Call_1d18
    inc a
    ld [$c10c], a
    ld a, [$c110]
    dec a
    ld [$c110], a
    ld hl, $c1f3
    sub [hl]
    jp z, Jump_01f_72d6

    ld c, a
    ld e, [hl]
    ld d, $00
    ld hl, $dd81
    add hl, de
    ld e, l
    ld d, h
    inc de

jr_01f_6e08:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01f_6e08

    jp Jump_01f_72d6


jr_01f_6e11:
    ld hl, $c109
    res 1, [hl]
    ld a, $1e
    ld [$c10c], a
    ld a, $02
    ld [$c10e], a
    ld a, [$c114]
    ld c, a
    ld b, $00
    ld hl, $6f33
    add hl, bc
    ld a, [hl]
    ld [$c10a], a
    jp Jump_01f_72d6


    xor d
    ld a, [bc]
    nop
    add b
    nop
    nop
    and l
    inc [hl]
    ld c, $0c
    ld bc, $0402
    ld b, $aa
    daa
    ld bc, $0000
    nop
    and l
    dec bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $21
    inc c
    pop bc
    dec [hl]
    ret nz

    ld hl, $c113
    dec [hl]
    ld a, [hl]
    add a
    add a
    add [hl]
    ld c, a
    ld b, $00
    ld hl, $6e99
    add hl, bc
    ld a, [hl+]
    ld [$c10c], a
    ld de, $c1c4
    ld c, $04
    call $1057
    call Call_000_1635
    ld a, $69
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $c4
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ld a, [$c113]
    and a
    ret nz

    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $e0
    ld [hl], a
    ld a, $07
    ld [$c10a], a
    ld a, $10
    ld [$c10c], a
    ret


    ld bc, $6362
    ld h, h
    ld h, l
    ld b, $6a
    ld l, e
    ld l, h
    ld l, l
    ld bc, $6362
    ld h, h
    ld h, l
    ld b, $66
    ld h, a
    ld l, b
    ld l, c
    ld hl, $c867
    inc [hl]
    inc hl
    ld a, [hl]
    xor $02
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $02
    ld [$c1f0], a
    ld a, $07
    ld [$c10c], a

Jump_01f_6ec5:
    ld hl, $c109
    res 4, [hl]
    ld a, $02
    ld [$c10e], a
    ld hl, $6f27
    ld de, $c1c4
    ld c, $0c
    call $1057
    call Call_000_1635
    ld a, $a7
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $c4
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $c7
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $ca
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    xor a
    ld [$c868], a
    ld a, $80
    ld [$c0fa], a
    ld a, $50
    ld [$c0fe], a
    ld a, [$c114]
    ld c, a
    ld b, $00
    ld hl, $6f33
    add hl, bc
    ld a, [hl]
    ld [$c10a], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    push de
    sub $d7
    ret c

    reti


    jp c, $dddc

    sbc $df
    ldh [$ffe1], a
    inc bc
    dec bc
    inc b
    inc c
    dec c
    ld hl, $c109
    set 4, [hl]
    ld hl, $6f5d
    ld de, $c1c4
    ld c, $1c
    call $1057
    ld a, $07
    ld [$c10c], a
    ld a, $09
    ld [$c10a], a
    ld a, $60
    ld [$c82e], a
    ld [$c835], a
    jp Jump_01f_7033


    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    rst $08
    ld e, a
    ld h, b
    ld h, c
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    call nc, $db4b
    ld c, e
    ld hl, $c868
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_01f_6f89

    dec [hl]
    ret nz

jr_01f_6f89:
    ld a, [$c111]
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
    and a
    ret nz

    ld a, [$c112]
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
    and a
    ret nz

    xor a
    ld [$c868], a
    ld a, $80
    ld [$c0fa], a
    ld a, $50
    ld [$c0fe], a
    ld hl, $c1f0
    dec [hl]
    jr z, jr_01f_701e

    ld hl, $7088
    ld de, $c1d0
    ld c, $0c
    call $1057
    ld hl, $70a0
    ld de, $c1e8
    ld c, $04
    call $1057
    ld a, $07
    ld [$c10c], a
    call Call_000_1635
    ld a, $48
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $66
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $dc
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $6d
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $de
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    jp Jump_01f_6ec5


jr_01f_701e:
    ld a, $0c
    ld [$c10c], a
    ld a, $0a
    ld [$c10a], a
    ld hl, $7088
    ld de, $c1c4
    ld c, $1c
    call $1057

Jump_01f_7033:
    call Call_000_1635
    ld a, $48
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $04
    ld [hl+], a
    ld a, $c4
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $a7
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $66
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $dc
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    call Call_000_1635
    ld a, $6d
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $de
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ret


    call nz, $c6c5
    rst $00
    ret


    jp z, $cccb

    rst $08
    ret nc

    pop de
    jp nc, $e3e2

    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    ld c, e
    call nc, $db4b
    ld hl, $c867
    ld a, [hl]
    sub $04
    ld [hl+], a
    ld a, [hl]
    xor $02
    ld [hl], a
    ld hl, $c0fa
    ld a, [hl]
    add $04
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $1e
    ld [hl], a
    ld a, $01
    ld [$c10a], a
    xor a
    ld [$c867], a
    ld hl, $c0a4
    dec [hl]
    ld a, [hl]
    cp $02
    jr nz, jr_01f_70d6

    ld a, $01
    ld [$c114], a
    ret


jr_01f_70d6:
    cp $01
    ret nz

    ld a, $0c
    ld [$c10a], a
    xor a
    ld [$c1ef], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

Jump_01f_70e8:
    ld a, [$c111]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, $0b
    ld [hl], a
    ld a, $ff
    add l
    ld l, a
    res 0, [hl]
    ld a, [$c112]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, $0c
    ld [hl], a
    ld a, $ff
    add l
    ld l, a
    set 0, [hl]
    xor a
    ld [$c10e], a
    ld hl, $c109
    res 2, [hl]
    ld a, $04
    ld [$c10a], a
    ret


    ld hl, $c10c
    dec [hl]
    jp nz, Jump_01f_72d6

    ld hl, $c111
    ld a, [$c1ef]
    and a
    jr z, jr_01f_7138

    inc hl

jr_01f_7138:
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, $11
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, [$c108]
    sub $40
    ld [hl], a
    ld a, $fb
    add l
    ld l, a
    set 0, [hl]
    ld hl, $c109
    res 2, [hl]
    ld a, $04
    ld [$c10a], a
    ld a, $02
    ld [$c114], a
    jp Jump_01f_72d6


    ld a, $01
    ld [$c10a], a
    ld a, $0f
    ld [$c10c], a
    xor a
    ld [$c114], a
    ret


    ld hl, $c109
    set 4, [hl]
    ld hl, $ff93
    set 5, [hl]
    ld hl, $71dd
    ld de, $c1c4
    ld c, $1c
    call $1057
    ld a, $08
    ld [$c10c], a
    xor a
    ld [$c113], a
    ld a, $0f
    ld [$c10a], a
    ld a, $4e
    ld [$c82e], a
    ld [$c835], a
    ld a, $80
    ld [$c836], a
    ld hl, $c260
    ld de, $0020
    ld c, $08

jr_01f_71af:
    push hl
    ld a, [hl]
    and a
    jr z, jr_01f_71c7

    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    cp $5d
    jr nz, jr_01f_71c7

    ld a, $34
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $04
    ld [hl], a

jr_01f_71c7:
    pop hl
    add hl, de
    dec c
    jr nz, jr_01f_71af

    ld hl, $ff91
    set 7, [hl]
    ld hl, $ff93
    set 3, [hl]
    ld hl, $c1f0
    dec [hl]
    jp Jump_01f_7033


    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ret


    jp z, $cc6f

    rst $08
    ret nc

    ld [hl], c
    jp nc, $fbfa

    db $fc
    db $fd
    cp $ff
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    call nc, $db4b
    ld c, e
    ld hl, $c868
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_01f_720b

    dec [hl]
    jp nz, Jump_01f_727d

jr_01f_720b:
    xor a
    ld [$c868], a
    ld a, $80
    ld [$c0fa], a
    ld a, $50
    ld [$c0fe], a
    ld a, [$c111]
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
    and a
    ret nz

    ld a, [$c112]
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
    and a
    ret nz

    ld a, $19
    ld [$c10c], a
    ld a, $10
    ld [$c10a], a
    ld a, $73
    ld [$c82d], a
    ld [$c835], a
    call Call_01f_7ea0
    jp Jump_01f_7df7


    ld hl, $c867
    ld a, [hl]
    sub $02
    ld [hl], a
    ld hl, $c0fa
    ld a, [hl]
    add $02
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    jr nz, jr_01f_727d

    ld a, $18
    ld [$c10c], a
    ld a, $11
    ld [$c10a], a
    xor a
    ld [$c867], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


Jump_01f_727d:
jr_01f_727d:
    ld hl, $c113
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $72aa
    add hl, bc
    ld de, $c1c4
    ld c, $04
    call $1057
    call Call_000_1635
    ld a, $69
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $c4
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ret


    ld h, d
    ld l, a
    ld h, h
    ld [hl], c
    ld h, [hl]
    ld l, e
    ld l, b
    ld l, l
    ld l, [hl]
    ld h, e
    ld [hl], b
    ld h, l
    ld l, d
    ld h, a
    ld l, h
    ld l, c
    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c0a4], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c0a4], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ret


Jump_01f_72d6:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c1ed
    ld a, [hl]
    and a
    jr z, jr_01f_72e5

    dec [hl]
    ret


jr_01f_72e5:
    ld hl, $c115
    ld a, [$c203]
    cp $50
    jr nc, jr_01f_7304

    ld a, [hl]
    cp $01
    ret z

    ld a, $01
    ld [hl], a
    ld hl, $73a2
    ld de, $c1c4
    ld c, $04
    call $1057
    jp Jump_01f_738a


jr_01f_7304:
    ld de, $c868
    ld a, [$c207]
    cp $30
    jr c, jr_01f_7351

    cp $70
    jr nc, jr_01f_7324

    ld a, [hl]
    and a
    ret z

    xor a
    ld [hl], a
    ld hl, $739e
    ld de, $c1c4
    ld c, $04
    call $1057
    jr jr_01f_738a

jr_01f_7324:
    ld a, [de]
    cp $09
    jr c, jr_01f_732d

    cp $f9
    jr c, jr_01f_7339

jr_01f_732d:
    dec a
    ld [de], a
    ld de, $c100
    ld a, $00
    ld [de], a
    inc de
    ld a, $20
    ld [de], a

jr_01f_7339:
    ld a, [hl]
    cp $02
    jr z, jr_01f_737c

    ld a, $02
    ld [hl], a
    ld hl, $73a6
    ld de, $c1c4
    ld c, $04
    call $1057
    call Call_01f_738a
    jr jr_01f_737c

jr_01f_7351:
    ld a, [de]
    cp $f8
    jr nc, jr_01f_735a

    cp $08
    jr nc, jr_01f_7366

jr_01f_735a:
    inc a
    ld [de], a
    ld de, $c100
    ld a, $ff
    ld [de], a
    inc de
    ld a, $e0
    ld [de], a

jr_01f_7366:
    ld a, [hl]
    cp $03
    jr z, jr_01f_737c

    ld a, $03
    ld [hl], a
    ld hl, $73aa
    ld de, $c1c4
    ld c, $04
    call $1057
    call Call_01f_738a

jr_01f_737c:
    ld hl, $c1ec
    dec [hl]
    ret nz

    ld a, $02
    ld [hl], a
    ld a, $06
    ld [$c1ed], a
    ret


Call_01f_738a:
Jump_01f_738a:
jr_01f_738a:
    call Call_000_1635
    ld a, $69
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $c4
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ret


    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $73bd
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp hl


    ld [hl], e
    ld [$0773], a
    ld [hl], h
    ld e, l
    ld [hl], h
    ld [hl], d
    ld [hl], h
    push bc
    ld [hl], h
    sbc $74
    ld h, h
    ld [hl], l
    xor e
    ld [hl], l
    reti


    ld [hl], l
    dec bc
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    ld b, [hl]
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    and c
    ld [hl], a
    ld de, $5778
    ld a, b
    ld a, e
    ld a, b
    jp z, $1f78

    ld a, c
    ld [hl], e
    ld a, c
    ret


    ld a, $03
    call Call_1d18
    ld c, a
    ld b, $00
    ld hl, $7404
    add hl, bc
    ld a, [hl]
    ld [$c10d], a
    ld a, $03
    ld [$c10a], a
    ld bc, $ffc0
    jr jr_01f_741f

    ld [hl], b
    ld a, b
    add b
    ld a, $03
    call Call_1d18
    ld c, a
    ld b, $00
    ld hl, $745a
    add hl, bc
    ld a, [hl]
    ld [$c10d], a
    ld a, $04
    ld [$c10a], a
    ld bc, $0040

jr_01f_741f:
    push bc
    ld a, $03
    call Call_1d18
    add a
    add a
    add a
    ld d, a
    pop bc
    ld hl, $c0fa
    ld a, [hl]
    add $fe
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [hl]
    add d
    ld [hl+], a
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c103
    res 5, [hl]
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c0f9], a
    ld a, $41
    ld [$c116], a
    ld a, $03
    ld [$c10c], a
    ret


    jr @+$22

    jr z, @-$04

    cp $c0
    cp $79
    jr nc, jr_01f_746a

    ld hl, $c10d
    cp [hl]
    jr c, jr_01f_7483

jr_01f_746a:
    ld bc, $ffc0
    ld de, $0040
    jr jr_01f_749f

    ld a, [$c0fe]
    cp $b0
    jr nc, jr_01f_7499

    cp $20
    jr c, jr_01f_7499

    ld hl, $c10d
    cp [hl]
    jr c, jr_01f_7499

jr_01f_7483:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c10c], a
    ld a, $05
    ld [$c10a], a
    ret


jr_01f_7499:
    ld bc, $0040
    ld de, $0040

jr_01f_749f:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $02
    ld [hl], a
    ld hl, $c0fc
    ld a, [hl+]
    or [hl]
    jr z, jr_01f_74be

    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld hl, $c101
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


jr_01f_74be:
    ld a, $c0
    ld [hl-], a
    ld a, $ff
    ld [hl], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fc
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $06
    ld [$c10a], a
    call Call_01f_7ea0
    jp Jump_01f_7e14


    ld a, [$c0fa]
    cp $70
    ret c

Jump_01f_74e4:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ddad
    ld a, $08
    ld [hl+], a
    ld a, $05
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $05
    ld [$c0f9], a
    ld a, $42
    ld [$c116], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $68
    ld [hl], a
    ld a, [$c109]
    rra
    jr nc, jr_01f_754c

    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    set 2, [hl]
    ld hl, $c260
    ld de, $0020
    ld c, $08

jr_01f_752f:
    push hl
    ld a, [hl]
    and a
    jr z, jr_01f_7547

    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    cp $5d
    jr nz, jr_01f_7547

    ld a, $34
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $04
    ld [hl], a

jr_01f_7547:
    pop hl
    add hl, de
    dec c
    jr nz, jr_01f_752f

jr_01f_754c:
    ld a, $13
    ld [$c82f], a
    ld [$c835], a
    ld a, $02
    ld [$c10c], a
    ld a, $09
    ld [$c10a], a
    call Call_01f_7ea0
    jp Jump_01f_7e6f


    ld hl, $c10c
    dec [hl]
    ret nz

Jump_01f_7569:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $a0
    ld [hl+], a
    ld bc, $0020
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_757e

    ld bc, $ffe0

jr_01f_757e:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $67
    ld [hl], a
    ld a, $0a
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $07
    ld [$c0f9], a
    ld a, $43
    ld [$c116], a
    ld a, $05
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld b, $98
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_75ba

    ld b, $f0

jr_01f_75ba:
    ld a, b
    ld [$c0fe], a
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    set 5, [hl]
    res 2, [hl]
    ld a, $90
    ld [$c0fa], a
    xor a
    ld [$c10a], a
    ret


    ldh a, [$91]
    rra
    ret c

    ldh a, [$93]
    bit 5, a
    jp nz, Jump_01f_76be

    ld a, [$dd1a]
    and a
    jp nz, Jump_01f_76be

    ldh a, [$93]
    bit 2, a
    jp nz, Jump_01f_76be

    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$dd18]
    cp $03
    jr z, jr_01f_7605

    cp $09
    jr z, jr_01f_7629

    jr jr_01f_7630

jr_01f_7605:
    ld a, [$c213]
    cp $06
    jr nc, jr_01f_7630

    ld hl, $dd1c
    ld [hl], $00
    ld a, [$dd1a]
    and a
    jr z, jr_01f_7619

    ld [hl], $83

jr_01f_7619:
    ld de, hOAMDMAFunction
    ld bc, $0000
    call Call_2b22
    ld a, [$c213]
    cp $05
    jr c, jr_01f_7682

jr_01f_7629:
    ld hl, $ff92
    ld a, [hl]
    and $db
    ld [hl], a

jr_01f_7630:
    ld a, [$c203]
    cp $80
    jr nc, jr_01f_7652

    ld a, [$c12c]
    rla
    jr c, jr_01f_7652

    ld a, $06
    ld [$dd1a], a
    ld a, $18
    ld [$dd4b], a
    ld hl, $ff91
    ld a, [hl]
    or $42
    ld [hl+], a
    set 6, [hl]
    jr jr_01f_7687

jr_01f_7652:
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
    ld a, $82
    ld [$c21b], a
    xor a
    ld [$dd18], a
    ld a, $35
    ld [$c831], a
    ld [$c835], a
    jr jr_01f_76be

jr_01f_7682:
    ld a, $05
    ld [$dd1a], a

jr_01f_7687:
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

Jump_01f_76be:
jr_01f_76be:
    ld hl, $ff92
    res 3, [hl]
    ld hl, $76fb
    ld de, $dd59
    ld c, $10
    call $1057
    ld a, [$dd59]
    ld [$dd69], a
    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c21d
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $76f5
    add hl, bc
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl]
    ld [$c10c], a
    ret


    rlca
    rlca
    db $10
    rlca
    inc d
    ld [bc], a
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

    ld a, $53
    ld [$c116], a
    ld hl, $c0fc
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld bc, $0200
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_772a

    ld bc, $fe00

jr_01f_772a:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $02
    ld [$c10c], a
    ld a, $08
    ld [$c10a], a
    ret


    ld a, $0d
    ld [$c10a], a
    ld bc, $ffc0
    ld d, $a8
    jr jr_01f_7750

    ld a, $0e
    ld [$c10a], a
    ld bc, $0040
    ld d, $f0

jr_01f_7750:
    ld hl, $c0fe
    ld [hl], d
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $73
    ld [$c0fa], a
    ld hl, $c103
    res 5, [hl]
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c0f9], a
    ld a, $41
    ld [$c116], a
    ld a, $0a
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0f
    ld [$c10a], a
    ld bc, $fe00
    jr jr_01f_7795

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0f
    ld [$c10a], a
    ld bc, $0200

jr_01f_7795:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $04
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$c203]
    cp $6c
    jp c, Jump_01f_74e4

    ld a, [$c207]
    sub $48
    jp c, Jump_01f_74e4

    cp $10
    jp nc, Jump_01f_74e4

    ld hl, $c203
    ld a, $68
    ld [hl+], a
    inc hl
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c21a], a
    ld [$dd1a], a
    ld a, $0d
    ldh [$ff90], a
    ld hl, $ff91
    ld a, [hl]
    or $c3
    ld [hl+], a
    set 7, [hl]
    ld a, $80
    ld [$c836], a
    ld a, $34
    ld [$c82d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld a, $18
    ld [$dd2b], a
    ld a, $06
    ld [$c213], a
    ld a, $07
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    jp Jump_01f_74e4


    ld hl, $c10c
    dec [hl]
    ret nz

    ld bc, $0200
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_7822

    ld bc, $fe00

jr_01f_7822:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $08
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $07
    ld [$c0f9], a
    ld a, $43
    ld [$c116], a
    ld a, $05
    ld [$c10c], a
    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c21d
    add hl, bc
    xor a
    ld [hl], a
    ld a, $53
    ld [$c116], a
    ret


    ld hl, $c103
    res 5, [hl]
    set 2, [hl]
    xor a
    ld [$c10f], a
    ld a, $12
    ld [$c10a], a
    ld a, $02
    ld [$c10c], a
    ld d, $98
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_7876

    ld d, $00

jr_01f_7876:
    ld a, d
    ld [$c0fe], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c102], a
    ld a, $02
    ld [$c0f9], a
    ld a, $41
    ld [$c116], a
    ld hl, $78c4
    ld de, $fe00
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_78a0

    ld hl, $78c7
    ld de, $0200

Jump_01f_78a0:
jr_01f_78a0:
    ld a, [$c10f]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$c10d], a
    ld a, $13
    ld [$c10a], a
    ld hl, $c0fc
    ld a, $fe
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c109
    set 2, [hl]
    ret


    ld [hl], b
    ld d, b
    jr nc, @+$2a

    ld c, b
    ld l, b
    ld a, [$c0f8]
    rra
    jr c, jr_01f_78dd

    ld a, [$c0fe]
    cp $79
    ret nc

    ld hl, $c10d
    cp [hl]
    jr c, jr_01f_78eb

    ret


jr_01f_78dd:
    ld a, [$c0fe]
    cp $b0
    ret nc

    cp $20
    ret c

    ld hl, $c10d
    cp [hl]
    ret c

jr_01f_78eb:
    ld a, [$c10f]
    and a
    jr nz, jr_01f_7906

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $15
    ld [$c10a], a
    ld a, $08
    ld [$c10c], a
    ret


Jump_01f_7906:
jr_01f_7906:
    ld hl, $c0fc
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$c10a], a
    call Call_01f_7ea0
    jp Jump_01f_7e14


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10f
    inc [hl]
    ld a, [hl]
    ld hl, $c103
    set 2, [hl]
    cp $03
    jr nz, jr_01f_7951

    ld d, $0c
    ld hl, $c1ef
    inc [hl]
    ld a, [hl]
    cp $02
    jr nz, jr_01f_793e

    inc d

jr_01f_793e:
    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld [hl], d
    jp Jump_01f_7569


jr_01f_7951:
    res 2, [hl]
    ld a, $03
    ld [$c0f9], a
    ld a, $41
    ld [$c116], a
    ld hl, $78c4
    ld de, $fc00
    ld a, [$c0f8]
    rra
    jp nc, Jump_01f_78a0

    ld hl, $78c7
    ld de, $0400
    jp Jump_01f_78a0


    ld hl, $c0fe
    ld a, [hl]
    xor $02
    ld [hl], a
    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_01f_7906


    ld hl, $c103
    bit 4, [hl]
    jr z, jr_01f_798f

    call Call_01f_7b93
    jr nc, jr_01f_7999

    ret


jr_01f_798f:
    ld a, [$dd9e]
    and a
    jr z, jr_01f_7999

    call Call_01f_7ba8
    ret c

jr_01f_7999:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $79a8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or h
    ld a, c
    db $ed
    ld a, c
    ld [hl], e
    ld a, d
    sub h
    ld a, d
    ld h, b
    ld a, e
    add c
    ld a, e
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
    ld hl, $c109
    set 7, [hl]
    ret


    ld hl, $c109
    bit 0, [hl]
    jr z, jr_01f_79f8

    res 0, [hl]
    jr jr_01f_7a12

jr_01f_79f8:
    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    rla
    jr nc, jr_01f_7a3d

    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_01f_7a12

    ld a, [hl]
    cp $04
    jr c, jr_01f_7a12

    cp $07
    jr c, jr_01f_7a67

jr_01f_7a12:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c109
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $03
    ld [$c10a], a
    ld de, $0d55
    ld a, d
    ld [$c0f9], a
    ld a, e
    ld [$c116], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_01f_7a3d:
    rla
    jr c, jr_01f_7a47

    ld hl, $c109
    res 2, [hl]
    jr jr_01f_7a67

jr_01f_7a47:
    ld hl, $c109
    bit 2, [hl]
    jr nz, jr_01f_7a67

    set 2, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    ld a, $12
    ld [$c831], a
    ld [$c835], a
    ret


jr_01f_7a67:
    ld a, [$c0fa]
    cp $a0
    ret c

    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld hl, $c10e
    ld a, [hl]
    and a
    jr nz, jr_01f_7a84

    inc [hl]
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ret


jr_01f_7a84:
    ld [hl], $00
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $80
    ld a, $01
    ld [$c10a], a
    ret


    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    bit 7, a
    jr nz, jr_01f_7aa2

    cp $01
    jr nc, jr_01f_7aba

jr_01f_7aa2:
    ld bc, $0060
    add hl, bc
    ld a, h
    bit 7, a
    jr nz, jr_01f_7ab2

    cp $01
    jr c, jr_01f_7ab2

    ld hl, $0100

jr_01f_7ab2:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a

jr_01f_7aba:
    ld hl, $c100
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or l
    jr z, jr_01f_7ae6

    ld a, [$c10b]
    and a
    jr z, jr_01f_7ad3

    ld bc, $0010
    add hl, bc
    bit 7, h
    jr z, jr_01f_7adb

    jr jr_01f_7ade

jr_01f_7ad3:
    ld bc, $fff0
    add hl, bc
    bit 7, h
    jr z, jr_01f_7ade

jr_01f_7adb:
    ld hl, $0000

jr_01f_7ade:
    ld de, $c100
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a

jr_01f_7ae6:
    ld a, [$c10b]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr nc, jr_01f_7b09

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

jr_01f_7b09:
    ld a, [$c0fc]
    rla
    ret c

    call $2ab3
    ld hl, $dd92
    ld a, [hl]
    and $c0
    jr z, jr_01f_7b5a

    ld a, [$c109]
    bit 2, a
    jr nz, jr_01f_7b5a

    inc hl
    inc hl
    ld de, $c0fa
    ld a, [de]
    add [hl]
    inc a
    ld [de], a
    ld a, $5d
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
    ld hl, $c103
    set 2, [hl]
    ld a, $10
    ld [$c0f9], a
    ld a, $a6
    ld [$c116], a
    ld a, [$c108]
    sub $40
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, $05
    ld [hl], a
    ret


jr_01f_7b5a:
    ld hl, $c109
    res 2, [hl]
    ret


    ld a, $05
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c10c], a
    ld a, $3d
    ld [$c831], a
    ld [$c835], a
    ld a, $12
    ld [$c0f9], a
    ld a, $57
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    call Call_01f_7ec8
    jp Jump_01f_7ea0


    ld a, [$c103]
    bit 4, a
    jr z, jr_01f_7ba3

Call_01f_7b93:
    ld a, [$c108]
    sub $40
    add a
    ld c, a
    ld b, $00
    ld hl, $c16b
    add hl, bc
    ld a, [hl]
    jr jr_01f_7ba8

jr_01f_7ba3:
    ld a, [$dd9e]
    and a
    ret z

Call_01f_7ba8:
jr_01f_7ba8:
    ld hl, $c103
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
    jr nz, jr_01f_7bd1

    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    and a
    jr nz, jr_01f_7bd1

    ld a, $f9
    add l
    ld l, a
    res 4, [hl]
    and a
    ret


jr_01f_7bd1:
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
    ld a, $34
    ld [$c105], a
    ld a, $04
    ld [$c10a], a
    scf
    ret


Call_01f_7bf2:
    ld a, [$dd92]
    rla
    jr c, jr_01f_7c0f

    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_01f_7c0f

    ld d, $04
    ld a, [$dd95]
    ld e, a
    jr jr_01f_7c1c

jr_01f_7c0f:
    ld a, [$dd8c]
    cp $08
    jr nz, jr_01f_7c35

    ld d, $03
    ld a, [$dd8f]
    ld e, a

jr_01f_7c1c:
    ld a, [$c1f1]
    call Call_1d18
    and a
    jr nz, jr_01f_7c35

    ld a, [$c0f8]
    rra
    jr nc, jr_01f_7c30

    ld a, $0c
    sub e
    scf
    ret


jr_01f_7c30:
    ld a, $0c
    add e
    scf
    ret


jr_01f_7c35:
    and a
    ret


Call_01f_7c37:
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, d
    rra
    jr nc, jr_01f_7c47

    ld bc, $0004

jr_01f_7c47:
    add hl, bc
    ld a, [hl]
    and $c0
    ret nz

    scf
    ret


Jump_01f_7c4e:
    ld hl, $c100
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
    call Call_01f_7ea0
    jp Jump_01f_7e14


Call_01f_7c78:
    call $2a9b
    ld a, [$dd8c]
    rla
    jr nc, jr_01f_7c84

    ld a, $01
    ret


jr_01f_7c84:
    call $2ab3
    ld a, [$c109]
    rra
    jr nc, jr_01f_7ca5

    ld a, [$dd94]
    cp $ff
    jr nz, jr_01f_7cb1

    xor a
    ld hl, $c0fc
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld hl, $c109
    res 0, [hl]
    ld a, $02
    ret


jr_01f_7ca5:
    ld a, [$dd92]
    and $40
    jr z, jr_01f_7cb1

    ld hl, $c109
    set 0, [hl]

jr_01f_7cb1:
    xor a
    ret


Call_01f_7cb3:
    call $2ab3
    ld a, [$c109]
    rra
    jr nc, jr_01f_7cca

    ld a, [$dd92]
    cp $08
    jr nz, jr_01f_7cc8

    ld hl, $c109
    res 0, [hl]

jr_01f_7cc8:
    and a
    ret


jr_01f_7cca:
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    scf
    ret


Call_01f_7ce2:
    ld b, $a0
    ld a, [$c705]
    and a
    jr z, jr_01f_7cf4

    cp $03
    jr z, jr_01f_7cf4

    cp $06
    jr z, jr_01f_7cf4

    ld b, $e0

jr_01f_7cf4:
    ld a, [$c0fa]
    cp $08
    jr c, jr_01f_7d17

    cp b
    ret nc

    ld b, $a8
    ld a, [$c705]
    cp $05
    jr z, jr_01f_7d0f

    cp $06
    jr z, jr_01f_7d0d

    rra
    jr nc, jr_01f_7d0f

jr_01f_7d0d:
    ld b, $f8

jr_01f_7d0f:
    ld a, [$c0fe]
    cp $fc
    ret nc

    cp b
    ret c

jr_01f_7d17:
    and a
    ret


Call_01f_7d19:
    ldh a, [$94]
    rla
    jr nc, jr_01f_7d25

    ld a, [$dd18]
    cp $08
    jr z, jr_01f_7d4d

jr_01f_7d25:
    ld a, [$c0fa]
    add d
    ld d, a
    cp $e8
    jr c, jr_01f_7d30

    ld d, $00

jr_01f_7d30:
    ld a, [$c203]
    sub d
    ret c

    cp b
    jr nc, jr_01f_7d4d

    ld a, [$c0fe]
    add e
    ld e, a
    cp $f0
    jr c, jr_01f_7d43

    ld e, $00

jr_01f_7d43:
    ld a, [$c207]
    sub e
    ret c

    cp c
    jr nc, jr_01f_7d4d

    and a
    ret


jr_01f_7d4d:
    scf
    ret


Call_01f_7d4f:
Jump_01f_7d4f:
    ld hl, $c0fd
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    rla
    ret c

    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    ld [hl], d
    ret


Call_01f_7d62:
Jump_01f_7d62:
    ld hl, $c0fd
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl+], a
    cp d
    ret c

    ld a, [hl]
    cp e
    ret c

    ld [hl], e
    dec hl
    ld [hl], d
    ld a, [$c1f1]
    ld [$c10a], a
    ret


Call_01f_7d7a:
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_01f_7d86

    ld bc, $0004

jr_01f_7d86:
    ld hl, $dd9c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    ld hl, $c109
    and $1f
    cp $01
    jr z, jr_01f_7d9a

    res 7, [hl]
    ret


jr_01f_7d9a:
    set 7, [hl]
    ret


Call_01f_7d9d:
    ld hl, $c103
    bit 4, [hl]
    jr z, jr_01f_7db6

    res 4, [hl]
    ld a, [$c108]
    sub $40
    add a
    ld c, a
    ld b, $00
    ld hl, $c16b
    add hl, bc
    ld a, [hl]
    jr jr_01f_7dc2

jr_01f_7db6:
    ld a, [$dd9f]
    bit 4, a
    jr nz, jr_01f_7dbf

    and a
    ret


jr_01f_7dbf:
    ld a, [$dd9e]

jr_01f_7dc2:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c207
    add hl, bc
    ld b, $00
    ld a, [$c0fe]
    cp [hl]
    jr nc, jr_01f_7dd7

    inc b

jr_01f_7dd7:
    ld a, b
    scf
    ret


    ld hl, $ddae
    dec [hl]
    ret nz

    ld a, $05
    ld [hl-], a
    dec [hl]
    ld hl, $ff42
    ld a, [hl]
    xor $02
    ld [hl], a
    ld a, [$c1ee]
    and a
    ret z

    ld hl, $c869
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Jump_01f_7df7:
    ld hl, $c0c7
    ld c, $08

jr_01f_7dfc:
    ld de, $0005
    inc [hl]

jr_01f_7e00:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_01f_7e0a

    dec e
    jr nz, jr_01f_7e00

jr_01f_7e08:
    jr jr_01f_7e08

jr_01f_7e0a:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_01f_7dfc

    ld d, $00
    jp Jump_01f_7e97


Jump_01f_7e14:
    ld a, [$c0c7]
    ld hl, $c0cd
    cp [hl]
    jr nc, jr_01f_7e20

    ld hl, $c0c7

jr_01f_7e20:
    ld c, $04

jr_01f_7e22:
    ld de, $000b
    inc [hl]

jr_01f_7e26:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_01f_7e33

    dec e
    ld a, $06
    cp e
    jr nz, jr_01f_7e26

jr_01f_7e31:
    jr jr_01f_7e31

jr_01f_7e33:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_01f_7e22

    ld d, $03
    jr jr_01f_7e97

Call_01f_7e3c:
Jump_01f_7e3c:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $03

jr_01f_7e44:
    ld a, [de]
    cp [hl]
    jr nc, jr_01f_7e4a

    ld l, e
    ld h, d

jr_01f_7e4a:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_01f_7e44

    ld c, $02

jr_01f_7e55:
    ld de, $0017
    inc [hl]

jr_01f_7e59:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_01f_7e66

    dec e
    ld a, $12
    cp e
    jr nz, jr_01f_7e59

jr_01f_7e64:
    jr jr_01f_7e64

jr_01f_7e66:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_01f_7e55

    ld d, $02
    jr jr_01f_7e97

Call_01f_7e6f:
Jump_01f_7e6f:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $07

jr_01f_7e77:
    ld a, [de]
    cp [hl]
    jr nc, jr_01f_7e7d

    ld l, e
    ld h, d

jr_01f_7e7d:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_01f_7e77

    inc [hl]

jr_01f_7e87:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_01f_7e94

    dec e
    ld a, $12
    cp e
    jr nz, jr_01f_7e87

jr_01f_7e92:
    jr jr_01f_7e92

jr_01f_7e94:
    ld [hl], b
    ld d, $01

Jump_01f_7e97:
jr_01f_7e97:
    ld hl, $c103
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    ret


Call_01f_7ea0:
Jump_01f_7ea0:
    ld a, [$c108]
    sub $40
    ld b, a

Call_01f_7ea6:
    ld hl, $c0c8
    ld c, $08

jr_01f_7eab:
    ld de, $ffff

jr_01f_7eae:
    ld a, [hl]
    cp b
    jr z, jr_01f_7ebc

    inc hl
    dec e
    ld a, $fa
    cp e
    jr nz, jr_01f_7eae

    inc hl
    jr jr_01f_7ec4

jr_01f_7ebc:
    ld [hl], $00
    add hl, de
    dec [hl]
    ld de, $0007
    add hl, de

jr_01f_7ec4:
    dec c
    jr nz, jr_01f_7eab

    ret


Call_01f_7ec8:
    xor a
    ld [$c0f7], a
    ld [$c103], a

Call_01f_7ecf:
Jump_01f_7ecf:
    ld hl, $c108
    ld a, [hl-]
    ld [$c1f1], a
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld de, $0074
    ld b, $03

jr_01f_7ede:
    ld c, $03

jr_01f_7ee0:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_01f_7eea

    xor a
    ld [hl-], a
    ld [hl+], a

jr_01f_7eea:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_01f_7ee0

    add hl, de
    dec b
    jr nz, jr_01f_7ede

    ret


    ret


    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
