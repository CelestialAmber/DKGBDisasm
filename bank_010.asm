; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

Call_10_4000:
    jp Jump_010_4044


Jump_010_4003:
    call Call_010_43d7
    call Call_010_45e5
    call Call_010_46a8
    call Call_010_4890
    call Call_010_48f4
    ld c, $02
    call Call_010_495f
    ld hl, $ddb1
    ld a, [hl]
    and a
    jr z, jr_010_401f
    dec [hl]
jr_010_401f:
    ld hl, $dd3d
    ld a, [hl-]
    or [hl]
    jr z, jr_010_402d
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
jr_010_402d:
    ld a, [$dd47]
    and a
    jr z, jr_010_4037
    dec a
    ld [$dd47], a
Jump_010_4037:
jr_010_4037:
    ldh a, [$ff92]
    rla
    ret c
    ld hl, $c206
    ld a, [hl-]
    or [hl]
    ret nz
    ld [hl], $01
    ret


Jump_010_4044:
    ldh a, [hFF90]
    cp $11
    jp z, Jump_010_4003
    ld a, [$c0a4]
    and a
    jp z, Jump_010_4345
    ld a, [$dd1a]
    and a
    jr z, jr_010_405d
    cp $04
    jp nz, Jump_010_4003
jr_010_405d:
    ld de, $c133
    ld a, [de]
    and $1f
    cp $06
    jr z, jr_010_4072
    ld de, $c141
    ld a, [de]
    and $1f
    cp $06
    jp nz, Jump_010_4003
jr_010_4072:
    inc de
    ld a, [de]
    cp $09
    jr c, jr_010_409f
    ldh a, [$ff92]
    rra
    jp nc, Jump_010_4003
    ld hl, $c129
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $ff78
    add hl, bc
    ld c, $04
jr_010_408a:
    ld a, [hl+]
    and $1f
    cp $06
    jr nz, jr_010_4096
    ld a, [hl]
    cp $09
    jr nc, jr_010_409f
jr_010_4096:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_408a
    jp Jump_010_4003
jr_010_409f:
    ld a, [$dd17]
    rla
    jr nc, jr_010_40b0
    ld hl, $dd45
    ld a, $01
    ld [hl+], a
    dec a
    ld [hl], a
    jp Jump_010_4003
jr_010_40b0:
    ld a, [$dd18]
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4e8b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl

Call_010_40bf:
    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_010_40f0
    ld a, $0b
    add l
    ld l, a
    ld a, [hl]
    cp $0a
    jr nz, jr_010_40f0
    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $03
    jr z, jr_010_40de
    cp $04
    jr nz, jr_010_40f0
jr_010_40de:
    ld hl, $ff91
    ld a, [hl]
    or $c0
    ld [hl+], a
    ld a, [hl]
    or $0c
    ld [hl+], a
    ld a, [hl]
    or $14
    ld [hl], a
    jp Jump_010_4003
jr_010_40f0:
    push de
    ld hl, $c205
    ld de, $0019
    ld c, $20
    xor a
jr_010_40fa:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_40fa
    ld c, $04
    ld de, $dd72
jr_010_410b:
    push bc
    ld a, [de]
    and a
    jr z, jr_010_411e
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    xor a
    ld [hl], a
jr_010_411e:
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_010_410b
    ld a, $19
    ldh [hFF90], a
    pop de
    ld a, [de]
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4e7e
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, FunctionTable_10_40bf
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


FunctionTable_10_40bf:
dw Jump_010_4144
dw Call_010_41db
dw Call_010_41de


Jump_010_4144:
    ld a, [$c856]
    ld [$c836], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
Jump_010_4152:
    ld hl, $ff92
    set 7, [hl]
    xor a
    ld [$c213], a
    ld hl, $c215
    inc a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $68
    ld [hl+], a
    ld a, $73
    ld [hl+], a
    inc hl
    ld a, $10
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld hl, $c8f3
    ld b, $1b
jr_010_4179:
    ld c, $1e
jr_010_417b:
    ld a, [hl+]
    cp $b3
    jr z, jr_010_4199
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_417b
    ld de, $0008
    add hl, de
    dec b
    jr nz, jr_010_4179
    ld b, $58
    ld a, [$c705]
    rra
    jr nc, jr_010_41a9
    ld b, $80
    jr jr_010_41a9
jr_010_4199:
    ld a, [hl]
    sub $40
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c207
    add hl, bc
    ld b, [hl]
jr_010_41a9:
    ld d, $00
    ld a, [$c207]
    cp b
    jr c, jr_010_41b3
    ld d, $01
jr_010_41b3:
    ld hl, $c201
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld hl, $c220
    ld de, $0020
    ld c, $1f
jr_010_41c3:
    ld a, [hl]
    and a
    jr z, jr_010_41d4
    push hl
    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    pop hl
    cp $0b
    jr nz, jr_010_41d4
    xor a
    ld [hl], a
jr_010_41d4:
    add hl, de
    dec c
    jr nz, jr_010_41c3


Call_010_41d8:
    jp Jump_010_4037


Call_010_41db:
    jp Jump_010_4144


Call_010_41de:
    ld a, [de]
    sub $09
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4ea1
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0003
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld de, $c20f
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c221
    ld de, $0020
    ld c, $1f
jr_010_4204:
    ld a, [hl]
    and $fe
    cp $ce
    jr z, jr_010_4212
    add hl, de
    dec c
    jr nz, jr_010_4204
    ld hl, $c221
jr_010_4212:
    dec hl
    xor a
    ld [hl], a
    ld de, $c220
    ld c, $20
jr_010_421a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_010_421a
    ld hl, $c201
    ld a, $34
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, [$c20f]
    sub $6d
    and $7c
    add a
    ld e, a
    ld d, $01
    ld bc, $0000
    ld hl, $c207
    sub [hl]
    jp z, Jump_010_4257
    jr c, jr_010_424b
    add a
    ld d, a
    ld bc, $0080
    ld hl, $c201
    res 0, [hl]
    jr jr_010_4257
jr_010_424b:
    cpl
    inc a
    add a
    ld d, a
    ld bc, hOAMDMAFunction
    ld hl, $c201
    set 0, [hl]
Jump_010_4257:
jr_010_4257:
    ld hl, $c209
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c215
    ld [hl], d
    inc hl
    inc hl
    inc hl
    ld a, $77
    ld [hl+], a
    ld a, $73
    ld [hl], a
    ld a, $84
    ld [$c20c], a
    xor a
    ld [$c20b], a
    ld a, $20
    ld [$c20e], a
    ld a, $01
    ld [$c213], a
    ld a, $06
    ld [$c21f], a
    ld a, $01
    ld [$c220], a
    ld hl, $c229
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c240
    xor a
    ld [hl+], a
    ld a, $3b
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$c203]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, e
    add $10
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c255
    ld a, $86
    add d
    ld [hl+], a
    inc hl
    inc hl
    ld a, $08
    ld [hl+], a
    ld a, $74
    ld [hl], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ld a, $80
    ld [$c836], a
    ld a, [$d9b6]
    ld [$c63b], a
    ld a, [$c203]
    sub $10
    jr nc, jr_010_42d1
    xor a
jr_010_42d1:
    ld [$c812], a
    ld b, $18
    ld a, [$c201]
    rra
    jr nc, jr_010_42de
    ld b, $28
jr_010_42de:
    ld a, [$c207]
    sub b
    jr nc, jr_010_42e5
    xor a
jr_010_42e5:
    ld [$c811], a
    ld hl, $c220
    ld de, $0020
    ld c, $20
jr_010_42f0:
    push hl
    ld a, [hl]
    and a
    jr z, jr_010_4324
    ld a, $0e
    add l
    ld l, a
    ld a, [hl]
    cp $3f
    jr z, jr_010_4324
    ld a, $f5
    add l
    ld l, a
    ld a, [$c812]
    sub [hl]
    jr nc, jr_010_4324
    cpl
    inc a
    cp $20
    jr nc, jr_010_4324
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c811]
    sub [hl]
    jr nc, jr_010_4324
    cpl
    inc a
    cp $30
    jr nc, jr_010_4324
    ld a, $f9
    add l
    ld l, a
    xor a
    ld [hl], a
jr_010_4324:
    pop hl
    add hl, de
    dec c
    jr nz, jr_010_42f0
    ld de, $c162
    ld a, $01
    ld [de], a
    ld hl, $c712
    ld a, [hl-]
    and a
    jp nz, Jump_010_4037
    ld a, [hl]
    cp $96
    jp nc, Jump_010_4037
    xor a
    ld [de], a
    jp Jump_010_4037


Call_010_4345:
    jp Jump_010_4003


Jump_010_4345:
    ld a, [$c0a5]
    add a
    ld c, a
    ld b, $00
    ld hl, $4354
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, h
    ld b, e
    add c
    ld b, e
    sub h
    ld b, e
    ret


    ld b, e

    ld hl, $c205
    ld de, $0019
    ld c, $20
    xor a

jr_010_4365:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    res 2, [hl]
    add hl, de
    dec c
    jr nz, jr_010_4365

    ld hl, $ff91
    set 7, [hl]
    inc hl
    set 7, [hl]
    ld a, $19
    ldh [hFF90], a
    jp Jump_010_4144


    ldh a, [$ff94]
    bit 2, a
    ret nz

    ld a, [$dd1a]
    and a
    jp nz, Jump_010_4003

    ld a, $19
    ldh [hFF90], a
    jp Jump_010_4144


    ld a, [$dd1a]
    and a
    jp nz, Jump_010_4003

    ld hl, $c203
    ld a, $78
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $6c
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $19
    ldh [hFF90], a
    ld hl, $c205
    ld de, $0019
    ld c, $20
    xor a

jr_010_43b9:
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    res 2, [hl]
    add hl, de
    dec c
    jr nz, jr_010_43b9
    jp Jump_010_4144


    ld a, $19
    ldh [hFF90], a
    ld a, [$dd1a]
    and a
    jp nz, Jump_010_4003
    jp Jump_010_4152


Call_010_43d7:
    ldh a, [$ff92]
    bit 3, a
    ret nz
    ld a, [$c1bf]
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_445c
    add hl, bc
    ld de, $c208
    ld a, [de]
    add [hl]
    ld [de], a
    dec de
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ld hl, $c117
    ld a, [hl+]
    and $1f
    cp $01
    jr nz, jr_010_4401
    ld a, [hl]
    cp $03
    jr nc, jr_010_442a
jr_010_4401:
    ld hl, $c12c
    ld a, [hl+]
    and $1f
    cp $03
    jr z, jr_010_442f
    cp $02
    jr z, jr_010_442f
    cp $05
    jr z, jr_010_442f
    cp $07
    jr z, jr_010_4434
    ld hl, $c125
    ld a, [hl+]
    and $1f
    cp $03
    jr z, jr_010_442f
    cp $01
    jr z, jr_010_442a
    xor a
    ld [$dd3a], a
    ret
jr_010_442a:
    ld bc, UnknownData_10_4fa9
    jr jr_010_4437
jr_010_442f:
    ld bc, UnknownData_10_4ea9
    jr jr_010_4437
jr_010_4434:
    ld bc, UnknownData_10_4fb1
jr_010_4437:
    ld e, l
    ld d, h
    ld l, [hl]
    ld h, $00
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, FunctionTable_10_43d7
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


FunctionTable_10_43d7:
dw Call_10_4abb 
dw Call_10_4460 
dw Call_10_4498 
dw Call_10_44b7 
dw Call_10_44cf 
dw Call_10_44f3 
dw Call_10_4526 
dw Call_10_456a
dw Call_10_459f 

UnknownData_10_445c:
db $00,$00,$40,$00


Call_10_4460:
    ld a, [$dd1a]
    and a
    jr z, jr_010_4469
    cp $04
    ret c
jr_010_4469:
    ld bc, hOAMDMAFunction
    ld hl, $c853
    ld a, [de]
    cp $00
    jr z, jr_010_4478
    inc hl
    ld bc, $0080
jr_010_4478:
    ld a, [hl]
    srl a
    ret c
    and a
    jr z, jr_010_4489
    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a
jr_010_4489:
    ld de, $c207
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    add hl, bc
    ld a, l
    ld [de], a
    dec de
    ld a, h
    ld [de], a
    ret


Call_10_4498:
    ld a, [$dd1a]
    cp $04
    jr nz, jr_010_44a5
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
jr_010_44a5:
    ld a, [$dd3a]
    and a
    jp nz, Jump_010_45b5
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld [$dd3a], a
    jp Jump_010_45b5


Call_10_44b7:
    ld a, [$dd1a]
    cp $04
    jr nz, jr_010_44c4
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
jr_010_44c4:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld [$dd3a], a
    jp Jump_010_45b5


Call_10_44cf:
    ld a, [de]
    sub $03
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4fc9
    add hl, bc
    ld de, $c204
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    dec de
    ld a, [de]
    adc [hl]
    ld [de], a
    inc hl
    ld de, $c208
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    dec de
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Call_10_44f3:
    ld a, [$dd1a]
    and a
    jr z, jr_010_44fe
    cp $04
    jr z, jr_010_44fe
    ret
jr_010_44fe:
    ld a, [$c133]
    rla
    jr c, jr_010_450a
    ld a, [$c13a]
    rla
    jr nc, jr_010_451e
jr_010_450a:
    ld a, [$c141]
    rla
    jr c, jr_010_4516
    ld a, [$c148]
    rla
    jr nc, jr_010_451e
jr_010_4516:
    ld hl, $c203
    ld a, [hl]
    add $08
    ld [hl], a
    ret
jr_010_451e:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    jp Jump_010_45b5


Call_10_4526:
    ld a, [$dd1a]
    and a
    ret nz
    cp $04
    jr nz, jr_010_4536
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    ret
jr_010_4536:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20c
    add hl, bc
    set 6, [hl]
    inc hl
    inc hl
    ld a, [hl]
    cp $47
    jr z, jr_010_4554
    cp $4b
    jr nz, jr_010_4560
jr_010_4554:
    ld a, $04
    add l
    ld l, a
    set 3, [hl]
    ld a, $f2
    add l
    ld l, a
    jr jr_010_4564
jr_010_4560:
    ld a, $f6
    add l
    ld l, a
jr_010_4564:
    ld de, $c204
    jp Jump_010_45ca


Call_10_456a:
    ld a, [$dd1a]
    cp $04
    jr z, jr_010_457b
    and a
    jr z, jr_010_457b
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl], a
    ret
jr_010_457b:
    ld hl, $0005
    add hl, de
    ld a, [hl]
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
    cp $03
    jr c, jr_010_4594
    cp $09
    ret nz
jr_010_4594:
    ld a, $f1
    add l
    ld l, a
    ld de, $c204
    jp Jump_010_45ca

;unused function?
Call_10_459e:
    ret

Call_10_459f:
    ld hl, $0005
    add hl, de
    ld a, [hl]
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
    jp Call_10_44b7


Jump_010_45b5:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20c
    add hl, bc
    set 6, [hl]
    ld a, $f8
    add l
    ld l, a
    ld de, $c204

Jump_010_45ca:
    ld a, [hl+]
    inc hl
    add [hl]
    ld [de], a
    dec hl
    dec de
    ld a, [de]
    adc [hl]
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    ld bc, $0005
    add hl, bc
    ld a, [de]
    add [hl]
    ld [de], a
    dec de
    dec hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Call_010_45e5:
    ldh a, [$ff91]
    bit 5, a
    ret nz

    ld hl, $c209
    ld d, [hl]
    inc hl
    ld e, [hl]
    dec hl
    ld a, d
    or e
    jr nz, jr_010_4626

    ldh a, [$ff91]
    bit 6, a
    ret nz

    ld hl, $ff93
    res 0, [hl]
    xor a
    ld [$dd4f], a
    ld hl, $dd21
    ld a, [hl]
    cp $05
    ret z

    cp $23
    ret z

    ld b, $11
    ld a, [$dd18]
    cp $0a
    jr z, jr_010_4624

    ld b, $24
    cp $03
    jr z, jr_010_4624

    ld b, $29
    cp $09
    jr z, jr_010_4624

    ld b, $00

jr_010_4624:
    ld [hl], b
    ret


jr_010_4626:
    push hl
    ld b, d
    bit 7, b
    jr z, jr_010_4636

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_010_4636:
    ld hl, $fffb
    ld a, [$c12c]
    and $1f
    cp $05
    jr z, jr_010_465d

    ld a, [$c125]
    and $1f
    cp $05
    jr z, jr_010_465d

    ld hl, $fff5
    ld a, [$dd1a]
    and a
    jr z, jr_010_4689

    cp $04
    jr z, jr_010_4689

    ld hl, $fffa
    jr jr_010_4689

jr_010_465d:
    ldh a, [hJoypad]
    and $30
    jr nz, jr_010_4689

    ld a, [$dd1a]
    and a
    jr nz, jr_010_4689

    ld a, [$dd18]
    cp $08
    jr z, jr_010_4689

    ld c, $24
    cp $03
    jr z, jr_010_4685

    ld c, $00
    cp $09
    jr nz, jr_010_4685

    ld a, [$c213]
    cp $06
    jr nz, jr_010_4689

    ld c, $29

jr_010_4685:
    ld a, c
    ld [$dd21], a

jr_010_4689:
    add hl, de
    bit 7, h
    jr z, jr_010_4693

    ld hl, $0000
    jr jr_010_46a1

jr_010_4693:
    bit 7, b
    jr z, jr_010_46a1

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a

jr_010_46a1:
    pop de
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ret


Call_010_46a8:
    ld a, [$c21f]
    add a
    ld c, a
    ld b, $00
    ld hl, FunctionTable_10_46a8
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


FunctionTable_10_46a8:
    dw Call_10_4abb
    dw Call_10_4721
    dw Call_10_47ce
    dw Call_10_47e0
    dw Call_10_482d
    dw Call_10_484a

UnknownData_10_46c3:
    db $01,$01,$01,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00
    db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
    db $01,$00,$01,$01,$00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00 
    db $00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

Call_10_4721:
    ld a, [$c203]
    add $08
    and $f8
    ld d, a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c207]
    and $f8
    ld e, a
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86d
    add hl, bc
    ld a, [hl+]
    and $1f
    cp $10
    jr z, jr_010_47a7
    inc hl
    ld a, [hl+]
    bit 5, a
    jr z, jr_010_4753
    ld a, [$c21f]
    cp $01
    jr z, jr_010_476a
jr_010_4753:
    inc hl
    ld a, $08
    add e
    ld e, a
    ld a, [hl+]
    and $1f
    cp $10
    jr z, jr_010_47a7
    inc hl
    ld a, [hl+]
    bit 5, a
    ret z
    ld a, [$c21f]
    cp $01
    ret nz
jr_010_476a:
    ld a, [hl]
    sub $40
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20e
    add hl, bc
    push hl
    ld c, [hl]
    ld b, $00
    ld hl, $46c3
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    ret z
    ld a, $f2
    add l
    ld l, a
    ld de, $c21d
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $07
    add l
    ld l, a
    ld a, [$c207]
    cp [hl]
    jr c, jr_010_47a1
    ld a, $02
    ld [$c21f], a
    ret
jr_010_47a1:
    ld a, $03
    ld [$c21f], a
    ret
jr_010_47a7:
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4fdd
    add hl, bc
    ld a, [hl+]
    add d
    ld d, a
    ld a, [hl]
    add e
    ld e, a
    ld hl, $c21d
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, [$c207]
    cp e
    jr c, jr_010_47c8
    ld a, $04
    ld [$c21f], a
    ret
jr_010_47c8:
    ld a, $05
    ld [$c21f], a
    ret


Call_10_47ce:
    ld hl, $c21d
    ld a, [hl+]
    add $07
    ld e, a
    ld d, [hl]
    ld hl, $c207
    ld a, [de]
    sub [hl]
    ld c, a
    ld l, e
    ld h, d
    jr jr_010_47ed

Call_10_47e0:
    ld hl, $c21d
    ld a, [hl+]
    add $07
    ld h, [hl]
    ld l, a
    ld a, [$c207]
    sub [hl]
    ld c, a

jr_010_47ed:
    ld a, $f9
    add l
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_010_4825
    ld a, $03
    add l
    ld l, a
    ld a, [$c203]
    sub [hl]
    cpl
    inc a
    cp $18
    jr nc, jr_010_4825
    bit 7, c
    jp nz, Call_10_4721
    ld a, c
    cp $04
    jp c, Call_10_4721
    ld a, $0b
    add l
    ld l, a
    ld c, [hl]
    ld b, $00
    ld hl, $46c3
    add hl, bc
    ld a, [hl]
    call $0e12
    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
jr_010_4825:
    ld a, $01
    ld [$c21f], a
    jp Call_10_4721


Call_10_482d:
    ld hl, $c203
    ld a, [$c21d]
    sub [hl]
    jr nc, jr_010_4838
    cpl
    inc a
jr_010_4838:
    cp $18
    jr nc, jr_010_488b
    ld a, $04
    add l
    ld l, a
    ld a, [$c21e]
    sub [hl]
    ret c
    cp $04
    ret c
    jr jr_010_4862
Call_10_484a:
    ld hl, $c21d
    ld a, [$c203]
    sub [hl]
    jr nc, jr_010_4855
    cpl
    inc a
jr_010_4855:
    cp $18
    jr nc, jr_010_488b
    inc hl
    ld a, [$c207]
    sub [hl]
    ret c
    cp $04
    ret c
jr_010_4862:
    ld a, $1a
    ld [$c82f], a
    ld [$c835], a
    ld de, $c21d
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc de
    ld a, [de]
    and $f8
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86d
    add hl, bc
    ld e, l
    ld d, h
    call Call_010_7d85
    ld hl, $c0a4
    dec [hl]
jr_010_488b:
    xor a
    ld [$c21f], a
    ret


Call_010_4890:
    ldh a, [$ff94]
    bit 6, a
    ret z
    ld a, [$c117]
    rla
    jr nc, jr_010_48d1
    ld hl, $ff91
    set 7, [hl]
    inc hl
    set 2, [hl]
    ld b, $ff
    ld a, [$c201]
    rra
    jr nc, jr_010_48ad
    ld b, $01
jr_010_48ad:
    ld hl, $c207
    ld a, [hl]
    add b
    ld [hl], a
    ld hl, $c133
    ld b, $01
    ld de, $c201
    ld a, [de]
    rra
    jr nc, jr_010_48c3
    ld hl, $c141
    dec b
jr_010_48c3:
    ld a, [hl+]
    rla
    ret nc
    inc hl
    inc hl
    ld a, [hl]
    and a
    ret z
    ld a, [de]
    and $fe
    or b
    ld [de], a
    ret
jr_010_48d1:
    ld hl, $ff91
    res 7, [hl]
    inc hl
    ld a, [hl]
    and $f3
    ld [hl+], a
    inc hl
    res 6, [hl]
    ld hl, $dd6e
    ld de, $dd5d
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $dd65
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_010_48f4:
    ldh a, [$ff91]
    rra
    ret c
    ld a, [$dd21]
    cp $ff
    ret z
    add a
    ld c, a
    ld b, $00
    ld hl, UnknownData_10_4fe9
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$dd21]
    ld hl, $dd22
    cp [hl]
    jr z, jr_010_4931
    ld [$dd22], a
    ld hl, $c201
    ld a, [de]
    ld b, a
    ld a, [hl]
    and $01
    or b
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld bc, $0008
    add hl, bc
    xor a
    ld [hl], a
    ld [$dd23], a
    ld hl, $ff91
    res 2, [hl]
    ret
jr_010_4931:
    inc de
    inc de
    ld l, e
    ld h, d
    ld a, [$dd23]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_010_494a
    xor a
    ld [$dd23], a
    ld hl, $ff91
    set 2, [hl]
    ret
jr_010_494a:
    ld hl, $c20b
    cp [hl]
    ret nc
    xor a
    ld [hl], a
    ld hl, $dd23
    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $ff91
    res 2, [hl]
    ret


Call_010_495f:
    ld hl, $dd72
jr_010_4962:
    push bc
    ld a, [hl]
    push hl
    and a
    jr nz, jr_010_496d
    call Call_010_499c
    jr jr_010_4994
jr_010_496d:
    ld e, l
    ld d, h
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, [hl]
    ld c, l
    ld b, h
    ld hl, $4994
    push hl
    add a
    push bc
    ld c, a
    ld b, $00
    ld hl, $4990
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $e4
    ld c, c
    dec l
    ld c, d

jr_010_4994:
    pop hl
    pop bc
    inc hl
    inc hl
    dec c
    jr nz, jr_010_4962
    ret


Call_010_499c:
    inc hl
    dec [hl]
    ret nz

    ld a, [$dd17]
    bit 6, a
    ret z

    push hl
    call Call_1080
    pop de
    dec de
    ld a, b
    ld [de], a
    inc [hl]
    inc hl
    ld a, $42
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, [$c203]
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    push hl
    ld a, $09
    call Call_1d18
    ld hl, $c207
    add [hl]
    pop hl
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $f9
    add l
    ld l, a
    ld a, $30
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld a, $67
    ld [$c833], a
    ld [$c835], a
    ret


    push de
    ld hl, $fffa
    add hl, bc
    ld d, [hl]
    ld a, $fb
    add l
    ld l, a
    ld bc, hOAMDMAFunction
    ld a, d
    and a
    jr z, jr_010_49f8

    ld bc, $0080

jr_010_49f8:
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $c0
    add [hl]
    ld [hl-], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ld a, $0b
    add l
    ld l, a
    dec [hl]
    jr nz, jr_010_4a16

    ld a, $06
    ld [hl-], a
    ld a, [hl]
    xor $01
    ld [hl+], a

jr_010_4a16:
    dec hl
    dec hl
    dec [hl]
    pop de
    jp nz, Jump_010_4a73

    ld a, $20
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    inc [hl]
    ld a, $ef
    add l
    ld l, a
    ld a, $11
    ld [hl], a
    ret


    push de
    ld hl, $fffa
    add hl, bc
    ld d, [hl]
    ld a, $fb
    add l
    ld l, a
    ld bc, hOAMDMAFunction
    ld a, d
    and a
    jr z, jr_010_4a41

    ld bc, $0080

jr_010_4a41:
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl-], a
    dec hl
    dec hl
    ld a, $c0
    add [hl]
    ld [hl-], a
    ld a, $ff
    adc [hl]
    ld [hl], a
    ld a, $0b
    add l
    ld l, a
    dec [hl]
    jr nz, jr_010_4a5f

    ld a, $08
    ld [hl-], a
    ld a, [hl]
    xor $01
    ld [hl+], a

jr_010_4a5f:
    dec hl
    dec hl
    dec [hl]
    pop de
    jr nz, jr_010_4a73

    ld a, $f4
    add l
    ld l, a
    xor a
    ld [hl], a
    xor a
    ld [de], a
    inc de
    ld a, [$dd7a]
    ld [de], a
    ret


Jump_010_4a73:
jr_010_4a73:
    ld a, $f7
    add l
    ld l, a
    push hl
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    sub $08
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, b
    and $f8
    rrca
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $c86d
    add hl, bc
    ld a, [hl]
    pop hl
    and $1f
    cp $01
    ret z

    ld a, $fd
    add l
    ld l, a
    xor a
    ld [hl], a
    ld [de], a
    inc de
    ld a, $13
    add l
    ld l, a
    ld b, $00
    ld a, [hl]
    and a
    jr nz, jr_010_4aaf

    ld b, $20

jr_010_4aaf:
    ld a, $f9
    add l
    ld l, a
    ld a, [hl]
    add b
    ld hl, $dd7a
    add [hl]
    ld [de], a
    ret

;Removed debug function or unused function?
Call_10_4abb:
    ret


Call_10_4abc:
    xor a
    ld [$c811], a
    ld [$c812], a
    ld a, [$dd18]
    cp $02
    jr nz, jr_010_4ad5
    call Call_010_4dce
    ldh a, [$ff91]
    bit 1, a
    ret nz
    jp Jump_010_4c39
jr_010_4ad5:
    ldh a, [$ff91]
    bit 1, a
    ret nz
    ld a, [$dd18]
    ld c, a
    ld b, $00
    ld hl, $4dc1
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_010_4c39
    xor a
    ld [$c814], a
    ld b, $01
    ld de, $c207
    ld hl, $c13a
    ld a, [hl+]
    rla
    jr nc, jr_010_4aff
    inc hl
    inc hl
    ld a, [hl+]
    and a
    jr nz, jr_010_4b78
jr_010_4aff:
    dec b
    ld hl, $c133
    ld a, [hl+]
    rla
    jp nc, Jump_010_4bf4
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    and a
    jr nz, jr_010_4b35
    ld a, [$c148]
    rla
    jp nc, Jump_010_4bf4
    ld a, [$c14b]
    and a
    jp z, Jump_010_4bf4
    ld a, [$c149]
    cp $9d
    jp nz, Jump_010_4bf4
    xor a
    ld [$c117], a
    xor a
    ld [$c11e], a
    ld a, $01
    ld [$c814], a
    jp Jump_010_4bd7
jr_010_4b35:
    ld a, [$c148]
    rla
    jr nc, jr_010_4b52
    ld a, [$c149]
    cp $9d
    jr nz, jr_010_4b52
    xor a
    ld [$c117], a
    xor a
    ld [$c11e], a
    ld a, $01
    ld [$c814], a
    jp Jump_010_4bd7
jr_010_4b52:
    ld a, [$c141]
    rla
    jp nc, Jump_010_4bd7
    jp Jump_010_4c39


Call_10_4b5c:
    ld a, [$c148]
    rla
    jp nc, Jump_010_4bd7
    ld a, [$c14b]
    and a
    jp z, Jump_010_4bd7
    ld a, [$c149]
    cp $9d
    jr nz, jr_010_4bbb
    ld a, $01
    ld [$c814], a
    jr Jump_010_4bd7
jr_010_4b78:
    inc hl
    inc hl
    ld a, [hl-]
    ld [$c813], a
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [$c148]
    rla
    jr nc, jr_010_4ba6
    ld a, [$c14b]
    and a
    jr z, jr_010_4ba6
    ld a, [$c149]
    cp $9d
    jp nz, jr_010_4b99
    jp Jump_010_4c39
jr_010_4b99:
    ld a, [$c14e]
    ld c, a
    ld a, [$c813]
    cp c
    jr z, jr_010_4bbb
    jp Jump_010_4c39
jr_010_4ba6:
    ld a, [$c141]
    rla
    jr nc, Jump_010_4bd7
    ld a, [hl]
    cp $9d
    jp nz, Jump_010_4bb5
    jp Jump_010_4c39
Jump_010_4bb5:
    ld a, [$c144]
    and a
    jr z, Jump_010_4bd7
jr_010_4bbb:
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_4bcb
    ld a, [$c213]
    cp $05
    jr nc, jr_010_4bcb
    jr Jump_010_4c39
jr_010_4bcb:
    ld hl, $c203
    dec [hl]
    dec [hl]
    ld hl, $dd51
    dec [hl]
    dec [hl]
    jr Jump_010_4c39
Jump_010_4bd7:
    inc hl
    inc hl
    ld a, [hl]
    ld [$c811], a
    ld a, b
    ld [$c812], a
    ld a, [$dd53]
    add [hl]
    ld [de], a
    inc de
    xor a
    ld [de], a
    dec de
    ld hl, $c209
    bit 7, [hl]
    jr z, Jump_010_4bf4
    xor a
    ld [hl+], a
    ld [hl], a
Jump_010_4bf4:
    ld a, [$c814]
    and a
    jp nz, Jump_010_4c39
    ld b, $01
    ld hl, $c148
    ld a, [hl+]
    rla
    jr c, jr_010_4c0c
    dec b
    ld hl, $c141
    ld a, [hl+]
    rla
    jr nc, Jump_010_4c39
jr_010_4c0c:
    inc hl
    inc hl
    ld a, [hl]
    and a
    jr nz, jr_010_4c14
    jr Jump_010_4c39
jr_010_4c14:
    ld [$c811], a
    ld a, b
    ld [$c812], a
    and a
    jr z, jr_010_4c27
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    ld [$c813], a
    dec hl
    dec hl
jr_010_4c27:
    ld a, [$dd53]
    add [hl]
    ld [de], a
    inc de
    xor a
    ld [de], a
    dec de
    ld hl, $c209
    bit 7, [hl]
    jr nz, Jump_010_4c39
    ld [hl+], a
    ld [hl], a
Jump_010_4c39:
    ld de, $c203
    ld hl, $c11e
    ld a, [hl+]
    rla
    jr c, jr_010_4c4a
    ld hl, $c117
    ld a, [hl+]
    rla
    jr nc, jr_010_4c7b
jr_010_4c4a:
    ld a, [$c120]
    cp $05
    jr nc, jr_010_4c7b
    ld a, [$dd18]
    cp $09
    jr nz, jr_010_4c63
    ld a, [$c11a]
    cp $04
    jr c, jr_010_4c7b
    cp $fd
    jr nc, jr_010_4c7b
jr_010_4c63:
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_010_4c6b
    cpl
    inc a
jr_010_4c6b:
    ld b, a
    ld a, [$dd51]
    add b
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    dec de
    dec de
    dec de
jr_010_4c7b:
    ld a, [$c205]
    rla
    ret c
    ld hl, $c125
    ld a, [hl]
    and $c0
    jr z, jr_010_4c8f
    ld a, [$dd18]
    cp $01
    jr z, jr_010_4cc4
jr_010_4c8f:
    ld a, [hl+]
    rla
    jp c, Jump_010_4d67
    ld hl, $c125
    ld a, [hl+]
    rla
    rla
    jr c, jr_010_4cb8
    ldh a, [$ff94]
    bit 6, a
    jr nz, jr_010_4cc4
    ld hl, $c12c
    ld a, [hl+]
    rla
    jp c, Jump_010_4d67
    rla
    jr nc, jr_010_4cc4
    ld a, [$dd18]
    cp $01
    jr z, jr_010_4cc4
    cp $05
    jr z, jr_010_4cc4
jr_010_4cb8:
    ld a, [$dd1a]
    and a
    jp z, Jump_010_4d67
    cp $04
    jp nc, Jump_010_4d67
jr_010_4cc4:
    ldh a, [$ff92]
    bit 6, a
    ret nz
    ld hl, $dd3b
    ld a, [hl]
    cp $02
    jr z, jr_010_4cd3
    inc [hl]
    ret
jr_010_4cd3:
    ld de, $0080
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
    ld a, $01
    ld [$c21f], a
    xor a
    ld hl, $dd28
    ld [hl+], a
    ld [hl], a
    ld [$dd1f], a
    ld [$c21b], a
    ld c, $83
    ld a, [$dd18]
    cp $08
    jr z, jr_010_4d4e
    cp $0b
    jr nz, jr_010_4d11
    ld a, $ff
    ld [$dd21], a
    ld hl, $ff92
    set 5, [hl]
    jr jr_010_4d4e
jr_010_4d11:
    cp $0c
    jr z, jr_010_4d4e
    ld b, $26
    cp $03
    jr nz, jr_010_4d24
    ld a, [$c213]
    cp $05
    jr z, jr_010_4d4a
    jr jr_010_4d43
jr_010_4d24:
    cp $09
    jr nz, jr_010_4d34
    ld a, $0d
    ld [$c830], a
    ld [$c835], a
    ld c, $85
    jr jr_010_4d4e
jr_010_4d34:
    ld b, $0f
    ld hl, $dd17
    bit 6, [hl]
    jr nz, jr_010_4d4a
    ld b, $11
    cp $0a
    jr z, jr_010_4d4a
jr_010_4d43:
    ld b, $16
    ld hl, $ff91
    res 4, [hl]
jr_010_4d4a:
    ld hl, $dd21
    ld [hl], b
jr_010_4d4e:
    ld a, c
    ld [$dd1c], a
    ld hl, $ff91
    res 7, [hl]
    set 6, [hl]
    ld hl, $ff92
    set 7, [hl]
    set 6, [hl]
    ld a, [$dd69]
    ld [$dd59], a
    ret


Jump_010_4d67:
    inc hl
    inc hl
    xor a
    ld [$dd3b], a
    ld a, [$c811]
    cp [hl]
    jr z, jr_010_4d85
    ld a, [$c812]
    and a
    jr z, jr_010_4dac
    ld a, [$c132]
    ld b, a
    ld a, [$c813]
    cp b
    jr nz, jr_010_4dac
    jr jr_010_4d97
jr_010_4d85:
    ld a, [$c812]
    and a
    jr nz, jr_010_4d97
    ld hl, $c125
    xor a
    ld c, $07
jr_010_4d91:
    ld [hl+], a
    dec c
    jr nz, jr_010_4d91
    jr jr_010_4da2
jr_010_4d97:
    ld hl, $c12c
    xor a
    ld c, $07
jr_010_4d9d:
    ld [hl+], a
    dec c
    jr nz, jr_010_4d9d
    ret


jr_010_4da2:
    ld hl, $c12c
    ld a, [hl+]
    and $c0
    ret z
    inc hl
    jr jr_010_4dad
jr_010_4dac:
    dec hl
jr_010_4dad:
    ld a, [hl]
    bit 7, a
    jr nz, jr_010_4db4
    cpl
    inc a
jr_010_4db4:
    ld l, e
    ld h, d
    ld b, a
    ld a, [$dd51]
    add b
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


UnknownData_0c_4dc1:
db $00,$01,$01,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00


Call_010_4dce:
    ldh a, [$ff94]
    rra
    ret c
    ld a, [$dd1d]
    cp $02
    ret nc
    and a
    jr nz, jr_010_4df9
    ld de, $c133
    ld a, [$c201]
    rra
    jr c, jr_010_4de7
    ld de, $c141
jr_010_4de7:
    ld a, [de]
    and $1f
    cp $0c
    jr z, jr_010_4e2c
    ld hl, $0007
    add hl, de
    ld a, [hl]
    cp $0c
    jr z, jr_010_4e2c
    jr jr_010_4e19
jr_010_4df9:
    ld a, [$c133]
    and $1f
    cp $0c
    jr z, jr_010_4e09
    ld a, [$c13a]
    cp $0c
    jr nz, jr_010_4e19
jr_010_4e09:
    ld a, [$c141]
    and $1f
    cp $0c
    jr z, jr_010_4e2c
    ld a, [$c148]
    cp $0c
    jr z, jr_010_4e2c
jr_010_4e19:
    ld hl, $c206
    ld a, [hl-]
    cpl
    add $01
    ld e, a
    ld a, [hl+]
    cpl
    adc $00
    ld d, a
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl], a
jr_010_4e2c:
    ld hl, $c117
    ld a, [hl+]
    rla
    jr c, jr_010_4e39
    ld hl, $c11e
    ld a, [hl+]
    rla
    ret nc
jr_010_4e39:
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_010_4e41
    cpl
    inc a
jr_010_4e41:
    ld b, a
    ld de, $c203
    ld a, [$dd51]
    add b
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    dec de
    dec de
    dec de
    ret

Call_10_4e55:
    ldh a, [$ff91]
    and $02
    ret nz
    ld b, $02
    ld hl, $c133
    ld a, [hl+]
    rla
    jr c, jr_010_4e6b
    ld hl, $c141
    ld a, [hl+]
    rla
    ret nc
    ld b, $fe
jr_010_4e6b:
    ld hl, $c207
    ld a, [hl]
    add b
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c125], a
    ld hl, $c209
    ld [hl+], a
    ld [hl], a
    ret


UnknownData_10_4e7e:
db $01,$01,$01,$01,$00,$00,$00,$00,$00,$02,$02,$02,$02

UnknownData_10_4e8b:
db $BF,$40,$42
db $43,$42,$43,$BF,$40,$42,$43,$42,$43,$BF,$40,$BF,$40,$BF,$40,$BF
db $40,$BF,$40

UnknownData_10_4ea1:
db $00,$00,$FC,$FF,$80,$FF,$7C,$FF

UnknownData_10_4ea9:
db $01,$01,$00,$00,$00
db $00,$00,$02,$03,$05,$00,$00,$00,$00,$00,$00,$06,$06,$06,$06,$06
db $06,$06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$06,$06,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$02,$00,$00,$00,$00,$00,$06,$00,$06,$00,$08,$00,$06,$00
db $06,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$06,$00,$00,$07,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

UnknownData_10_4fa9:
db $00,$00,$00,$04,$04,$04,$04,$04

UnknownData_10_4fb1:
db $00,$00,$00,$00,$06,$00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$06,$06,$06,$06,$06,$06,$06,$06

UnknownData_10_4fc9:
db $00,$00,$40,$00,$00,$00,$C0,$FF,$40,$00,$00,$00,$90,$FF,$00,$00,$80,$00,$00,$00

UnknownData_10_4fdd:
db $00,$00,$00,$F8,$F8,$00,$F8,$F8,$F0,$00,$F0,$F8

UnknownData_10_4fe9:
db $5D,$50,$60,$50,$67,$50,$6A,$50,$6D,$50,$72,$50,$75,$50,$78,$50,$7C,$50,$81,$50,$87
db $50,$98,$50,$9D,$50,$A2,$50,$A7,$50,$AA,$50,$AE,$50,$B1,$50,$B9
db $50,$C2,$50,$C7,$50,$CC,$50,$D1,$50,$D4,$50,$DC,$50,$E2,$50,$F5
db $50,$FA,$50,$02,$51,$07,$51,$0A,$51,$11,$51,$18,$51,$1F,$51,$27
db $51,$2D,$51,$30,$51,$33,$51,$3A,$51,$3D,$51,$40,$51,$45,$51,$48
db $51,$4E,$51,$54,$51,$59,$51,$5E,$51,$61,$51,$66,$51,$6C,$51,$71
db $51,$74,$51,$7E,$51,$7E,$51,$83,$51,$88,$51,$8D,$51,$91,$51,$00
db $00,$00,$02,$00,$03,$03,$03,$03,$00,$06,$00,$00,$04,$00,$00,$08
db $00,$06,$06,$00,$0A,$0C,$00,$0A,$0C,$00,$52,$00,$13,$00,$52,$01
db $07,$07,$00,$2E,$02,$09,$09,$04,$00,$0C,$00,$08,$08,$08,$08,$08
db $08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$0E,$00,$06,$06,$00,$10
db $00,$06,$06,$00,$12,$00,$06,$06,$00,$14,$00,$00,$16,$00,$09,$00
db $2E,$00,$00,$1A,$00,$03,$03,$03,$03,$03,$00,$1C,$00,$04,$04,$04
db $04,$04,$04,$00,$20,$00,$08,$08,$00,$22,$00,$06,$06,$00,$24,$00
db $04,$04,$00,$26,$00,$00,$28,$00,$06,$06,$06,$06,$01,$00,$2A,$00
db $04,$03,$03,$00,$2A,$03,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
db $05,$05,$05,$05,$05,$05,$00,$2A,$06,$0A,$01,$00,$2C,$00,$01,$01
db $01,$10,$01,$00,$20,$00,$04,$04,$00,$26,$04,$00,$0E,$03,$06,$06
db $06,$06,$00,$10,$03,$06,$06,$06,$06,$00,$12,$03,$06,$06,$06,$06
db $00,$28,$06,$06,$06,$06,$06,$01,$00,$54,$06,$04,$09,$09,$00,$32
db $00,$00,$34,$00,$00,$34,$00,$03,$03,$03,$03,$00,$36,$00,$00,$38
db $00,$00,$54,$00,$08,$08,$00,$54,$0A,$00,$2E,$02,$10,$10,$04,$00
db $54,$06,$04,$10,$10,$00,$54,$00,$0E,$0E,$00,$54,$03,$01,$06,$00
db $54,$0C,$00,$04,$02,$08,$10,$00,$50,$00,$18,$18,$18,$00,$50,$04
db $80,$30,$00,$50,$00,$00,$06,$02,$03,$03,$03,$03,$04,$06,$20,$00
db $06,$0A,$10,$10,$00,$56,$00,$08,$20,$00,$56,$03,$05,$05,$00,$56
db $06,$08,$00,$26,$08,$00


Call_10_5194:
    ld a, [$dd18]
    cp $0c
    jr z, jr_010_51c4
    cp $03
    jr nz, jr_010_51a5
    ld a, [$c213]
    cp $05
    ret c
Jump_010_51a5:
jr_010_51a5:
    ldh a, [$ff93]
    bit 5, a
    ret nz
    ld hl, $c117
    ld bc, $0007
    ld a, [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    add hl, bc
    or [hl]
    bit 5, a
    jp nz, Jump_010_5266
jr_010_51c4:
    ld a, [$c141]
    rla
    jr c, jr_010_51cf
    ld a, [$c148]
    rla
    ret nc
jr_010_51cf:
    ld a, [$c133]
    rla
    jr c, jr_010_51da
    ld a, [$c13a]
    rla
    ret nc
jr_010_51da:
    ld a, [$dd18]
    cp $0c
    jr z, jr_010_522e
    ld b, $00
    ld hl, $c149
    ld a, [hl+]
    cp $a5
    jr z, jr_010_51f4
    inc b
    ld hl, $c13b
    ld a, [hl+]
    cp $a5
    jr nz, jr_010_521a
jr_010_51f4:
    inc hl
    ld a, [hl-]
    and a
    ret z
    ld e, l
    ld d, h
    dec de
    dec de
    inc hl
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
    ld a, $01
    add l
    ld l, a
    ld a, $c2
    adc h
    ld h, a
    ld a, [hl]
    and $01
    xor b
    ret z
    ld a, $22
    ld [de], a
    jr jr_010_5266
jr_010_521a:
    ld a, [$c117]
    rla
    jr c, jr_010_5228
    ld hl, $c136
    ld a, [$c144]
    or [hl]
    ret z
jr_010_5228:
    ld a, [$dd18]
    cp $02
    ret z
jr_010_522e:
    ld a, [$c133]
    rla
    ret nc
    ld a, [$c141]
    rla
    ret nc
    ld hl, $ff91
    set 7, [hl]
    inc hl
    ld a, [hl]
    or $0c
    ld [hl+], a
    inc hl
    set 6, [hl]
    ld de, $dd6e
    ld hl, $dd5d
    ld a, [hl]
    ld [de], a
    ld [hl], $0d
    inc de
    inc hl
    inc hl
    ld a, [hl]
    ld [de], a
    ld [hl], $0d
    inc de
    ld hl, $dd65
    ld a, [hl]
    ld [de], a
    ld [hl], $01
    inc de
    inc hl
    inc hl
    ld a, [hl]
    ld [de], a
    ld [hl], $01
    ret


Jump_010_5266:
jr_010_5266:
    xor a
    ld bc, $5fb0
    ld de, $000e
    ld hl, $c11e
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
    bit 5, [hl]
    jr nz, jr_010_529f
    xor a
    ld bc, $5f9a
    ld hl, $c117
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
    bit 5, [hl]
    jr nz, jr_010_529f
    inc a
    add hl, de
jr_010_529f:
    ld [$c1f1], a
    ld a, [hl+]
    ld e, l
    ld d, h
    and $1f
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    rst $08


FunctionTable_10_52ad:
dw Call_10_5315
dw Call_10_53c8
dw Call_10_5630


Jump_010_52b3:
    ld a, $0c
    ld [$dd18], a
    xor a
    ld [$c213], a
    ld a, $36
    ld [$dd21], a
    ld hl, $ff91
    ld a, [hl]
    or $d8
    ld [hl+], a
    ld a, [hl]
    or $60
    ld [hl], a
    ld hl, $dd24
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl], a
    ld a, $01
    ld [$dd1a], a
    ld a, $83
    ld [$dd1c], a
    ld a, [$dd69]
    ld [$dd59], a
    ld bc, hOAMDMAFunction
    ld de, $0000
    call Call_2b22
    ld bc, $ff00
    ld a, [$c201]
    rra
    jr nc, jr_010_5306
    ld bc, $0100
jr_010_5306:
    ld hl, $c209
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $4d
    ld [$c830], a
    ld [$c835], a
    ret


Call_10_5315:
    ld a, [$c1f1]
    and a
    jr nz, jr_010_5343
    ld a, [$dd18]
    cp $09
    jr nz, jr_010_5343
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
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
    cp $26
    ret z
    cp $05
    ret z
    cp $57
    ret z
    dec de
    dec de
    dec de
    dec de
    dec de
jr_010_5343:
    ld a, [$dd18]
    cp $03
    jr nz, Call_10_5354
    ld a, [$c213]
    cp $05
    jr nz, Call_10_5354
    jp Jump_010_52b3


Call_10_5354:
    ld a, $80
    ld [$c836], a
    ld a, [$dd17]
    bit 6, a
    jr nz, jr_010_5397
    ld b, $0a
    rla
    jr nc, jr_010_5367
    ld b, $00
jr_010_5367:
    ld hl, $dd21
    ld [hl], b
    ld a, $ff
    ld [$dd22], a
    ld a, $1e
    ld [$c82d], a
    ld a, $03
    ld [$c830], a
    ld [$c835], a
    ld hl, $dd2b
    ld [hl], $08
    inc hl
    xor a
    ld [hl], a
    ld [$c21a], a
    ld [$c213], a
    ld hl, $ff91
    ld a, [hl]
    or $03
    ld [hl], a
    ld a, $0c
    ldh [hFF90], a
    ret
jr_010_5397:
    ld a, $34
    ld [$c830], a
    ld [$c835], a
    ld a, $39
    ld [$c836], a
    ld hl, $dd2b
    ld [hl], $08
    inc hl
    xor a
    ld [hl], a
    ld [$c21a], a
    ld a, $04
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    ld a, $01
    ld [$c213], a
    ld a, $0c
    ldh [hFF90], a
    ld hl, $ff91
    set 0, [hl]
    ret


Call_10_53c8:
    ld a, [de]
    ld c, a
    ld b, $00
    ld hl, $5fd0
    add hl, bc
    ld a, [hl]
    rst $08


FunctionTable_10_53d2:
dw Call_10_5315
dw Call_10_53f4
dw Call_10_5469
dw Call_10_5531
dw Call_10_558d
dw Call_10_5698
dw Call_10_56d3
dw Call_10_5717
dw Call_10_5762
dw Call_10_5792
dw Call_10_5793
dw Call_10_5867
dw Call_10_5882
dw Call_10_58df
dw Call_10_5997
dw Call_10_5998
dw Call_10_59a7


Call_10_53f4:
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_5405
    ld a, [$c213]
    cp $05
    jr nz, jr_010_5405
    jp Jump_010_52b3
jr_010_5405:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c207
    add hl, bc
    ld e, [hl]
    ld hl, $dd2b
    ld [hl], $06
    inc hl
    ld [hl], $00
    ld a, $02
    ld [$c213], a
    ld a, $01
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    ld hl, $c205
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld bc, hOAMDMAFunction
    ld a, [$c207]
    cp e
    jr c, jr_010_5442
    ld bc, $0080
jr_010_5442:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c21a], a
    ld a, $0c
    ldh [hFF90], a
    ld a, $80
    ld [$c836], a
    ld a, $03
    ld [$c82e], a
    ld a, $47
    ld [$c82d], a
    ld [$c835], a
    ld hl, $ff91
    set 0, [hl]
    res 1, [hl]
    ret

Call_10_5469:
    ld a, [$dd1a]
    and a
    jp nz, Call_10_5315
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_5481
    ld a, [$c213]
    cp $05
    jr nz, jr_010_5481
    jp Jump_010_52b3
jr_010_5481:
    cp $00
    jr z, jr_010_54ab
    cp $0a
    jr z, jr_010_54ab
    cp $08
    jr z, jr_010_54ab
    cp $09
    jp nz, Call_10_5315
    ld a, [$c1f1]
    and a
    jr nz, jr_010_54ab
    ld hl, $0005
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
    bit 7, [hl]
    ret nz
jr_010_54ab:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    push hl
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $5fc6
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jp z, Call_10_5315
    cp $01
    jr z, jr_010_54d7
Jump_010_54ce:
    ld a, $07
    ld [$c21a], a
    ld d, $30
    jr jr_010_54dd
jr_010_54d7:
    xor a
    ld [$c21a], a
    ld d, $0c
jr_010_54dd:
    ld a, $34
    ld [$c82d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld a, $f4
    add l
    ld l, a
    ld b, $00
    ld a, [$c207]
    cp [hl]
    jr nc, jr_010_54f7
    inc b
jr_010_54f7:
    ld hl, $c20c
    ld [hl], b
    ld hl, $c201
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, $02
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    ld hl, $dd2c
    xor a
    ld [hl-], a
    ld [hl], d
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$c213], a
    ld a, $80
    ld [$c836], a
    ld a, $0d
    ldh [hFF90], a
    ld hl, $ff91
    set 0, [hl]
    ret


Call_10_5531:
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_5542
    ld a, [$c213]
    cp $05
    jr nz, jr_010_5542
    jp Jump_010_52b3
jr_010_5542:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c207
    add hl, bc
    ld a, [hl]
    ld [$c20c], a
    ld hl, $dd2b
    ld [hl], $02
    inc hl
    ld [hl], $30
    ld a, $04
    ld [$c213], a
    ld a, $03
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    xor a
    ld [$c21a], a
    ld a, $0c
    ldh [hFF90], a
    ld a, $80
    ld [$c836], a
    ld a, $48
    ld [$c82d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ld hl, $ff91
    set 0, [hl]
    ret


Call_10_558d:
    ld a, [$c1f1]
    and a
    jr z, jr_010_55a3
    cp $01
    ret nz
    ld a, [$c133]
    rla
    ret nc
    ld a, [$c141]
    rla
    jp c, Call_10_5315
    ret
jr_010_55a3:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c213
    add hl, bc
    ld a, [hl]
    cp $01
    ret nz
Jump_010_55b7:
    ld a, [$dd1a]
    and a
    jr z, jr_010_55c0
    cp $04
    ret nz
jr_010_55c0:
    ld a, [$dd18]
    cp $00
    jr z, jr_010_55d4
    cp $0a
    jr z, jr_010_55d4
    cp $03
    jr z, jr_010_55d4
    cp $08
    jp nz, Call_10_5315
jr_010_55d4:
    ld a, $f4
    add l
    ld l, a
    ld b, $00
    ld a, [$c207]
    cp [hl]
    jr nc, jr_010_55e1
    inc b
jr_010_55e1:
    ld hl, $c20c
    ld [hl], b
    ld hl, $c201
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, $02
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    ld hl, $dd2c
    xor a
    ld [hl-], a
    ld a, $0c
    ld [hl], a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $ff91
    ld a, [hl]
    or $03
    ld [hl], a
    ld a, $03
    ld [$c213], a
    xor a
    ld [$c21a], a
    ld a, $0d
    ldh [hFF90], a
    ld a, $80
    ld [$c836], a
    ld a, $34
    ld [$c82d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    ret


Call_10_5630:
    ld a, [$c1f1]
    cp $01
    ret z
    and a
    jr nz, jr_010_5672
    ld a, [$dd18]
    cp $09
    jr nz, jr_010_5667
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
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
    cp $57
    ret z
    cp $13
    ret z
    cp $3f
    jr nz, jr_010_5667
    dec hl
    ld a, [hl]
    cp $13
    ret z
    dec de
    dec de
    dec de
    dec de
    dec de
jr_010_5667:
    ld a, [$dd69]
    ld hl, $dd59
    cp [hl]
    jp z, Call_10_5315
    ret
jr_010_5672:
    inc de
    ld a, [de]
    rla
    jp nc, Call_10_5315
    ld a, [$dd63]
    add a
    cpl
    inc a
    ld b, a
    ld hl, $c203
    ld a, [de]
    add [hl]
    add b
    ld [hl+], a
    ld b, $01
    ld a, [$c1f1]
    cp $03
    jr z, jr_010_5691
    ld b, $ff
jr_010_5691:
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add b
    ld [hl], a
    ret

Call_10_5698:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c212
    add hl, de
Jump_010_56a8:
    bit 3, [hl]
    ret nz
    set 3, [hl]
    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$dd1a], a
    ld hl, $ff91
    ld a, [hl]
    or $c3
    and $f7
    ld [hl], a
    ld hl, $ff92
    ld a, [hl]
    or $84
    ld [hl], a
    ld a, $03
    ld [$c82d], a
    ld [$c835], a
    ret

Call_10_56d3:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c213
    add hl, de
    ld a, [hl]
    cp $03
    ret z
    cp $04
    jr nz, jr_010_56f9
    ld a, [$dd1a]
    cp $01
    jp c, Jump_010_5700
    cp $04
    jp nc, Jump_010_5700
    ret
jr_010_56f9:
    ld a, $ff
    add l
    ld l, a
    jp Jump_010_56a8
Jump_010_5700:
    ld a, $f0
    add l
    ld l, a
    ld a, [$c203]
    add $08
    cp [hl]
    ret c
    ld a, $10
    add l
    ld l, a
    ld hl, $ff91
    set 1, [hl]
    jp jr_010_54d7


Call_10_5717:
    ld a, [$c1f1]
    and a
    jr nz, jr_010_5725
    ld a, [$dd18]
    cp $09
    jr nz, jr_010_5725
    ret
jr_010_5725:
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_5736
    ld a, [$c213]
    cp $05
    jr nz, jr_010_5736
    jp Jump_010_52b3
jr_010_5736:
    ld a, [$dd1a]
    cp $01
    jp c, Jump_010_5743
    cp $04
    jp c, Call_10_5315
Jump_010_5743:
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c203
    add hl, de
    ld a, [$c203]
    cp [hl]
    jp c, Call_10_5315
    ld hl, $ff91
    set 1, [hl]
    jp jr_010_54d7


Call_10_5762:
    ld a, [$c1f1]
    and a
    jr z, jr_010_5778
    cp $01
    ret nz
    ld a, [$c133]
    rla
    ret nc
    ld a, [$c141]
    rla
    jp c, Call_10_5315
    ret
jr_010_5778:
    ld hl, $0005
    add hl, de
    ld l, [hl]
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
    jp z, Jump_010_55b7
    ret nz
    jp Jump_010_55b7


;deleted debug function?
Call_10_5792:
    ret


Call_10_5793:
    ld a, [$dd18]
    cp $0b
    ret z
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [$c20c], a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20a
    add hl, bc
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld d, $00
    ld b, $09
    ld a, [$c207]
    cp [hl]
    jr nc, jr_010_57bf
    inc d
    ld b, $f9
jr_010_57bf:
    ld a, $fa
    add l
    ld l, a
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, [hl-]
    add b
    ld b, a
    cp $08
    jr c, jr_010_57e9
    ld d, $98
    ld a, [$c705]
    cp $05
    jr z, jr_010_57e1
    rra
    jr nc, jr_010_57e1
    ld d, $e8
jr_010_57e1:
    ld a, b
    cp d
    jr nc, jr_010_57e9
    ld a, b
    ld [$c207], a
jr_010_57e9:
    dec hl
    dec hl
    dec hl
    ld a, [$c125]
    and $c0
    jr nz, jr_010_5800
    ld a, [$c12c]
    and $c0
    jr nz, jr_010_5800
    ld a, [hl]
    add $07
    ld [$c203], a
jr_010_5800:
    dec hl
    ld a, $03
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl+], a
    res 2, [hl]
    ld a, $06
    add l
    ld l, a
    set 0, [hl]
    ld a, $0c
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$dd1a], a
    ld hl, $c213
    ld e, [hl]
    ld [hl], a
    ld hl, $dd18
    ld d, [hl]
    ld a, $0b
    ld [hl], a
    ld a, $32
    ld [$dd21], a
    ld hl, $ff91
    ld a, [hl]
    or $d2
    and $fb
    ld [hl+], a
    ld a, [hl]
    or $ac
    ld [hl], a
    ld a, d
    cp $0a
    jp z, $2b16
    cp $03
    ret nz
    ld a, e
    cp $05
    ret nz
    ld hl, $dd1c
    ld [hl], $00
    ld a, [$dd1a]
    and a
    jr z, jr_010_585e
    ld [hl], $83
jr_010_585e:
    ld bc, hOAMDMAFunction
    ld de, $0000
    jp Call_2b22


Call_10_5867:
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
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
    ret z
    cp $03
    ret z
    jp Call_10_5315

Call_10_5882:
    ld a, [$dd1a]
    and a
    jp nz, Call_10_5315
    ld a, [$dd18]
    cp $00
    jr z, jr_010_58a1
    cp $0a
    jr z, jr_010_58a1
    cp $08
    jr z, jr_010_58a1
    cp $03
    jr z, jr_010_58a1
    cp $09
    jp nz, Call_10_5315
jr_010_58a1:
    ld a, [$dd18]
    cp $03
    jr nz, jr_010_58b2
    ld a, [$c213]
    cp $05
    jr nz, jr_010_58b2
    jp Jump_010_52b3
jr_010_58b2:
    ld hl, $0005
    add hl, de
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
    cp $51
    jp nz, Call_10_5315
    ld a, $05
    add l
    ld l, a
    ld a, [hl]
    cp $06
    jp z, Jump_010_54ce
    cp $01
    jp z, jr_010_54d7
    cp $04
    jp z, jr_010_54d7
    jp Call_10_5315

Call_10_58df:
    ldh a, [$ff91]
    rra
    ret c
    ld a, $03
    ld [$c1f1], a
    ld hl, $c149
    ld a, [hl+]
    cp $a5
    call z, Call_010_58fc
    ld hl, $c1f1
    dec [hl]
    ld hl, $c13b
    ld a, [hl+]
    cp $a5
    ret nz
Call_010_58fc:
    ld a, [$dd18]
    cp $01
    ret z
    cp $05
    ret z
    cp $02
    ret z
    inc hl
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
    ld bc, $c202
    add hl, bc
    xor a
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $14
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, $ea
    add l
    ld l, a
    ld de, $0020
    ld b, $ff
    ld c, $00
    ld a, [$c1f1]
    cp $03
    jr z, jr_010_593e
    ld de, $ffe0
    ld b, $01
    inc c
jr_010_593e:
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $f7
    add l
    ld l, a
    ld a, [hl]
    and $fe
    or c
    ld [hl], a
    ld hl, $c207
    ld a, [hl]
    add b
    ld [hl], a
    ld hl, $c201
    ld a, [hl]
    and $fe
    or c
    ld [hl], a
    ld a, $34
    ld [$c82d], a
    ld a, $03
    ld [$c82e], a
    ld [$c835], a
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld [$c21a], a
    ld a, $0d
    ldh [hFF90], a
    ld hl, $ff91
    ld a, [hl]
    or $03
    ld [hl+], a
    ld a, $80
    ld [$c836], a
    ld a, $18
    ld [$dd2b], a
    ld a, $06
    ld [$c213], a
    ld a, $07
    ld [$dd21], a
    ld a, $ff
    ld [$dd22], a
    ret

Call_10_5997:
    ret

Call_10_5998:
    ld a, [$c1f1]
    and a
    jp z, Call_10_5315
    dec de
    ld a, [de]
    res 5, a
    ld [de], a
    jp Jump_010_51a5


Call_10_59a7:
    ld a, [$da4b]
    and $0f
    add a
    ld c, a
    ld b, $00
    ld hl, FunctionTable_10_59a7
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


FunctionTable_10_59a7:
dw Call_10_53f4
dw Call_10_5531
dw Call_10_53f4
dw Call_10_5315
dw Call_10_5315
dw Call_10_5531
dw Call_10_5315
dw Call_10_5531
dw Call_10_5315
dw Call_10_5315
dw Call_10_5315
dw Call_10_5315
dw Call_10_53f4
dw Call_10_53f4
dw Call_10_5315
dw Call_10_53f4


Call_10_59d8:
    call Call_010_5f33
    ld a, [$c213]
    rst $08


FunctionTable_10_59df:
dw Call_10_59ed
dw Call_10_5a0d
dw Call_10_5b03
dw Call_10_5bc9
dw Call_10_5d15
dw Call_10_5dc7
dw Call_10_5eda


Call_10_59ed:
    ld hl, $dd2b
    dec [hl]
    ret nz
    inc hl
    ld a, [hl]
    cp $0f
    jr nc, jr_010_5a08
    ld b, $90
    cp $0e
    jr z, jr_010_5a00
    ld b, $08
jr_010_5a00:
    inc [hl]
    dec hl
    ld [hl], b
    ld hl, $c202
    inc [hl]
    ret
jr_010_5a08:
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5a0d:
    ld c, $04
    call Call_010_495f
    ld a, [$c21a]
    rst $08


FunctionTable_10_5a16:
dw Call_10_5a20
dw Call_10_5a86
dw Call_10_5aba
dw Call_10_5ad2
dw Call_10_5adc


Call_10_5a20:
    ld hl, $dd2b
    dec [hl]
    ret nz
    inc hl
    ld a, [hl]
    cp $0e
    jr z, jr_010_5a34
    inc [hl]
    dec hl
    ld [hl], $08
    ld hl, $c202
    inc [hl]
    ret
jr_010_5a34:
    dec hl
    ld [hl], $e0
    ld hl, $c21a
    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $c205
    ld a, $01
    ld [hl+], a
    dec a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $dd73
    ld a, [hl-]
    and a
    jr nz, jr_010_5a60
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
    ld [hl], a
jr_010_5a60:
    ld hl, $dd75
    ld a, [hl-]
    and a
    jr nz, jr_010_5a75
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
jr_010_5a72:
    add hl, bc
    xor a
    ld [hl], a
jr_010_5a75:
    ld hl, $613b
    ld de, $dd72
    ld c, $08
    call CopyData
    ld a, $01
    ld [$dd7a], a
    ret


Call_10_5a86:
    ld hl, $c204
    ld a, [hl]
    add $80
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $df13
    ld a, [hl+]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    jr nz, jr_010_5aaa
    ld a, $60
    ld [$dd2b], a
    ld a, $04
    ld [$c21a], a
    ret
jr_010_5aaa:
    ld a, [$c125]
    and $c0
    ret z
    ld hl, $c21a
    inc [hl]
    ld a, $0e
    ld [$c202], a
    ret

Call_10_5aba:
    ld hl, $df13
    ld a, [hl+]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    ret nz
    ld a, $60
    ld [$dd2b], a
    ld a, $03
    ld [$c21a], a
    ret


Call_10_5ad2:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5adc:
    ld hl, $dd2b
    dec [hl]
    jr z, jr_010_5afe
    ld hl, $c204
    ld a, [hl]
    add $80
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, [$c125]
    and $c0
    ret z
    ld a, $0e
    ld [$c202], a
    ld a, $03
    ld [$c21a], a
    ret
jr_010_5afe:
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5b03:
    ld a, [$c21a]
    rst $08


FunctionTable_10_5b07:
dw Call_10_5b0d 
dw Call_10_5b96 
dw Call_10_5bbf

Call_10_5b0d:
    ld hl, $c205
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    rla
    jr c, jr_010_5b24
    ld a, [$c125]
    and $c0
    jr z, jr_010_5b36
    ld a, [$c127]
    cp $fe
    jr nc, jr_010_5b6c
jr_010_5b24:
    ld a, [$c117]
    rla
    jr nc, jr_010_5b36
    ld hl, $c203
    inc [hl]
    ld a, [$c119]
    add [hl]
    ld [hl], a
    ld hl, $0000
jr_010_5b36:
    ld a, h
    cp $02
    jr z, jr_010_5b3f
    ld bc, $0004
    add hl, bc
jr_010_5b3f:
    ld de, $c205
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $c208
    ld de, $c20a
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl-], a
    dec hl
    dec hl
    dec de
    dec de
    dec de
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $06
    ld hl, $c202
    inc [hl]
    ret
jr_010_5b6c:
    ld hl, $c203
    inc [hl]
    ld a, [$c127]
    add [hl]
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ld hl, $ff91
    res 3, [hl]
    ld a, $03
    ld [$c202], a
    ld a, $10
    ld [$dd2b], a
    ld a, $33
    ld [$c836], a
    ld a, $0e
    ld [$c82f], a
    ld [$c835], a
    ret

Call_10_5b96:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld e, l
    ld d, h
    inc de
    ld a, [de]
    ld c, a
    ld b, $00
    ld hl, $60d0
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_010_5bb5
    ld a, [de]
    inc a
    ld [de], a
    dec de
    ld a, [hl]
    ld [de], a
    ld hl, $c202
    inc [hl]
    ret
jr_010_5bb5:
    ld a, $30
    ld [$dd2b], a
    ld hl, $c21a
    inc [hl]
    ret

Call_10_5bbf:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5bc9:
    ld a, [$c21a]
    rst $08


FunctionTable_10_5bcd:
dw Call_10_5bdd
dw Call_10_5c11
dw Call_10_5c38
dw Call_10_5c5e
dw Call_10_5c8a
dw Call_10_5cb0
dw Call_10_5cf0
dw Call_10_5cfa


Call_10_5bdd:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld hl, $c205
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld bc, $ffc0
    ld a, [$c20c]
    and a
    jr z, jr_010_5bf7
    ld bc, $0040
jr_010_5bf7:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $dd2b
    ld a, $20
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ld a, $02
    ld [$c202], a
    ld a, $39
    ld [$c836], a
    ret

Call_10_5c11:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $14
    inc hl
    ld [hl], $00
    ld b, $02
    ld a, [$c20c]
    and a
    jr z, jr_010_5c25
    ld b, $04
jr_010_5c25:
    ld hl, $c21a
    ld [hl], b
    xor a
    ld hl, $c205
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $0c
    ldh [hFF90], a
    ret

Call_10_5c38:
    ld hl, $c208
    ld a, [hl]
    add $40
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    dec hl
    dec hl
    ld a, [hl]
    add $23
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $0c
    ld hl, $c21a
    inc [hl]
    ld a, $01
    ld [$c202], a
    ret

Call_10_5c5e:
    ld hl, $c208
    ld a, [hl]
    add $40
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $14
    inc hl
    inc [hl]
    ld a, [hl]
    cp $06
    jp nc, Jump_010_5cdc
    ld hl, $c21a
    inc [hl]
    ld b, $03
    ld a, [$c20c]
    and a
    jr z, jr_010_5c85
    dec b
jr_010_5c85:
    ld hl, $c202
    ld [hl], b
    ret

Call_10_5c8a:
    ld hl, $c208
    ld a, [hl]
    add $c0
    ld [hl-], a
    ld a, [hl]
    adc $ff
    ld [hl-], a
    dec hl
    dec hl
    ld a, [hl]
    add $23
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $0c
    ld hl, $c21a
    inc [hl]
    ld a, $01
    ld [$c202], a
    ret

Call_10_5cb0:
    ld hl, $c208
    ld a, [hl]
    add $c0
    ld [hl-], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $14
    ld a, $02
    ld [$c21a], a
    ld b, $02
    ld a, [$c20c]
    and a
    jr z, jr_010_5cd0
    inc b
jr_010_5cd0:
    ld hl, $c202
    ld [hl], b
    ld hl, $dd2c
    inc [hl]
    ld a, [hl]
    cp $06
    ret c
Jump_010_5cdc:
    ld hl, $dd2b
    ld [hl], $60
    ld a, $06
    ld [$c21a], a
    ld a, $04
    ld [$c202], a
    ld a, $0c
    ldh [hFF90], a
    ret

Call_10_5cf0:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $01
    ldh [hFF90], a
    ret

Call_10_5cfa:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $c0
    ld a, $06
    ld [$c21a], a
    ld a, $04
    ld [$c202], a
    ld a, $0c
    ldh [hFF90], a
    ld a, $33
    ld [$c836], a
    ret


Call_10_5d15:
    ld a, [$c21a]
    rst $08


FunctionTable_10_5d19:
dw Call_10_5d1f
dw Call_10_5d5f
dw Call_10_5dbd

Call_10_5d1f:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld [hl], $02
    inc hl
    dec [hl]
    jr z, jr_010_5d2f
    ld hl, $c202
    inc [hl]
    ret
jr_010_5d2f:
    ld hl, $c205
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld bc, hOAMDMAFunction
    ld a, [$c20c]
    ld d, a
    ld a, [$c207]
    cp d
    jr c, jr_010_5d48
    ld bc, $0080
jr_010_5d48:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c21a
    inc [hl]
    ld a, $05
    ld [$c202], a
    ld a, $0d
    ld [$c830], a
    ld [$c835], a
    ret

Call_10_5d5f:
    ld hl, $c205
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    rla
    jr c, jr_010_5d6f
    ld a, [$c125]
    and $c0
    jr nz, jr_010_5d9a
jr_010_5d6f:
    ld a, h
    cp $02
    jr z, jr_010_5d78
    ld bc, $0004
    add hl, bc
jr_010_5d78:
    ld de, $c205
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $c208
    ld de, $c20a
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl-], a
    dec hl
    dec hl
    dec de
    dec de
    dec de
    ld a, [de]
    add [hl]
    ld [hl-], a
    dec de
    ld a, [de]
    adc [hl]
    ld [hl], a
    ret
jr_010_5d9a:
    ld hl, $dd2c
    xor a
    ld [hl-], a
    ld [hl], $b8
    ld hl, $c21a
    inc [hl]
    ld a, $06
    ld [$c202], a
    ld a, $03
    ld [$c82e], a
    ld a, $0e
    ld [$c82d], a
    ld [$c835], a
    ld a, $33
    ld [$c836], a
    ret


Call_10_5dbd:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5dc7:
    ld a, [$c21a]
    rst $08


FunctionTable_10_5dcb:
dw Call_10_5dd5
dw Call_10_5e32
dw Call_10_5eae
dw Call_10_5ec7
dw Call_10_5ed5


Call_10_5dd5:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $09
    ld [hl], a
    ld hl, $c202
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $1c
    ld [$c830], a
    ld [$c835], a
    ld hl, $c203
    ld a, [$c20c]
    xor [hl]
    ld [hl], a
    ld hl, $ddaa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    inc [hl]
    ld hl, $dd2c
    dec [hl]
    ret nz
    ld hl, $c205
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld bc, $ff00
    ld a, [$c201]
    rra
    jr nc, jr_010_5e16
    ld bc, $0100
jr_010_5e16:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c21a
    inc [hl]
    ld a, $02
    ld [$c202], a
    ld hl, $ff91
    set 1, [hl]
    ld a, $0d
    ld [$c830], a
    ld [$c835], a
    ret

Call_10_5e32:
    ld a, [$c133]
    rla
    jr c, jr_010_5e3e
    ld a, [$c141]
    rla
    jr nc, jr_010_5e58
jr_010_5e3e:
    ld hl, $c20a
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
    ld a, $14
    ld [$c830], a
    ld [$c835], a
    jr jr_010_5e8d
jr_010_5e58:
    ld a, [$c205]
    rla
    jr c, jr_010_5e93
    ld hl, $c125
    ld a, [hl+]
    and $c0
    jr z, jr_010_5e8d
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_010_5e8d
    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ld a, $05
    ld [$dd21], a
    ld a, $46
    ld [$dd2b], a
    ld a, $34
    ld [$c830], a
    ld [$c835], a
    ret
jr_010_5e8d:
    ld a, [$c205]
    cp $01
    ret z
jr_010_5e93:
    ld hl, $c205
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld de, $0008
    add hl, de
    ld a, h
    cp $01
    jr nz, jr_010_5ea5
    ld hl, $0100
jr_010_5ea5:
    ld de, $c205
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ret

Call_10_5eae:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld hl, $c21a
    inc [hl]
    ld a, $06
    ld [$dd21], a
    ld a, $c0
    ld [$dd2b], a
    ld a, $33
    ld [$c836], a
    ret

Call_10_5ec7:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $0c
    ldh [hFF90], a
    ld hl, $c21a
    inc [hl]
    ret

Call_10_5ed5:
    ld a, $01
    ldh [hFF90], a
    ret


Call_10_5eda:
    ld a, [$c21a]
    rst $08


FunctionTable_10_5ede:
dw Call_10_5ee6
dw Call_10_5ef8
dw Call_10_5f10
dw Call_10_5f29

Call_10_5ee6:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $16
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ld a, $39
    ld [$c836], a
    ret

Call_10_5ef8:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld a, $16
    ld [hl+], a
    ld a, $05
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ld hl, $c202
    inc [hl]
    ld a, $0c
    ldh [hFF90], a
    ret


Call_10_5f10:
    ld hl, $dd2b
    dec [hl]
    ret nz
    ld hl, $c202
    inc [hl]
    ld hl, $dd2b
    ld a, $16
    ld [hl+], a
    dec [hl]
    ret nz
    ld a, $9e
    ld [hl], a
    ld hl, $c21a
    inc [hl]
    ret

Call_10_5f29:
    ld hl, $dd2c
    dec [hl]
    ret nz
    ld a, $01
    ldh [hFF90], a
    ret


Call_010_5f33:
    ld a, [$dd21]
    cp $ff
    ret z
    add a
    ld c, a
    ld b, $00
    ld hl, $60e1
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$dd21]
    ld hl, $dd22
    cp [hl]
    jr z, jr_010_5f6c
    ld [$dd22], a
    ld hl, $c201
    ld a, [de]
    ld b, a
    ld a, [hl]
    and $01
    or b
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld bc, $0008
    add hl, bc
    xor a
    ld [hl], a
    ld [$dd23], a
    ld hl, $ff91
    res 2, [hl]
    ret
jr_010_5f6c:
    inc de
    inc de
    ld l, e
    ld h, d
    ld a, [$dd23]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_010_5f85
    xor a
    ld [$dd23], a
    ld hl, $ff91
    set 2, [hl]
    ret
jr_010_5f85:
    ld hl, $c20b
    cp [hl]
    ret nc
    xor a
    ld [hl], a
    ld hl, $dd23
    inc [hl]
    ld hl, $c202
    inc [hl]
    ld hl, $ff91
    res 2, [hl]
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0000
    nop
    rlca
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    nop
    dec bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    inc b
    nop
    nop
    ld [$0004], sp
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    nop
    nop
    nop
    rrca
    nop
    stop
    ld b, $00
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    dec b
    nop
    dec b
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [$0808], sp
    ld [$0808], sp
    inc b
    jr nc, jr_010_60da

jr_010_60da:
    ld b, $00
    ld d, $16
    rst $38
    jr nc, jr_010_60e1

jr_010_60e1:
    rst $30
    ld h, b
    ld [$0b61], sp
    ld h, c
    ld c, $61
    ld de, $1461
    ld h, c
    add hl, de
    ld h, c
    rra
    ld h, c
    ld a, [hl+]
    ld h, c
    ld a, [hl+]
    ld h, c
    ld a, [hl+]
    ld h, c
    inc c
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$3c00], sp
    nop
    nop
    ld b, b
    nop
    nop
    ld a, $00
    nop
    ld b, d
    nop
    nop
    ld b, [hl]
    inc b
    rlca
    rlca
    nop
    ld b, [hl]
    rlca
    jr @+$42

    ld [hl], b
    nop
    ld c, [hl]
    nop
    jr @+$18

    ld d, $16
    ld d, $16
    ld d, $36
    nop
    inc c
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld bc, $0500
    nop
    add hl, bc
    nop
    dec c


Call_10_6143:
    call Call_010_72ab
    ld a, [$c160]
    and a
    jr z, jr_010_6154

    ld hl, $c857
    ld a, [hl]
    and a
    jr z, jr_010_6154

    dec [hl]

jr_010_6154:
    ld a, [$c213]
    add a
    ld c, a
    ld b, $00
    ld hl, $6163
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, a
    ld h, c
    ld l, l
    ld h, c

    ld hl, $c218
    jp Jump_010_6d19


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c258
    jp Jump_010_6d19

Call_10_6179:
    call JumpFunctionTable




    adc b
    ld h, c
    ld a, [c]
    ld h, c
    inc bc
    ld h, e
    sbc [hl]
    ld h, e
    sbc a
    ld h, e
    ld h, h
    ld h, h

    ld hl, $c220
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $75
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $e8
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $84
    ld [hl+], a
    inc hl
    inc hl
    ld a, $03
    ld [hl], a
    ld hl, $c238
    ld a, $16
    ld [hl+], a
    ld a, $74
    ld [hl], a
    ld hl, $c240
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $18
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $84
    ld [hl], a
    ld hl, $c258
    ld a, $05
    ld [hl+], a
    ld a, $75
    ld [hl], a
    ld hl, $c263
    ld a, $85
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $08
    ld [hl], a
    ld hl, $c278
    ld a, $2b
    ld [hl+], a
    ld a, $75
    ld [hl], a
    ld hl, $7348
    ld de, $c117
    ld c, $20
    call CopyData
    ret


    ld hl, $c8f1
    ld d, $00

jr_010_61f7:
    ld e, $00
    ld c, $1e

jr_010_61fb:
    ld a, [hl+]
    cp $06
    jr nz, jr_010_6205

    ld a, [hl]
    cp $09
    jr z, jr_010_621a

jr_010_6205:
    inc e
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_61fb

    push de
    ld de, $0008
    add hl, de
    pop de
    inc d
    ld a, d
    cp $1b
    jr c, jr_010_61f7

    ld d, $00

jr_010_621a:
    push hl
    ld a, $f0
    ld [$c1f2], a
    ld a, [$c201]
    rra
    jr nc, jr_010_6234

    ld a, [$c705]
    ld c, a
    ld b, $00
    ld hl, $62fc
    add hl, bc
    ld a, [hl]
    ld [$c1f2], a

jr_010_6234:
    ld hl, $c220
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld a, d
    add a
    add a
    add a
    ld [hl+], a
    add $10
    ld [$c203], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c1f2]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $84
    ld [$c22c], a
    ld a, $01
    ld [$c22e], a
    xor a
    ld [$c22b], a
    ld de, $757b
    ld b, $00
    ld a, [$c201]
    rra
    jr nc, jr_010_626e

    ld de, $75f9
    inc b

jr_010_626e:
    ld a, b
    ld [$c234], a
    ld hl, $c238
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    inc hl
    ld a, $08
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    xor a
    ld [hl], a
    xor a
    ld [$c200], a
    ld a, $84
    ld [$c20c], a
    ld a, [$c1f2]
    ld [$c207], a
    ld a, $01
    ld [$c20e], a
    ld de, $7545
    ld a, [$c201]
    rra
    jr nc, jr_010_62a5

    ld de, $7560

jr_010_62a5:
    ld hl, $c218
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    dec de
    ld a, e
    sub $6d
    ld b, a
    ld a, d
    sbc $c8
    ld h, a
    ld l, b
    ld a, h
    sla l
    rla
    add a
    add a
    add a
    add $08
    ld d, a
    ld a, b
    and $7c
    add a
    add $10
    ld e, a
    ld hl, $c240
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], e
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl], a
    ld hl, $c258
    ld a, $77
    ld [hl+], a
    ld a, $76
    ld [hl+], a
    ld a, $01
    ld [$c24e], a
    xor a
    ld [$c160], a
    ld a, [$d9b6]
    ld [$c60a], a
    ld a, $04
    ld [$c836], a
    ret


    xor b
    ld hl, sp-$58
    ld hl, sp-$58
    xor b
    db $f8

    ld hl, $c8f1
    ld b, $00

jr_010_6308:
    ld c, $00

jr_010_630a:
    ld a, [hl+]
    cp $06
    jr nz, jr_010_6314

    ld a, [hl]
    cp $09
    jr z, jr_010_6329

jr_010_6314:
    inc hl
    inc hl
    inc hl
    inc c
    ld a, c
    cp $1e
    jr c, jr_010_630a

    ld de, $0008
    add hl, de
    inc b
    ld a, b
    cp $1b
    jr c, jr_010_6308

    ld b, $00

jr_010_6329:
    ld hl, $c1f1
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $c708
    ld de, $c234
    ld a, [hl]
    ld [de], a
    xor a
    ld [hl-], a
    dec de
    ld a, [hl]
    ld [de], a
    xor a
    ld [hl], a
    ld a, [$c705]
    and a
    jr z, jr_010_635b

    cp $03
    jr nc, jr_010_635b

    ld a, [$c1f2]
    cp $08
    jr c, jr_010_635b

    sub $08
    cp $0a
    jr c, jr_010_6357

    ld a, $0a

jr_010_6357:
    add a
    add a
    add a
    ld [hl], a

jr_010_635b:
    inc hl
    ld a, [$c705]
    rra
    jr nc, jr_010_6375

    ld a, [$c1f1]
    cp $09
    jr c, jr_010_6375

    sub $09
    cp $0a
    jr c, jr_010_6371

    ld a, $0a

jr_010_6371:
    add a
    add a
    add a
    ld [hl], a

jr_010_6375:
    ld hl, $c22f
    ld a, [$c1f2]
    add a
    add a
    add a
    add $10
    ld [hl+], a
    ld a, [$c1f1]
    add a
    add a
    add a
    add $08
    ld [hl], a
    ld hl, $c238
    ld a, $87
    ld [hl+], a
    ld a, $76
    ld [hl], a
    ld a, $84
    ld [$c22c], a
    ld a, $02
    ld [$c22e], a
    ret


    ret


    ld a, $04
    ld [$c20e], a
    ld a, $84
    ld [$c20c], a
    ld a, $01
    ld [$c215], a
    ld hl, $c218
    ld a, $c7
    ld [hl+], a
    ld a, $76
    ld [hl+], a
    ld a, $04
    ld [$c23f], a
    ld a, $04
    ld [$c22e], a
    ld a, $84
    ld [$c22c], a
    ld a, $01
    ld [$c235], a
    ld hl, $c238
    ld a, $13
    ld [hl+], a
    ld a, $77
    ld [hl+], a
    ld a, $06
    ld [$c25f], a
    ld a, $04
    ld [$c24e], a
    ld a, $84
    ld [$c24c], a
    ld a, $01
    ld [$c255], a
    ld hl, $c258
    ld a, $2f
    ld [hl+], a
    ld a, $77
    ld [hl+], a
    ld hl, $c26c
    ld de, $644c
    ld c, $06

jr_010_63f9:
    push bc
    ld a, $84
    ld [hl+], a
    inc hl
    ld a, $04
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, $01
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $4d
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld a, $02
    add l
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, $02
    add l
    ld l, a
    ld a, [de]
    ld [hl], a
    inc de
    ld bc, $000d
    add hl, bc
    pop bc
    dec c
    jr nz, jr_010_63f9

    ld hl, $c32c
    ld a, $84
    ld [hl+], a
    inc hl
    ld a, $04
    ld [hl], a
    ld hl, $c338
    ld a, $7b
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld a, $01
    ld [$c335], a
    ld a, $0d
    ld [$c33f], a
    ret


    ld bc, $a0ff
    ld a, [bc]
    ld b, b
    rst $38
    add b
    dec bc
    ld d, b
    nop
    add b
    ld a, [bc]
    stop
    ld h, b
    dec bc
    jr nz, @+$01

    jr nz, jr_010_6468

    jr nc, jr_010_6462

jr_010_6462:
    ldh [$ff09], a
    ret

Call_10_6465:
    call JumpFunctionTable



jr_010_6468:
    ld a, b
    ld h, h
    pop hl
    ld h, l
    add e
    ld h, a
    pop af
    ld l, b
    add c
    ld l, c
    inc bc
    ld l, d
    rst $30
    ld l, d
    ld hl, sp+$6a

    ld hl, $c220
    ld de, $0020
    ld c, $1f
    xor a

jr_010_6481:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_6481

    ld hl, $c8f3
    ld b, $1b

jr_010_648b:
    ld c, $1e

jr_010_648d:
    ld a, [hl+]
    cp $b3
    jr z, jr_010_64a3

jr_010_6492:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_648d

    ld de, $0008
    add hl, de
    dec b
    jr nz, jr_010_648b

    ld a, $01
    jr jr_010_64be

jr_010_64a3:
    push hl
    ld a, [hl]
    sub $40
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c21f
    add hl, bc
    ld a, [hl]
    pop hl
    and $f0
    cp $30
    jr z, jr_010_6492

    ld a, [hl]
    sub $40

jr_010_64be:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    ld de, $c220
    ld c, $20

jr_010_64cf:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_010_64cf

    ld hl, $c221
    ld de, $0020
    ld c, $1f

jr_010_64dd:
    ld a, [hl]
    and $fe
    cp $f2
    jr z, jr_010_64eb

    add hl, de
    dec c
    jr nz, jr_010_64dd

    ld hl, $c5e1

jr_010_64eb:
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c1f2], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$c1f1], a
    ld d, $00
    ld hl, $c1f1
    ld a, [$c207]
    cp [hl]
    jr nc, jr_010_6504

    inc d

jr_010_6504:
    ld hl, $c220
    ld a, $01
    ld [hl+], a
    ld a, $20
    or d
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $01
    ld [$c117], a
    ld de, $3e3e
    ld a, [$c1f1]
    add $e0
    sub [hl]
    jr z, jr_010_6546

    ld bc, $0080
    jr nc, jr_010_652f

    ld bc, hOAMDMAFunction
    cpl
    inc a

jr_010_652f:
    add a
    ld d, a
    ld e, a
    cp $3e
    jr nc, jr_010_653e

    ld a, $3e
    sub e
    ld [$c117], a
    ld e, $3e

jr_010_653e:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    dec hl
    dec hl
    dec hl

jr_010_6546:
    ld a, $07
    add l
    ld l, a
    ld a, $10
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ed
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld a, $84
    ld [hl], a
    ld hl, $c215
    ld a, $2e
    add e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $89
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld b, $00
    ld hl, $c1f1
    ld a, [$c207]
    cp [hl]
    jr c, jr_010_6586

    inc b

jr_010_6586:
    ld hl, $c214
    ld [hl], b
    ld hl, $c201
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld a, $f8
    ld [$c21d], a
    ld a, $10
    ld [$c20e], a
    ld a, $84
    ld [$c20c], a
    ld hl, $c240
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, [$c1f2]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c1f1]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl+], a
    inc hl
    ld a, $10
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0f
    ld [hl+], a
    ld a, $78
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $07
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl], a
    ret


    ld hl, $c220
    ld de, $0020
    ld c, $1f
    xor a

jr_010_65ea:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_65ea

    ld hl, $c86d
    ld bc, $0003

jr_010_65f5:
    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_010_6601

    ld a, [hl]
    cp $7b
    jr z, jr_010_6604

jr_010_6601:
    add hl, bc
    jr jr_010_65f5

jr_010_6604:
    dec hl
    push hl
    push hl
    ld bc, $0080
    add hl, bc
    ld de, $c21a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    ld d, $00
    ld bc, $0004

jr_010_6619:
    ld a, [hl]
    and a
    jr z, jr_010_6621

    inc d
    add hl, bc
    jr jr_010_6619

jr_010_6621:
    ld hl, $c21c
    ld [hl], d
    pop de
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
    ld c, l
    ld a, $98
    add h
    ld b, a
    ld hl, $c20f
    ld [hl], c
    inc hl
    ld [hl], b
    ld de, $c211
    ld hl, $0021
    add hl, bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld de, $c117
    ld hl, $c137
    ld c, $20

jr_010_665b:
    xor a
    ld [de], a
    inc de
    ld a, [$d93d]
    ld [hl+], a
    dec c
    jr nz, jr_010_665b

    ld hl, $c201
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $84
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ldh a, [rSCY]
    ld [$c214], a
    ld hl, $c215
    ld a, $f2
    ld [hl+], a
    inc hl
    inc hl
    ld a, $12
    ld [hl+], a
    ld a, $78
    ld [hl], a
    ld a, $11
    ld [$c20e], a
    ld a, $84
    ld [$c20c], a
    ld a, $18
    ld [$c21d], a
    xor a
    ld [$c213], a
    ld [$c20b], a
    ld hl, $c5e1
    ld de, $ffe0

jr_010_66aa:
    ld a, [hl]
    cp $8e
    jr z, jr_010_66b2

    add hl, de
    jr nz, jr_010_66aa

jr_010_66b2:
    inc hl
    inc hl
    ld e, l
    ld d, h
    ld hl, $c220
    ld a, $01
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $11
    ld [hl], a
    ld hl, $c233
    xor a
    ld [hl+], a
    inc hl
    ld a, $0f
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    inc hl
    ld a, $82
    ld [hl+], a
    ld a, $78
    ld [hl], a
    xor a
    ld [$c22b], a
    xor a
    ld [$c23f], a
    ld hl, $c5e1
    ld de, $ffe0

jr_010_66fc:
    ld a, [hl]
    and $fe
    cp $f2
    jr z, jr_010_6706

    add hl, de
    jr nz, jr_010_66fc

jr_010_6706:
    inc hl
    inc hl
    ld e, l
    ld d, h
    ld hl, $c240
    ld a, $01
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, $1f
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl], a
    ld a, $11
    ld [$c24e], a
    ld hl, $c253
    xor a
    ld [hl+], a
    inc hl
    ld a, $f2
    ld [hl+], a
    inc hl
    inc hl
    ld a, $10
    ld [hl+], a
    ld a, $79
    ld [hl], a
    xor a
    ld [$c24b], a
    ld a, $09
    ld [$c25f], a
    ld hl, $c260
    xor a
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld a, $11
    ld [$c26e], a
    ld hl, $c275
    ld a, $f0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $3c
    ld [hl+], a
    ld a, $79
    ld [hl], a
    ld hl, $c26f
    ld a, $a7
    ld [hl+], a
    ld a, $c9
    ld [hl+], a
    ld a, [$d992]
    ld [hl], a
    xor a
    ld [$ddae], a
    ld [$c26b], a
    ret


    ld hl, $c220
    ld de, $0020
    ld c, $1f
    xor a

jr_010_678c:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_678c

    ld hl, $c8f3
    ld b, $1b

jr_010_6796:
    ld c, $1e

jr_010_6798:
    ld a, [hl+]
    cp $b3
    jr z, jr_010_67ae

    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_6798

    ld de, $0008
    add hl, de
    dec b
    jr nz, jr_010_6796

    ld a, $01
    jr jr_010_67b1

jr_010_67ae:
    ld a, [hl]
    sub $40

jr_010_67b1:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    ld de, $c220
    ld c, $20

jr_010_67c2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_010_67c2

    ld hl, $c221
    ld de, $0020
    ld c, $1f

jr_010_67d0:
    ld a, [hl]
    and $fe
    cp $f2
    jr z, jr_010_67de

    add hl, de
    dec c
    jr nz, jr_010_67d0

    ld hl, $c5e1

jr_010_67de:
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c1f2], a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$c1f1], a
    ld hl, $c220
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $01
    ld [$c117], a
    ld de, $3e3e
    ld a, [$c1f1]
    add $e0
    sub [hl]
    jr z, jr_010_682c

    ld bc, $0080
    jr nc, jr_010_6815

    ld bc, hOAMDMAFunction
    cpl
    inc a

jr_010_6815:
    add a
    ld d, a
    ld e, a
    cp $3e
    jr nc, jr_010_6824

    ld a, $3e
    sub e
    ld [$c117], a
    ld e, $3e

jr_010_6824:
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    dec hl
    dec hl
    dec hl

jr_010_682c:
    ld a, $07
    add l
    ld l, a
    ld a, $12
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ed
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld a, $84
    ld [hl], a
    ld hl, $c215
    ld a, $2e
    add e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $78
    ld [hl+], a
    ld a, $79
    ld [hl], a
    ld a, $01
    ld [$c214], a
    ld a, $f8
    ld [$c21d], a
    ld a, $12
    ld [$c20e], a
    ld a, $84
    ld [$c20c], a
    ld hl, $c240
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, [$c1f2]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c1f1]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl+], a
    inc hl
    ld a, $12
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $0f
    ld [hl+], a
    ld a, $78
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $07
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl], a
    ld hl, $c260
    ld a, $01
    ld [hl+], a
    ld a, $23
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $88
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld a, $84
    ld [hl+], a
    inc hl
    ld a, $12
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    ld a, $ee
    ld [hl+], a
    ld a, $79
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $08
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl], a
    ret


    call Call_010_6a03
    ld b, $00
    ld a, [$c207]
    cp $50
    jr c, jr_010_68ff

    ld b, $01

jr_010_68ff:
    ld a, b
    ld [$c201], a
    ld a, $13
    ld [$c20e], a
    ld hl, $c215
    ld a, $d0
    ld [hl+], a
    inc hl
    inc hl
    ld a, $24
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld a, $13
    ld [$c22e], a
    ld a, $22
    ld [$c221], a
    ld a, $45
    ld [$c222], a
    ld a, $16
    ld [$c23f], a
    ld hl, $c235
    ld a, $40
    ld [hl+], a
    inc hl
    inc hl
    ld a, $3f
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld a, $22
    ld [$c241], a
    ld a, $1f
    ld [$c242], a
    ld a, $09
    ld [$c25f], a
    ld hl, $c258
    ld a, $55
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld a, $13
    ld [$c24e], a
    ld a, $d0
    ld [$c255], a
    xor a
    ld [$c260], a
    ld a, $22
    ld [$c261], a
    ld a, $3d
    ld [$c262], a
    ld a, $12
    ld [$c27f], a
    ld hl, $c278
    ld a, $5f
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld a, $13
    ld [$c26e], a
    ld a, $d0
    ld [$c275], a
    ret


    ld hl, $c220
    ld de, $0020
    ld c, $1f

jr_010_6989:
    xor a
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_6989

    xor a
    ld [$c201], a
    ld a, $84
    ld [$c20c], a
    ld a, $14
    ld [$c20e], a
    ld a, $80
    ld [$c203], a
    ld a, $20
    ld [$c207], a
    ld hl, $c205
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld hl, $c218
    ld a, $70
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld a, $01
    ld [$c220], a
    ld a, $22
    ld [$c221], a
    ld a, $84
    ld [$c22c], a
    ld a, $78
    ld [$c223], a
    ld a, $a8
    ld [$c227], a
    ld a, $14
    ld [$c22e], a
    ld hl, $c238
    ld a, $a1
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    xor a
    ld [$c240], a
    ld a, $22
    ld [$c241], a
    ld a, $68
    ld [$c243], a
    ld a, $50
    ld [$c247], a
    ld a, $14
    ld [$c24e], a
    ld hl, $c258
    ld a, $ce
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ret


Call_010_6a03:
    ld hl, $c5e1
    ld de, $ffe0

jr_010_6a09:
    ld a, [hl]
    cp $f2
    jr z, jr_010_6a11

    add hl, de
    jr jr_010_6a09

jr_010_6a11:
    inc hl
    inc hl
    push hl
    ld hl, $c220
    ld de, $0020
    ld c, $1f
    xor a

jr_010_6a1d:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_6a1d

    ld hl, $c8f3
    ld b, $1b

jr_010_6a27:
    ld c, $1e

jr_010_6a29:
    ld a, [hl+]
    cp $b3
    jr z, jr_010_6a3f

    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_010_6a29

    ld de, $0008
    add hl, de
    dec b
    jr nz, jr_010_6a27

    ld a, $01
    jr jr_010_6a42

jr_010_6a3f:
    ld a, [hl]
    sub $40

jr_010_6a42:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c200
    add hl, bc
    ld de, $c220
    ld c, $20

jr_010_6a53:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_010_6a53

    ld hl, $c220
    ld a, $01
    ld [hl+], a
    ld a, $2a
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, $0c
    add l
    ld l, a
    ld a, $15
    ld [hl], a
    ld a, $07
    add l
    ld l, a
    ld a, $10
    ld [hl+], a
    inc hl
    inc hl
    ld a, $1b
    ld [hl+], a
    ld a, $7b
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    ld [hl], a
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld a, $84
    ld [hl], a
    ld hl, $c201
    res 0, [hl]
    ld a, [$c207]
    ld b, a
    ld a, [$c227]
    cp b
    jr nc, jr_010_6a9c

    set 0, [hl]

jr_010_6a9c:
    ld hl, $c215
    ld a, $70
    ld [hl+], a
    inc hl
    inc hl
    ld a, $df
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld hl, $c614
    ld a, $34
    ld [hl+], a
    ld [hl], a
    ld a, $15
    ld [$c20e], a
    ld a, $84
    ld [$c20c], a
    pop de
    ld hl, $c240
    ld a, $01
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c258
    ld a, $4a
    ld [hl+], a
    ld a, $7b
    ld [hl], a
    ld a, $15
    ld [$c24e], a
    ld a, $62
    ld [$c255], a
    ld a, $07
    ld [$c25f], a
    ld a, $84
    ld [$c24c], a
    ret


    ret


    ret



Call_10_6af9:
    ld hl, Call_010_72ab
    push hl
    call JumpFunctionTable




    inc c
    ld l, e
    ld e, $6b
    jr nc, @+$6d

    ld [hl], $6b
    scf
    ld l, e
    ld c, e
    ld l, e

    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    call Call_010_6d19
    ld hl, $c278
    jp Jump_010_6d19


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    jp Jump_010_6d19


    ld hl, $c238
    jp Jump_010_6d19


    ret


    ld hl, $c218
    ld c, $0a

jr_010_6b3c:
    push bc
    push hl
    call Call_010_6d19
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec c
    jr nz, jr_010_6b3c

    ret


    ret


Call_10_6b4c:
    ld hl, Call_010_72ab
    push hl
    call JumpFunctionTable


    

    ld h, e
    ld l, e
    ld [hl], l
    ld l, e
    jp $db6c


    ld l, h
    di
    ld l, h
    dec b
    ld l, l
    rla
    ld l, l
    jr jr_010_6bd0

    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    jp Jump_010_6d19


    call Call_010_6b90
    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    call Call_010_6d19
    ld hl, $c278
    jp Jump_010_6d19


Call_010_6b90:
    ld a, [$c213]
    call JumpFunctionTable

    sbc [hl]
    ld l, e
    push bc
    ld l, e
    pop af
    ld l, e
    xor h
    ld l, h

    ld hl, $ddae
    ld a, [hl]
    and a
    jr z, jr_010_6bb2

    dec [hl]
    jr nz, jr_010_6bb2

    ld a, $03
    ld [hl], a
    ld hl, $c707
    ld a, [hl]
    xor $02
    ld [hl], a

jr_010_6bb2:
    ld hl, $c21d
    dec [hl]
    ret nz

    ld a, $05
    ld [hl], a
    ld a, [$c214]
    ld [$c707], a
    ld hl, $c213
    inc [hl]
    ret


    call Call_000_1635
    ld de, $c211
    ld a, [de]
    ld c, a
    ld [hl+], a
    inc de
    ld a, [de]

jr_010_6bd0:
    ld b, a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$c21c]
    dec a
    ld [hl+], a
    ld a, $37
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ld hl, $0020
    add hl, bc
    ld de, $c211
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c213
    inc [hl]
    ret


    call Call_000_1635
    ld de, $c20f
    ld a, [de]
    ld c, a
    ld [hl+], a
    inc de
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, [$c21c]
    add $02
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ld hl, $0020
    add hl, bc
    ld de, $c20f
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    xor a
    ld [$ddae], a
    ld hl, $c21a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [$c21c]
    add $02
    ld c, a
    xor a

jr_010_6c2f:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_010_6c2f

    pop hl
    ld bc, $0080
    add hl, bc
    ld de, $c21a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, [hl+]
    and $1f
    cp $02
    jr nz, jr_010_6c97

    ld a, [hl]
    cp $7b
    jr nz, jr_010_6c9c

    ld hl, $c211
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    push hl
    call Call_000_1635
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, $17
    ld [hl+], a
    ld a, $c1
    ld [hl], a
    ld hl, $c211
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0020
    add hl, bc
    ld de, $c211
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c21a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld de, $c21a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $10
    ld [$c21d], a
    ld a, $01
    ld [$ddae], a

jr_010_6c97:
    xor a
    ld [$c213], a
    ret


jr_010_6c9c:
    ld a, $10
    ld [$c21d], a
    ld a, $01
    ld [$ddae], a
    ld a, $03
    ld [$c213], a
    ret


    ld hl, $c21d
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $ddae
    dec [hl]
    ret nz

    ld a, $03
    ld [hl], a
    ld hl, $c707
    ld a, [hl]
    xor $02
    ld [hl], a
    ret


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    call Call_010_6d19
    ld hl, $c278
    jp Jump_010_6d19


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    call Call_010_6d19
    ld hl, $c278
    jp Jump_010_6d19


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    jp Jump_010_6d19


    ld hl, $c218
    call Call_010_6d19
    ld hl, $c238
    call Call_010_6d19
    ld hl, $c258
    jp Jump_010_6d19


    ret


    ret


Call_010_6d19:
Jump_010_6d19:
    ld de, $c161
    ld a, [de]
    res 0, a
    ld [de], a

jr_010_6d20:
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld c, l
    ld b, h
    ld a, [de]
    ld hl, $6d7e
    push hl
    call JumpFunctionTable

    add [hl]
    ld l, l
    adc h
    ld l, l
    sbc b
    ld l, l
    xor e
    ld l, l
    cp b
    ld l, l
    push bc
    ld l, l
    rst $10
    ld l, l
    ei
    ld l, l
    add hl, bc
    ld l, [hl]
    rla
    ld l, [hl]
    daa
    ld l, [hl]
    scf
    ld l, [hl]
    ld b, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    call $f56e
    ld l, [hl]
    daa
    ld l, a
    ld b, l
    ld l, a
    sbc b
    ld l, a
    and e
    ld l, a
    or b
    ld l, a
    cp h
    ld l, a
    rst $00
    ld l, a
    db $db
    ld l, a
    rst $28
    ld l, a
    inc bc
    ld [hl], b
    dec [hl]
    ld [hl], b
    add d
    ld [hl], b
    sbc d
    ld [hl], b
    and [hl]
    ld [hl], b
    or e
    ld [hl], b
    ret nz

    ld [hl], b
    db $e4
    ld [hl], b
    ld sp, hl
    ld [hl], b
    inc c
    ld [hl], c
    inc hl
    ld [hl], c
    add hl, hl
    ld [hl], d
    ld e, b
    ld [hl], d
    ld l, b
    ld [hl], d
    adc h
    ld [hl], d

    pop hl
    ld a, [$c161]
    rra
    jr nc, jr_010_6d20

    ret


    ld hl, $c161
    set 0, [hl]
    ret


    ld hl, $c161
    set 0, [hl]
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, $fc
    add c
    ld l, a
    ld h, b
    dec [hl]
    jr nz, jr_010_6da5

    ld a, $03
    call Call_010_72a4

jr_010_6da5:
    ld hl, $c161
    set 0, [hl]
    ret


    ld a, $fc
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $03
    jp Jump_010_72a4


    ld a, $e8
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $17
    jp Jump_010_72a4


    ld a, $e8
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [hl]
    and $01
    ld b, a
    ld a, [de]
    or b
    ld [hl], a
    ld a, $17
    jp Jump_010_72a4


    ld a, $e9
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    cp $ff
    jr z, jr_010_6de3

    ld [hl], a

jr_010_6de3:
    ld a, $1d
    add l
    ld l, a
    inc de
    ld a, [de]
    cp $ff
    jr z, jr_010_6df6

    ld [hl], a
    push hl
    ld a, $ec
    add l
    ld l, a
    xor a
    ld [hl], a
    pop hl

jr_010_6df6:
    ld a, $f9
    jp Jump_010_72a4


    ld a, $ea
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    add [hl]
    ld [hl], a
    ld a, $15
    jp Jump_010_72a4


    ld a, $ee
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    add [hl]
    ld [hl], a
    ld a, $11
    jp Jump_010_72a4


    ld a, $ec
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $12
    jp Jump_010_72a4


    ld a, $f0
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $0e
    jp Jump_010_72a4


    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld [hl], a
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, $fc
    add c
    ld l, a
    ld h, b
    dec [hl]
    jr nz, jr_010_6e69

    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, $ee
    add l
    ld l, a
    ld a, [de]
    add [hl]
    ld [hl], a
    inc de
    ld a, [de]
    cp [hl]
    jr nc, jr_010_6e69

    inc de
    ld a, [de]
    cp [hl]
    jr c, jr_010_6e69

    ld a, $15
    call Call_010_72a4

jr_010_6e69:
    ld hl, $c161
    set 0, [hl]
    ret


    push bc
    push de
    ld a, $e7
    add c
    ld l, a
    ld h, b
    push hl
    ld de, $c0f7
    ld c, $20

jr_010_6e7c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_010_6e7c

    pop hl
    ld a, $14
    add l
    ld l, a
    ld b, [hl]
    call $2ae3
    pop de
    pop bc
    inc de
    ld hl, $dd98
    ld a, [de]
    cp [hl]
    jr nz, jr_010_6ec7

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr c, jr_010_6ec7

    inc de
    ld a, [de]
    cp [hl]
    jr nc, jr_010_6ec7

    push bc
    inc a
    ld b, a
    ld a, [hl+]
    sub b
    add a
    push hl
    ld c, a
    ld b, $00
    ld hl, $730a
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld a, $f6
    add l
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $08
    jp Jump_010_72a4


jr_010_6ec7:
    ld hl, $c161
    set 0, [hl]
    ret


    ld a, $fc
    add c
    ld l, a
    ld h, b
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    dec [hl]
    jr z, jr_010_6ef0

    ld a, $f0
    add l
    ld l, a
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c161
    set 0, [hl]
    ret


jr_010_6ef0:
    ld a, $03
    jp Jump_010_72a4


    ld a, $f6
    add c
    ld l, a
    ld h, b
    dec [hl]
    jr nz, jr_010_6f21

    ld a, $03
    ld [hl], a
    ld bc, $c707
    ld a, [bc]
    xor $02
    ld [bc], a
    ld bc, $c223
    ld a, [bc]
    xor $02
    ld [bc], a
    ld bc, $c243
    ld a, [bc]
    xor $02
    ld [bc], a
    ld a, $06
    add l
    ld l, a
    dec [hl]
    jr nz, jr_010_6f21

    ld a, $03
    jp Jump_010_72a4


jr_010_6f21:
    ld hl, $c161
    set 0, [hl]
    ret


    push bc
    push de
    call Call_000_1635
    pop de
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
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    pop hl
    ld a, $ff
    jp Jump_010_72a4


    push bc
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
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
    ld c, l
    ld a, $98
    add h
    ld b, a
    pop de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    push de
    add hl, bc
    push hl
    call Call_000_1635
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    pop de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, [bc]
    ld b, a
    inc de
    ld a, [de]
    add b
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ld a, $ff
    jp Jump_010_72a4


    ld hl, hFF90
    inc [hl]
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, $e7
    add c
    ld l, a
    ld h, b
    ld a, $01
    ld [hl], a
    ld a, $18
    jp Jump_010_72a4


    ld a, $e7
    add c
    ld l, a
    ld h, b
    xor a
    ld [hl], a
    ld a, $18
    jp Jump_010_72a4


    ld hl, $c160
    inc [hl]
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, [$c160]
    cp $01
    jr z, jr_010_6fd4

    ld hl, $c161
    set 0, [hl]
    ret


jr_010_6fd4:
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, [$c160]
    cp $02
    jr z, jr_010_6fe8

    ld hl, $c161
    set 0, [hl]
    ret


jr_010_6fe8:
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, [$c160]
    cp $03
    jr z, jr_010_6ffc

    ld hl, $c161
    set 0, [hl]
    ret


jr_010_6ffc:
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    push bc
    push de
    ld a, $03
    call Call_1d18
    add a
    ld c, a
    ld b, $00
    pop de
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    add hl, bc
    pop bc
    push de
    ld a, $f6
    add c
    ld c, a
    ld a, [bc]
    add [hl]
    ld d, a
    inc bc
    inc hl
    ld a, [bc]
    add [hl]
    ld e, a
    ld a, $f3
    add c
    ld l, a
    ld h, b
    ld [hl], d
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], e
    pop de
    ld a, $11
    jp Jump_010_72a4


    push de
    ld a, $f9
    add c
    ld l, a
    ld h, b
    ld a, [$ddb4]
    and a
    jr nz, jr_010_7043

    set 0, [hl]

jr_010_7043:
    bit 6, [hl]
    jr nz, jr_010_7073

    ld a, $01
    add l
    ld e, a
    ld d, h
    ld b, $00
    ld hl, $c707
    ld a, [de]
    cp [hl]
    jr z, jr_010_705c

    inc b
    jr c, jr_010_705b

    inc [hl]
    jr jr_010_705c

jr_010_705b:
    dec [hl]

jr_010_705c:
    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr z, jr_010_7069

    inc b
    jr c, jr_010_7068

    inc [hl]
    jr jr_010_7069

jr_010_7068:
    dec [hl]

jr_010_7069:
    ld a, $fe
    add e
    ld l, a
    ld h, d
    pop de
    ld a, b
    and a
    jr nz, jr_010_707c

jr_010_7073:
    bit 0, [hl]
    jr z, jr_010_707c

    ld a, $06
    jp Jump_010_72a4


jr_010_707c:
    ld hl, $c161
    set 0, [hl]
    ret


    inc de
    push bc
    ld a, [de]
    ld c, a
    ld b, $00
    ld hl, $c82d
    add hl, bc
    inc de
    ld a, [de]
    ld [hl], a
    ld a, $01
    ld [$c835], a
    pop hl
    ld a, $ff
    jp Jump_010_72a4


    inc de
    ld a, [de]
    ld [$c836], a
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld a, $ec
    add c
    ld l, a
    ld h, b
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $12
    jp Jump_010_72a4


    ld a, $f0
    add c
    ld l, a
    ld h, b
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $0e
    jp Jump_010_72a4


    ld a, $fb
    add c
    ld l, a
    ld h, b
    ld b, [hl]
    ld a, $f5
    add l
    ld l, a
    inc de
    ld a, b
    and a
    jr nz, jr_010_70d8

    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    inc de
    jr jr_010_70df

jr_010_70d8:
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a

jr_010_70df:
    ld a, $0e
    jp Jump_010_72a4


    push bc
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, [bc]
    ld [hl], a
    pop hl
    ld a, $ff
    jp Jump_010_72a4


    ld a, [$c857]
    and a
    jr z, jr_010_7105

    ld hl, $c161
    set 0, [hl]
    ret


jr_010_7105:
    ld l, c
    ld h, b
    ld a, $ff
    jp Jump_010_72a4


    ld hl, $ddae
    ld a, $04
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld a, $f9
    add c
    ld l, a
    ld h, b
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $05
    jp Jump_010_72a4


    ld hl, $ddaf
    ld a, [hl-]
    and a
    jr z, jr_010_7138

    dec [hl]
    jr nz, jr_010_7138

    ld a, $04
    ld [hl+], a
    dec [hl]
    ld hl, $c707
    ld a, [hl]
    xor $02
    ld [hl], a

jr_010_7138:
    push bc
    ld a, $f9
    add c
    ld l, a
    ld h, b
    ld a, [hl+]
    cp $06
    jp z, Jump_010_71e9

    dec [hl]
    jp nz, Jump_010_71e9

    dec hl
    ld a, [hl]
    add a
    add a
    add [hl]
    add [hl]
    push hl
    ld c, a
    ld b, $00
    ld hl, $7324
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    push de
    call Call_000_1635
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    push de
    call Call_000_1635
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    ld a, [hl]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c480
    add hl, bc
    ld a, $01
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, $41
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $20
    ld [hl], a
    ld a, $11
    add l
    ld l, a
    ld a, $01
    ld [hl+], a
    ld a, $22
    ld [hl+], a
    ld a, $41
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl], e
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $20
    ld [hl], a
    ld a, $0e
    ld [$c82e], a
    ld [$c835], a
    pop hl
    inc [hl]
    inc hl
    ld a, $08
    ld [hl], a

Jump_010_71e9:
    ld hl, $c480
    ld de, $0020
    ld b, $00
    ld c, $0c

jr_010_71f3:
    ld a, [hl]
    and a
    jr z, jr_010_7203

    inc b
    push hl
    ld a, $0f
    add l
    ld l, a
    dec [hl]
    pop hl
    jr nz, jr_010_7203

    xor a
    ld [hl], a

jr_010_7203:
    add hl, de
    dec c
    jr nz, jr_010_71f3

    pop hl
    ld a, $f9
    add l
    ld l, a
    ld a, [hl]
    cp $06
    jr c, jr_010_7221

    ld a, b
    and a
    jr nz, jr_010_7221

    ld a, $06
    add l
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ret


jr_010_7221:
    ld bc, $c161
    ld a, [bc]
    set 0, a
    ld [bc], a
    ret


    push bc
    push de
    ld a, [wIsOnSGB]
    rla
    jr c, jr_010_723b

    ld a, $3e
    ld [$c82f], a
    ld [$c835], a
    jr jr_010_7241

jr_010_723b:
    ld hl, $7248
    call SendSGBPacket

jr_010_7241:
    pop de
    pop hl
    ld a, $ff
    jp Jump_010_72a4


    ld b, c
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
    nop

    inc de
    ld a, [$c162]
    add a
    ld l, a
    ld h, $00
    add hl, de
    inc hl
    ld a, [hl-]
    ld [bc], a
    dec bc
    ld a, [hl]
    ld [bc], a
    ret


    ld a, $f6
    add c
    ld l, a
    ld h, b
    dec [hl]
    jr nz, jr_010_7286

    ld a, $03
    ld [hl], a
    ld bc, $c707
    ld a, [bc]
    xor $02
    ld [bc], a
    ld a, $06
    add l
    ld l, a
    dec [hl]
    jr nz, jr_010_7286

    ld a, $03
    jp Jump_010_72a4


jr_010_7286:
    ld hl, $c161
    set 0, [hl]
    ret


    push bc
    push bc
    inc de
    ld a, [de]
    sub $19
    add c
    ld c, a
    ld a, [bc]
    ld b, a
    pop hl
    inc de
    ld a, [de]
    sub $19
    add l
    ld l, a
    ld [hl], b
    pop hl
    ld a, $ff
    jp Jump_010_72a4


Call_010_72a4:
Jump_010_72a4:
    add l
    ld l, a
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_010_72ab:
    ld a, $20
    ld [$c1f1], a
    ld de, $c20c

jr_010_72b3:
    ld a, [de]
    bit 2, a
    jr z, jr_010_72f5

    inc de
    inc de
    ld a, [de]
    add a
    ld c, a
    ld b, $00
    ld hl, $7b4d
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $11

jr_010_72c8:
    add e
    ld e, a
    ld a, [de]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $e3
    add e
    ld e, a
    ld a, [de]
    sub [hl]
    inc a
    ld c, a
    add hl, bc
    ld a, $09
    add e
    ld e, a
    ld a, [de]
    cp [hl]
    jr nz, jr_010_72f1

    xor a
    ld [de], a
    ld a, $f7
    add e
    ld e, a
    ld a, [de]
    inc a
    ld [de], a
    ld a, $09
    add e
    ld e, a

jr_010_72f1:
    ld a, $01
    add e
    ld e, a

jr_010_72f5:
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c1f1
    dec [hl]
    jr nz, jr_010_72b3

    ret


    ld [$1018], sp
    nop
    db $10
    inc c
    nop
    ld [bc], a
    nop
    nop
    db $fc
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    db $f4
    ldh [$fff2], a
    ldh [$fff0], a
    db $e4
    db $fc
    db $10
    ld a, [$f810]
    inc c
    cp $e8
    db $fc
    add sp, -$06
    db $ec
    xor c
    sbc b
    xor d
    sbc b
    ld d, b
    ld e, b
    xor b
    sbc b
    xor e
    sbc b
    ld c, b
    ld h, b
    and a
    sbc b
    xor h
    sbc b
    ld b, b
    ld l, b
    and [hl]
    sbc b
    xor l
    sbc b
    jr c, jr_010_73ac

    and l
    sbc b
    xor [hl]
    sbc b
    jr nc, jr_010_73ba

    and h
    sbc b
    xor a
    sbc b
    jr z, jr_010_72c8

    adc l
    and h
    adc l
    adc l
    adc l
    adc l
    and h
    adc l
    adc l
    adc l
    adc l
    and h
    adc e
    adc c
    adc c
    adc c

jr_010_7358:
    adc c
    adc e
    adc c
    adc c
    and e
    and e
    and e
    and e
    sub d
    and e
    and e
    and e
    and e
    and e
    and e
    sub d
    dec bc
    ld h, b
    pop bc
    ld bc, $0005
    ld b, $00
    nop
    dec e
    ld e, $01
    ld hl, $0012
    dec bc
    ld h, b
    pop bc
    nop
    ld [bc], a
    dec b
    ld b, h
    ld b, $00
    nop
    jr nz, jr_010_73d9

    ret z

    ld [hl], $c8
    dec bc
    add hl, hl
    jp nz, $0b00

    ld a, [hl+]
    jp nz, $1e00

    inc bc
    ld d, b
    ld bc, $0b02
    jr nz, jr_010_7358

    nop
    ld b, $02
    ld bc, $1403
    ld bc, $1b02
    ld [bc], a
    inc a
    inc bc
    ld e, $01
    ld [bc], a
    ld de, $c20f
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_010_73ac:
    or [hl]
    reti


    inc b
    ld bc, $3a04
    ld b, $00
    ld [bc], a
    rlca
    db $fc
    ld [$03f8], sp

jr_010_73ba:
    ld b, $01
    ld [bc], a
    ld b, $02
    inc bc
    rlca
    inc b
    ld [$0bf8], sp
    ld h, b
    pop bc
    ld bc, $2a03
    ld bc, $0602
    ld b, $06
    ld a, [bc]
    inc bc
    nop
    dec de
    ld bc, $1b13
    ld [bc], a
    ld d, b
    inc bc

jr_010_73d9:
    dec b
    ld bc, $1402
    ld bc, $0125
    ld [hl], h
    db $e3
    ld [hl], e
    inc bc
    ld b, b
    ld bc, $0402
    ld a, [hl-]
    ld b, $04
    dec b
    ld e, $13
    inc bc
    jr nz, jr_010_73f2

    ld [bc], a

jr_010_73f2:
    inc d
    ld de, $c20f
    nop
    nop
    ld [bc], a
    ld [bc], a
    or [hl]
    reti


    nop
    dec de
    ld [bc], a
    ld [de], a
    ld bc, $0321
    db $10
    ld bc, $1202
    nop
    ld [bc], a
    inc de
    ld bc, $1525
    ld [hl], h
    db $10
    ld [hl], h
    inc bc
    sub l
    ld bc, $1402
    nop
    inc b
    rlca
    ld b, $00
    nop
    ld a, [bc]
    ld bc, $1300
    dec de
    ld [bc], a
    ld b, c
    inc e
    add b
    inc bc
    ld e, $01
    ld [bc], a
    dec de
    ld [bc], a
    ld l, [hl]
    inc bc
    ld b, c
    ld bc, $0602
    dec b
    ld bc, $ff07
    ld a, [bc]
    nop
    nop
    dec de
    ld [bc], a
    ld e, h
    inc bc
    db $10
    ld bc, $100c
    ld a, [$221c]
    ld b, $12
    ld [bc], a
    inc bc
    jr nz, jr_010_7449

    ld [bc], a

jr_010_7449:
    inc bc
    db $10
    ld bc, $0602
    jr jr_010_7454

    dec de
    ld [bc], a
    ld e, e
    inc bc

jr_010_7454:
    ld d, b
    ld bc, $0602
    ld d, $03
    add hl, bc
    cp $00
    dec de
    ld [bc], a
    ld a, [bc]
    inc bc
    ld hl, $0e01
    nop
    jr nz, jr_010_7484

    ld bc, $1806
    inc b
    dec de
    nop
    inc de
    inc bc
    inc b
    ld bc, $0b0f
    inc e
    adc $01
    db $10
    dec h
    sbc c
    ld bc, $170c
    pop bc
    inc bc
    ld [de], a
    ld bc, $0602
    ld d, $03

jr_010_7484:
    add hl, bc
    rst $38
    nop
    ld a, [bc]
    rst $38
    nop
    inc bc
    ld de, $0e01
    nop
    jr nz, jr_010_74ae

    ld e, $01
    ld b, $14
    inc bc
    dec de
    nop
    inc de
    inc bc
    inc b
    ld bc, $0b0f
    inc e
    adc $02
    db $10
    add e
    sbc c
    ld bc, $2308
    pop bc
    ld bc, $1606
    inc bc
    add hl, bc
    rst $38

jr_010_74ae:
    nop
    ld a, [bc]
    rst $38
    nop
    inc bc
    ld de, $0e01
    nop
    jr nz, jr_010_74d6

    ld e, $01
    ld b, $14
    inc bc
    dec de
    nop
    inc de
    inc bc
    inc b
    ld bc, $0b0f
    inc e
    adc $03
    db $10
    dec b
    sbc d
    ld bc, $2b0c
    pop bc
    ld bc, $1606
    inc bc
    add hl, bc
    rst $38

jr_010_74d6:
    nop
    ld a, [bc]
    rst $38
    jr nz, jr_010_74de

    ld de, $0e01

jr_010_74de:
    nop
    jr nz, @+$1f

    ld e, $01
    ld b, $1b
    dec b
    dec de
    nop
    inc de
    dec de
    ld [bc], a
    ld e, c
    inc bc
    inc b
    ld bc, $0b0f
    inc e
    adc $04
    ld bc, $0312
    ret nz

    ld bc, $0b02
    inc l
    jp nz, $0380

    ld d, b
    ld bc, $1202
    ld bc, $0300
    ldh a, [rSB]
    ld [bc], a
    inc bc
    ld [hl], b
    ld bc, $1302
    inc b
    rlca
    ld b, $1e
    ld b, $03
    ldh [rSB], a
    ld [bc], a
    ld b, $21
    rlca
    ld bc, $c003
    ld bc, $2402
    inc bc
    jr nc, jr_010_7524

    ld [bc], a

jr_010_7524:
    inc h
    inc bc
    jr nc, jr_010_7529

    ld [bc], a

jr_010_7529:
    ld bc, $0300
    ldh a, [rSB]
    ld [bc], a
    inc bc
    ldh a, [rSB]
    ld [bc], a
    inc bc
    ld b, b
    ld bc, $1302
    inc b
    rlca
    ld b, $24
    rst $38
    inc bc
    inc a
    ld bc, $0702
    inc bc
    ld bc, $1700
    inc b
    ld [bc], a
    ld b, $00
    dec b
    ld a, [bc]
    nop
    ret nz

    dec bc
    ld a, [bc]
    add $00
    inc de
    inc bc
    inc l
    ld bc, $0402
    nop
    ld b, $00
    nop
    ld e, $12
    ld bc, $1700
    inc b
    inc bc
    ld b, $00
    dec b
    ld a, [bc]
    rst $38
    ld b, b
    dec bc
    ld a, [bc]
    add $00
    inc de
    inc bc
    inc l
    ld bc, $0402
    ld bc, $0006
    nop
    ld e, $12
    ld bc, $0400
    ld [$0006], sp
    nop
    ld a, [bc]
    ld bc, $1b00
    nop
    ld b, c
    inc de
    ld bc, $060d
    inc c
    ld [$010a], sp
    nop
    inc bc
    inc de
    ld bc, $0a02
    nop
    nop
    ld bc, $0506
    ld bc, $001b
    ld e, h
    inc bc
    db $10
    ld bc, $1102
    cpl
    jp nz, RST_00

    ld [bc], a
    ld [bc], a
    or [hl]
    reti


    inc b
    dec d
    inc bc
    add hl, bc
    ld bc, $1202
    ld b, $0e
    ld [bc], a
    inc bc
    db $10
    ld bc, $0602
    db $10
    inc bc
    inc bc
    jr nc, jr_010_75bf

    ld [bc], a

jr_010_75bf:
    ld b, $13
    inc b
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    db $10
    ld bc, $1302
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    ld bc, $0201
    dec d
    ld bc, Call_000_1115
    cpl
    jp nz, RST_00

    ld [bc], a
    ld [bc], a
    or [hl]
    reti


    nop
    dec de
    ld bc, $1c3d
    add b
    inc bc
    rrca
    ld bc, $1302
    inc bc
    inc d
    ld bc, $0b02
    inc l
    jp nz, $1400

    ld bc, $0400
    add hl, bc
    ld b, $00
    nop
    ld a, [bc]
    rst $38
    nop
    dec de
    nop
    ld b, c
    inc de
    ld bc, $060d
    inc c
    ld [$ff0a], sp
    nop
    inc bc
    inc de
    ld bc, $0a02
    nop
    nop
    ld bc, $0506
    ld bc, $001b
    ld e, h
    inc bc
    db $10
    ld bc, $1102
    cpl
    jp nz, RST_00

    ld [bc], a
    ld [bc], a
    or [hl]
    reti


    inc b
    dec d
    inc bc
    add hl, bc
    ld bc, $1202
    ld b, $0e
    ld [bc], a
    inc bc
    db $10
    ld bc, $0602
    db $10
    inc bc
    inc bc
    jr nc, jr_010_763d

    ld [bc], a

jr_010_763d:
    ld b, $13
    inc b
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    db $10
    ld bc, $1302
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    ld bc, $0201
    dec d
    ld bc, Call_000_1115
    cpl
    jp nz, RST_00

    ld [bc], a
    ld [bc], a
    or [hl]
    reti


    nop
    dec de
    ld bc, $1c3d
    add b
    inc bc
    rrca
    ld bc, $1302
    inc bc
    inc d
    ld bc, $0b02
    inc l
    jp nz, $1400

    ld bc, $1600
    inc b
    ld a, [bc]
    ld b, $09
    nop
    inc de
    ld bc, $0b18
    ld c, h
    jp nz, $1400

    ld bc, $1300
    add hl, de
    ld [de], a
    ld [hl], e
    inc b
    ld a, [bc]
    ld b, $06
    nop
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    db $10
    ld bc, $1302
    add hl, de
    jr jr_010_7711

    ld b, $03
    nop
    inc h
    inc bc
    inc d
    ld bc, $1402
    inc bc
    db $10
    ld bc, $1302
    add hl, de
    ld e, $73
    ld b, $00
    nop
    inc h
    inc bc
    inc d
    ld bc, $0b02
    inc l
    jp nz, $1400

    inc bc
    db $10
    ld bc, $1202
    ld bc, $011a
    ld [de], a
    ld bc, $0300
    ld a, h
    ld bc, $0402
    inc c
    ld b, $00
    nop
    inc bc
    jr nz, jr_010_76dc

    rst $38
    add b
    ld a, [bc]
    rst $38
    nop
    ld c, $00
    jr nz, jr_010_76fa

jr_010_76dc:
    add hl, bc
    ld bc, $0300
    jr jr_010_76e3

    ld [bc], a

jr_010_76e3:
    dec e
    rlca
    ld bc, $0506
    ld bc, $021b
    ld c, l
    inc bc
    ld b, b
    ld bc, $0602
    add hl, bc
    ld [bc], a
    inc bc
    ld [$0201], sp
    ld b, $0b
    inc bc

jr_010_76fa:
    inc bc
    add b
    ld bc, $0302
    db $10
    ld bc, $1202
    ld bc, $0004
    ld b, $00
    nop
    dec de
    nop
    daa
    inc bc
    ld l, h
    ld bc, $1202

jr_010_7711:
    ld bc, $0300
    ld a, h
    ld bc, $0402
    inc c
    ld b, $10
    dec b
    dec de
    inc bc
    ld a, $03
    inc h
    add hl, bc
    rst $38
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld c, $00
    jr nz, jr_010_7748

    ld e, $14
    ld bc, $1b00
    ld [bc], a
    ld [hl], d
    inc bc
    ld a, h
    ld bc, $0602
    inc d
    rlca
    dec de
    ld bc, $1b51
    ld [bc], a
    inc de
    dec bc
    ld c, a
    jp nz, $0303

    inc b
    ld bc, $0326

jr_010_7748:
    jr nz, jr_010_774b

    ld [bc], a

jr_010_774b:
    inc d
    nop
    inc bc
    ld a, h
    ld bc, $0902
    ld bc, $0300
    ld d, b
    ld bc, $1d02
    inc bc
    jr nz, jr_010_775d

    ld [bc], a

jr_010_775d:
    daa
    dec de
    dec d
    ld bc, $1b02
    ld [bc], a
    inc sp
    ld b, $1e
    inc c
    add hl, bc
    cp $00
    daa
    inc e
    add hl, bc
    daa
    dec e
    ld a, [bc]
    inc bc
    add b
    ld c, $00
    ld [$1e1d], sp
    inc d
    ld bc, $0300
    ld a, h
    ld bc, $0902
    ld bc, $0300
    ld h, b
    ld bc, $1d02
    inc d
    nop
    ld [bc], a
    inc h
    inc bc
    ld b, b
    ld bc, $0502
    jr nz, jr_010_7798

    ld a, [de]
    dec b
    rra
    nop
    ret nz

    rst $38

jr_010_7798:
    ld b, b
    dec de
    ld [bc], a
    ccf
    ld bc, $080d
    ld bc, $0600
    ld d, $03
    ld e, $1b
    ld [bc], a
    inc bc
    inc bc
    jr nz, jr_010_77ac

    ld [bc], a

jr_010_77ac:
    ld b, $18
    inc b
    add hl, bc
    cp $80
    dec de
    ld [bc], a
    dec de
    inc bc
    add hl, de
    ld bc, $000e
    jr nz, @+$1f

    ld b, $16
    inc bc
    inc bc
    ld [$0201], sp
    ld b, $1a
    dec b
    rra
    nop
    add b
    rst $38
    add b
    dec de
    ld [bc], a
    ccf
    inc bc
    ld [de], a
    ld bc, $0602
    rra
    ld b, $09
    rst $38
    add b
    ld e, $1b
    ld [bc], a
    inc bc
    ld bc, $021b
    ld b, [hl]
    inc bc
    ld h, b
    ld bc, $1b02
    ld [bc], a
    inc bc
    dec e
    inc d
    ld [de], a
    ld bc, $0012
    dec de
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    jr nz, jr_010_780a

    pop bc
    dec [hl]
    jp nz, $021e

    ld b, $07
    ld bc, $0324
    inc de
    ld bc, $0602
    add hl, bc
    ld [bc], a
    ld [$0318], sp
    db $10
    ld bc, $100c

jr_010_780a:
    ld a, [$f8f0]
    ld bc, $0200
    inc d
    nop
    ld [bc], a
    inc b
    ld [hl+], a
    ld b, $26
    inc c
    ld a, [bc]
    rst $38
    add b
    inc bc
    ld d, b
    ld bc, $0402
    ld bc, $0006
    nop
    ld e, $03
    ldh a, [rSB]
    ld [bc], a
    inc bc
    db $10
    ld bc, $0402
    ld [hl+], a
    ld b, $2b
    dec c
    add hl, bc
    ld bc, $1b00
    nop
    dec c
    inc bc
    ld b, a
    ld bc, $0602
    jr nc, jr_010_784d

    dec e
    dec de
    nop
    ld [de], a
    inc bc
    cp b
    ld bc, $0602
    inc [hl]
    rrca
    inc bc
    jr jr_010_784e

jr_010_784d:
    ld [bc], a

jr_010_784e:
    ld b, $36
    db $10
    ld a, [bc]
    nop
    ret nz

    dec de
    ld bc, $033f
    jr nz, jr_010_785b

    ld [bc], a

jr_010_785b:
    ld b, $3b
    ld de, $0107
    ld a, [bc]
    nop
    ld b, b
    dec de
    ld bc, $030d
    inc d
    ld bc, $000e
    jr nz, jr_010_7873

    ld [hl], $10
    ld a, [bc]
    nop
    ret nz

    dec e

jr_010_7873:
    dec de
    ld bc, $033f
    ld h, b
    ld bc, $1b02
    nop
    ld d, c
    ld e, $12
    ld bc, $0012
    ld [bc], a
    inc e
    ld sp, $8b03
    ld bc, $0602
    inc b
    ld bc, $1003
    ld bc, $0602
    ld b, $02
    add hl, bc
    ld bc, $1b00
    nop
    dec c
    inc bc
    ld c, b
    ld bc, $0602
    add hl, bc
    inc bc
    dec e
    dec de
    nop
    ld [de], a
    dec bc
    cpl
    jp nz, $0303

    inc b
    ld bc, $0326
    or h
    ld bc, $0602
    ld b, e
    dec d
    inc bc
    ld b, b
    ld bc, $0602
    ld c, $04
    ld [$07fd], sp
    rst $38
    add hl, bc
    rst $38
    nop
    ld a, [bc]
    rst $38
    and b
    dec de
    ld [bc], a
    ld a, [bc]
    inc bc
    ld hl, $0e01
    nop
    db $10
    dec e
    ld e, $1b
    nop
    ld e, [hl]
    inc bc
    ld e, e
    ld bc, $0602
    ld de, $0305
    dec c
    ld bc, $1b02
    nop
    rrca
    inc bc
    inc l
    ld bc, $0602
    ld d, $07
    rlca
    ld [bc], a
    add hl, bc
    rst $38
    ret nz

    dec de
    nop
    ld a, [bc]
    inc bc
    ld d, $01
    ld c, $00
    jr nz, jr_010_78fc

    inc d
    ld b, $1d
    dec de
    nop
    ld [de], a

jr_010_78fc:
    inc bc
    ld b, b
    ld bc, $0602
    ld a, [de]
    ld [$010a], sp
    nop
    dec de
    nop
    ld b, b
    inc bc
    add b
    ld bc, $1e02
    ld bc, $0200
    add hl, bc
    nop
    ld b, b
    inc bc
    jr nz, jr_010_7918

    ld [bc], a

jr_010_7918:
    ld b, $21
    ld a, [bc]
    ld a, [bc]
    nop
    ld b, b
    dec e
    inc bc
    jr nc, jr_010_7923

    ld [bc], a

jr_010_7923:
    ld b, $1f
    add hl, bc
    ld e, $03
    ldh a, [rSB]
    ld [bc], a
    inc bc
    db $10
    ld bc, $0602
    inc h
    dec bc
    add hl, bc
    ld bc, $0300
    jr nc, jr_010_7939

    ld [bc], a

jr_010_7939:
    dec e
    inc d
    nop
    ld [bc], a
    db $10
    add [hl]
    sbc b
    ld bc, $1702
    pop bc
    db $10
    and h
    sbc b
    ld bc, $370c
    pop bc
    inc bc
    ld de, $0201
    inc e
    ld [hl-], a
    inc bc
    ld d, c
    ld bc, $0402
    ld [hl+], a
    ld b, $3d
    ld [de], a
    rlca
    jr jr_010_7965

    ld d, b
    inc de
    inc bc
    ld d, b
    ld bc, $1c02
    add b

jr_010_7965:
    inc bc
    dec d
    ld bc, $1c02
    dec l
    inc bc
    ld e, h
    ld bc, $0602
    ccf
    inc de
    ld bc, $0122
    inc hl
    ld bc, $0200
    inc h
    inc bc
    db $10
    ld bc, $0402
    nop
    inc bc
    db $10
    ld bc, $0402
    ld hl, $1606
    inc bc
    inc bc
    db $10
    ld bc, $0402
    nop
    ld b, $00
    nop
    inc bc
    db $10
    ld bc, $0402
    ld hl, $1606
    inc bc
    inc bc
    db $10
    ld bc, $0402
    nop
    ld b, $00
    nop
    inc bc
    db $10
    ld bc, $0402
    ld hl, $1a06
    dec b
    rra
    nop
    ret nz

    rst $38
    ld b, b
    dec de
    ld [bc], a
    ccf
    ld bc, $080d
    ld bc, $0600
    ld d, $03
    ld e, $1b
    ld [bc], a
    inc bc
    inc bc
    jr nz, jr_010_79c5

    ld [bc], a

jr_010_79c5:
    ld b, $1a
    dec b
    rra
    nop
    add b
    rst $38
    add b
    dec de
    ld [bc], a
    ccf
    inc bc
    ld [de], a
    ld bc, $0602
    rra
    ld b, $09
    rst $38
    add b
    ld e, $1b
    ld [bc], a
    inc bc
    ld bc, $021b
    ld b, [hl]
    inc bc
    ld h, b
    ld bc, $1b02
    ld [bc], a
    inc bc
    dec e
    ld [de], a
    ld bc, $0012
    ld [bc], a
    ld b, $02
    add hl, bc
    inc bc
    jr nc, jr_010_79f6

    ld [bc], a

jr_010_79f6:
    ld b, $06
    ld a, [bc]
    dec de
    nop
    ld h, [hl]
    inc bc
    add hl, hl
    ld bc, $1b02
    nop
    ld h, [hl]
    inc bc
    add hl, hl
    ld bc, $1b02
    nop
    ld l, b
    inc bc
    add hl, hl
    ld bc, $1b02
    nop
    ld l, b
    inc bc
    add hl, hl
    ld bc, $1b02
    nop
    ld h, [hl]
    inc bc
    add hl, hl
    ld bc, $1b02
    nop
    ld h, [hl]
    inc bc
    add hl, hl
    ld bc, $0002
    ld [bc], a
    inc bc
    ld b, b
    ld bc, $0402
    nop
    dec bc
    inc bc
    jp nz, $0b38

    rlca
    jp nz, $0340

    ret nz

    ld bc, $0302
    ld a, b
    ld bc, $1202
    ld bc, $0012
    ld [bc], a
    rlca
    db $10
    ld b, $04
    ld bc, $1003
    ld bc, $0602
    ld b, $02
    add hl, bc
    ld bc, $0300
    add b
    ld bc, $1d02
    nop
    ld [bc], a
    inc bc
    ld b, b
    ld bc, $0602
    ld c, b
    rla
    ld bc, $0200
    inc bc
    ldh a, [rSB]
    ld [bc], a
    dec bc
    ld h, e
    jp nz, $0b28

    ld h, a
    jp nz, $1d50

    ld e, $13
    nop
    inc bc
    ld c, h
    ld bc, $0302
    jr nc, jr_010_7a78

    ld [bc], a

jr_010_7a78:
    inc bc
    ld b, b
    ld bc, $0502
    ld [hl+], a
    ld b, $36
    dec de
    ld a, [bc]
    nop
    ld b, b
    inc bc
    jr nz, jr_010_7a88

    ld [bc], a

jr_010_7a88:
    dec bc
    rra
    jp nz, $0a1c

    nop
    jr nz, jr_010_7a93

    call nz, $0201

jr_010_7a93:
    dec b
    nop
    ld b, $00
    nop
    ld e, $03
    or h
    ld bc, $1202
    ld bc, $0012
    inc bc
    ld c, h
    ld bc, $0602
    ld c, d
    jr jr_010_7ab3

    rst $38
    add b
    inc bc
    jr nz, jr_010_7aaf

    ld [bc], a

jr_010_7aaf:
    inc e
    inc l
    inc bc
    db $10

jr_010_7ab3:
    ld bc, $0602
    ld c, d
    add hl, de
    ld a, [bc]
    rst $38
    ret nz

    inc bc
    ld h, b
    ld bc, $0602
    ld c, d
    ld a, [de]
    ld a, [bc]
    rst $38
    ldh [$ff03], a
    call nz, $0201
    ld e, $06
    ld c, b
    rla
    nop
    inc bc
    ld c, h
    ld bc, $0302
    sub b
    ld bc, $0302
    call nz, $0201
    ld b, $3d
    ld [de], a
    inc de
    nop
    ld [bc], a
    dec b
    jr nz, jr_010_7ae9

    ld d, $03
    inc bc
    jr nz, jr_010_7ae9

    ld [bc], a

jr_010_7ae9:
    ld b, $18
    inc b
    add hl, bc
    cp $80
    dec de
    ld [bc], a
    dec de
    inc bc
    add hl, de
    ld bc, $000e
    jr nz, @+$08

    ld d, $03
    dec e
    inc bc
    ld [$0201], sp
    ld b, $18
    inc b
    add hl, bc
    cp $80
    dec de
    ld [bc], a
    dec de
    inc bc
    add hl, de
    ld bc, $000e
    jr nz, @+$08

    ld d, $03
    dec e
    inc bc
    ld b, b
    ld bc, $1202
    ld bc, $0012
    ld [bc], a
    inc e
    add b
    dec de
    ld [bc], a
    ld c, $03
    inc de
    ld bc, $1b02
    ld [bc], a
    ld a, [bc]
    inc bc
    dec de
    ld bc, $0602
    dec b
    ld bc, $e007
    inc bc
    jr nz, jr_010_7b35

    ld [bc], a

jr_010_7b35:
    ld b, $08
    ld [bc], a
    inc h
    inc bc
    db $10
    ld bc, $0402
    jr nz, jr_010_7b46

    add hl, bc
    inc bc
    inc bc
    db $10
    inc c
    db $10

jr_010_7b46:
    ld a, [$f8f0]
    nop
    ld [bc], a
    inc d
    nop
    adc a
    ld a, e
    sbc a
    ld a, e
    xor e
    ld a, e
    or c
    ld a, e
    cp c
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    adc a
    ld a, e
    push de
    ld a, e
    push hl
    ld a, e
    rra
    ld a, h
    push hl
    ld a, e
    push hl
    ld a, e
    dec [hl]
    ld a, h
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    push de
    ld a, e
    ld b, e
    ld a, h
    ld d, c
    ld a, h
    ld d, [hl]
    ld a, h
    ld h, e
    ld a, h
    ld h, a
    ld a, h
    ld l, c
    ld a, h
    ld l, h
    ld a, h
    ld l, a
    ld a, h
    ld [hl], d
    ld a, h
    ld [hl], a
    ld a, h
    ld a, h
    ld a, h
    add l
    ld a, h
    add a
    ld a, h
    adc d
    ld a, h
    adc l
    ld a, h
    sub d
    ld a, h
    sub l
    ld a, h
    sbc b
    ld a, h
    sbc e
    ld a, h
    and b
    ld a, h
    and e
    ld a, h
    xor b
    ld a, h
    xor l
    ld a, h
    or d
    ld a, h
    or [hl]
    ld a, h
    cp b
    ld a, h
    cp e
    ld a, h
    cp l
    ld a, h
    cp a
    ld a, h
    pop bc
    ld a, h
    jp $c57c


    ld a, h
    rst $00
    ld a, h
    ret


    ld a, h
    bit 7, h
    call $cf7c
    ld a, h
    sub $7c
    ret c

    ld a, h
    push hl
    ld a, h
    rst $20
    ld a, h
    jp hl


    ld a, h
    xor $7c
    pop af
    ld a, h
    ld hl, sp+$7c
    db $fc
    ld a, h
    cp $7c
    ld bc, $067d
    ld a, l
    add hl, bc
    ld a, l
    inc c
    ld a, l
    ld c, $7d
    ld [de], a
    ld a, l
    rla
    ld a, l
    add hl, de
    ld a, l
    inc e
    ld a, l
    ld e, $7d
    inc hl
    ld a, l
    jr z, jr_010_7c80

    inc l
    ld a, l
    ld l, $7d
    inc sp
    ld a, l
    dec [hl]
    ld a, l
    scf
    ld a, l
    add hl, sp
    ld a, l
    dec sp
    ld a, l
    dec a
    ld a, l
    ld b, b
    ld a, l
    ld b, d
    ld a, l
    ld b, l
    ld a, l
    ld c, b
    ld a, l
    ld c, e
    ld a, l
    ld d, b
    ld a, l
    rst $08
    ld a, h
    sub $7c
    ret c

    ld a, h
    push hl
    ld a, h
    rst $20
    ld a, h
    jp hl


    ld a, h
    xor $7c
    pop af
    ld a, h
    ld [hl], d
    ld a, l
    ld [hl], h
    ld a, l
    ld a, b
    ld a, l
    ld d, l
    ld a, l
    ld e, d
    ld a, l
    ld e, l
    ld a, l
    ret c

    ld a, h
    pop af
    ld a, h
    push hl
    ld a, h
    rst $20
    ld a, h
    ld e, a
    ld a, l
    ld h, c
    ld a, l
    ld h, l
    ld a, l
    ld h, a
    ld a, l
    ld l, c
    ld a, l
    ld l, e
    ld a, l
    ld l, l
    ld a, l
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [de], a
    db $10
    db $10
    db $10
    ld d, $16
    jr jr_010_7c75

    ld a, [bc]
    dec de
    db $10
    jr nc, jr_010_7c8e

    db $10
    db $10
    ld hl, $1010

jr_010_7c75:
    inc h
    stop
    dec bc
    dec bc
    dec bc
    dec bc
    dec b
    ld [$0809], sp

jr_010_7c80:
    ld [$0808], sp
    ld [$0e08], sp
    db $10
    db $10
    ld a, [bc]
    ld a, [bc]
    inc de
    ld b, $06
    nop

jr_010_7c8e:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $06
    inc bc
    ld b, $06
    ld b, $06
    ld b, $00
    inc c
    inc c
    inc c
    inc c
    dec b
    dec c
    dec c
    ld [$0c0c], sp
    inc c
    inc c
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [$0808], sp
    ld b, c
    dec b
    ld b, $06
    ld d, b
    add hl, bc
    db $10
    dec bc
    jr nz, @+$22

    ld c, $10
    db $10
    db $10
    ld [de], a
    db $10
    inc d
    db $10
    ld d, $10
    jr jr_010_7cd7

    ld a, [de]
    db $10
    inc e
    db $10
    ld e, $10
    jr nz, jr_010_7cdf

    nop
    jr nz, @+$0d

    ld b, $0b
    ld b, $0b
    rlca

jr_010_7cd7:
    db $10
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp

jr_010_7cdf:
    ld [$0808], sp
    ld [$0808], sp
    ld d, $10
    jr jr_010_7cf9

    ld a, [de]
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    ld b, $06
    ld [hl+], a
    db $10
    db $10
    db $10
    db $10
    db $10
    stop

jr_010_7cf9:
    db $10
    ld a, [bc]
    ld a, [bc]
    inc b
    db $10
    ld b, $0a
    ld a, [bc]
    add hl, bc
    ld [$0808], sp
    ld [$100e], sp
    jr nz, @+$13

    dec c
    dec c
    inc d
    db $10
    ld d, $08
    ld [$1a20], sp
    ld [$0808], sp
    ld [$101f], sp
    ld hl, $0d0d
    inc h
    db $10
    ld h, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec hl
    ld [$0808], sp
    jr nc, jr_010_7d59

    ld [$1008], sp
    inc [hl]
    db $10
    ld [hl], $03
    inc bc
    inc bc
    inc bc
    dec sp
    db $10
    dec a
    db $10
    ccf
    db $10
    ld b, c
    db $10
    ld b, e
    ld d, b
    ld b, l
    ld [$4808], sp
    db $10
    ld c, d
    inc b
    inc b
    ld c, d
    ld [$4a08], sp
    dec c
    dec c
    ld [hl], $06
    ld b, $06
    ld b, $36
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    ld e, $08

jr_010_7d59:
    ld c, $05
    ld c, $12
    ld [$0010], sp
    ld d, b
    ld [bc], a
    ld b, $0e
    ld e, $00
    ld b, $02
    ld a, [de]
    nop
    db $10
    inc b
    stop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    db $10
    ld [bc], a
    db $10
    db $10
    ld b, b
    ld b, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_010_7d8a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $20

Call_010_7d85:
    ld h, d
    ld l, e
    push hl
    xor a
    ld [hl+], a

jr_010_7d8a:
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
    add hl, de
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $42
    ld [hl+], a
    ld [hl], $7b
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
    ld h, d
    ld l, e
    ld a, $03
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [$d960]
    add $06
    ld [hl+], a
    xor a
    ld [hl], a
    pop de
    call Call_000_1685
    ld a, $05
    jp $0e12


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_7de8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
