;function for checking whether the game is running on Super Gameboy or not
;offset 3718
CheckIfOnSGB:
    ldh a, [rIE]
    set 0, a
    ei ;enable interrupts
    ld a, $0a
    call Call_000_386f
    ldh a, [rP1]
    cp $ff
    jr nz, .onSGB
    call CheckInputSGB
    ldh a, [rP1]
    cp $ff
    jr nz, .onSGB
    ld a, $09
    call Call_000_386f
    ld hl, wIsOnSGB
    res 7, [hl] ;set the bit 7 of wIsOnSGB to 0 if not running on sgb, otherwise set it to 1
    ld a, $cc ;if the game is not running on sgb, set da40(HUD text type) to cc, otherwise set it to 9c
    ld [wHUDTextType], a
    di ;disable interrupts
    ret ;return
.onSGB
    ld hl, wIsOnSGB
    set 7, [hl]
    ld a, $9c 
    ld [wHUDTextType], a
    ld a, $2d
    call Call_000_3838
    ld a, $1f
    call Call_000_3838
    di
    call Call_000_384b
    ld a, $e4
    ldh [rBGP], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld b, $0d
jr_000_3768:
    ld c, $14
jr_000_376a:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_000_376a
    add hl, de
    dec b
    jr nz, jr_000_3768
    ld a, $1e ;switch to bank 1e, which contains alot of the sgb exclusive graphics
    rst $10
    ;load the sgb border graphics
    ld hl, SGBBorderGraphics1
    ld de, $8800 ;vram offset to copy graphics to
    ld bc, $1000 ;uncompressed size
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $27
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld hl, SGBBorderGraphics2
    ld de, $8800
    ld bc, $06e0
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $2a
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld hl, Bank1E_Graphics_6125 ;this doesn't seem like graphics
    ld de, $8800
    ld bc, $0860
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $28
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld hl, SGBBorderPaletteData
    ld de, $8800
    ld bc, $1000
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $10
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld hl, UnknownData_1E_4C72
    ld de, $8800
    ld bc, $0fd2
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $11
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld a, $0c
    rst $10 ;switch to bank C
    ld hl, UnknownData_0c_5ddd
    ld de, $8800
    ld bc, $0680
    call CopyData16
    ld a, $81
    ldh [rLCDC], a
    ld a, $20
    call Call_000_3838
    ei
    di
    call Call_000_384b
    ld hl, $6438 ;offset to the pauline help sfx in bank 0xC
    ld de, $8800
    ld bc, $0bca
    call CopyData16
    ld a, $81
    ldh [rLCDC], a
    ld a, $20
    call Call_000_3838
    ei
    ld a, $05
    call Call_000_3872
    ld a, $09
    call Call_000_3872
    jp Jump_000_38fc


Call_000_3838:
    call Call_000_3872
    ld b, $08
    jr jr_000_3841

Call_000_383f:
    ld b, $04
jr_000_3841:
    ld de, $06d6
    call Call_000_3866
    dec b
    jr nz, jr_000_3841
    ret


Call_000_384b:
    ldh a, [rIE]
    ld [$c0a3], a
    res 0, a
    ldh [rIE], a
jr_000_3854:
    ldh a, [rLY]
    cp $91 ;wait for vblank
    jr c, jr_000_3854
    ldh a, [rLCDC]
    and $7f ;and the lcdc register with 7f
    ldh [rLCDC], a
    ld a, [$c0a3]
    ldh [rIE], a ;set the IE register
    ret


Call_000_3866:
.loop
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, .loop
    ret

Call_000_386f:
    ld b, a
    jr jr_000_3879

;a: pointer table index
Call_000_3872:
    ld b, a
    ld a, [wIsOnSGB]
    bit 7, a
    ret z ;return if the game is not running on sgb
jr_000_3879:
    ldh a, [hCurrentBank]
    push af
    ld a, $1e
    rst $10
    ld hl, Table_1e_4000
    ld a, b
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call SendSGBPacket
    call Call_000_383f
    pop af
    rst $10
    ret


Call_000_3894:
    ld a, [wIsOnSGB]
    bit 7, a
    ret z ;return if the game is not running on sgb
    call SendSGBPacket
    jp Call_000_383f


SendSGBPacket:
    ld a, [hl]
    and $07
    ld b, a
    ld c, $00
    push bc
.loop:
    xor a
    ;Set P14/P15 to 0 (reset signal)
    ld [c], a
    ld a, $30
    ;Set P14/P15 to 1
    ld [c], a
    ld b, $10
.loop1:
    ld e, $08
    ld a, [hl+] ;Get the next byte
    ld d, a
.loop2:
    bit 0, d
    ld a, $10 ;If the bit is 0, set P14/P15 to 0/1, otherwise set them to 1/0
    jr nz, .zeroBit
    ld a, $20 ;Set P14/P15 to 1/0
.zeroBit:
    ld [c], a
    ;Set P14/P15 to 1 (delay)
    ld a, $30
    ld [c], a
    rr d ;go to the next bit
    dec e
    jr nz, .loop2
    dec b
    jr nz, .loop1
    ld a, $20
    ld [c], a
    ld a, $30
    ld [c], a
    pop bc
    dec b
    ret z
    push bc
    call Call_000_383f
    jr .loop

CheckInputSGB:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ret

Jump_000_38fc:
    ld c, $08
    ld a, $68
jr_000_3900:
    push af
    push bc
    call Call_000_3872
    pop bc
    pop af
    inc a
    dec c
    jr nz, jr_000_3900
    ret