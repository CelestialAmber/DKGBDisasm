; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld hl, $c20a
    ld de, $c208
    ld bc, $dd54
    ld a, [de]
    add [hl]
    ld [bc], a
    dec hl
    dec de
    dec bc
    ld a, [de]
    adc [hl]
    ld [bc], a
    ld hl, $c206
    ld de, $c204
    dec bc
    ld a, [de]
    add [hl]
    ld [bc], a
    dec hl
    dec de
    dec bc
    ld a, [de]
    adc [hl]
    ld [bc], a
    ld hl, $c117
    xor a
    ld c, $3f

jr_008_4028:
    ld [hl+], a
    dec c
    jr nz, jr_008_4028

    ld hl, $dd5a
    ld a, [$dd53]
    add [hl]
    ld [$c817], a
    ld hl, $dd62
    sub [hl]
    ld b, a
    and $f8
    ld [$c811], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $dd59
    ld a, [$dd51]
    add [hl]
    ld [$c818], a
    and $f8
    ld [$c812], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c818]
    and $07
    ld [$c1f9], a
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$c1f3], a
    ld a, [$dd62]
    add a
    ld c, a
    ld a, b
    and $07
    add c
    and $f8
    rlca
    swap a
    inc a
    ld c, a
    push bc
    push de
    call Call_008_41b8
    xor a
    ld [$c1f3], a
    pop de
    inc de
    inc de
    pop bc
    call Call_008_42ac
    ld hl, $dd5c
    ld a, [$dd53]
    add [hl]
    ld [$c817], a
    ld hl, $dd64
    sub [hl]
    ld b, a
    and $f8
    ld [$c811], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $dd5b
    ld a, [$dd51]
    add [hl]
    ld [$c818], a
    and $f8
    ld [$c812], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c818]
    and $07
    ld [$c1f9], a
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$c1f3], a
    ld a, [$dd64]
    add a
    ld c, a
    ld a, b
    and $07
    add c
    and $f8
    rlca
    swap a
    inc a
    ld c, a
    push bc
    push de
    call Call_008_4375
    xor a
    ld [$c1f3], a
    pop de
    inc de
    inc de
    pop bc
    call Call_008_446d
    ld hl, $dd5e
    ld a, [$dd53]
    add [hl]
    dec a
    ld [$c817], a
    and $f8
    ld [$c811], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $dd5d
    ld a, [$dd51]
    add [hl]
    ld [$c818], a
    ld hl, $dd65
    sub [hl]
    ld b, a
    and $f8
    ld [$c812], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$c1f3], a
    ld a, [$dd65]
    add a
    ld c, a
    ld a, b
    and $07
    add c
    and $f8
    rlca
    swap a
    inc a
    ld c, a
    push bc
    push de
    call Call_008_453a
    xor a
    ld [$c1f3], a
    pop de
    inc de
    inc de
    pop bc
    call Call_008_4645
    ld hl, $dd60
    ld a, [$dd53]
    add [hl]
    inc a
    ld [$c817], a
    and $f8
    ld [$c811], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $dd5f
    ld a, [$dd51]
    add [hl]
    ld [$c818], a
    ld hl, $dd67
    sub [hl]
    ld b, a
    and $f8
    ld [$c812], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$c1f3], a
    ld a, [$dd67]
    add a
    ld c, a
    ld a, b
    and $07
    add c
    and $f8
    rlca
    swap a
    inc a
    ld c, a
    push bc
    push de
    call Call_008_4733
    xor a
    ld [$c1f3], a
    pop de
    inc de
    inc de
    pop bc
    call Call_008_4843
    ld a, [$dd18]
    cp $0a
    jr z, jr_008_41b5

    ldh a, [$94]
    rla
    ret nc

jr_008_41b5:
    jp Jump_008_495b


Call_008_41b8:
Jump_008_41b8:
    push bc
    ld a, [de]
    and $1f
    jp z, Jump_008_429b

    ld a, [de]
    ld [$c815], a
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_429b

    cp $fe
    jr nz, jr_008_41ed

    call Call_008_4936
    jr c, jr_008_4213

jr_008_41ed:
    cp $fd
    jr nz, jr_008_4213

    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57d5
    add hl, bc
    ld a, [$c1f9]
    cp [hl]
    inc hl
    jr c, jr_008_4208

    ld bc, $0005
    add hl, bc

jr_008_4208:
    ld bc, $0004
    add hl, bc
    ld a, [hl-]
    ld [$c815], a
    dec hl
    dec hl
    dec hl

jr_008_4213:
    ld a, [$c812]
    add [hl]
    ld b, a
    inc hl
    inc hl
    ld a, b
    add [hl]
    ld b, a
    ld a, [$dd61]
    ld c, a
    ld a, [$c818]
    sub c
    sub b
    jp nc, Jump_008_429b

    cpl
    inc a
    ld b, a
    ld a, [$dd61]
    add a
    add [hl]
    add [hl]
    ld c, a
    ld a, b
    cp c
    jp nc, Jump_008_429b

    ld a, b
    ld [$c814], a
    dec hl
    ld a, [$c811]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c817]
    cp c
    jr c, jr_008_425f

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd62
    ld a, [$c817]
    sub [hl]
    sub c
    jp nc, Jump_008_429b

    cpl
    inc a
    ld [$c813], a
    jr jr_008_4275

jr_008_425f:
    ld a, c
    sub [hl]
    inc a
    ld c, a
    ld hl, $dd62
    ld a, [$c817]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_429b

    ld [$c813], a
    cpl
    inc a

jr_008_4275:
    ld [$c1f4], a
    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_429b

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c117
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d

Jump_008_429b:
jr_008_429b:
    pop bc
    dec c
    ret z

    inc de
    inc de
    inc de
    inc de
    ld hl, $c811
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_41b8


Call_008_42ac:
Jump_008_42ac:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4364

    call Call_008_4aa0
    jp c, Jump_008_4364

    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4b23
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f7]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_4364

    ld a, [$c812]
    add [hl]
    inc hl
    inc hl
    add [hl]
    ld b, a
    ld a, [$dd61]
    ld c, a
    ld a, [$c818]
    sub c
    sub b
    jp nc, Jump_008_4364

    cpl
    inc a
    ld b, a
    ld a, [$dd61]
    add a
    add [hl]
    add [hl]
    ld c, a
    ld a, b
    cp c
    jp nc, Jump_008_4364

    ld a, b
    ld [$c814], a
    dec hl
    ld a, [$c811]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c817]
    cp c
    jr c, jr_008_4325

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd62
    ld a, [$c817]
    sub [hl]
    sub c
    jp nc, Jump_008_4364

    cpl
    inc a
    ld [$c813], a
    jr jr_008_433b

jr_008_4325:
    ld a, c
    sub [hl]
    inc a
    ld c, a
    ld hl, $dd62
    ld a, [$c817]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4364

    ld [$c813], a
    cpl
    inc a

jr_008_433b:
    ld [$c1f4], a
    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4364

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c11e
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a

Jump_008_4364:
jr_008_4364:
    pop bc
    dec c
    ret z

    inc de
    inc de
    inc de
    inc de
    ld hl, $c811
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_42ac


Call_008_4375:
    ld a, [$c811]
    ld [$c816], a

Jump_008_437b:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_445c

    ld a, [de]
    ld [$c815], a
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_445c

    cp $fe
    jp z, Jump_008_445c

    cp $fd
    jr nz, jr_008_43d2

    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57d5
    add hl, bc
    ld a, [$c1f9]
    cp [hl]
    inc hl
    jr c, jr_008_43c7

    ld bc, $0005
    add hl, bc

jr_008_43c7:
    ld bc, $0004
    add hl, bc
    ld a, [hl-]
    ld [$c815], a
    dec hl
    dec hl
    dec hl

jr_008_43d2:
    ld a, [$c812]
    add [hl]
    inc hl
    inc hl
    sub [hl]
    ld b, a
    ld a, [$dd63]
    ld c, a
    ld a, [$c818]
    add c
    ld c, a
    ld a, b
    sub c
    jp nc, Jump_008_445c

    ld c, a
    cpl
    inc a
    ld b, a
    ld a, [$dd63]
    add a
    add [hl]
    add [hl]
    cp b
    jp c, Jump_008_445c

    jp z, Jump_008_445c

    ld a, c
    ld [$c814], a
    dec hl
    ld a, [$c816]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c817]
    cp c
    jr c, jr_008_4420

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd64
    ld a, [$c817]
    sub [hl]
    sub c
    jp nc, Jump_008_445c

    cpl
    inc a
    ld [$c813], a
    jr jr_008_4436

jr_008_4420:
    ld a, c
    sub [hl]
    inc a
    ld c, a
    ld hl, $dd64
    ld a, [$c817]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_445c

    ld [$c813], a
    cpl
    inc a

jr_008_4436:
    ld [$c1f4], a
    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_445c

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c125
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d

Jump_008_445c:
jr_008_445c:
    pop bc
    dec c
    ret z

    inc de
    inc de
    inc de
    inc de
    ld hl, $c816
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_437b


Call_008_446d:
Jump_008_446d:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4529

    call Call_008_4aa0
    jp c, Jump_008_4529

    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4b23
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f7]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_4529

    ld a, [$c812]
    add [hl]
    inc hl
    inc hl
    sub [hl]
    ld b, a
    ld a, [$dd63]
    ld c, a
    ld a, [$c818]
    add c
    ld c, a
    ld a, b
    sub c
    jp nc, Jump_008_4529

    ld c, a
    cpl
    inc a
    ld b, a
    ld a, [$dd63]
    add a
    add [hl]
    add [hl]
    cp b
    jp c, Jump_008_4529

    jp z, Jump_008_4529

    ld a, c
    ld [$c814], a
    dec hl
    ld a, [$c811]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c817]
    cp c
    jr c, jr_008_44ea

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd64
    ld a, [$c817]
    sub [hl]
    sub c
    jp nc, Jump_008_4529

    cpl
    inc a
    ld [$c813], a
    jr jr_008_4500

jr_008_44ea:
    ld a, c
    sub [hl]
    inc a
    ld c, a
    ld hl, $dd64
    ld a, [$c817]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4529

    ld [$c813], a
    cpl
    inc a

jr_008_4500:
    ld [$c1f4], a
    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4529

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c12c
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a

Jump_008_4529:
jr_008_4529:
    pop bc
    dec c
    ret z

    inc de
    inc de
    inc de
    inc de
    ld hl, $c811
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_446d


Call_008_453a:
Jump_008_453a:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4619

    ld a, [de]
    cp $08
    jp z, Jump_008_4619

    and $40
    jp nz, Jump_008_4619

    ld a, [de]
    ld [$c815], a
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl+]
    cp $ff
    jp z, Jump_008_4619

    cp $fe
    jp z, Jump_008_4619

    cp $fd
    jr nz, jr_008_458b

    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57e4
    add hl, bc
    ld a, [hl-]
    ld [$c815], a
    dec hl
    dec hl

jr_008_458b:
    ld a, [$c811]
    add [hl]
    inc hl
    inc hl
    add [hl]
    ld b, a
    ld a, [$dd66]
    ld c, a
    ld a, [$c817]
    sub c
    sub b
    jp nc, Jump_008_4619

    cpl
    inc a
    ld b, a
    ld a, [$dd66]
    add a
    add [hl]
    add [hl]
    ld c, a
    ld a, b
    cp c
    jp nc, Jump_008_4619

    ld a, b
    ld [$c813], a
    dec hl
    dec hl
    dec hl
    ld a, [$c812]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c818]
    cp c
    jr c, jr_008_45d7

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd65
    ld a, [$c818]
    sub [hl]
    sub c
    jp nc, Jump_008_4619

    cpl
    inc a
    ld [$c814], a
    jr jr_008_45ec

jr_008_45d7:
    ld a, c
    sub [hl]
    ld c, a
    ld hl, $dd65
    ld a, [$c818]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4619

    ld [$c814], a
    cpl
    inc a

jr_008_45ec:
    ld [$c1f4], a
    ld a, [$c815]
    rla
    jr c, jr_008_462c

    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4619

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c133
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    dec a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d

Jump_008_4619:
jr_008_4619:
    pop bc
    dec c
    ret z

    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c812
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_453a


jr_008_462c:
    pop bc
    ld hl, $c133
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    dec a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_008_4645:
Jump_008_4645:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4704

    call Call_008_4aa0
    jp c, Jump_008_4704

    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4b23
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f7]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_4704

    inc hl
    ld a, [$c811]
    add [hl]
    inc hl
    inc hl
    add [hl]
    ld b, a
    ld a, [$dd66]
    ld c, a
    ld a, [$c817]
    sub c
    sub b
    jp nc, Jump_008_4704

    cpl
    inc a
    ld b, a
    ld a, [$dd66]
    add a
    add [hl]
    add [hl]
    ld c, a
    ld a, b
    cp c
    jp nc, Jump_008_4704

    ld a, b
    ld [$c813], a
    dec hl
    dec hl
    dec hl
    ld a, [$c812]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c818]
    cp c
    jr c, jr_008_46c1

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd65
    ld a, [$c818]
    sub [hl]
    sub c
    jp nc, Jump_008_4704

    cpl
    inc a
    ld [$c814], a
    jr jr_008_46d6

jr_008_46c1:
    ld a, c
    sub [hl]
    ld c, a
    ld hl, $dd65
    ld a, [$c818]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4704

    ld [$c814], a
    cpl
    inc a

jr_008_46d6:
    ld [$c1f4], a
    ld a, [de]
    rla
    jr c, jr_008_4717

    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4704

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c13a
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    dec a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a

Jump_008_4704:
jr_008_4704:
    pop bc
    dec c
    ret z

    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c812
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_4645


jr_008_4717:
    pop bc
    ld hl, $c13a
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    dec a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a
    ret


Call_008_4733:
Jump_008_4733:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4817

    ld a, [de]
    cp $08
    jp z, Jump_008_4817

    and $40
    jp nz, Jump_008_4817

    ld a, [de]
    ld [$c815], a
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl+]
    cp $ff
    jp z, Jump_008_4817

    cp $fe
    jp z, Jump_008_4817

    cp $fd
    jr nz, jr_008_4784

    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57e4
    add hl, bc
    ld a, [hl-]
    ld [$c815], a
    dec hl
    dec hl

jr_008_4784:
    ld a, [$c811]
    add [hl]
    inc hl
    inc hl
    sub [hl]
    inc a
    ld b, a
    ld a, [$dd68]
    ld c, a
    ld a, [$c817]
    add c
    ld c, a
    ld a, b
    sub c
    jp nc, Jump_008_4817

    ld c, a
    cpl
    inc a
    ld b, a
    ld a, [$dd68]
    add a
    add [hl]
    add [hl]
    cp b
    jp c, Jump_008_4817

    jp z, Jump_008_4817

    ld a, c
    ld [$c813], a
    dec hl
    dec hl
    dec hl
    ld a, [$c812]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c818]
    cp c
    jr c, jr_008_47d5

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd67
    ld a, [$c818]
    sub [hl]
    sub c
    jp nc, Jump_008_4817

    cpl
    inc a
    ld [$c814], a
    jr jr_008_47ea

jr_008_47d5:
    ld a, c
    sub [hl]
    ld c, a
    ld hl, $dd67
    ld a, [$c818]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4817

    ld [$c814], a
    cpl
    inc a

jr_008_47ea:
    ld [$c1f4], a
    ld a, [$c815]
    rla
    jr c, jr_008_482a

    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4817

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c141
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    inc a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d

Jump_008_4817:
jr_008_4817:
    pop bc
    dec c
    ret z

    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c812
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_4733


jr_008_482a:
    pop bc
    ld hl, $c141
    ld a, [$c815]
    ld [hl+], a
    inc de
    ld a, [de]
    dec de
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    inc a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_008_4843:
Jump_008_4843:
    push bc
    ld a, [de]
    and $3f
    jp z, Jump_008_4907

    call Call_008_4aa0
    jp c, Jump_008_4907

    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4b23
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f7]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, Jump_008_4907

    inc hl
    ld a, [$c811]
    add [hl]
    inc hl
    inc hl
    sub [hl]
    inc a
    ld b, a
    ld a, [$dd68]
    ld c, a
    ld a, [$c817]
    add c
    ld c, a
    ld a, b
    sub c
    jp nc, Jump_008_4907

    ld c, a
    cpl
    inc a
    ld b, a
    ld a, [$dd68]
    add a
    add [hl]
    add [hl]
    cp b
    jp c, Jump_008_4907

    jp z, Jump_008_4907

    ld a, c
    ld [$c813], a
    dec hl
    dec hl
    dec hl
    ld a, [$c812]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [$c818]
    cp c
    jr c, jr_008_48c4

    ld a, c
    add [hl]
    ld c, a
    ld hl, $dd67
    ld a, [$c818]
    sub [hl]
    sub c
    jp nc, Jump_008_4907

    cpl
    inc a
    ld [$c814], a
    jr jr_008_48d9

jr_008_48c4:
    ld a, c
    sub [hl]
    ld c, a
    ld hl, $dd67
    ld a, [$c818]
    add [hl]
    ld b, a
    ld a, c
    sub b
    jp nc, Jump_008_4907

    ld [$c814], a
    cpl
    inc a

jr_008_48d9:
    ld [$c1f4], a
    ld a, [de]
    rla
    jr c, jr_008_491a

    ld hl, $c1f3
    ld a, [$c1f4]
    cp [hl]
    jr c, jr_008_4907

    ld a, [$c1f4]
    ld [hl], a
    ld hl, $c148
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    inc a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a

Jump_008_4907:
jr_008_4907:
    pop bc
    dec c
    ret z

    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c812
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_008_4843


jr_008_491a:
    pop bc
    ld hl, $c148
    ld a, [de]
    ld [hl+], a
    ld a, [$c1f7]
    ld [hl+], a
    ld a, [$c814]
    ld [hl+], a
    ld a, [$c813]
    inc a
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a
    ret


Call_008_4936:
    ld a, [$c812]
    ld b, a
    ld a, [$c818]
    sub b
    cp $08
    ret nc

    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c818]
    and $07
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $5795
    add hl, bc
    scf
    ret


Jump_008_495b:
    ld hl, $c14f
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $dd6a
    ld a, [$dd51]
    add [hl]
    ld [$c818], a
    sub $08
    and $f8
    ld e, a
    and $f0
    swap a
    ld d, a
    ld a, e
    and $0f
    swap a
    ld e, a
    ld hl, $dd6b
    ld a, [$dd53]
    add [hl]
    ld [$c817], a
    and $f8
    srl a
    ld l, a
    ld h, $00
    add hl, de
    ld de, $c86f
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    bit 5, a
    ret z

    call Call_008_4aa0
    ret c

    ld hl, $4b23
    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c1f7]
    ld c, a
    add hl, bc
    ld a, [hl]
    add a
    rl b
    add a
    rl b
    ld c, a
    ld hl, $5409
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$c812]
    add [hl]
    ld b, a
    ld a, [$c818]
    sub b
    jr nc, jr_008_49d0

    cpl
    inc a

jr_008_49d0:
    ld b, a
    inc hl
    ld a, [$c811]
    add [hl]
    ld c, a
    ld a, [$c817]
    sub c
    jr nc, jr_008_49df

    cpl
    inc a

jr_008_49df:
    ld c, a
    inc hl
    ld a, [$dd6c]
    add [hl]
    inc hl
    sub b
    ret z

    ret c

    ld a, [$dd6d]
    add [hl]
    sub c
    ret z

    ret c

    ld hl, $c14f
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    dec de
    inc hl
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld a, [$c1f2]
    ld [hl], a
    ret


    ld c, $00
    ld hl, $dd6b
    ld a, [$c207]
    add [hl]
    ld hl, $dd6d
    sub [hl]
    ld e, a
    and $07
    ld b, a
    ld a, [$dd6d]
    add a
    add b
    ld b, a
    and $07
    jr z, jr_008_4a20

    inc c

jr_008_4a20:
    ld a, b
    and $f8
    rlca
    swap a
    add c
    ld [$c815], a
    ld c, $00
    ld hl, $dd6a
    ld a, [$c203]
    add [hl]
    ld hl, $dd6c
    sub [hl]
    ld d, a
    and $07
    ld b, a
    ld a, [$dd6c]
    add a
    add b
    ld b, a
    and $07
    jr z, jr_008_4a46

    inc c

jr_008_4a46:
    ld a, b
    and $f8
    rlca
    swap a
    add c
    ld b, a
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
    ld e, a
    ld d, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld de, $0080

jr_008_4a69:
    push hl
    ld a, [$c815]
    ld c, a

jr_008_4a6e:
    ld a, [hl+]
    cp $82
    jr nz, jr_008_4a78

    ld a, [hl]
    cp $37
    jr z, jr_008_4a89

jr_008_4a78:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_008_4a6e

    pop hl
    add hl, de
    dec b
    jr nz, jr_008_4a69

    xor a
    ld [$c156], a
    jr jr_008_4a9b

jr_008_4a89:
    dec hl
    ld e, l
    ld d, h
    ld hl, $c156
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    dec de
    inc hl
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl

jr_008_4a9b:
    ldh a, [$8d]
    jp Bankswitch0fce


Call_008_4aa0:
    inc de
    ld a, [de]
    sub $40
    ld [$c1f2], a
    dec de
    ld c, a
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld a, [hl]
    ld [$c1f7], a
    ld a, [$c1f2]
    ld c, a
    and $f0
    swap a
    ld b, a
    ld a, c
    and $0f
    swap a
    add a
    rl b
    ld c, a
    ld hl, $c200
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_008_4acf

    scf
    ret


jr_008_4acf:
    ld a, $06
    add l
    ld l, a
    ld a, [hl-]
    dec hl
    add [hl]
    inc hl
    ld a, [hl-]
    dec hl
    adc [hl]
    ld [$c812], a
    ld a, $07
    add l
    ld l, a
    ld a, [hl-]
    dec hl
    add [hl]
    inc hl
    ld a, [hl-]
    dec hl
    adc [hl]
    ld [$c811], a
    and a
    ret


    ld d, l
    ld c, e
    ld d, l
    ld c, e
    ld e, l
    ld c, e
    pop af
    ld c, e
    di
    ld c, e
    or $4b
    ld sp, hl
    ld c, e
    ld b, $4c
    ld a, [bc]
    ld c, h
    inc hl
    ld c, h
    ld a, [hl+]
    ld c, h
    cpl
    ld c, h
    ld a, l
    ld c, h
    add c
    ld c, h
    adc c
    ld c, h
    jp c, $2b4c

    ld c, l
    ld sp, $514d
    ld c, l
    ld l, a
    ld c, l
    ld l, a
    ld c, l
    ld [hl], e
    ld c, l
    inc bc
    ld c, [hl]
    dec bc
    ld c, [hl]
    ld e, h
    ld c, [hl]
    db $ec
    ld c, [hl]
    db $ec
    ld c, [hl]
    inc l
    ld c, a
    inc l
    ld c, a
    inc l
    ld c, a
    inc d
    ld d, b
    rst $10
    ld d, b
    rst $10
    ld d, b
    ld a, c
    ld d, c
    ld a, c
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    ld l, l
    ld d, d
    rra
    ld d, e
    rra
    ld d, e
    rra
    ld d, e
    rra
    ld d, e
    rra
    ld d, e
    rra
    ld d, e
    rra
    ld d, e
    add hl, bc
    ld d, h
    add hl, bc
    ld d, h
    add hl, bc
    ld d, h
    add hl, bc
    ld d, h
    add hl, bc
    ld d, h
    ld [bc], a
    add hl, de
    add hl, de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rrca
    ld [bc], a
    ld [bc], a
    nop
    dec de
    ld [bc], a
    ld [bc], a
    inc e
    dec de
    ld [bc], a
    ld [bc], a
    dec e
    dec de
    ld [bc], a
    ld [bc], a
    ld b, c
    nop
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, e
    ld [bc], a
    ld [bc], a
    ld b, c

jr_008_4b79:
    ld de, $0202
    nop
    ld b, h
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld c, h
    ld c, e
    ccf
    ld b, b
    ld c, h
    ld c, e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, d
    ld c, c
    ld c, d
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld h, $03
    ld c, [hl]
    db $10
    ld bc, $3000
    inc h
    inc hl
    dec h
    ld c, a
    daa
    jr nz, jr_008_4b79

    pop de
    jp nc, $d4d3

    push de
    sub $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4be1

    jr nz, jr_008_4be3

    jr nz, jr_008_4be5

    jr nz, jr_008_4be7

    jr nz, jr_008_4be9

    jr nz, jr_008_4beb

    jr nz, jr_008_4bed

    jr nz, jr_008_4bef

    jr nz, jr_008_4bf1

    jr nz, jr_008_4bd5

    jr nz, jr_008_4bf5

jr_008_4bd5:
    jr nz, @+$04

    ld [bc], a
    jr nz, @+$22

    db $db
    ld a, [de]
    jr nz, jr_008_4be0

    ld [bc], a
    ld [bc], a

jr_008_4be0:
    ld [bc], a

jr_008_4be1:
    jr nz, jr_008_4c03

jr_008_4be3:
    jr nz, jr_008_4c05

jr_008_4be5:
    jr nz, jr_008_4c07

jr_008_4be7:
    jr nz, @+$22

jr_008_4be9:
    jr nz, jr_008_4c0b

jr_008_4beb:
    jr nz, jr_008_4c0d

jr_008_4bed:
    jr nz, jr_008_4bf1

jr_008_4bef:
    ld [bc], a
    ld [bc], a

jr_008_4bf1:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4bf5:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, $2122
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4c21

    jr nz, jr_008_4c23

jr_008_4c03:
    jr nz, jr_008_4c05

jr_008_4c05:
    nop
    ld [bc], a

jr_008_4c07:
    ld [bc], a
    jr nz, jr_008_4c2a

    ld [bc], a

jr_008_4c0b:
    ld [bc], a
    inc h

jr_008_4c0d:
    ret c

    call c, $d9dd
    db $dd
    sbc $02
    dec h
    rst $18
    ldh [$ffe2], a
    ld [bc], a
    ldh [rNR50], a
    ret nc

    pop de
    jp nc, $d4d3

    push de

jr_008_4c21:
    sub $27

jr_008_4c23:
    inc b
    ld c, $10
    nop
    inc h
    dec h
    daa

jr_008_4c2a:
    rla
    ret nz

    pop bc
    rla
    rla
    jr nz, jr_008_4c51

    jr nz, jr_008_4c53

    jr nz, jr_008_4c55

    jr nz, @+$22

    jr nz, jr_008_4c59

    jr nz, @+$22

    jr nz, jr_008_4c5d

    jr nz, @+$22

    ld [$4c18], sp
    cpl
    ld [$4c18], sp
    cpl
    ld [$4c18], sp
    cpl
    ld [$4c18], sp
    cpl
    dec hl
    ld [bc], a

jr_008_4c51:
    ld [bc], a
    ld [bc], a

jr_008_4c53:
    ld [bc], a
    ld [bc], a

jr_008_4c55:
    ld [$4c18], sp
    cpl

jr_008_4c59:
    ld [$4c18], sp
    cpl

jr_008_4c5d:
    ld [$4c18], sp
    cpl
    ld c, d
    ld c, d
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, d
    ld [bc], a
    ld [bc], a
    ld [$4c18], sp
    cpl
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld sp, $3332
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4cac

    jr nz, jr_008_4cae

    jr nz, jr_008_4cb0

    jr nz, jr_008_4cb2

    jr nz, jr_008_4cb4

    jr nz, jr_008_4cb6

    jr nz, jr_008_4cb8

    jr nz, jr_008_4cba

    jr nz, jr_008_4cbc

    jr nz, jr_008_4cbe

    jr nz, jr_008_4cc0

    jr nz, jr_008_4cc2

    jr nz, jr_008_4cc4

    jr nz, jr_008_4cc6

    jr nz, jr_008_4cc8

    jr nz, jr_008_4cac

    ld [bc], a
    ld [bc], a

jr_008_4cac:
    ld [bc], a
    ld [bc], a

jr_008_4cae:
    ld [bc], a
    ld [bc], a

jr_008_4cb0:
    ld [bc], a
    ld [bc], a

jr_008_4cb2:
    ld [bc], a
    ld [bc], a

jr_008_4cb4:
    ld [bc], a
    ld [bc], a

jr_008_4cb6:
    ld [bc], a
    ld [bc], a

jr_008_4cb8:
    ld [bc], a
    ld [bc], a

jr_008_4cba:
    ld [bc], a
    ld [bc], a

jr_008_4cbc:
    ld [bc], a
    ld [bc], a

jr_008_4cbe:
    ld [bc], a
    ld [bc], a

jr_008_4cc0:
    ld [bc], a
    ld [bc], a

jr_008_4cc2:
    ld [bc], a
    ld [bc], a

jr_008_4cc4:
    ld [bc], a
    ld [bc], a

jr_008_4cc6:
    ld [bc], a
    ld [bc], a

jr_008_4cc8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4cfd

    jr nz, jr_008_4cff

    jr nz, jr_008_4d01

    jr nz, jr_008_4d03

    jr nz, jr_008_4d05

    jr nz, jr_008_4d07

    jr nz, jr_008_4d09

    jr nz, jr_008_4d0b

    jr nz, jr_008_4d0d

    jr nz, jr_008_4d0f

    jr nz, jr_008_4d11

    jr nz, jr_008_4d13

    jr nz, jr_008_4d15

    jr nz, jr_008_4d17

    jr nz, jr_008_4d19

    jr nz, jr_008_4cfd

    ld [bc], a
    ld [bc], a

jr_008_4cfd:
    ld [bc], a
    ld [bc], a

jr_008_4cff:
    ld [bc], a
    ld [bc], a

jr_008_4d01:
    ld [bc], a
    ld [bc], a

jr_008_4d03:
    ld [bc], a
    ld [bc], a

jr_008_4d05:
    ld [bc], a
    ld [bc], a

jr_008_4d07:
    ld [bc], a
    ld [bc], a

jr_008_4d09:
    ld [bc], a
    ld [bc], a

jr_008_4d0b:
    ld [bc], a
    ld [bc], a

jr_008_4d0d:
    ld [bc], a
    ld [bc], a

jr_008_4d0f:
    ld [bc], a
    ld [bc], a

jr_008_4d11:
    ld [bc], a
    ld [bc], a

jr_008_4d13:
    ld [bc], a
    ld [bc], a

jr_008_4d15:
    ld [bc], a
    ld [bc], a

jr_008_4d17:
    ld [bc], a
    ld [bc], a

jr_008_4d19:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4d4d

    jr nz, jr_008_4d4f

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4d4d:
    ld [bc], a
    ld [bc], a

jr_008_4d4f:
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $20
    jr nz, @+$0b

    ld a, [bc]
    dec bc
    cpl
    dec bc
    cpl
    nop
    ld d, $20
    jr nz, jr_008_4d6e

    jr c, jr_008_4d6f

    scf
    dec c
    scf
    dec sp
    inc a
    jr nz, jr_008_4d89

    dec a
    ld a, $0b
    cpl
    dec bc

jr_008_4d6e:
    cpl

jr_008_4d6f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    jr nz, jr_008_4d88

    jr nz, jr_008_4d8b

    inc d
    inc de
    inc d
    jr nz, @+$17

    jr nz, jr_008_4d94

    jr nz, jr_008_4da1

    jr nz, jr_008_4da3

    ld [de], a
    jr nz, jr_008_4d98

    jr nz, jr_008_4d9b

jr_008_4d88:
    inc d

jr_008_4d89:
    inc de
    inc d

jr_008_4d8b:
    jr nz, @+$17

    jr nz, jr_008_4da4

    jr nz, jr_008_4db1

    jr nz, jr_008_4db3

    ld [de], a

jr_008_4d94:
    jr nz, jr_008_4da8

    jr nz, jr_008_4dab

jr_008_4d98:
    inc d
    inc de
    inc d

jr_008_4d9b:
    jr nz, @+$17

    jr nz, jr_008_4db4

    jr nz, jr_008_4dc1

jr_008_4da1:
    jr nz, jr_008_4dc3

jr_008_4da3:
    ld [de], a

jr_008_4da4:
    jr nz, jr_008_4db8

    jr nz, jr_008_4dbb

jr_008_4da8:
    inc d
    inc de
    inc d

jr_008_4dab:
    jr nz, @+$17

    jr nz, jr_008_4dc4

    jr nz, jr_008_4dd1

jr_008_4db1:
    jr nz, jr_008_4dd3

jr_008_4db3:
    ld [de], a

jr_008_4db4:
    jr nz, jr_008_4dc8

    jr nz, jr_008_4dcb

jr_008_4db8:
    inc d
    inc de
    inc d

jr_008_4dbb:
    jr nz, @+$17

    jr nz, jr_008_4dd4

    jr nz, jr_008_4de1

jr_008_4dc1:
    jr nz, jr_008_4de3

jr_008_4dc3:
    ld [de], a

jr_008_4dc4:
    jr nz, jr_008_4dd8

    jr nz, jr_008_4ddb

jr_008_4dc8:
    inc d
    inc de
    inc d

jr_008_4dcb:
    jr nz, @+$17

    jr nz, jr_008_4de4

    jr nz, jr_008_4df1

jr_008_4dd1:
    jr nz, jr_008_4df3

jr_008_4dd3:
    ld [de], a

jr_008_4dd4:
    jr nz, jr_008_4de8

    jr nz, jr_008_4deb

jr_008_4dd8:
    inc d
    inc de
    inc d

jr_008_4ddb:
    jr nz, @+$17

    jr nz, @+$17

    jr nz, jr_008_4e01

jr_008_4de1:
    jr nz, jr_008_4e03

jr_008_4de3:
    ld [de], a

jr_008_4de4:
    jr nz, @+$14

    jr nz, jr_008_4dfb

jr_008_4de8:
    inc d
    inc de
    inc d

jr_008_4deb:
    jr nz, @+$17

    jr nz, jr_008_4e04

    jr nz, @+$22

jr_008_4df1:
    jr nz, @+$22

jr_008_4df3:
    jr nz, @+$22

    inc d
    dec d
    jr nz, @+$22

    inc d
    dec d

jr_008_4dfb:
    jr nz, @+$22

    inc d
    dec d
    jr nz, @+$22

jr_008_4e01:
    jr nz, @+$22

jr_008_4e03:
    ld [bc], a

jr_008_4e04:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_008_4e2e

    jr nz, jr_008_4e30

    jr nz, jr_008_4e32

    jr nz, jr_008_4e34

    jr nz, jr_008_4e36

    jr nz, jr_008_4e38

    jr nz, jr_008_4e3a

    jr nz, jr_008_4e3c

    jr nz, jr_008_4e3e

    jr nz, jr_008_4e40

    jr nz, jr_008_4e42

    jr nz, jr_008_4e44

    jr nz, jr_008_4e46

    jr nz, jr_008_4e48

    jr nz, jr_008_4e4a

    jr nz, jr_008_4e2e

    ld [bc], a
    ld [bc], a

jr_008_4e2e:
    ld [bc], a
    ld [bc], a

jr_008_4e30:
    ld [bc], a
    ld [bc], a

jr_008_4e32:
    ld [bc], a
    ld [bc], a

jr_008_4e34:
    ld [bc], a
    ld [bc], a

jr_008_4e36:
    ld [bc], a
    ld [bc], a

jr_008_4e38:
    ld [bc], a
    ld [bc], a

jr_008_4e3a:
    ld [bc], a
    ld [bc], a

jr_008_4e3c:
    ld [bc], a
    ld [bc], a

jr_008_4e3e:
    ld [bc], a
    ld [bc], a

jr_008_4e40:
    ld [bc], a
    ld [bc], a

jr_008_4e42:
    ld [bc], a
    ld [bc], a

jr_008_4e44:
    ld [bc], a
    ld [bc], a

jr_008_4e46:
    ld [bc], a
    ld [bc], a

jr_008_4e48:
    ld [bc], a
    ld [bc], a

jr_008_4e4a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    jr nz, jr_008_4e71

    jr nz, jr_008_4e74

    inc d
    inc de
    inc d
    jr nz, @+$17

    jr nz, jr_008_4e7d

    jr nz, jr_008_4e8a

    jr nz, jr_008_4e8c

    ld [de], a
    jr nz, jr_008_4e81

    jr nz, jr_008_4e84

jr_008_4e71:
    inc d
    inc de
    inc d

jr_008_4e74:
    jr nz, @+$17

    jr nz, jr_008_4e8d

    jr nz, jr_008_4e9a

    jr nz, jr_008_4e9c

    ld [de], a

jr_008_4e7d:
    jr nz, jr_008_4e91

    jr nz, jr_008_4e94

jr_008_4e81:
    inc d
    inc de
    inc d

jr_008_4e84:
    jr nz, @+$17

    jr nz, jr_008_4e9d

    jr nz, jr_008_4eaa

jr_008_4e8a:
    jr nz, jr_008_4eac

jr_008_4e8c:
    ld [de], a

jr_008_4e8d:
    jr nz, jr_008_4ea1

    jr nz, jr_008_4ea4

jr_008_4e91:
    inc d
    inc de
    inc d

jr_008_4e94:
    jr nz, @+$17

    jr nz, jr_008_4ead

    jr nz, jr_008_4eba

jr_008_4e9a:
    jr nz, jr_008_4ebc

jr_008_4e9c:
    ld [de], a

jr_008_4e9d:
    jr nz, jr_008_4eb1

    jr nz, jr_008_4eb4

jr_008_4ea1:
    inc d
    inc de
    inc d

jr_008_4ea4:
    jr nz, @+$17

    jr nz, jr_008_4ebd

    jr nz, jr_008_4eca

jr_008_4eaa:
    jr nz, jr_008_4ecc

jr_008_4eac:
    ld [de], a

jr_008_4ead:
    jr nz, jr_008_4ec1

    jr nz, jr_008_4ec4

jr_008_4eb1:
    inc d
    inc de
    inc d

jr_008_4eb4:
    jr nz, @+$17

    jr nz, jr_008_4ecd

    jr nz, jr_008_4eda

jr_008_4eba:
    jr nz, jr_008_4edc

jr_008_4ebc:
    ld [de], a

jr_008_4ebd:
    jr nz, jr_008_4ed1

    jr nz, jr_008_4ed4

jr_008_4ec1:
    inc d
    inc de
    inc d

jr_008_4ec4:
    jr nz, @+$17

    jr nz, @+$17

    jr nz, jr_008_4eea

jr_008_4eca:
    jr nz, jr_008_4eec

jr_008_4ecc:
    ld [de], a

jr_008_4ecd:
    jr nz, @+$14

    jr nz, jr_008_4ee4

jr_008_4ed1:
    inc d
    inc de
    inc d

jr_008_4ed4:
    jr nz, @+$17

    jr nz, jr_008_4eed

    jr nz, jr_008_4efa

jr_008_4eda:
    jr nz, jr_008_4efc

jr_008_4edc:
    jr nz, jr_008_4efe

    inc d
    dec d
    jr nz, jr_008_4f02

    inc d
    dec d

jr_008_4ee4:
    jr nz, jr_008_4f06

    inc d
    dec d
    jr nz, jr_008_4f0a

jr_008_4eea:
    jr nz, jr_008_4f0c

jr_008_4eec:
    ld [bc], a

jr_008_4eed:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4efa:
    ld [bc], a
    ld [bc], a

jr_008_4efc:
    ld [bc], a
    ld [bc], a

jr_008_4efe:
    ld [bc], a

jr_008_4eff:
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4f02:
    ld [bc], a

jr_008_4f03:
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4f06:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4f0a:
    ld [bc], a
    ld [bc], a

jr_008_4f0c:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_008_4f25:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc e
    adc l
    adc [hl]
    sub c
    and d
    xor d
    xor e
    sbc a

jr_008_4f34:
    and b
    adc h
    cp b
    jr nz, jr_008_4f59

    jr nz, jr_008_4f5b

    jr nz, jr_008_4f5d

    jr nz, jr_008_4f5f

    jr nz, jr_008_4f61

    jr nz, jr_008_4f63

    jr nz, jr_008_4f65

    jr nz, jr_008_4f67

    jr nz, jr_008_4f69

jr_008_4f49:
    jr nz, jr_008_4f6b

    jr nz, jr_008_4f6d

    jr nz, jr_008_4f6f

jr_008_4f4f:
    jr nz, jr_008_4f71

jr_008_4f51:
    jr nz, jr_008_4f73

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

jr_008_4f59:
    jr nz, @+$22

jr_008_4f5b:
    jr nz, @+$22

jr_008_4f5d:
    jr nz, @+$22

jr_008_4f5f:
    jr nz, @+$22

jr_008_4f61:
    jr nz, @+$22

jr_008_4f63:
    jr nz, @+$22

jr_008_4f65:
    jr nz, jr_008_4f87

jr_008_4f67:
    jr nz, jr_008_4f89

jr_008_4f69:
    jr nz, jr_008_4f8b

jr_008_4f6b:
    jr nz, jr_008_4f8d

jr_008_4f6d:
    jr nz, jr_008_4f8f

jr_008_4f6f:
    jr nz, jr_008_4f91

jr_008_4f71:
    jr nz, jr_008_4eff

jr_008_4f73:
    adc h
    jr nz, jr_008_4f96

    jr nz, jr_008_4f98

    jr nz, jr_008_4f9a

    jr nz, jr_008_4f9c

    jr nz, jr_008_4f9e

    jr nz, jr_008_4fa0

    jr nz, jr_008_4f03

    jr nz, jr_008_4fa4

    jr nz, jr_008_4f0a

    add l

jr_008_4f87:
    add [hl]
    add a

jr_008_4f89:
    adc h

jr_008_4f8a:
    adc h

jr_008_4f8b:
    adc h
    adc h

jr_008_4f8d:
    adc h
    adc h

jr_008_4f8f:
    adc b
    adc c

jr_008_4f91:
    adc d
    adc e
    cp [hl]
    cp a
    adc d

jr_008_4f96:
    add c
    sub l

jr_008_4f98:
    sub [hl]
    sub a

jr_008_4f9a:
    jr nz, jr_008_4fbc

jr_008_4f9c:
    jr nz, jr_008_4fbe

jr_008_4f9e:
    jr nz, jr_008_4fc0

jr_008_4fa0:
    jr nz, jr_008_4f25

    jr nz, @-$64

jr_008_4fa4:
    jr nz, jr_008_4f34

    jr nz, jr_008_4fc8

jr_008_4fa8:
    jr nz, jr_008_4fca

    jr nz, jr_008_4fcc

jr_008_4fac:
    jr nz, jr_008_4f51

jr_008_4fae:
    jr nz, jr_008_4fd0

    jr nz, jr_008_4fd2

    jr nz, jr_008_4fd4

    jr nz, jr_008_4fd6

    jr nz, jr_008_4fd8

    jr nz, jr_008_4fda

jr_008_4fba:
    jr nz, jr_008_4fdc

jr_008_4fbc:
    jr nz, jr_008_4fde

jr_008_4fbe:
    jr nz, jr_008_4fe0

jr_008_4fc0:
    jr nz, jr_008_4fe2

    jr nz, jr_008_4fe4

    jr nz, @-$7c

    jr nz, jr_008_4f49

jr_008_4fc8:
    jr nz, @-$43

jr_008_4fca:
    jr nz, jr_008_4f4f

jr_008_4fcc:
    jr nz, jr_008_4f89

    jr nz, @-$66

jr_008_4fd0:
    jr nz, jr_008_4f6b

jr_008_4fd2:
    jr nz, @+$22

jr_008_4fd4:
    jr nz, @+$22

jr_008_4fd6:
    jr nz, @+$22

jr_008_4fd8:
    jr nz, jr_008_4ffa

jr_008_4fda:
    jr nz, jr_008_4ffc

jr_008_4fdc:
    jr nz, jr_008_4ffe

jr_008_4fde:
    jr nz, @-$41

jr_008_4fe0:
    jr nz, @-$6e

jr_008_4fe2:
    jr nz, jr_008_5004

jr_008_4fe4:
    jr nz, jr_008_5006

    jr nz, jr_008_5008

    jr nz, jr_008_4f87

    jr nz, jr_008_4f8a

    jr nz, jr_008_4fa8

    cp d
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    xor [hl]

jr_008_4ffa:
    jr nz, jr_008_501c

jr_008_4ffc:
    jr nz, jr_008_501e

jr_008_4ffe:
    jr nz, @-$5f

    jr nz, @-$5d

    jr nz, jr_008_4fac

jr_008_5004:
    jr nz, jr_008_5026

jr_008_5006:
    jr nz, jr_008_5028

jr_008_5008:
    jr nz, jr_008_4fae

    jr nz, @+$81

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @-$59

    jr nz, jr_008_4fba

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_008_4f9c

jr_008_501c:
    ld [bc], a
    adc a

jr_008_501e:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    or b
    or c

jr_008_5026:
    or d
    or e

jr_008_5028:
    or h
    or l
    or [hl]
    or a
    xor a
    jr nz, jr_008_504f

    jr nz, jr_008_5051

    jr nz, jr_008_5053

    jr nz, jr_008_5055

    jr nz, jr_008_5057

jr_008_5037:
    jr nz, jr_008_5059

    jr nz, jr_008_505b

    jr nz, jr_008_505d

jr_008_503d:
    jr nz, jr_008_505f

    jr nz, jr_008_5061

    jr nz, jr_008_5063

    jr nz, jr_008_5065

    jr nz, jr_008_5067

    jr nz, jr_008_5069

jr_008_5049:
    jr nz, jr_008_506b

    jr nz, jr_008_506d

    jr nz, jr_008_506f

jr_008_504f:
    jr nz, jr_008_5071

jr_008_5051:
    jr nz, jr_008_5073

jr_008_5053:
    jr nz, jr_008_5075

jr_008_5055:
    jr nz, jr_008_5077

jr_008_5057:
    jr nz, jr_008_5079

jr_008_5059:
    jr nz, jr_008_507b

jr_008_505b:
    jr nz, jr_008_507d

jr_008_505d:
    jr nz, jr_008_507f

jr_008_505f:
    jr nz, jr_008_5081

jr_008_5061:
    jr nz, @+$22

jr_008_5063:
    jr nz, @+$22

jr_008_5065:
    jr nz, @+$22

jr_008_5067:
    jr nz, @+$22

jr_008_5069:
    jr nz, @+$22

jr_008_506b:
    jr nz, @-$7b

jr_008_506d:
    jr nz, @+$22

jr_008_506f:
    jr nz, @+$22

jr_008_5071:
    jr nz, @+$22

jr_008_5073:
    jr nz, @+$22

jr_008_5075:
    jr nz, @+$22

jr_008_5077:
    jr nz, @+$22

jr_008_5079:
    jr nz, @+$22

jr_008_507b:
    jr nz, @+$22

jr_008_507d:
    jr nz, @+$22

jr_008_507f:
    jr nz, @+$22

jr_008_5081:
    add c
    jr nz, jr_008_50a4

    jr nz, jr_008_50a6

    jr nz, jr_008_50a8

    jr nz, jr_008_50aa

    jr nz, jr_008_5026

    jr nz, jr_008_50ae

    jr nz, jr_008_50b0

jr_008_5090:
    jr nz, jr_008_50b2

    jr nz, jr_008_50b4

    jr nz, @-$7d

    jr nz, jr_008_50b8

    jr nz, jr_008_50ba

    jr nz, jr_008_50bc

    jr nz, jr_008_50be

    jr nz, jr_008_50c0

    jr nz, jr_008_50c2

    jr nz, jr_008_50c4

jr_008_50a4:
    jr nz, jr_008_50c6

jr_008_50a6:
    jr nz, jr_008_50c8

jr_008_50a8:
    jr nz, jr_008_50ca

jr_008_50aa:
    jr nz, @+$80

    jr nz, jr_008_50ce

jr_008_50ae:
    jr nz, jr_008_50d0

jr_008_50b0:
    jr nz, jr_008_50d2

jr_008_50b2:
    jr nz, jr_008_5037

jr_008_50b4:
    jr nz, jr_008_50d6

    jr nz, @-$66

jr_008_50b8:
    jr nz, @+$22

jr_008_50ba:
    jr nz, jr_008_503d

jr_008_50bc:
    jr nz, @+$22

jr_008_50be:
    jr nz, @+$22

jr_008_50c0:
    jr nz, @+$22

jr_008_50c2:
    jr nz, @+$22

jr_008_50c4:
    jr nz, jr_008_5049

jr_008_50c6:
    jr nz, @+$22

jr_008_50c8:
    jr nz, @+$22

jr_008_50ca:
    jr nz, @+$22

    jr nz, @+$22

jr_008_50ce:
    jr nz, @+$22

jr_008_50d0:
    jr nz, jr_008_506f

jr_008_50d2:
    jr nz, @-$60

    jr nz, jr_008_5090

jr_008_50d6:
    cp d
    jr nz, jr_008_50f9

    jr nz, jr_008_50fb

    jr nz, jr_008_50fd

    jr nz, jr_008_50ff

    jr nz, jr_008_5101

    jr nz, jr_008_5103

    jr nz, jr_008_5105

    jr nz, jr_008_5107

    jr nz, jr_008_5109

    jr nz, jr_008_510b

    jr nz, jr_008_510d

    jr nz, jr_008_510f

    jr nz, jr_008_5111

    jr nz, jr_008_5113

    jr nz, jr_008_5115

    jr nz, jr_008_5117

    jr nz, jr_008_5119

jr_008_50f9:
    jr nz, jr_008_511b

jr_008_50fb:
    jr nz, jr_008_511d

jr_008_50fd:
    jr nz, jr_008_511f

jr_008_50ff:
    jr nz, jr_008_5121

jr_008_5101:
    jr nz, jr_008_5123

jr_008_5103:
    jr nz, jr_008_5125

jr_008_5105:
    jr nz, jr_008_5127

jr_008_5107:
    jr nz, jr_008_5129

jr_008_5109:
    jr nz, jr_008_512b

jr_008_510b:
    jr nz, jr_008_512d

jr_008_510d:
    jr nz, jr_008_512f

jr_008_510f:
    jr nz, jr_008_5131

jr_008_5111:
    jr nz, jr_008_5133

jr_008_5113:
    jr nz, jr_008_5135

jr_008_5115:
    jr nz, jr_008_5137

jr_008_5117:
    jr nz, jr_008_5139

jr_008_5119:
    jr nz, jr_008_513b

jr_008_511b:
    jr nz, jr_008_513d

jr_008_511d:
    jr nz, jr_008_513f

jr_008_511f:
    jr nz, jr_008_5141

jr_008_5121:
    jr nz, jr_008_5143

jr_008_5123:
    jr nz, jr_008_5145

jr_008_5125:
    jr nz, jr_008_5147

jr_008_5127:
    jr nz, jr_008_5149

jr_008_5129:
    jr nz, jr_008_514b

jr_008_512b:
    jr nz, jr_008_514d

jr_008_512d:
    jr nz, jr_008_514f

jr_008_512f:
    jr nz, jr_008_5151

jr_008_5131:
    jr nz, jr_008_5153

jr_008_5133:
    jr nz, jr_008_5155

jr_008_5135:
    jr nz, jr_008_5157

jr_008_5137:
    jr nz, jr_008_5159

jr_008_5139:
    jr nz, jr_008_515b

jr_008_513b:
    jr nz, jr_008_515d

jr_008_513d:
    jr nz, jr_008_515f

jr_008_513f:
    jr nz, jr_008_5161

jr_008_5141:
    jr nz, jr_008_5163

jr_008_5143:
    jr nz, jr_008_5165

jr_008_5145:
    jr nz, jr_008_5167

jr_008_5147:
    jr nz, jr_008_5169

jr_008_5149:
    jr nz, jr_008_516b

jr_008_514b:
    jr nz, jr_008_516d

jr_008_514d:
    jr nz, jr_008_516f

jr_008_514f:
    jr nz, jr_008_5171

jr_008_5151:
    jr nz, jr_008_5173

jr_008_5153:
    jr nz, jr_008_5175

jr_008_5155:
    jr nz, jr_008_5177

jr_008_5157:
    jr nz, jr_008_5179

jr_008_5159:
    jr nz, jr_008_517b

jr_008_515b:
    jr nz, jr_008_517d

jr_008_515d:
    jr nz, @+$22

jr_008_515f:
    jr nz, @+$22

jr_008_5161:
    jr nz, @+$22

jr_008_5163:
    jr nz, @+$22

jr_008_5165:
    jr nz, @+$22

jr_008_5167:
    jr nz, @+$22

jr_008_5169:
    jr nz, jr_008_518b

jr_008_516b:
    jr nz, jr_008_518d

jr_008_516d:
    jr nz, jr_008_518f

jr_008_516f:
    jr nz, jr_008_5191

jr_008_5171:
    jr nz, jr_008_5193

jr_008_5173:
    jr nz, jr_008_5195

jr_008_5175:
    jr nz, jr_008_5197

jr_008_5177:
    jr nz, jr_008_50f9

jr_008_5179:
    nop
    nop

jr_008_517b:
    nop
    nop

jr_008_517d:
    sub d
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @-$4e

    or c

jr_008_518b:
    or d
    or e

jr_008_518d:
    or h
    or l

jr_008_518f:
    or [hl]
    or a

jr_008_5191:
    sbc h
    adc l

jr_008_5193:
    jr nz, jr_008_51b5

jr_008_5195:
    jr nz, jr_008_51b7

jr_008_5197:
    jr nz, jr_008_51b9

    jr nz, jr_008_51bb

    jr nz, jr_008_51bd

    jr nz, jr_008_51bf

    jr nz, jr_008_51c1

    jr nz, jr_008_51c3

    jr nz, jr_008_51c5

    jr nz, jr_008_51c7

    jr nz, jr_008_51c9

    jr nz, jr_008_51cb

    jr nz, jr_008_51cd

    jr nz, jr_008_51cf

    jr nz, jr_008_51d1

    jr nz, jr_008_51d3

    jr nz, jr_008_51d5

jr_008_51b5:
    jr nz, jr_008_51d7

jr_008_51b7:
    jr nz, jr_008_51d9

jr_008_51b9:
    jr nz, jr_008_51db

jr_008_51bb:
    jr nz, jr_008_51dd

jr_008_51bd:
    jr nz, jr_008_51df

jr_008_51bf:
    jr nz, jr_008_51e1

jr_008_51c1:
    jr nz, jr_008_51e3

jr_008_51c3:
    jr nz, jr_008_51e5

jr_008_51c5:
    jr nz, jr_008_51e7

jr_008_51c7:
    jr nz, jr_008_51e9

jr_008_51c9:
    jr nz, jr_008_51eb

jr_008_51cb:
    jr nz, jr_008_51ed

jr_008_51cd:
    jr nz, jr_008_51ef

jr_008_51cf:
    jr nz, jr_008_51f1

jr_008_51d1:
    jr nz, jr_008_51f3

jr_008_51d3:
    jr nz, jr_008_51f5

jr_008_51d5:
    jr nz, jr_008_51f7

jr_008_51d7:
    jr nz, jr_008_51f9

jr_008_51d9:
    jr nz, jr_008_51fb

jr_008_51db:
    jr nz, jr_008_51fd

jr_008_51dd:
    jr nz, jr_008_51ff

jr_008_51df:
    jr nz, jr_008_5201

jr_008_51e1:
    jr nz, jr_008_5203

jr_008_51e3:
    jr nz, jr_008_5205

jr_008_51e5:
    jr nz, @+$22

jr_008_51e7:
    jr nz, @+$22

jr_008_51e9:
    jr nz, @+$22

jr_008_51eb:
    jr nz, @+$22

jr_008_51ed:
    jr nz, @+$22

jr_008_51ef:
    jr nz, @+$22

jr_008_51f1:
    jr nz, @+$22

jr_008_51f3:
    jr nz, @+$22

jr_008_51f5:
    jr nz, @+$22

jr_008_51f7:
    jr nz, @+$22

jr_008_51f9:
    jr nz, @+$22

jr_008_51fb:
    jr nz, @+$22

jr_008_51fd:
    jr nz, @+$22

jr_008_51ff:
    jr nz, @+$22

jr_008_5201:
    jr nz, @+$22

jr_008_5203:
    jr nz, @+$22

jr_008_5205:
    sbc h
    jr nz, jr_008_5228

    jr nz, jr_008_522a

    jr nz, jr_008_522c

    jr nz, jr_008_522e

    jr nz, jr_008_5230

    jr nz, jr_008_5232

    jr nz, jr_008_5234

    jr nz, jr_008_5236

    jr nz, jr_008_5238

    jr nz, jr_008_523a

    jr nz, jr_008_523c

    jr nz, jr_008_523e

    jr nz, jr_008_5240

    jr nz, jr_008_5242

    jr nz, jr_008_5244

    jr nz, jr_008_5246

    jr nz, jr_008_5248

jr_008_5228:
    jr nz, jr_008_524a

jr_008_522a:
    jr nz, jr_008_524c

jr_008_522c:
    jr nz, jr_008_524e

jr_008_522e:
    jr nz, jr_008_5250

jr_008_5230:
    jr nz, jr_008_5252

jr_008_5232:
    jr nz, jr_008_5254

jr_008_5234:
    jr nz, jr_008_5256

jr_008_5236:
    jr nz, jr_008_5258

jr_008_5238:
    jr nz, jr_008_525a

jr_008_523a:
    jr nz, jr_008_525c

jr_008_523c:
    jr nz, jr_008_525e

jr_008_523e:
    jr nz, jr_008_5260

jr_008_5240:
    jr nz, jr_008_5262

jr_008_5242:
    jr nz, jr_008_5264

jr_008_5244:
    jr nz, jr_008_5266

jr_008_5246:
    jr nz, jr_008_5268

jr_008_5248:
    jr nz, jr_008_526a

jr_008_524a:
    jr nz, jr_008_51f5

jr_008_524c:
    jr nz, @+$22

jr_008_524e:
    jr nz, @+$22

jr_008_5250:
    jr nz, @+$22

jr_008_5252:
    jr nz, @+$22

jr_008_5254:
    jr nz, @+$22

jr_008_5256:
    jr nz, @+$22

jr_008_5258:
    jr nz, @+$22

jr_008_525a:
    jr nz, @+$22

jr_008_525c:
    jr nz, @+$22

jr_008_525e:
    jr nz, @+$22

jr_008_5260:
    jr nz, @+$22

jr_008_5262:
    jr nz, @+$22

jr_008_5264:
    jr nz, @+$22

jr_008_5266:
    jr nz, @+$22

jr_008_5268:
    jr nz, @+$22

jr_008_526a:
    jr nz, @+$22

    sub h
    jr nz, jr_008_528f

    jr nz, jr_008_5291

    jr nz, jr_008_5293

    jr nz, jr_008_5295

    jr nz, jr_008_5297

    jr nz, jr_008_5299

    jr nz, jr_008_529b

    jr nz, jr_008_529d

    jr nz, jr_008_529f

    jr nz, jr_008_52a1

    jr nz, jr_008_52a3

    jr nz, jr_008_52a5

    jr nz, jr_008_52a7

    jr nz, jr_008_52a9

    jr nz, jr_008_52ab

    jr nz, jr_008_52ad

    jr nz, jr_008_52af

jr_008_528f:
    jr nz, jr_008_52b1

jr_008_5291:
    jr nz, jr_008_52b3

jr_008_5293:
    jr nz, jr_008_52b5

jr_008_5295:
    jr nz, jr_008_52b7

jr_008_5297:
    jr nz, jr_008_52b9

jr_008_5299:
    jr nz, jr_008_52bb

jr_008_529b:
    jr nz, jr_008_52bd

jr_008_529d:
    jr nz, jr_008_52bf

jr_008_529f:
    jr nz, jr_008_52c1

jr_008_52a1:
    jr nz, jr_008_52c3

jr_008_52a3:
    jr nz, jr_008_52c5

jr_008_52a5:
    jr nz, jr_008_52c7

jr_008_52a7:
    jr nz, jr_008_52c9

jr_008_52a9:
    jr nz, jr_008_52cb

jr_008_52ab:
    jr nz, jr_008_52cd

jr_008_52ad:
    jr nz, jr_008_52cf

jr_008_52af:
    jr nz, jr_008_52d1

jr_008_52b1:
    jr nz, jr_008_52d3

jr_008_52b3:
    jr nz, jr_008_52d5

jr_008_52b5:
    jr nz, jr_008_52d7

jr_008_52b7:
    jr nz, jr_008_52d9

jr_008_52b9:
    jr nz, jr_008_52db

jr_008_52bb:
    jr nz, jr_008_52dd

jr_008_52bd:
    jr nz, jr_008_52df

jr_008_52bf:
    jr nz, jr_008_52e1

jr_008_52c1:
    jr nz, jr_008_52e3

jr_008_52c3:
    jr nz, jr_008_52e5

jr_008_52c5:
    jr nz, jr_008_52e7

jr_008_52c7:
    jr nz, jr_008_52e9

jr_008_52c9:
    jr nz, jr_008_52eb

jr_008_52cb:
    jr nz, jr_008_52ed

jr_008_52cd:
    jr nz, jr_008_52ef

jr_008_52cf:
    jr nz, jr_008_52f1

jr_008_52d1:
    jr nz, jr_008_52f3

jr_008_52d3:
    jr nz, jr_008_52f5

jr_008_52d5:
    jr nz, jr_008_52f7

jr_008_52d7:
    jr nz, jr_008_52f9

jr_008_52d9:
    jr nz, jr_008_52fb

jr_008_52db:
    jr nz, jr_008_52fd

jr_008_52dd:
    jr nz, jr_008_52ff

jr_008_52df:
    jr nz, jr_008_5301

jr_008_52e1:
    jr nz, jr_008_5303

jr_008_52e3:
    jr nz, jr_008_5305

jr_008_52e5:
    jr nz, jr_008_5307

jr_008_52e7:
    jr nz, jr_008_5309

jr_008_52e9:
    jr nz, jr_008_530b

jr_008_52eb:
    jr nz, jr_008_530d

jr_008_52ed:
    jr nz, jr_008_530f

jr_008_52ef:
    jr nz, jr_008_5311

jr_008_52f1:
    jr nz, jr_008_5313

jr_008_52f3:
    jr nz, jr_008_5315

jr_008_52f5:
    jr nz, jr_008_5317

jr_008_52f7:
    jr nz, jr_008_5319

jr_008_52f9:
    jr nz, jr_008_531b

jr_008_52fb:
    jr nz, jr_008_531d

jr_008_52fd:
    jr nz, jr_008_531f

jr_008_52ff:
    jr nz, jr_008_5321

jr_008_5301:
    jr nz, jr_008_5323

jr_008_5303:
    jr nz, jr_008_5325

jr_008_5305:
    jr nz, jr_008_5327

jr_008_5307:
    jr nz, jr_008_5329

jr_008_5309:
    jr nz, jr_008_532b

jr_008_530b:
    jr nz, jr_008_532d

jr_008_530d:
    jr nz, jr_008_532f

jr_008_530f:
    jr nz, jr_008_5331

jr_008_5311:
    jr nz, jr_008_5333

jr_008_5313:
    jr nz, jr_008_5335

jr_008_5315:
    jr nz, jr_008_5337

jr_008_5317:
    jr nz, jr_008_5339

jr_008_5319:
    jr nz, jr_008_533b

jr_008_531b:
    jr nz, jr_008_533d

jr_008_531d:
    jr nz, jr_008_52db

jr_008_531f:
    jr nz, jr_008_5341

jr_008_5321:
    jr nz, jr_008_5343

jr_008_5323:
    jr nz, jr_008_5345

jr_008_5325:
    jr nz, jr_008_5347

jr_008_5327:
    jr nz, jr_008_5349

jr_008_5329:
    jr nz, jr_008_534b

jr_008_532b:
    jr nz, jr_008_534d

jr_008_532d:
    jr nz, jr_008_534f

jr_008_532f:
    jr nz, jr_008_5351

jr_008_5331:
    jr nz, jr_008_5353

jr_008_5333:
    jr nz, jr_008_5355

jr_008_5335:
    jr nz, jr_008_5357

jr_008_5337:
    jr nz, jr_008_5359

jr_008_5339:
    jr nz, jr_008_535b

jr_008_533b:
    jr nz, jr_008_535d

jr_008_533d:
    jr nz, jr_008_535f

    jr nz, jr_008_5361

jr_008_5341:
    jr nz, @+$22

jr_008_5343:
    jr nz, @+$22

jr_008_5345:
    jr nz, @+$22

jr_008_5347:
    jr nz, @+$22

jr_008_5349:
    jr nz, @+$22

jr_008_534b:
    jr nz, @+$22

jr_008_534d:
    jr nz, @+$22

jr_008_534f:
    jr nz, @+$22

jr_008_5351:
    jr nz, @+$22

jr_008_5353:
    jr nz, @+$22

jr_008_5355:
    jr nz, jr_008_5377

jr_008_5357:
    jr nz, jr_008_5379

jr_008_5359:
    jr nz, jr_008_537b

jr_008_535b:
    jr nz, jr_008_537d

jr_008_535d:
    jr nz, jr_008_537f

jr_008_535f:
    jr nz, jr_008_5381

jr_008_5361:
    sub e

jr_008_5362:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

jr_008_5374:
    jr nz, @+$22

jr_008_5376:
    and a

jr_008_5377:
    jr nz, jr_008_5399

jr_008_5379:
    jr nz, jr_008_539b

jr_008_537b:
    jr nz, @+$22

jr_008_537d:
    jr nz, @+$22

jr_008_537f:
    jr nz, @-$6b

jr_008_5381:
    jr nz, @+$22

jr_008_5383:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_008_53ab

    jr nz, jr_008_53ad

    jr nz, jr_008_53af

    jr nz, jr_008_53b1

    jr nz, jr_008_53b3

    jr nz, jr_008_53b5

    jr nz, jr_008_53b7

    jr nz, @+$22

jr_008_5399:
    jr nz, @-$6b

jr_008_539b:
    sub e
    jr nz, @+$22

jr_008_539e:
    jr nz, @+$22

    jr nz, @+$22

jr_008_53a2:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    sub e

jr_008_53ab:
    jr nz, jr_008_53cd

jr_008_53ad:
    jr nz, jr_008_53cf

jr_008_53af:
    jr nz, jr_008_53d1

jr_008_53b1:
    jr nz, jr_008_53d3

jr_008_53b3:
    jr nz, jr_008_53d5

jr_008_53b5:
    sub e
    sub e

jr_008_53b7:
    sub e
    jr nz, @+$22

    sub e
    jr nz, jr_008_53dd

    jr nz, jr_008_53df

    jr nz, jr_008_53e1

    jr nz, jr_008_53e3

    jr nz, jr_008_53e5

    jr nz, jr_008_5374

    jr nz, jr_008_53e9

    jr nz, jr_008_53eb

    jr nz, @-$6b

jr_008_53cd:
    jr nz, jr_008_5362

jr_008_53cf:
    jr nz, jr_008_53f1

jr_008_53d1:
    jr nz, jr_008_53f3

jr_008_53d3:
    jr nz, jr_008_53f5

jr_008_53d5:
    jr nz, jr_008_5383

    jr nz, jr_008_53f9

    jr nz, jr_008_53fb

    jr nz, jr_008_53fd

jr_008_53dd:
    jr nz, jr_008_53ff

jr_008_53df:
    jr nz, @-$57

jr_008_53e1:
    jr nz, jr_008_5376

jr_008_53e3:
    jr nz, jr_008_539e

jr_008_53e5:
    jr nz, @-$57

    jr nz, jr_008_5409

jr_008_53e9:
    jr nz, jr_008_540b

jr_008_53eb:
    jr nz, jr_008_540d

    jr nz, jr_008_540f

    jr nz, jr_008_5411

jr_008_53f1:
    jr nz, jr_008_5413

jr_008_53f3:
    jr nz, jr_008_5415

jr_008_53f5:
    jr nz, @+$22

    jr nz, jr_008_5419

jr_008_53f9:
    jr nz, jr_008_53a2

jr_008_53fb:
    jr nz, jr_008_541d

jr_008_53fd:
    jr nz, jr_008_541f

jr_008_53ff:
    jr nz, jr_008_5421

    jr nz, @-$45

    jr nz, jr_008_5425

    jr nz, jr_008_5427

    jr nz, @-$57

jr_008_5409:
    ld b, $03

jr_008_540b:
    ld [bc], a
    inc b

jr_008_540d:
    ld [bc], a
    inc bc

jr_008_540f:
    ld [bc], a
    inc b

jr_008_5411:
    inc b
    inc bc

jr_008_5413:
    inc b
    inc b

jr_008_5415:
    ld [$0203], sp
    inc b

jr_008_5419:
    ld [$0103], sp
    inc b

jr_008_541d:
    ld b, $05

jr_008_541f:
    ld [bc], a
    inc bc

jr_008_5421:
    ld b, $03
    ld [bc], a
    inc bc

jr_008_5425:
    ld [bc], a
    inc bc

jr_008_5427:
    ld [bc], a
    inc b
    ld b, $04
    ld [bc], a
    inc bc
    rlca
    dec b
    ld bc, $0703
    inc bc
    ld bc, $0403
    dec b
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    rlca
    inc bc
    ld bc, HeaderLogo
    inc bc
    ld [bc], a
    inc b
    rlca
    inc bc
    ld [bc], a
    inc b
    inc b
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld b, $04
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    inc b
    inc bc
    inc b
    inc bc
    ld b, $03
    ld [bc], a
    inc b
    rlca
    inc bc
    ld bc, $0604
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    rlca
    inc bc
    inc b
    ld b, $03
    ld [bc], a
    inc b
    ld b, $02
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc bc
    inc bc
    inc b
    ld b, $04
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
    rst $38
    nop
    nop
    nop
    inc b
    dec b
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld bc, $0103
    inc b
    dec b
    inc bc
    ld [bc], a
    inc b
    dec b
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
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
    nop
    nop
    rlca
    inc b
    ld bc, $0503
    inc bc
    ld [bc], a
    inc bc
    nop
    inc b
    ld bc, $0003
    inc bc
    ld bc, $0403
    ld [bc], a
    inc b
    inc bc
    ld bc, $0203
    inc b
    inc b
    ld bc, HeaderLogo
    inc b
    dec b
    inc b
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0301
    dec b
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    rlca
    inc bc
    ld bc, $0304
    ld bc, $0204
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $05
    ld bc, $0603
    ld [bc], a
    ld bc, $0403
    ld b, $03
    ld bc, HeaderLogo
    inc bc
    ld [bc], a
    ld b, $05
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc bc
    inc bc
    ld b, $02
    ld bc, $0402
    ld b, $03
    ld [bc], a
    inc b
    ld bc, $0103
    inc b
    dec b
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc bc
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    nop
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [bc], a
    ld b, $10
    add hl, bc
    db $10
    inc c
    ld [bc], a
    rlca
    ld [bc], a
    ld [$0807], sp
    inc bc
    inc bc
    ld a, [bc]
    ld [$0303], sp
    rlca
    ld [$0303], sp
    rlca
    ld [$0303], sp
    rlca
    ld [$0303], sp
    ld [$0307], sp
    inc bc
    rlca
    ld [$0302], sp
    inc c
    ld [$0402], sp
    ld [$0807], sp
    ld [$0807], sp
    inc bc
    inc bc
    rlca
    ld [$0303], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [$0807], sp
    ld [$070c], sp
    inc bc
    ld [$0704], sp
    inc b
    ld [$0807], sp
    inc bc
    inc bc
    add hl, bc
    inc b
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    db $10
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    rlca
    inc b
    inc b
    rlca
    ld [$0303], sp
    rlca
    ld [$0202], sp
    rlca
    ld [$0303], sp
    rlca
    ld [$0403], sp
    add hl, bc
    ld [$0605], sp
    rlca
    ld [$0303], sp
    rlca
    ld [$0303], sp
    inc b
    inc bc
    inc b
    inc b
    rlca
    ld [$0303], sp
    rlca
    ld [$0402], sp
    rlca
    ld [$0303], sp
    add hl, bc
    rlca
    ld b, $06
    rlca
    ld [$0303], sp
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0303], sp
    rlca
    ld [$0303], sp
    ld a, [bc]
    ld [$0203], sp
    rlca
    ld [$0303], sp
    inc c
    inc c
    inc c
    ld a, [bc]
    rlca
    ld [$0703], sp
    ld [$0807], sp
    ld [$0706], sp
    dec b
    dec b
    ld [$0307], sp
    inc bc
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    inc c
    ld a, [bc]
    ld [$0807], sp
    rlca
    ld a, [bc]
    rlca
    ld b, $08
    ld [de], a
    rlca
    rlca
    inc b
    ld [de], a
    rlca
    ld b, $04
    inc de
    rlca
    ld b, $04
    inc de
    rlca
    ld a, [bc]
    inc b
    rrca
    rlca
    add hl, bc
    inc b
    dec c
    rlca
    dec bc
    inc b
    inc c
    rlca
    dec bc
    inc b
    ld c, $07
    ld a, [bc]
    inc b
    rlca
    rlca
    inc bc
    inc bc
    ld [$0608], sp
    ld b, $07
    ld [$0602], sp
    rlca
    ld [$0606], sp
    dec de
    ld [$010b], sp
    rlca
    inc bc
    rlca
    inc b
    db $10
    inc c
    db $10
    ld [$0c13], sp
    ld c, $08
    cp $00
    nop
    nop
    cp $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    db $fd
    ld bc, $0000
    db $fd
    ld [bc], a
    nop
    nop
    db $fd
    inc bc
    nop
    nop
    db $fd
    inc b
    nop
    nop
    db $fd
    dec b
    nop
    nop
    db $fd
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [$0000], sp
    db $fd
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    dec bc
    nop
    nop
    db $fd
    inc c
    nop
    nop
    db $fd
    dec c
    nop
    nop
    db $fd
    ld c, $00
    nop
    db $fd
    rrca
    nop
    nop
    db $fd
    stop
    nop
    db $fd
    ld de, $0000
    db $fd
    ld [de], a
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld b, $01
    ld bc, $0502
    ld bc, $0301
    inc b
    ld bc, $0401
    inc bc
    ld bc, $0501
    ld [bc], a
    ld bc, $0601
    ld bc, $0101
    rlca
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    ld bc, $0401
    inc b
    ld bc, $0501
    dec b
    ld bc, $0601
    ld b, $01
    ld bc, $0707
    ld bc, $0701
    inc bc
    inc bc
    inc bc
    inc b
    ld [$0308], sp
    ld bc, $4204
    rlca
    inc bc
    ld bc, $4204
    ld b, $03
    inc bc
    inc bc
    inc b
    ld [$0308], sp
    ld [bc], a
    inc b
    ld b, d
    rlca
    inc bc
    ld bc, $4204
    dec b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [$0307], sp
    ld [bc], a
    inc b
    ld b, d
    ld b, $03
    ld bc, $4204
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [$0306], sp
    ld [bc], a
    inc b
    ld b, d
    ld b, $03
    ld [bc], a
    inc b
    ld b, d
    inc bc
    ld bc, $0103
    inc b
    ld [$0305], sp
    ld [bc], a
    inc b
    ld b, d
    dec b
    inc bc
    ld [bc], a
    inc b
    ld b, d
    ld [bc], a
    ld bc, $0103
    inc b
    ld [$0305], sp
    inc bc
    inc b
    ld b, d
    dec b
    inc bc
    inc bc
    inc b
    ld b, d
    ld bc, $0300
    ld bc, $0804
    inc b
    inc bc
    inc bc
    inc b
    ld b, d
    inc b
    inc bc
    inc bc
    inc b
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc b
    ld b, d
    ld b, $03
    ld bc, $0804
    inc b
    inc bc
    inc b
    inc b
    ld [$0307], sp
    inc bc
    inc b
    inc b
    ld b, d
    rlca
    inc bc
    ld bc, $0804
    inc b
    inc bc
    inc b
    inc b
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    inc b
    and d
    dec b
    inc bc
    ld [bc], a
    inc b
    add d
    inc b
    inc bc
    inc b
    inc b
    add d
    dec b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld b, d
    ld b, $03
    ld bc, $0804
    inc b
    inc bc
    inc b
    inc b
    ld [$0103], sp
    inc bc
    ld bc, $4204
    dec b
    inc bc
    ld [bc], a
    inc b
    ld [$0304], sp
    inc b
    inc b
    ld [$0102], sp
    inc bc
    ld bc, $4204
    dec b
    inc bc
    inc bc
    inc b
    ld [$0304], sp
    inc b
    inc b
    ld [$0307], sp
    inc bc
    inc b
    inc b
    ld c, c
    ld [$0103], sp
    inc b
    ld [$0304], sp
    inc b
    inc b
    ld [$0105], sp
    inc bc
    inc bc
    inc b
    ld c, c
    ld b, $03
    ld bc, $0804
    inc b
    inc bc
    inc b
    inc b
    ld [$0103], sp
    inc bc
    ld bc, $4904
    dec b
    inc bc
    ld [bc], a
    inc b
    ld [$0304], sp
    inc b
    inc b
    ld [$0002], sp
    inc bc
    ld bc, $4904
    dec b
    inc bc
    inc bc
    inc b
    ld [$0304], sp
    inc b
    inc b
    db $08

    ld hl, $dd92
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c113]
    srl a
    ld hl, $c115
    add [hl]
    ld hl, $c0fe
    add [hl]
    ld [$c1f3], a
    and $f8
    ld [$c1f1], a
    rra
    ld e, a
    ld d, $00
    ld hl, $c114
    ld a, [$c112]
    add [hl]
    ld hl, $c0fa
    add [hl]
    inc a
    dec a
    ld b, a
    and $07
    ld [$c1f9], a
    ld a, b
    sub $02
    ld [$c1f4], a
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [$dd55], a
    ld hl, $dd92
    jp Jump_008_5b16


    ld hl, $dd92
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c115
    ld a, [$c0fe]
    add [hl]
    ld b, a
    ld a, [$c113]
    srl a
    add b
    ld [$c1f3], a
    ld a, b
    ld hl, $c0f8
    bit 0, [hl]
    jr nz, jr_008_598a

    ld hl, $c113
    add [hl]
    dec a

Jump_008_598a:
jr_008_598a:
    and $f8
    ld [$c1f1], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $c114
    ld a, [$c112]
    add [hl]
    ld hl, $c0fa
    add [hl]
    ld b, a
    sub $02
    ld [$c1f4], a
    ld a, b
    and $07
    ld [$c1f9], a
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [$dd55], a
    ld hl, $dd92
    jp Jump_008_5b16


    ld hl, $dd92
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c0fe]
    and $f8
    ld hl, $c0f8
    bit 0, [hl]
    jr nz, jr_008_59e3

    add $10

jr_008_59e3:
    ld [$c1f1], a
    rrca
    ld e, a
    ld d, $00
    ld hl, $c114
    ld a, [$c112]
    add [hl]
    ld hl, $c0fa
    add [hl]
    ld b, a
    sub $02
    ld [$c1f4], a
    ld a, b
    and $07
    ld [$c1f9], a
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c115
    ld a, [$c113]
    srl a
    add [hl]
    ld hl, $c0fe
    add [hl]
    ld [$c1f3], a
    ld a, $01
    ld [$dd55], a
    ld hl, $dd92
    jp Jump_008_5b16


    ld hl, $dd92
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c115
    ld a, [$c0fe]
    add [hl]
    ld b, a
    ld a, [$c113]
    srl a
    add b
    ld [$c1f3], a
    ld a, b
    ld hl, $c10b
    bit 0, [hl]
    jp nz, Jump_008_598a

    ld hl, $c113
    add [hl]
    dec a
    jp Jump_008_598a


    ld hl, $dd8c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c113]
    srl a
    ld hl, $c115
    add [hl]
    ld hl, $c0fe
    add [hl]
    ld [$c1f3], a
    and $f8
    ld [$c1f1], a
    rra
    ld e, a
    ld d, $00
    ld a, [$c114]
    ld hl, $c0fa
    add [hl]
    dec a
    ld b, a
    add $03
    ld [$c1f4], a
    and $07
    ld [$c1f9], a
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$dd55], a
    ld hl, $dd8c
    jp Jump_008_5b16


    ld hl, $dd8c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c0fe]
    and $f8
    ld hl, $c0f8
    bit 0, [hl]
    jr nz, jr_008_5acc

    add $10

jr_008_5acc:
    ld [$c1f1], a
    rra
    ld e, a
    ld d, $00
    ld a, [$c114]
    ld hl, $c0fa
    add [hl]
    dec a
    ld b, a
    add $03
    ld [$c1f4], a
    and $07
    ld [$c1f9], a
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c115
    ld a, [$c113]
    srl a
    add [hl]
    ld hl, $c0fe
    add [hl]
    ld [$c1f3], a
    xor a
    ld [$dd55], a
    ld hl, $dd8c
    jp Jump_008_5b16


Jump_008_5b16:
    ld a, [de]
    and $3f
    jr z, jr_008_5b1f

    cp $07
    jr nz, jr_008_5b26

jr_008_5b1f:
    inc hl
    inc hl
    inc hl
    inc hl
    jp Jump_008_5be4


jr_008_5b26:
    push hl
    xor a
    ld [$c1f7], a
    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $fd
    jr nz, jr_008_5b68

    ld a, $01
    ld [$c1f7], a
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57d5
    add hl, bc
    ld a, [$c1f9]
    cp [hl]
    inc hl
    jr c, jr_008_5b68

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl

jr_008_5b68:
    ld a, [$c1f2]
    add [hl]
    ld b, a
    ld a, [$c1f4]
    sub b
    jr nc, jr_008_5b75

    cpl
    inc a

jr_008_5b75:
    ld b, a
    inc hl
    xor a
    ld [$dd56], a
    ld a, [$c1f1]
    add [hl]
    ld c, a
    ld a, [$c1f3]
    sub c
    ld c, a
    jr nc, jr_008_5b90

    cpl
    inc a
    inc a
    ld c, a
    ld a, $01
    ld [$dd56], a

jr_008_5b90:
    inc hl
    ld a, [hl+]
    add $03
    sub b
    ld [$c1f6], a
    jr c, jr_008_5ba6

    ld a, [$c113]
    srl a
    add [hl]
    sub c
    ld [$c1f5], a
    jr nc, jr_008_5bae

jr_008_5ba6:
    pop hl
    dec de
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_008_5be4

jr_008_5bae:
    dec de
    ld a, [$c1f7]
    and a
    jr z, jr_008_5bb9

    inc hl
    ld a, [hl]
    jr jr_008_5bba

jr_008_5bb9:
    ld a, [de]

jr_008_5bba:
    pop hl
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$dd55]
    and a
    jr z, jr_008_5bcd

    ld a, [$c1f6]
    cpl
    inc a
    ld [$c1f6], a

jr_008_5bcd:
    ld a, [$dd56]
    and a
    jr z, jr_008_5bdb

    ld a, [$c1f5]
    cpl
    inc a
    ld [$c1f5], a

jr_008_5bdb:
    ld a, [$c1f6]
    ld [hl+], a
    ld a, [$c1f5]
    ld [hl+], a
    dec de

Jump_008_5be4:
jr_008_5be4:
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$8d]
    jp Bankswitch0fce


    ld hl, $dd98
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c112]
    srl a
    sub $08
    cpl
    inc a
    ld c, a
    ld hl, $c114
    ld a, [$c0fa]
    add [hl]
    ld b, a
    ld a, [$c112]
    srl a
    add b
    ld [$c1f4], a
    ld a, b
    and $07
    cp c
    jr c, jr_008_5c1b

    ld a, $08
    add b
    ld b, a

jr_008_5c1b:
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $c0fe
    ld a, [$c115]
    add [hl]
    ld b, a
    add $02
    ld [$c1f3], a
    ld a, b
    and $f8
    ld [$c1f1], a
    rrca
    ld l, a
    ld h, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    xor a
    ld [$dd56], a
    jp Jump_008_5d59


    ld hl, $dd98
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c112]
    srl a
    sub $08
    cpl
    inc a
    ld c, a
    ld hl, $c114
    ld a, [$c0fa]
    add [hl]
    ld b, a
    and $07
    cp c
    jr c, jr_008_5c76

    ld a, $08
    add b
    ld b, a

jr_008_5c76:
    ld a, b
    and $f8
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $c0fe
    ld a, [$c115]
    add [hl]
    and $f8
    ld [$c1f1], a
    rrca
    ld l, a
    ld h, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    jp Jump_008_5e1b


    ld hl, $dd98
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c112]
    srl a
    sub $08
    cpl
    inc a
    ld c, a
    ld hl, $c114
    ld a, [$c0fa]
    add [hl]
    ld b, a
    ld a, [$c112]
    srl a
    add b
    ld [$c1f4], a
    ld a, b
    and $07
    cp c
    jr c, jr_008_5ccd

    ld a, $08
    add b
    ld b, a

jr_008_5ccd:
    ld a, b
    and $f8
    ld [$c1f2], a
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $c115
    ld a, [$c113]
    add [hl]
    ld hl, $c0fe
    add [hl]
    dec a
    ld b, a
    dec a
    ld [$c1f3], a
    and $f8
    ld [$c1f1], a
    rrca
    ld l, a
    ld h, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [$dd56], a
    jp Jump_008_5d59


    ld hl, $dd98
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$c112]
    srl a
    sub $08
    cpl
    inc a
    ld c, a
    ld hl, $c114
    ld a, [$c0fa]
    add [hl]
    ld b, a
    and $07
    cp c
    jr c, jr_008_5d2c

    ld a, $08
    add b
    ld b, a

jr_008_5d2c:
    ld a, b
    and $f8
    sub $08
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld hl, $c115
    ld a, [$c113]
    add [hl]
    dec a
    ld hl, $c0fe
    add [hl]
    and $f8
    ld [$c1f1], a
    rrca
    ld l, a
    ld h, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld e, l
    ld d, h
    jp Jump_008_5e1b


Jump_008_5d59:
    ld a, [de]
    and $3f
    jp z, Jump_008_5e16

    cp $07
    jp z, Jump_008_5e16

    xor a
    ld [$c1f7], a
    ld a, [de]
    and $1f
    add a
    ld c, a
    ld b, $00
    ld hl, $4aed
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc de
    ld a, [de]
    ld c, a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $5409
    add hl, bc
    ld a, [hl]
    cp $fd
    jr nz, jr_008_5d99

    ld a, $01
    ld [$c1f7], a
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $57de
    add hl, bc

jr_008_5d99:
    xor a
    ld [$dd55], a
    ld a, [$c1f2]
    add [hl]
    ld b, a
    ld a, [$c1f4]
    sub b
    ld b, a
    jr nc, jr_008_5db1

    cpl
    inc a
    ld b, a
    ld a, $01
    ld [$dd55], a

jr_008_5db1:
    ld b, a
    inc hl
    ld a, [$c1f1]
    add [hl]
    ld c, a
    ld a, [$c1f3]
    sub c
    jr nc, jr_008_5dc1

    cpl
    inc a
    inc a

jr_008_5dc1:
    ld c, a
    inc hl
    ld a, [$c112]
    srl a
    sub $02
    add [hl]
    inc hl
    sub b
    ld [$c1f6], a
    jr c, jr_008_5e16

    ld a, $02
    add [hl]
    sub c
    ld [$c1f5], a
    jr c, jr_008_5e16

    dec de
    ld a, [$c1f7]
    and a
    jr z, jr_008_5de6

    inc hl
    ld a, [hl]
    jr jr_008_5de7

jr_008_5de6:
    ld a, [de]

jr_008_5de7:
    ld hl, $dd98
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$dd55]
    and a
    jr z, jr_008_5dfc

    ld a, [$c1f6]
    cpl
    inc a
    ld [$c1f6], a

jr_008_5dfc:
    ld a, [$dd56]
    and a
    jr z, jr_008_5e0a

    ld a, [$c1f5]
    cpl
    inc a
    ld [$c1f5], a

jr_008_5e0a:
    ld a, [$c1f6]
    ld [hl+], a
    ld a, [$c1f5]
    ld [hl+], a
    dec de
    ld [hl], e
    inc hl
    ld [hl], d

Jump_008_5e16:
jr_008_5e16:
    ldh a, [$8d]
    jp Bankswitch0fce


Jump_008_5e1b:
    ld a, [de]
    and a
    jr z, jr_008_5e2c

    cp $47
    jr z, jr_008_5e2c

    ld hl, $dd98
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    dec de

jr_008_5e2c:
    ld hl, $dd9c
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$8d]
    jp Bankswitch0fce


    ld a, [$c105]
    cp $21
    jp z, Jump_008_5ebd

    cp $3f
    jr nz, jr_008_5e4a

    ld a, [$c10a]
    cp $05
    jr z, jr_008_5ebd

jr_008_5e4a:
    ld a, b
    ld [$c1f2], a
    ld c, $01
    ld hl, $c220

jr_008_5e53:
    push hl
    ld a, [hl]
    and a
    jr z, jr_008_5eb2

    ld a, $0c
    add l
    ld l, a
    bit 3, [hl]
    jr nz, jr_008_5eb2

    ld a, $02
    add l
    ld l, a
    ld a, [hl-]
    cp $21
    jr z, jr_008_5eb2

    cp $3f
    jr nz, jr_008_5e7c

    ld a, $06
    add l
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_008_5eb2

    ld a, $fa
    add l
    ld l, a
    ld a, [hl]
    and $7f

jr_008_5e7c:
    add $fe
    ld e, a
    ld a, $00
    adc $5e
    ld d, a
    ld a, [de]
    rra
    jr nc, jr_008_5eb2

    ld [$c1f1], a
    ld a, $f6
    add l
    ld l, a
    ld a, [hl+]
    add $02
    ld d, a
    ld a, [$c0fa]
    sub d
    cp $0c
    jr c, jr_008_5e9f

    cp $f4
    jr c, jr_008_5eb2

jr_008_5e9f:
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $02
    ld e, a
    ld a, [$c0fe]
    sub e
    cp $f5
    jr nc, jr_008_5ec8

    cp $0b
    jr c, jr_008_5ec8

jr_008_5eb2:
    pop hl
    ld de, $0020
    add hl, de
    inc c
    ld a, c
    cp $20
    jr nz, jr_008_5e53

Jump_008_5ebd:
jr_008_5ebd:
    ld hl, $dd9e
    xor a
    ld [hl+], a
    ld [hl], a
    ldh a, [$8d]
    jp Bankswitch0fce


jr_008_5ec8:
    ld a, [$c108]
    sub $40
    cp c
    jr z, jr_008_5eb2

    pop hl
    ld a, $0c
    add l
    ld l, a
    set 4, [hl]
    ld a, [$c1f1]
    and $40
    ld b, a
    ld a, [$c1f2]
    and $80
    or b
    ld d, a
    ld hl, $dd9f
    ld [hl-], a
    ld [hl], c
    ld a, c
    add a
    ld c, a
    ld b, $00
    ld hl, $c16b
    add hl, bc
    ld a, [$c108]
    sub $40
    ld [hl+], a
    ld [hl], d
    ldh a, [$8d]
    jp Bankswitch0fce


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    add e
    nop
    nop
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    add e
    add e
    nop
    ld bc, $8300
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    add e
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    add e
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    add e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc

    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $5f6b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld h, h
    ld a, e
    ld e, a
    sbc l
    ld h, b
    db $10
    ld [hl], e
    or l
    ld h, e
    ld b, [hl]
    ld h, [hl]
    ldh a, [$63]
    jp hl


    ld h, b

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr c, jr_008_5ff8

    call $2a9b
    ld a, [$dd8c]
    cp $08
    jr nz, jr_008_5fa5

    ld a, $0a
    call Call_1d18
    and a
    jr nz, jr_008_5fa5

    ld a, $01
    ld [$c10b], a
    ld a, [$dd90]
    jp Jump_008_6038


jr_008_5fa5:
    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_008_6019

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_008_5fc2

    ld bc, $0004

jr_008_5fc2:
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_008_5ff8

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $01
    ld [$c116], a
    ld a, $03
    ld [$c0f9], a
    call Call_008_768e
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_008_7602


jr_008_5ff8:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $0080
    ld a, [$c0f8]
    rra
    jr nc, jr_008_600b

    ld bc, hOAMDMAFunction

jr_008_600b:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10b
    ld a, [hl]
    xor $07
    ld [hl], a
    ret


jr_008_6019:
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_008_606a

    ld a, $0a
    call Call_1d18
    and a
    jr nz, jr_008_606a

    ld a, $02
    ld [$c10b], a
    ld a, [$dd96]

Jump_008_6038:
    sub $6d
    and $7c
    add a
    sub $04
    ld bc, $0080
    ld hl, $c0fe
    sub [hl]
    jr nc, jr_008_604d

    cpl
    inc a
    ld bc, hOAMDMAFunction

jr_008_604d:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld d, a
    and $03
    ld [$c110], a
    ld a, d
    and $fc
    rrca
    rrca
    and a
    jp z, Jump_008_6478

    ld [$c10c], a
    xor a
    ld [$c10a], a
    ret


jr_008_606a:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    call Call_1d18
    add $01
    ld [$c10c], a
    ld a, [$defe]
    and $01
    ld b, a
    ld a, $04
    sub b
    ld [$c10b], a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld bc, $0080
    rra
    jr nc, jr_008_6096

    ld bc, hOAMDMAFunction

jr_008_6096:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    call $2a9b
    ld a, [$dd8c]
    rla
    jr nc, jr_008_60ba

    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $50
    ld [hl], a
    ld a, $02
    ld [$c10b], a
    ld a, $04
    ld [$c10a], a
    ret


jr_008_60ba:
    call $2ab3
    ld a, [$c109]
    rra
    jr c, jr_008_60cf

    ld a, [$dd92]
    and $40
    ret z

    ld hl, $c109
    set 0, [hl]
    ret


jr_008_60cf:
    ld a, [$dd94]
    cp $ff
    ret nz

    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c109
    res 0, [hl]
    ld a, $01
    ld [$c10c], a
    ld [$c10a], a
    ret


    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    inc a
    ld [$c10a], a
    ld [$c10c], a
    xor a
    ld [$c0f9], a
    ld hl, $c112
    ld a, $06
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $611f
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld h, h
    dec l
    ld h, c
    sbc l
    ld h, b
    db $10
    ld [hl], e
    or l
    ld h, e
    ld b, [hl]
    ld h, [hl]
    ldh a, [$63]
    call $2ab3
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_008_617a

    ld hl, $c10f
    ld a, [hl]
    and a
    jr z, jr_008_6149

    dec [hl]
    jr jr_008_617a

jr_008_6149:
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, $0a
    call Call_1d18
    and a
    jp nz, Jump_008_61f0

    ld a, $04
    ld [$c10a], a
    ld a, $02
    ld [$c10b], a
    ld hl, $c0fc
    ld [hl], $00
    inc hl
    ld [hl], $50
    ld a, [$dd95]
    ld b, a
    ld c, $0a
    jp Jump_008_61dc


jr_008_617a:
    ld a, [$dd92]
    and $c0
    jr nz, jr_008_61a3

    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and $c0
    jr nz, jr_008_6195

    ld bc, $0080
    add hl, bc
    ld a, [hl]
    and $c0
    jr z, jr_008_619a

jr_008_6195:
    ld hl, $c0fa
    inc [hl]
    ret


jr_008_619a:
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    jp Jump_008_6250


jr_008_61a3:
    call $2a9b
    xor a
    ld [$c10e], a
    ld hl, $c0fd
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$dd8c]
    cp $08
    jr nz, jr_008_61f0

    ld a, $0a
    call Call_1d18
    and a
    jr nz, jr_008_61f0

    ld a, $02
    ld [$c10a], a
    dec a
    ld [$c10b], a
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $e0
    ld a, [$dd8f]
    ld b, a
    ld c, $0a

Jump_008_61dc:
    inc hl
    ld a, [$c0fe]
    add b
    jr c, jr_008_61e9

    push af
    ld a, c
    cpl
    inc a
    ld c, a
    pop af

jr_008_61e9:
    add c
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_008_61f0:
jr_008_61f0:
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr c, jr_008_6250

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    call Call_1d18
    add $01
    ld [$c10c], a
    ld a, $02
    call Call_1d18
    add a
    add a
    ld e, a
    ld d, $00
    ld a, [$c10b]
    srl a
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $77a6
    add hl, bc
    add hl, de
    ld de, $c100
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$c10b], a
    ld de, $c0f8
    ld a, [de]
    and $fe
    or [hl]
    ld [de], a
    ld hl, $c109
    ld a, [hl]
    and $cf
    ld [hl], a
    ld b, $20
    ld a, [$c10b]
    cp $03
    jr z, jr_008_624c

    ld b, $10

jr_008_624c:
    ld a, [hl]
    or b
    ld [hl], a
    ret


Jump_008_6250:
jr_008_6250:
    ld hl, $c10b
    ld a, [hl]
    xor $07
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
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
    ld a, $05
    ld [$c10c], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6283
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $10
    ld [hl], e
    sub c
    ld h, d
    ld h, b
    ld h, e
    add [hl]
    ld h, e
    or l
    ld h, e
    db $10
    ld [hl], e
    ldh a, [$63]

    call $2ab3
    ld a, [$dd92]
    and $c0
    jr z, jr_008_62aa

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    jr jr_008_62ae

jr_008_62aa:
    ld hl, $c0fa
    inc [hl]

jr_008_62ae:
    ld de, $1888
    ld a, [$c705]
    rra
    jr nc, jr_008_62ba

    ld de, $28b0

jr_008_62ba:
    ld a, [$c0fe]
    cp d
    jr nc, jr_008_62d1

    xor a
    ld [$c100], a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    ld [hl], a
    ld a, $04
    ld [$c10b], a
    ret


jr_008_62d1:
    cp e
    jr c, jr_008_62e6

    ld a, $ff
    ld [$c100], a
    ld hl, $c0f8
    ld a, [hl]
    or $01
    ld [hl], a
    ld a, $03
    ld [$c10b], a
    ret


jr_008_62e6:
    call $2a9b
    ld hl, $c10f
    ld a, [hl]
    and a
    jr z, jr_008_62f3

    dec [hl]
    jr jr_008_6329

jr_008_62f3:
    ld a, [$dd8c]
    cp $08
    jr nz, jr_008_6329

    ld a, $0a
    call Call_1d18
    and a
    jr nz, jr_008_6329

    ld a, $02
    ld [$c10a], a
    dec a
    ld [$c10b], a
    ld hl, $c0fc
    ld [hl], $ff
    inc hl
    ld [hl], $e0
    inc hl
    ld c, $0a
    ld a, [$dd8f]
    ld b, a
    ld a, [$c0fe]
    add b
    jr c, jr_008_6322

    ld c, $f6

jr_008_6322:
    add c
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_008_6329:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    call Call_1d18
    ld b, a
    add $02
    ld [$c10c], a
    ld a, b
    and $01
    add $03
    ld [$c10b], a
    ld hl, $c100
    cp $03
    jr z, jr_008_6354

    ld bc, $0080
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c0f8
    res 0, [hl]
    ret


jr_008_6354:
    ld bc, hOAMDMAFunction
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c0f8
    set 0, [hl]
    ret


    call $2ab3
    ld a, [$dd92]
    and $c0
    ret z

    ld hl, $c10d
    ld a, [hl]
    and a
    jr z, jr_008_6377

    dec [hl]
    ld a, $03
    ld [$c10a], a
    ret


jr_008_6377:
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $50
    ld [hl], a
    ld a, $04
    ld [$c10a], a
    ret


    call $2ab3
    ld hl, $dd94
    ld a, [hl+]
    cp $ff
    ret nz

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, hOAMDMAFunction
    add hl, bc
    ld a, [hl]
    and $c0
    ret nz

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    ld a, $03
    ld [$c10b], a
    ld a, $01
    ld [$c10c], a
    ld [$c10a], a
    ld a, $20
    ld [$c10f], a
    ret


    call $2ab3
    ld hl, $c109
    ld a, [$dd92]
    and $c0
    jr nz, jr_008_63c5

    set 3, [hl]
    ret


jr_008_63c5:
    bit 3, [hl]
    ret z

    res 3, [hl]
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, $01
    ld [$c10a], a
    ld [$c10c], a
    ld a, $20
    ld [$c10f], a
    ld a, [$c110]
    cp $04
    ret z

    ld a, $ff
    ld [$c10d], a
    ret


    ld a, [$c0fc]
    rla
    jr c, jr_008_6424

    call $2ab3
    ld de, $dd92
    ld a, [de]
    and $c0
    jr z, jr_008_641e

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, $04
    call Call_1d18
    add $0a
    ld [$c10c], a
    ld a, $01
    ld [$c10a], a
    ret


jr_008_641e:
    ld a, [$c0fd]
    cp $80
    ret nc

jr_008_6424:
    ld hl, $c0fc
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld bc, $0040
    add hl, bc
    bit 7, h
    jr nz, jr_008_643a

    ld a, l
    cp $80
    jr c, jr_008_643a

    ld hl, $0080

jr_008_643a:
    ld de, $c0fc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ret


    ld hl, $c0f9
    res 2, [hl]
    ld b, $00
    ld a, [$dd18]
    cp $0a
    jr nz, jr_008_6454

    set 2, [hl]
    inc b

jr_008_6454:
    ld hl, $c116
    ld [hl], b
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6467
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld h, h
    sub l
    ld h, h
    sbc l
    ld h, b
    db $10
    ld [hl], e
    or l
    ld h, e
    ld b, [hl]
    ld h, [hl]

    ld hl, $c10c
    dec [hl]
    ret nz

Jump_008_6478:
    ld a, [$c110]
    and a
    jp z, Jump_008_6646

    ld hl, $c100
    ld a, [hl+]
    ld e, [hl]
    sra a
    rr e
    sra a
    rr e
    ld [hl], e
    dec hl
    ld [hl], a
    ld a, $05
    ld [$c10a], a
    ret


    call $2abf
    call $2a9b
    ld hl, $dd96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_008_64d6

    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$c111]
    and $03
    jr z, jr_008_64c2

    cp $02
    jr z, jr_008_64cb

jr_008_64c2:
    ld a, $20
    call Call_1d18
    and a
    jp nz, Jump_008_658b

jr_008_64cb:
    ld a, $02
    ld [$c10b], a
    ld a, [$dd96]
    jp Jump_008_6559


jr_008_64d6:
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_008_652a

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, [$c0f8]
    rra
    jr nc, jr_008_64f0

    ld bc, $0004

jr_008_64f0:
    add hl, bc
    ld a, [hl]
    and $c0
    jr nz, jr_008_6521

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c102], a
    ld hl, $c105
    ld a, [hl-]
    ld [hl+], a
    ld a, $3f
    ld [hl], a
    ld a, $02
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $02
    ld [$c116], a
    call Call_008_768e
    ld a, [$c108]
    sub $40
    ld b, a
    jp Jump_008_7602


jr_008_6521:
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    jp Jump_008_659f


jr_008_652a:
    ld hl, $c0fd
    xor a
    ld [hl-], a
    ld [hl-], a
    dec hl
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$dd8c]
    cp $08
    jr nz, jr_008_658b

    ld a, [$c111]
    and $03
    jr z, jr_008_6549

    cp $01
    jr z, jr_008_6551

jr_008_6549:
    ld a, $20
    call Call_1d18
    and a
    jr nz, jr_008_658b

jr_008_6551:
    ld a, $01
    ld [$c10b], a
    ld a, [$dd90]

Jump_008_6559:
    sub $6d
    and $7c
    add a
    sub $04
    ld bc, $0080
    ld hl, $c0fe
    sub [hl]
    jr nc, jr_008_656e

    cpl
    inc a
    ld bc, hOAMDMAFunction

jr_008_656e:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld d, a
    and $03
    ld [$c110], a
    ld a, d
    and $fc
    rrca
    rrca
    and a
    jp z, Jump_008_6478

    ld [$c10c], a
    xor a
    ld [$c10a], a
    ret


Jump_008_658b:
jr_008_658b:
    ld a, [$c10b]
    cp $03
    jr c, jr_008_65c3

    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$dd98]
    rla
    jr nc, jr_008_65c3

Jump_008_659f:
    ld hl, $c10b
    ld a, [hl]
    xor $07
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
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
    ld a, $02
    ld [$c10c], a
    ret


jr_008_65c3:
    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c111], a
    ld a, $04
    call Call_1d18
    add $01
    ld [$c10c], a
    ld a, $04
    call Call_1d18
    bit 1, a
    jr z, jr_008_661a

    ld b, $05
    ld hl, $c0fa
    ld a, [$c203]
    cp [hl]
    jr c, jr_008_65ee

    ld a, b
    xor $03
    ld b, a

jr_008_65ee:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c207]
    cp [hl]
    jr c, jr_008_65fc

    ld a, b
    xor $0c
    ld b, a

jr_008_65fc:
    ld a, [$dd18]
    cp $0a
    jr nz, jr_008_6607

    ld a, b
    xor $0f
    ld b, a

jr_008_6607:
    ld hl, $c111
    ld [hl], b
    ld de, $77be
    ld a, b
    bit 2, a
    jr nz, jr_008_6616

    ld de, $77c2

jr_008_6616:
    ld l, e
    ld h, d
    jr jr_008_6631

jr_008_661a:
    and $01
    add a
    add a
    ld e, a
    ld d, $00
    ld a, [$c10b]
    srl a
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $77a6
    add hl, bc
    add hl, de

jr_008_6631:
    ld de, $c100
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$c10b], a
    ld de, $c0f8
    ld a, [de]
    and $fe
    or [hl]
    ld [de], a
    ret


Jump_008_6646:
    ld bc, $ffe0
    ld d, $02
    ld a, [$c10b]
    cp $01
    jr z, jr_008_6657

    ld bc, $0050
    ld d, $04

jr_008_6657:
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
    ld hl, $c10a
    ld [hl], d
    ret


    ret


    ld a, [$c203]
    ld hl, $c0fa
    sub [hl]
    jp c, Jump_008_66fd

    cp $20
    jp c, Jump_008_66fd

    cp $90
    jp nc, Jump_008_66fd

    ld d, a
    ld b, $01
    ld a, [$c207]
    ld hl, $c0fe
    sub [hl]
    jr nc, jr_008_668c

    dec b
    cpl
    inc a

jr_008_668c:
    ld e, a
    cp $20
    jr nc, jr_008_66fd

    cp d
    jr c, jr_008_66c2

    ld a, b
    ld bc, $ff00
    and a
    jr z, jr_008_669e

    ld bc, $0100

jr_008_669e:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, e
    and $f8
    rrca
    rrca
    rrca
    ld hl, $c10c
    ld [hl+], a
    ld [hl], a
    ld h, d
    ld l, $00
    ld b, e
    call $105e
    ld hl, $c0fc
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c10a
    inc [hl]
    jr jr_008_66f3

jr_008_66c2:
    push bc
    ld a, d
    and $f8
    rrca
    rrca
    rrca
    ld hl, $c10c
    ld [hl+], a
    ld [hl], a
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl], a
    ld h, e
    ld l, $00
    ld b, d
    call $105e
    pop bc
    ld a, b
    and a
    jr nz, jr_008_66e9

    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc de

jr_008_66e9:
    ld hl, $c100
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c10a
    inc [hl]

jr_008_66f3:
    xor a
    ld [$c0f9], a
    ld hl, $c103
    res 2, [hl]
    ret


Jump_008_66fd:
jr_008_66fd:
    ld hl, $c10e
    dec [hl]
    ret nz

    ld [hl], $08
    ld hl, $c10b
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $ffc0
    jr z, jr_008_6713

    ld bc, $0040

jr_008_6713:
    ld hl, $c0fc
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c0fc
    ld a, [hl+]
    cpl
    ld d, a
    ld a, [hl]
    cpl
    ld e, a
    inc de
    sra d
    rr e
    ld [hl], e
    dec hl
    ld [hl], d
    ld hl, $c100
    ld d, [hl]
    inc hl
    ld a, [hl]
    sra d
    rra
    ld [hl-], a
    ld [hl], d
    ld hl, $c10d
    ld a, [hl-]
    add a
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    ld a, $01
    ld [$c116], a
    xor a
    ld [$c102], a
    ld hl, $c10a
    inc [hl]
    ret


    ld a, [$c705]
    add a
    ld c, a
    ld b, $00
    ld hl, $77ca
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld a, [$c0fa]
    cp $10
    jr c, jr_008_676c

    cp d
    jr c, jr_008_6772

jr_008_676c:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl], a

jr_008_6772:
    ld a, [$c0fe]
    cp $08
    jr c, jr_008_677c

    cp e
    jr c, jr_008_6782

jr_008_677c:
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a

jr_008_6782:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld bc, $ffc0
    ld a, [$c10b]
    and a
    jr z, jr_008_6793

    ld bc, $0040

jr_008_6793:
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
    ld [$c102], a
    ld [$c10a], a
    ld [$c116], a
    jp Jump_008_66fd


    ld hl, $c103
    set 2, [hl]
    ld a, $08
    ld [$c10e], a
    xor a
    ld [$c102], a
    ld [$c10a], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $67cc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub $67
    ld e, d
    ld l, b
    rst $28
    ld l, b
    or $68
    rra
    ld l, c
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
    ld a, [hl+]
    cp $16
    jr nz, jr_008_6848

    ld d, $00
    ld a, [hl]
    cp $04
    jr c, jr_008_6807

    inc d

jr_008_6807:
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10a
    ld a, $03
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    ld b, $a0
    ld a, [$c705]
    cp $05
    jr z, jr_008_6831

    cp $06
    jr z, jr_008_682f

    rra
    jr nc, jr_008_6831

jr_008_682f:
    ld b, $f0

jr_008_6831:
    ld [hl], b
    inc hl
    ld a, $08
    ld [hl], a
    xor a
    ld [$c102], a
    ld a, $01
    ld [$c116], a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ret


jr_008_6848:
    ld hl, $c0fc
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c10a], a
    ret


    ld a, [$c705]
    cp $04
    jr nz, jr_008_686e

    ld a, [$c0fe]
    cp $28
    jr c, jr_008_687f

    cp $c0
    jr c, jr_008_68b3

    jr jr_008_687f

jr_008_686e:
    ld a, [$c0fe]
    cp $08
    jr c, jr_008_687f

    ld a, [$c10d]
    ld b, a
    ld a, [$c0fe]
    cp b
    jr c, jr_008_68b3

jr_008_687f:
    ld hl, $c10c
    inc [hl]
    ld a, [hl]
    cp $03
    jr nc, jr_008_68ad

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $c0fc
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $02
    call Call_1d18
    add a
    add $05
    ld [$c10e], a
    ld hl, $c10a
    inc [hl]
    ret


jr_008_68ad:
    call Call_008_76b6
    jp Jump_008_768e


jr_008_68b3:
    ldh a, [$94]
    rla
    jr nc, jr_008_68be

    ld a, [$dd18]
    cp $08
    ret z

jr_008_68be:
    ld a, [$c0fe]
    ld hl, $c207
    sub $04
    cp [hl]
    ret nc

    add $08
    cp [hl]
    ret c

    ld a, [$c0fa]
    add $20
    ld hl, $c203
    cp [hl]
    ret nc

    ld hl, $c109
    bit 0, [hl]
    ret nz

    set 0, [hl]
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $04
    ld [$c10f], a
    ld a, $04
    ld [$c10a], a
    ret


    ld hl, $c10e
    dec [hl]
    ret nz

    jr jr_008_6902

    ld hl, $c10e
    dec [hl]
    ret nz

    xor a
    ld [$c102], a
    ld [$c116], a

Jump_008_6902:
jr_008_6902:
    ld bc, $00c0
    ld a, [$c0f8]
    rra
    jr nc, jr_008_690e

    ld bc, $ff40

jr_008_690e:
    ld hl, $c0fc
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $01
    ld [$c10a], a
    ret


    ld hl, $c10f
    dec [hl]
    ret nz

    call $1080
    ld a, b
    ld [$c1f1], a
    ld a, $01
    ld [hl+], a
    ld a, $a2
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$c0fa]
    add $0c
    ld d, a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [$c0fe]
    add $04
    ld e, a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $85
    ld [hl+], a
    inc hl
    ld a, $26
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
    inc hl
    xor a
    ld [hl+], a
    inc hl
    ld b, $a0
    ld a, [$c705]
    and a
    jr z, jr_008_698d

    cp $03
    jr z, jr_008_698d

    ld b, $e0

jr_008_698d:
    ld [hl], b
    inc hl
    ld a, [$c108]
    sub $40
    ld [hl], a
    ld a, $09
    add l
    ld l, a
    ld a, $30
    ld [hl], a
    ld a, [$c1f1]
    ld e, a
    ld d, $00
    ld hl, $c0a6
    add hl, de
    ld [hl], $04
    ld b, a
    call Call_008_765d
    jp Jump_008_6902


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $69be
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp nz, $0269

    ld l, d
    ld hl, $c103
    bit 4, [hl]
    jr z, jr_008_69e2

    res 4, [hl]
    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c116
    ld a, [hl]
    and $0f
    or $e0
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ret


jr_008_69e2:
    ld a, [$c10c]
    ld b, a
    ld a, [$c0fa]
    cp b
    ret c

    ld a, [$c10d]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c212
    add hl, bc
    res 0, [hl]
    call Call_008_76b6
    jp Jump_008_768e


    ld hl, $c0fc
    ld a, [hl+]
    bit 7, a
    jr nz, jr_008_6a19

    ld a, [hl]
    cp $80
    jr c, jr_008_6a19

    ld bc, $0080
    xor a
    ld [$c10a], a
    dec hl
    jr jr_008_6a21

jr_008_6a19:
    ld a, [hl-]
    add $20
    ld c, a
    ld a, [hl]
    adc $00
    ld b, a

jr_008_6a21:
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6a34
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $10
    ld [hl], e
    inc a
    ld l, d
    ld d, a
    ld l, d
    and a
    ld l, d
    ld hl, $c10a
    inc [hl]
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld a, $50
    ld [hl], a
    xor a
    ld [$c0f9], a
    jp Jump_008_6a8b


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_008_6a86

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_008_6a80

    ld a, [$c0f8]
    ld d, a
    call Call_008_7292
    jr nc, jr_008_6a86

    ld de, $0371
    jp Jump_008_72a9


jr_008_6a80:
    call Call_008_72d3
    jr c, jr_008_6a8b

    ret


jr_008_6a86:
    ld a, [$c0f8]
    xor $01

Jump_008_6a8b:
jr_008_6a8b:
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld bc, $ffe0
    ld a, [$c0f8]
    rra
    jr c, jr_008_6aa0

    ld bc, $0020

jr_008_6aa0:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $01
    ld [$c10a], a
    ld a, $50
    ld [$c116], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6aca
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub $6a
    ld a, h
    ld l, e
    and c
    ld l, e
    push bc
    ld l, h
    ld d, $6d
    jr nz, @+$6f

    ld hl, $c10d
    dec [hl]
    ret nz

    ld a, $0f
    ld [hl], a
    call $1080
    ld [hl], $01
    inc hl
    ld a, [$c0f8]
    and $01
    or $60
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    ld a, [$c0fa]
    ld [hl+], a
    sub $08
    and $f8
    ld e, a
    and $f0
    swap a
    ld d, a
    ld a, e
    and $0f
    swap a
    ld e, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, $10
    ld a, [$c0f8]
    rra
    jr nc, jr_008_6b11

    ld c, $f8

jr_008_6b11:
    ld a, [$c0fe]
    add c
    ld [hl+], a
    and $f8
    rrca
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], $00
    ld hl, $c86f
    add hl, de
    ld de, $c10f
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    push hl
    ld hl, $c10e
    ld [hl], b
    ld c, b
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld [hl], $03
    pop hl
    ld a, [$c10e]
    add $40
    ld b, a
    ld de, $007c
    ld c, $03

jr_008_6b4c:
    ld a, [hl]
    and a
    jr nz, jr_008_6b55

    ld [hl], $22
    inc hl
    ld [hl], b
    dec hl

jr_008_6b55:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and a
    jr nz, jr_008_6b62

    ld [hl], $22
    inc hl
    ld [hl], b
    dec hl

jr_008_6b62:
    add hl, de
    dec c
    jr nz, jr_008_6b4c

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c103
    res 2, [hl]
    ld a, $19
    ld [$c0f9], a
    ld a, $03
    ld [$c10a], a
    ret


    xor a
    ld [$c0f9], a
    inc a
    ld [$c10c], a
    inc a
    ld [$c10a], a
    ld hl, $c103
    set 2, [hl]
    ld hl, $c112
    ld a, $0e
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $50
    ld [hl], a
    jp Jump_008_6c52


    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl+]
    and $c0
    jr nz, jr_008_6bd1

    call $2abf
    ld hl, $dd92
    ld a, [hl+]
    and $c0
    jr nz, jr_008_6bca

    ld a, [$c0f8]
    ld d, a
    call Call_008_7292
    jr nc, jr_008_6bd1

    ld de, $06c3
    jp Jump_008_72a9


jr_008_6bca:
    call Call_008_72d3
    jr c, jr_008_6bd6

    jr jr_008_6bff

jr_008_6bd1:
    ld a, [$c0f8]
    xor $01

jr_008_6bd6:
    ld b, a
    ld a, [$c10b]
    and a
    jr z, jr_008_6bff

    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld bc, hOAMDMAFunction
    ld d, $03
    ld a, [$c0f8]
    rra
    jr c, jr_008_6bf4

    ld bc, $0080
    inc d

jr_008_6bf4:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c10b
    ld [hl], d
    ret


jr_008_6bff:
    ld hl, $c10d
    ld a, [hl]
    and a
    jr z, jr_008_6c09

    dec [hl]
    jr jr_008_6c52

jr_008_6c09:
    ld hl, $c203
    ld a, [$c0fa]
    sub [hl]
    jr nc, jr_008_6c14

    cpl
    inc a

jr_008_6c14:
    cp $08
    jr nc, jr_008_6c52

    ld a, $04
    add l
    ld l, a
    ld a, [$c0fe]
    sub [hl]
    ld b, a
    ld a, [$c0f8]
    and $01
    rrca
    xor b
    rla
    jr nc, jr_008_6c52

    ld a, b
    bit 7, a
    jr z, jr_008_6c32

    cpl
    inc a

jr_008_6c32:
    cp $30
    jr nc, jr_008_6c52

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$c10a], a
    ld [$c102], a
    ld a, $09
    ld [$c0f9], a
    ld a, $52
    ld [$c116], a
    ld a, $04
    ld [$c10d], a
    ret


Jump_008_6c52:
jr_008_6c52:
    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    call Call_1d18
    add $02
    ld [$c10c], a
    ld a, [$c10b]
    and a
    jr z, jr_008_6c87

    xor a
    ld [$c10b], a
    ld a, $03
    ld [$c0f9], a
    xor a
    ld [$c102], a
    ld a, $51
    ld [$c116], a
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c10c
    ld a, [hl]
    add $10
    ld [hl], a
    ret


jr_008_6c87:
    ld a, $02
    call Call_1d18
    add $03
    ld [$c10b], a
    sub $03
    add a
    ld c, a
    ld b, $00
    ld hl, $77c6
    add hl, bc
    ld de, $c100
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$c10b]
    sub $03
    xor $01
    ld b, a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c0f9], a
    ld [$c102], a
    ld a, $50
    ld [$c116], a
    ret


    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c202
    add hl, bc
    inc [hl]
    ld de, $c111
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr c, jr_008_6ce7

    ld a, $02
    ld [de], a
    ld hl, $c10a
    inc [hl]
    ret


jr_008_6ce7:
    ld a, $05
    add l
    ld l, a
    ld a, [$c0f8]
    rra
    jr c, jr_008_6cfa

    ld a, [hl]
    add $08
    ld [hl], a
    ld bc, $0004
    jr jr_008_6d01

jr_008_6cfa:
    ld a, [hl]
    sub $08
    ld [hl], a
    ld bc, $fffc

jr_008_6d01:
    ld hl, $c10f
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld h, a
    ld l, c
    ld a, [$c10e]
    add $40
    ld b, a
    jp Jump_008_74f4


    ld hl, $c111
    dec [hl]
    ret nz

    ld hl, $c10a
    inc [hl]
    ret


    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c202
    add hl, bc
    inc [hl]
    ld de, $c111
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr c, jr_008_6d5b

    xor a
    ld [de], a
    ld a, $fe
    add l
    ld l, a
    xor a
    ld [hl], a
    ld [$c0f9], a
    ld [$c102], a
    inc a
    ld [$c10c], a
    inc a
    ld [$c10a], a
    ld de, $c103
    ld a, [de]
    set 2, a
    ld [de], a
    ld a, $02
    add l
    ld l, a

jr_008_6d5b:
    ld a, $05
    add l
    ld l, a
    ld a, [$c0f8]
    rra
    jr c, jr_008_6d6e

    ld a, [hl]
    sub $08
    ld [hl], a
    ld bc, $fffc
    jr jr_008_6d75

jr_008_6d6e:
    ld a, [hl]
    add $08
    ld [hl], a
    ld bc, $0004

jr_008_6d75:
    ld hl, $c10f
    ld a, [hl]
    add c
    ld c, a
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld h, a
    ld l, c
    ld a, [$c10e]
    add $40
    ld b, a
    jp Jump_008_74f4


    ld hl, $c109
    bit 3, [hl]
    jr z, jr_008_6d9b

    res 3, [hl]
    ld a, $05
    ld [$c10a], a
    jp Jump_008_6ecd


jr_008_6d9b:
    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6daa
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or [hl]
    ld l, l
    ld c, l
    ld l, [hl]
    ld l, d
    ld l, [hl]
    and c
    ld l, [hl]
    call nz, $cc6e
    ld l, [hl]
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
    add $f0
    and $f8
    rrca
    ld e, a
    ld d, $00
    add hl, de
    ld de, $c86d
    add hl, de
    ld a, [hl+]
    cp $95
    jr nz, jr_008_6dfd

    ld a, [hl]
    rla
    jr nc, jr_008_6dfd

    ld bc, $01fb
    jr jr_008_6e16

jr_008_6dfd:
    ld de, $0013
    add hl, de
    ld a, [hl+]
    cp $95
    jr nz, jr_008_6e0f

    ld a, [hl]
    rla
    jr nc, jr_008_6e0f

    ld bc, $0005
    jr jr_008_6e16

jr_008_6e0f:
    ld a, $05
    ld [$c10a], a
    jr jr_008_6e3b

jr_008_6e16:
    ld de, $c10e
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld hl, $c0fe
    ld a, [hl]
    add c
    ld [hl], a

Jump_008_6e2c:
    ld a, $1f
    call Call_1d18
    add $16
    ld [$c10c], a
    ld a, $01
    ld [$c10a], a

jr_008_6e3b:
    xor a
    ld [$c102], a
    xor a
    ld [$c0f9], a
    xor a
    ld [$c116], a
    ld hl, $c103
    set 2, [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c10a
    inc [hl]
    ld a, $10
    ld [$c10c], a
    xor a
    ld [$c102], a
    ld a, $17
    ld [$c0f9], a
    ld a, $02
    ld [$c116], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $04
    call Call_1d18
    and a
    jp z, Jump_008_6e2c

    ld hl, $c10e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $20
    bit 2, [hl]
    jr z, jr_008_6e86

    ld d, $23

jr_008_6e86:
    ld a, d
    ld [$c0f9], a
    ld hl, $c103
    res 2, [hl]
    ld hl, $c10a
    inc [hl]
    ld a, $03
    ld [$c10c], a
    ld a, $3a
    ld [$c831], a
    ld [$c835], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $03
    ld [hl], a
    ld hl, $c0f9
    inc [hl]
    ld hl, $c10a
    inc [hl]
    ld hl, $c10e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $00
    ld a, [de]
    bit 2, a
    jr z, jr_008_6ebf

    inc b

jr_008_6ebf:
    dec de
    ld a, b
    jp $32e7


    ld hl, $c10c
    dec [hl]
    ret nz

    jp Jump_008_6e2c


    ret


Jump_008_6ecd:
    ld a, $46
    ld [$c201], a
    ld hl, $c207
    ld a, [$c0fe]
    cp [hl]
    jr c, jr_008_6eed

    ld hl, $c0f8
    set 0, [hl]
    ld hl, $c201
    res 0, [hl]
    ld hl, $c207
    add $f2
    ld [hl], a
    jr jr_008_6efd

jr_008_6eed:
    ld hl, $c0f8
    res 0, [hl]
    ld hl, $c201
    set 0, [hl]
    ld hl, $c207
    add $16
    ld [hl], a

jr_008_6efd:
    ld hl, $c203
    ld a, [$c0fa]
    add $08
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
    ld hl, $c103
    res 2, [hl]
    xor a
    ld [$c102], a
    ld a, $0a
    ld [$c0f9], a
    ld a, $01
    ld [$c116], a
    ret


    ld a, [$c10a]
    add a
    ld c, a
    ld b, $00
    ld hl, $6f65
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, e
    ld l, a
    pop hl
    ld l, a
    ld a, d
    ld [hl], b
    add c
    ld [hl], b
    and [hl]
    ld [hl], b
    rst $38
    ld [hl], b
    sbc b
    ld [hl], c
    xor h
    ld [hl], c
    bit 6, c
    ld bc, $1572
    ld [hl], d
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, [$c0fa]
    and $f8
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c871
    add hl, bc
    ld de, $0004
    ld c, $00

jr_008_6f99:
    ld a, [hl]
    cp $95
    jr z, jr_008_6fa6

    add hl, de
    inc c
    ld a, c
    cp $1e
    jr nz, jr_008_6f99

    ret


jr_008_6fa6:
    ld a, c
    add a
    add a
    add a
    add $08
    ld de, hOAMDMAFunction
    ld b, $01
    ld hl, $c0fe
    cp [hl]
    jr c, jr_008_6fbb

    ld de, $0080
    dec b

jr_008_6fbb:
    ld hl, $c100
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $c10a
    inc [hl]
    ld hl, $c0f8
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    ld b, $90
    ld a, [$c705]
    rra
    jr nc, jr_008_6fd7

    ld b, $e0

jr_008_6fd7:
    ld hl, $c10d
    ld [hl], b
    ld a, $30
    ld [$c116], a
    ret


    ld hl, $779e
    ld de, $c112
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
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld hl, $dd98
    ld a, [hl]
    cp $95
    jr nz, jr_008_7079

    inc hl
    ld a, [hl]
    and $f0
    cp $80
    ret nz

    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    call Call_1d18
    and $07
    jr z, jr_008_7061

    ld hl, $dd99
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
    ld hl, $77d2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $c10e
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $c103
    res 2, [hl]
    ld a, $06
    ld [$c10c], a
    ld a, $03
    ld [$c10a], a
    ld hl, $c109
    ld a, [$dd99]
    and $0f
    cp $04
    jr c, jr_008_7059

    res 0, [hl]
    ld a, $09
    ld [$c0f9], a
    ret


jr_008_7059:
    set 0, [hl]
    ld a, $08
    ld [$c0f9], a
    ret


jr_008_7061:
    xor a
    ld [$c102], a
    ld a, $0b
    ld [$c0f9], a
    ld a, $33
    ld [$c116], a
    ld a, $16
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ret


jr_008_7079:
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    jr jr_008_70b0

    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $07
    ld [hl], a
    ld hl, $c10a
    inc [hl]
    ld hl, $c0f9
    ld a, [$c109]
    rra
    jr c, jr_008_709b

    dec [hl]
    ld a, $01
    jr jr_008_709d

jr_008_709b:
    inc [hl]
    xor a

jr_008_709d:
    ld hl, $c10e
    ld e, [hl]
    inc hl
    ld d, [hl]
    jp $32e7


    ld hl, $c10c
    dec [hl]
    ret nz

    ld hl, $c103
    set 2, [hl]

jr_008_70b0:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, $ff00
    rra
    jr c, jr_008_70c0

    ld bc, $0100

jr_008_70c0:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c102], a
    ld a, $04
    ld [$c0f9], a
    ld a, $31
    ld [$c116], a
    ld a, $05
    ld [$c10a], a
    ld a, [$c109]
    bit 1, a
    jr nz, jr_008_70f5

    ld a, $ff
    call Call_1d18
    ld b, a
    ld c, $00
    and $07
    jr nz, jr_008_70f5

    ld a, b
    and $18
    rrca
    rrca
    rrca
    add $03
    ld c, a

jr_008_70f5:
    ld hl, $c10c
    ld [hl], c
    ld hl, $c109
    set 1, [hl]
    ret


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_008_7132

    dec [hl]
    jr nz, jr_008_7132

    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, hOAMDMAFunction
    rra
    jr c, jr_008_7119

    ld bc, $0080

jr_008_7119:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    xor a
    ld [$c0f9], a
    xor a
    ld [$c102], a
    ld a, $30
    ld [$c116], a
    ld a, $01
    ld [$c10a], a
    ret


jr_008_7132:
    ld hl, $77a2
    ld de, $c112
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
    ld a, [$c0f8]
    ld b, a
    call $2ae3
    ld a, [$c10d]
    add $08
    ld d, a
    ld a, [$c0f8]
    rra
    jr c, jr_008_715e

    ld a, [$c0fe]
    cp d
    jr z, jr_008_718e

    jr jr_008_7164

jr_008_715e:
    ld a, [$c0fe]
    and a
    jr z, jr_008_718e

jr_008_7164:
    ld hl, $dd98
    ld a, [hl]
    and $80
    ret z

    ld hl, $c103
    res 2, [hl]
    ld a, $0b
    ld [$c0f9], a
    ld a, $0a
    ld [$c10a], a
    xor a
    ld [$c102], a
    ld a, $33
    ld [$c116], a
    ld a, $66
    ld [$c831], a
    ld [$c835], a
    jp Jump_008_71b5


jr_008_718e:
    ld a, $02
    ld [$c10c], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $0e
    ld [$c0f9], a
    ld a, $34
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10a
    inc [hl]
    ld hl, $c103
    res 2, [hl]

Jump_008_71b5:
    ld hl, $c109
    res 1, [hl]
    ld hl, $c100
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    call Call_1d18
    add $25
    ld [$c10c], a
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    ld a, $02
    ld [hl], a
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl], a
    ld bc, hOAMDMAFunction
    rra
    jr c, jr_008_71e3

    ld bc, $0080

jr_008_71e3:
    ld hl, $c100
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld a, $12
    ld [$c0f9], a
    ld a, $35
    ld [$c116], a
    ld hl, $c10a
    inc [hl]
    ret


    ld hl, $c10c
    dec [hl]
    ret nz

    xor a
    ld [$c0f9], a
    ld a, $30
    ld [$c116], a
    ld a, $01
    ld [$c10a], a
    ret


    ld hl, $c10c
    ld a, [hl]
    and a
    jr z, jr_008_721d

    dec [hl]

jr_008_721d:
    ld a, [$c0fc]
    rla
    jr c, jr_008_7286

    call $2ab3
    ld a, [$dd92]
    and $c0
    jr z, jr_008_7286

    ld hl, $c0fa
    ld a, [$dd94]
    inc a
    add [hl]
    ld [hl], a
    ld a, [$c10c]
    and a
    jr z, jr_008_7252

    ld hl, $c0fc
    ld a, $ff
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $c0f9
    inc [hl]
    ld a, $66
    ld [$c831], a
    ld [$c835], a
    ret


jr_008_7252:
    ld hl, $c0f8
    ld a, [hl]
    xor $01
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld bc, hOAMDMAFunction
    ld a, [$c0f8]
    rra
    jr c, jr_008_726d

    ld bc, $0080

jr_008_726d:
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c103
    set 2, [hl]
    xor a
    ld [$c102], a
    ld [$c0f9], a
    inc a
    ld [$c10a], a
    ld a, $30
    ld [$c116], a
    ret


jr_008_7286:
    ld hl, $c0fd
    ld a, [hl]
    add $80
    ld [hl-], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


Call_008_7292:
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fffc
    ld a, d
    rra
    jr nc, jr_008_72a2

    ld bc, $0004

jr_008_72a2:
    add hl, bc
    ld a, [hl]
    and $c0
    ret nz

    scf
    ret


Jump_008_72a9:
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
    call Call_008_768e
    jp Jump_008_7602


Call_008_72d3:
    ld hl, $c103
    bit 4, [hl]
    jr z, jr_008_72ec

    res 4, [hl]
    ld a, [$c108]
    sub $40
    add a
    ld c, a
    ld b, $00
    ld hl, $c16b
    add hl, bc
    ld a, [hl]
    jr jr_008_72f8

jr_008_72ec:
    ld a, [$dd9f]
    bit 4, a
    jr nz, jr_008_72f5

    and a
    ret


jr_008_72f5:
    ld a, [$dd9e]

jr_008_72f8:
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
    jr nc, jr_008_730d

    inc b

jr_008_730d:
    ld a, b
    scf
    ret


    ret


    ld hl, $c0fc
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, [$c103]
    and $03
    jr z, jr_008_7354

    cp $01
    jr nz, jr_008_7338

    ld l, e
    ld h, d
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    jr jr_008_7354

jr_008_7338:
    cp $02
    jr nz, jr_008_734a

    ld l, e
    ld h, d
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    add hl, hl
    add hl, hl
    ld c, l
    ld b, h
    jr jr_008_7354

jr_008_734a:
    ld l, e
    ld h, d
    add hl, hl
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    add hl, hl
    ld c, l
    ld b, h

jr_008_7354:
    bit 7, d
    jr z, jr_008_7362

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    cpl
    adc $00
    ld d, a

jr_008_7362:
    ld a, d
    ld [$c1f8], a
    bit 7, b
    jr z, jr_008_7374

    ld a, c
    cpl
    add $01
    ld c, a
    ld a, b
    cpl
    adc $00
    ld b, a

jr_008_7374:
    ld a, b
    ld [$c1f7], a
    ld a, [$c105]
    cp $3f
    jr nz, jr_008_7384

    ld a, [$c104]
    and $7f

jr_008_7384:
    ld c, a
    ld b, $00
    ld hl, $76e3
    add hl, bc
    ld a, [hl]
    add a
    ld c, a
    ld b, $00
    ld hl, $7741
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c116]
    and $f0
    swap a
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$c816], a
    ld a, [hl+]
    ld [$c815], a
    ld a, [hl]
    ld [$c818], a
    ld a, [$c815]
    add $02
    add a
    add a
    sub $80
    cpl
    inc a
    ld e, a
    ld d, $00
    ld hl, $c106
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c105]
    cp $3b
    jr nz, jr_008_73d1

    call Call_008_74ab
    jr jr_008_73d4

jr_008_73d1:
    call Call_008_74d2

jr_008_73d4:
    ld hl, $c1f8
    ld a, [$c0fa]
    and $07
    add [hl]
    ld b, a
    and $f8
    srl a
    srl a
    srl a
    ld c, a
    ld a, b
    and $07
    jr z, jr_008_73ed

    inc c

jr_008_73ed:
    ld hl, $c816
    ld a, [hl]
    add c
    ld [hl], a
    ld hl, $c1f7
    ld a, [$c0fe]
    and $07
    add [hl]
    ld b, a
    and $f8
    srl a
    srl a
    srl a
    ld c, a
    ld a, b
    and $07
    jr z, jr_008_740c

    inc c

jr_008_740c:
    ld hl, $c815
    ld a, [hl]
    add c
    ld [hl], a
    ld hl, $c0fa
    ld d, [hl]
    inc hl
    inc hl
    ld a, [hl]
    rla
    jr nc, jr_008_7423

    ld a, [$c1f8]
    sub d
    cpl
    inc a
    ld d, a

jr_008_7423:
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    inc hl
    ld a, [hl]
    rla
    jr nc, jr_008_7433

    ld a, [$c1f7]
    sub e
    cpl
    inc a
    ld e, a

jr_008_7433:
    ld a, d
    sub $08
    and $f8
    ld c, a
    and $f0
    swap a
    ld b, a
    ld a, c
    and $0f
    swap a
    ld c, a
    ld a, e
    and $f8
    srl a
    ld l, a
    ld h, $00
    add hl, bc
    ld bc, $c86f
    add hl, bc
    ld bc, $c106
    ld a, l
    ld [bc], a
    inc bc
    ld a, h
    ld [bc], a
    ld a, [$c815]
    add a
    add a
    sub $80
    cpl
    inc a
    ld e, a
    ld d, $00
    ld a, [$c816]
    ld b, a
    ld a, [$c103]
    bit 6, a
    jr nz, jr_008_748e

jr_008_7470:
    ld a, [$c815]
    ld c, a

jr_008_7474:
    ld a, [hl]
    and a
    jr nz, jr_008_7480

    ld a, [$c818]
    ld [hl+], a
    ld a, [$c108]
    ld [hl-], a

jr_008_7480:
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_008_7474

    add hl, de
    dec b
    jr nz, jr_008_7470

    jp $2a6b


jr_008_748e:
    res 6, a
    ld [$c103], a

jr_008_7493:
    ld a, [$c815]
    ld c, a

jr_008_7497:
    ld a, [$c818]
    ld [hl+], a
    ld a, [$c108]
    ld [hl+], a
    inc hl
    inc hl
    dec c
    jr nz, jr_008_7497

    add hl, de
    dec b
    jr nz, jr_008_7493

    jp $2a6b


Call_008_74ab:
    ld a, [$c816]
    add $02
    ld b, a

jr_008_74b1:
    ld a, [$c815]
    add $02
    ld c, a

jr_008_74b7:
    ld a, [$c818]
    cp [hl]
    inc hl
    jr nz, jr_008_74c7

    ld a, [$c108]
    cp [hl]
    jr nz, jr_008_74c7

    xor a
    ld [hl-], a
    ld [hl+], a

jr_008_74c7:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_008_74b7

    add hl, de
    dec b
    jr nz, jr_008_74b1

    ret


Call_008_74d2:
    inc hl
    ld a, [$c816]
    add $02
    ld b, a

jr_008_74d9:
    ld a, [$c815]
    add $02
    ld c, a

jr_008_74df:
    ld a, [$c108]
    cp [hl]
    jr nz, jr_008_74e8

    xor a
    ld [hl-], a
    ld [hl+], a

jr_008_74e8:
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_008_74df

    add hl, de
    dec b
    jr nz, jr_008_74d9

    ret


Jump_008_74f4:
    push hl
    ld de, $0005
    ld a, [$c0f8]
    rra
    jr nc, jr_008_7501

    ld de, $fffd

jr_008_7501:
    add hl, de
    ld de, $0080
    ld c, $03

jr_008_7507:
    ld a, [hl]
    cp b
    jr nz, jr_008_750e

    xor a
    ld [hl-], a
    ld [hl+], a

jr_008_750e:
    add hl, de
    dec c
    jr nz, jr_008_7507

    pop hl
    ld de, $0080
    ld c, $03

jr_008_7518:
    ld a, [hl]
    and a
    jr nz, jr_008_7521

    ld [hl], $22
    inc hl
    ld [hl], b
    dec hl

jr_008_7521:
    add hl, de
    dec c
    jr nz, jr_008_7518

    ret


    ld a, $1f
    ld [$c1f1], a
    ld de, $c22c

jr_008_752e:
    ld a, [de]
    bit 2, a
    jr z, jr_008_757b

    inc de
    inc de
    ld a, [de]
    cp $3f
    jr nz, jr_008_753f

    dec de
    ld a, [de]
    and $7f
    inc de

jr_008_753f:
    add a
    ld c, a
    ld b, $00
    ld hl, $77da
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $11
    add e
    ld e, a
    ld a, [de]
    and $0f
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
    jr nz, jr_008_7577

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

jr_008_7577:
    ld a, $01
    add e
    ld e, a

jr_008_757b:
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c1f1
    dec [hl]
    jr nz, jr_008_752e

    ret


    ld a, [$dd7d]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $c20b
    add hl, bc
    inc [hl]
    ld a, $03
    add l
    ld l, a
    push hl
    ld e, l
    ld d, h
    ld a, [de]
    add a
    ld c, a
    ld b, $00
    ld hl, $77da
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $11
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
    jr nz, jr_008_75d2

    xor a
    ld [de], a
    ld a, $f7
    add e
    ld e, a
    ld a, [de]
    inc a
    ld [de], a

jr_008_75d2:
    pop hl
    ld a, $04
    add l
    ld l, a
    dec [hl]
    ret nz

    ld a, $ee
    add l
    ld l, a
    xor a
    ld [hl], a
    ld a, [$c70b]
    ldh [$ff90], a
    ret


    ld hl, $c0c7
    ld c, $08

jr_008_75ea:
    ld de, $0005
    inc [hl]

jr_008_75ee:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_008_75f8

    dec e
    jr nz, jr_008_75ee

jr_008_75f6:
    jr jr_008_75f6

jr_008_75f8:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_008_75ea

    ld d, $00
    jp Jump_008_7685


Jump_008_7602:
    ld a, [$c0c7]
    ld hl, $c0cd
    cp [hl]
    jr nc, jr_008_760e

    ld hl, $c0c7

jr_008_760e:
    ld c, $04

jr_008_7610:
    ld de, $000b
    inc [hl]

jr_008_7614:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_008_7621

    dec e
    ld a, $06
    cp e
    jr nz, jr_008_7614

jr_008_761f:
    jr jr_008_761f

jr_008_7621:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_008_7610

    ld d, $03
    jr jr_008_7685

    ld hl, $c0c7
    ld de, $c0cd
    ld c, $03

jr_008_7632:
    ld a, [de]
    cp [hl]
    jr nc, jr_008_7638

    ld l, e
    ld h, d

jr_008_7638:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_008_7632

    ld c, $02

jr_008_7643:
    ld de, $0017
    inc [hl]

jr_008_7647:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_008_7654

    dec e
    ld a, $12
    cp e
    jr nz, jr_008_7647

jr_008_7652:
    jr jr_008_7652

jr_008_7654:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_008_7643

    ld d, $02
    jr jr_008_7685

Call_008_765d:
    ld hl, $c0c7
    ld de, $c0cd
    ld c, $07

jr_008_7665:
    ld a, [de]
    cp [hl]
    jr nc, jr_008_766b

    ld l, e
    ld h, d

jr_008_766b:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_008_7665

    inc [hl]

jr_008_7675:
    inc hl
    ld a, [hl]
    and a
    jr z, jr_008_7682

    dec e
    ld a, $12
    cp e
    jr nz, jr_008_7675

jr_008_7680:
    jr jr_008_7680

jr_008_7682:
    ld [hl], b
    ld d, $01

Jump_008_7685:
jr_008_7685:
    ld hl, $c103
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    ret


Call_008_768e:
Jump_008_768e:
    ld a, [$c108]
    sub $40
    ld b, a
    ld hl, $c0c8
    ld c, $08

jr_008_7699:
    ld de, $ffff

jr_008_769c:
    ld a, [hl]
    cp b
    jr z, jr_008_76aa

    inc hl
    dec e
    ld a, $fa
    cp e
    jr nz, jr_008_769c

    inc hl
    jr jr_008_76b2

jr_008_76aa:
    ld [hl], $00
    add hl, de
    dec [hl]
    ld de, $0007
    add hl, de

jr_008_76b2:
    dec c
    jr nz, jr_008_7699

    ret


Call_008_76b6:
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
    ld b, $03

jr_008_76cc:
    ld c, $03

jr_008_76ce:
    inc hl
    ld a, [$c1f1]
    cp [hl]
    jr nz, jr_008_76d8

    xor a
    ld [hl-], a
    ld [hl+], a

jr_008_76d8:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_008_76ce

    add hl, de
    dec b
    jr nz, jr_008_76cc

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
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0000
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
    ld bc, $0202
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    ld b, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc h
    ld [hl], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    and d
    ld [bc], a
    ld [bc], a
    ld h, d
    ld bc, $2201
    ld bc, $2202
    ld [bc], a
    ld [bc], a
    ld h, e
    inc bc
    ld [bc], a
    ld h, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, e
    inc bc
    ld [bc], a
    add e
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    add d
    ld [bc], a
    ld bc, $01a2
    ld bc, $0200
    ld [bc], a
    add d
    inc bc
    inc bc
    or e
    inc b
    inc bc
    or e
    ld b, $06
    or e
    ld [bc], a
    ld [bc], a
    or e
    inc b
    inc bc
    and d
    inc b
    inc bc
    nop
    ld bc, $4302
    ld [bc], a
    ld [bc], a
    dec bc
    ld [bc], a
    ld [bc], a
    ld b, a
    ld bc, $4302
    ld bc, $4301
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld b, l
    ld [$0808], sp
    inc b
    ld [$0818], sp
    nop
    rst $38
    add b
    inc bc
    ld bc, $8000
    inc b
    nop
    nop
    nop
    nop
    ld bc, $8000
    inc b
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    inc bc
    ld bc, $80ff
    inc bc
    ld bc, $8000
    inc b
    nop
    rst $38
    add b
    nop
    add b
    sub b
    sbc b
    ldh [$ffe8], a
    ldh [$ff98], a
    sub b
    add sp, $00
    nop
    db $fc
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    sub [hl]
    ld a, b
    and d
    ld a, b
    and [hl]
    ld a, b
    xor b
    ld a, b
    or h
    ld a, b
    or [hl]
    ld a, b
    cp b
    ld a, b
    cp [hl]
    ld a, b
    jp nz, $c678

    ld a, b
    jp z, $d278

    ld a, b
    ret c

    ld a, b
    xor [hl]
    ld a, c
    call c, $9678
    ld a, b
    add sp, $78
    xor $78
    db $fc
    ld a, b
    inc b
    ld a, c
    sub [hl]
    ld a, b
    ld a, [bc]
    ld a, c
    inc c
    ld a, c
    sub [hl]
    ld a, b
    inc c
    ld a, c
    ld a, [bc]
    ld a, c
    ld c, $79
    ld l, $79
    ld [hl-], a
    ld a, c
    ld a, [hl-]
    ld a, c
    ld b, d
    ld a, c
    ld b, h
    ld a, c
    ld b, [hl]
    ld a, c
    sub [hl]
    ld a, b
    ld c, d
    ld a, c
    ld d, h
    ld a, c
    ld e, b
    ld a, c
    ld h, b
    ld a, c
    ld l, h
    ld a, c
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld a, c
    ld [hl], b
    ld a, c
    ld b, h
    ld a, c
    ld b, d
    ld a, c
    sub [hl]
    ld a, b
    halt
    ld a, c
    ld a, d
    ld a, c
    add d
    ld a, c
    ld l, $7a
    sub d
    ld a, c
    and b
    ld a, c
    and b
    ld a, c
    ld c, $79
    xor [hl]
    ld a, c
    or h
    ld a, c
    cp [hl]
    ld a, c
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    or h
    ld a, c
    cp [hl]
    ld a, c
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    add $79
    call z, $ce79
    ld a, c
    jp nc, $d279

    ld a, c
    call c, $e279
    ld a, c
    add sp, $79
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    ld a, [c]
    ld a, c
    ld a, [$fc79]
    ld a, c
    ld [$107a], sp
    ld a, d
    jr jr_008_78fc

    or h
    ld a, c
    ld a, [de]
    ld a, d
    or h
    ld a, c
    sub [hl]
    ld a, b
    ld [hl+], a
    ld a, d
    sub [hl]
    ld a, b
    ld h, $7a
    ld l, $7a
    ld l, $7a
    ld l, $7a
    db $dd
    ld a, h
    ld [c], a
    ld a, h
    push hl
    ld a, h
    add sp, $7c
    db $ed
    ld a, h
    ldh a, [$7c]
    ld c, b
    ld a, d
    ld c, e
    ld a, d
    ld c, [hl]
    ld a, d
    ld d, c
    ld a, d
    ld d, [hl]
    ld a, d
    ld e, e
    ld a, d
    ld h, b
    ld a, d
    ld h, l
    ld a, d
    ld l, b
    ld a, d
    ld l, e
    ld a, d
    or b
    ld a, h
    ld l, [hl]
    ld a, d
    ld [hl], c
    ld a, d
    ld [hl], h
    ld a, d
    ld [hl], a
    ld a, d
    ld a, d
    ld a, d
    ld a, l
    ld a, d
    add b
    ld a, d
    add e
    ld a, d
    add [hl]
    ld a, d
    adc c
    ld a, d
    sub e
    ld a, d
    and b
    ld a, d
    and h
    ld a, d
    or b
    ld a, d
    or e
    ld a, d
    or [hl]
    ld a, d
    add $7b
    call nc, $db7b
    ld a, l
    push hl
    ld a, l
    ld a, [c]
    ld a, l
    push af
    ld a, l
    ld hl, sp+$7d
    cp $7d
    cp c
    ld a, d
    cp h
    ld a, d
    cp a
    ld a, d
    ld l, $7c
    jr c, jr_008_796e

    ld b, l
    ld a, h
    ld c, e
    ld a, h
    ld d, d
    ld a, h
    ld e, c
    ld a, h
    ld h, a
    ld a, h

jr_008_78fc:
    jp nz, $c57a

    ld a, d
    ret z

    ld a, d
    jp z, $037a

    ld a, [hl]
    dec b
    ld a, [hl]
    ld [$cd7e], sp
    ld a, d
    ret nc

    ld a, d
    db $d3
    ld a, d
    sub $7a
    reti


    ld a, d
    call c, $df7a
    ld a, d
    ld [c], a
    ld a, d
    push hl
    ld a, d
    add sp, $7a
    db $eb
    ld a, d
    xor $7a
    pop af
    ld a, d
    db $f4
    ld a, d
    rst $30
    ld a, d
    ld a, [$fd7a]
    ld a, d
    nop
    ld a, e
    inc bc
    ld a, e
    ld b, $7b
    add e
    ld a, l
    adc b
    ld a, l
    sub b
    ld a, l
    adc l
    ld a, l
    add hl, bc
    ld a, e
    inc c
    ld a, e
    ld [de], a
    ld a, e
    rrca
    ld a, e
    inc h
    ld a, e
    dec a
    ld a, e
    ld d, h
    ld a, e
    ld e, l
    ld a, e
    ld h, [hl]
    ld a, e
    ld [hl], b
    ld a, e
    ld a, l
    ld a, e
    add [hl]
    ld a, e
    adc c
    ld a, e
    adc h
    ld a, e
    adc a
    ld a, e
    sub d
    ld a, e
    sub l
    ld a, e
    sbc b
    ld a, e
    sbc e
    ld a, e
    sbc [hl]
    ld a, e
    and d
    ld a, e
    and [hl]
    ld a, e
    xor c
    ld a, e
    xor h
    ld a, e
    or b
    ld a, e
    or h
    ld a, e

jr_008_796e:
    cp c
    ld a, e
    cp l
    ld a, e
    ret nz

    ld a, e
    jp $287b


    ld a, h
    dec hl
    ld a, h
    jp c, $dd7b

    ld a, e
    and $7b
    jp hl


    ld a, e
    xor $7b
    di
    ld a, e
    rlca
    ld a, h
    dec c
    ld a, h
    inc de
    ld a, h
    jr nz, jr_008_7a0a

    inc h
    ld a, h
    di
    ld a, h
    ld l, $7c
    jr c, jr_008_7a12

    ld b, l
    ld a, h
    ld c, e
    ld a, h
    ld d, d
    ld a, h
    ld e, c
    ld a, h
    ld h, a
    ld a, h
    add c
    ld a, h
    add [hl]
    ld a, h
    adc c
    ld a, h
    adc h
    ld a, h
    sub b
    ld a, h
    sub [hl]
    ld a, l
    sub b
    ld a, h
    sub d
    ld a, h
    sbc h
    ld a, h
    xor c
    ld a, h
    or e
    ld a, h
    cp l
    ld a, h
    jp z, $d07c

    ld a, h
    sub $7c
    or e
    ld a, l
    or [hl]
    ld a, l
    cp c
    ld a, l
    cp l
    ld a, l
    nop
    ld a, l
    ld [bc], a
    ld a, l
    dec b
    ld a, l
    or $7c
    rrca
    ld a, l
    ld [de], a
    ld a, l
    dec d
    ld a, l
    rla
    ld a, l
    jr z, jr_008_7a55

    dec hl
    ld a, l
    ld l, $7d
    ret nz

    ld a, l
    sub $7d
    reti


    ld a, l
    jr nc, jr_008_7a61

    inc sp
    ld a, l
    jr c, jr_008_7a65

    dec sp
    ld a, l
    ld a, $7d
    ld b, b
    ld a, l
    ld b, l
    ld a, l
    ld b, d
    ld a, l
    ld b, a
    ld a, l
    ld c, d
    ld a, l
    ld d, l
    ld a, l
    ld c, l
    ld a, l
    ld d, b
    ld a, l
    ld e, b
    ld a, l
    ld e, e
    ld a, l
    ld e, [hl]
    ld a, l
    ld h, h
    ld a, l
    ld h, a
    ld a, l
    ld h, c
    ld a, l
    ret


    ld a, e

jr_008_7a0a:
    call z, $cf7b
    ld a, e
    rst $10
    ld a, e
    ld l, d
    ld a, l

jr_008_7a12:
    ld [hl], b
    ld a, l
    ld a, h
    ld a, l
    ld l, l
    ld a, l
    sub h
    ld a, l
    sbc d
    ld a, l
    sbc a
    ld a, l
    and d
    ld a, l
    and a
    ld a, l
    xor d
    ld a, l
    ld e, l
    ld a, e
    dec bc
    ld a, [hl]
    ld c, $7e
    ld de, $137e
    ld a, [hl]
    ld d, $7e
    jr jr_008_7ab0

    dec de
    ld a, [hl]
    dec e
    ld a, [hl]
    jr nz, @+$80

    inc hl
    ld a, [hl]
    ld h, $7e
    jr z, jr_008_7abc

    inc l
    ld a, [hl]
    ld sp, $367e
    ld a, [hl]
    add hl, sp
    ld a, [hl]
    dec a
    ld a, [hl]
    nop
    inc b
    inc b
    inc bc
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_008_7a55:
    ld a, [bc]
    nop
    ld b, $06
    ld b, $06
    dec b
    inc d
    inc d
    inc d
    inc d
    dec b

jr_008_7a61:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_008_7a65:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    ld [$0008], sp
    ld [$0008], sp
    ld [$0008], sp
    inc b
    inc b
    nop
    ld [$0008], sp
    inc b
    inc b
    nop
    jr nz, jr_008_7a99

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_008_7a99:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    db $10
    db $10
    db $10
    dec de
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc b

jr_008_7ab0:
    daa
    ld b, $06
    ld a, [hl+]
    ld [$2d08], sp
    inc d
    inc d
    ld e, $0c
    inc c

jr_008_7abc:
    ld hl, $0606
    inc h
    ld b, $06
    nop
    db $10
    db $10
    inc bc
    add hl, bc
    add hl, bc
    ld b, $10
    ld [$0808], sp
    nop
    ld [$0008], sp
    ld b, $06
    nop
    ld b, $06
    inc bc
    ld b, $06
    ld b, $06
    ld b, $09
    ld b, $06
    inc c
    ld b, $06
    rrca
    ld b, $06
    ld [de], a
    ld b, $06
    dec d
    ld b, $06
    jr jr_008_7af3

    ld b, $1b
    ld b, $06
    ld e, $06

jr_008_7af3:
    ld b, $21
    ld b, $06
    inc h
    ld b, $06
    daa
    ld b, $06
    ld a, [hl+]
    ld b, $06
    dec l
    ld b, $06
    nop
    inc c
    inc c
    inc bc
    ld b, $06
    nop
    inc b
    inc b
    inc bc
    jr nz, jr_008_7b2f

    ld b, $06
    ld b, $09
    ld [$0808], sp
    ld [$0808], sp
    ld [$1208], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, de
    stop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_008_7b2f:
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    jr nz, jr_008_7b4a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_008_7b4a:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    jr nz, jr_008_7b73

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_008_7b73:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_008_7b9e

    ld d, $23
    ld d, $16
    nop
    db $10
    db $10
    inc bc
    db $10
    stop
    inc c
    inc c
    inc bc
    ld b, $06
    ld b, $0c
    inc c
    add hl, bc
    inc b
    inc b

jr_008_7b9e:
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc b
    ld [$0808], sp
    ld [$ffff], sp
    dec bc
    db $10
    db $10
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0900], sp
    ld b, $03
    nop
    ld c, $0e
    inc bc
    inc b
    inc b
    ld b, $04
    inc b
    nop
    add hl, bc
    add hl, bc
    inc bc
    db $10
    inc c
    ld b, $0c
    db $10
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    ld de, $0606
    nop
    db $10
    db $10
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    ld [$0f08], sp
    inc b
    inc b
    ld [de], a
    stop
    ld d, $14
    ld [de], a
    ld [de], a
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld c, $05
    dec bc
    dec b
    inc b
    dec b
    dec bc
    dec b
    inc b
    dec b
    inc b
    add hl, de
    dec b
    rlca
    ld b, $07
    dec c
    rra
    ld [$081a], sp
    inc h
    ld [de], a
    dec h
    jr nz, @+$08

    rlca
    dec b
    dec b
    ld b, $07
    ld b, $08
    ld [$1224], sp
    ld [hl-], a
    inc c
    ld a, [bc]
    inc c
    ld [hl], $04
    ld [bc], a
    inc b
    nop
    db $10
    db $10
    inc bc
    db $10
    jr jr_008_7c2f

jr_008_7c2f:
    jr nz, jr_008_7c3b

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_008_7c3b:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    inc c
    ld c, $0a
    inc c
    jr nz, jr_008_7c69

    inc c
    ld c, $0d
    add hl, bc
    db $10
    jr nz, jr_008_7c77

    inc c
    ld c, $0b
    inc de
    ld [$2b20], sp
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    jr nz, jr_008_7ca1

    rlca

jr_008_7c69:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    jr nz, jr_008_7c7f

    ld a, [bc]
    ld a, [bc]

jr_008_7c77:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_008_7c7f:
    ld a, [bc]
    ld b, b
    ld d, e
    ld [$0808], sp
    ld [$0458], sp
    inc b
    ld e, e
    ld [$5e08], sp
    rlca
    inc b
    inc b
    ld h, d
    stop
    jr nz, jr_008_7c9f

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_008_7c9f:
    add hl, bc
    add hl, bc

jr_008_7ca1:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    inc c
    ld c, $0d
    add hl, bc
    db $10
    jr nz, jr_008_7ccf

    db $10
    stop
    jr nz, jr_008_7cc0

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_008_7cc0:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    inc c
    ld c, $0a
    inc c

jr_008_7ccf:
    jr nz, @+$1f

    inc c
    ld c, $0b
    inc de
    jr nz, jr_008_7cfa

    inc c
    ld c, $0b
    inc de
    ld [$2a20], sp
    ld [$0808], sp
    ld [$082f], sp
    ld [$042f], sp
    inc b
    ld [hl-], a
    ld [$0808], sp
    ld [$0837], sp
    ld [$0437], sp
    inc b
    ld a, [hl-]
    inc b
    inc b
    nop
    ld [$0808], sp

jr_008_7cfa:
    ld [$0808], sp
    ld [$2008], sp
    nop
    db $10
    ld [bc], a
    add hl, bc
    add hl, bc
    dec b
    ld [$0808], sp
    ld [$0808], sp
    ld [$2008], sp
    nop
    db $10
    db $10
    inc bc
    ld b, $06
    nop
    db $10
    ld [bc], a
    inc b
    ld [$0404], sp
    ld [$0410], sp
    ld [$0404], sp
    inc b
    inc b
    inc b
    ld [$0804], sp
    inc de
    inc c
    inc c
    ld d, $08
    ld [$1019], sp
    nop
    ld [$0308], sp
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [$0808], sp
    nop
    db $10
    db $10
    inc bc
    db $10
    dec b
    db $10
    rlca
    ld [$0a08], sp
    ld b, $00
    db $10
    db $10
    inc bc
    db $10
    db $10
    ld b, $08
    ld [$0809], sp
    ld [$0808], sp
    nop
    ld [$0008], sp
    ld [de], a
    ld [de], a
    inc bc
    add hl, bc
    jr nz, jr_008_7d65

    db $10
    db $10
    add hl, bc
    dec bc
    dec bc
    nop

jr_008_7d65:
    inc c
    inc c
    ld b, $06
    ld b, $00
    db $10
    db $10
    inc bc
    ld [$0608], sp
    jr nz, jr_008_7d83

    jr nz, @+$12

    jr nz, @+$12

    ld [$080c], sp
    ld [$1208], sp
    ld [$0808], sp
    ld [$f008], sp

jr_008_7d83:
    nop
    ld c, $0e
    ld c, $0e
    dec b
    ld b, $06
    ld b, $06
    ld a, [bc]
    ld b, $06
    dec c
    db $10
    db $10
    jr nz, jr_008_7d95

jr_008_7d95:
    db $10
    ld [bc], a
    rlca
    inc b
    inc b
    nop
    ld b, $06
    ld b, $06
    dec b
    db $10
    db $10
    ld [$0808], sp
    ld [$0d08], sp
    db $10
    jr @+$0c

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [$0308], sp
    ld b, $06
    ld b, $08
    ld [$0008], sp
    ld b, $06
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $10
    ld d, $04
    inc b
    add hl, de
    jr nz, jr_008_7ddc

jr_008_7ddc:
    jr nz, jr_008_7deb

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_008_7deb:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, b
    rla
    ld [$1a08], sp
    ld a, [bc]
    ld a, [bc]
    dec e
    db $10
    rlca
    ld a, [bc]
    rlca
    jr nz, @+$25

    db $10
    ld b, $0a
    jr nz, jr_008_7e2c

    db $10
    ld a, [hl+]
    rlca
    rlca
    dec l
    ld [$0008], sp
    ld [$0308], sp
    db $10
    db $10
    ld b, $01
    ld [$0808], sp
    nop
    db $10
    ld [bc], a
    db $10
    ld d, b
    dec b
    db $10
    rlca
    db $10
    ld d, b
    ld a, [bc]
    ld b, $06
    dec c
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    ld [de], a
    ld b, $04
    inc b

jr_008_7e2c:
    ld d, $06
    ld b, $06
    ld b, $1b
    ld b, $06
    ld b, $06
    jr nz, jr_008_7e3e

    ld b, $23
    ld [$0305], sp
    daa

jr_008_7e3e:
    ld [$2a08], sp
    ld b, $06
    ld b, $06
    cpl
    ld b, $06
    ld b, $06
    inc [hl]
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
