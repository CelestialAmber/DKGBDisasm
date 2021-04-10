;function for checking whether the game is running on Super Gameboy or not
CheckIfOnSGB:
    ldh a, [rIE]
    set 0, a
    ei ;enable interrupts
    ld a, $0a
    call SendSGBPacketFromTableSkipSGBCheck
    ldh a, [rP1]
    cp $ff
    jr nz, .onSGB
    call CheckInputSGB
    ldh a, [rP1]
    cp $ff
    jr nz, .onSGB
    ld a, $09
    call SendSGBPacketFromTableSkipSGBCheck
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
    call SendSGBPacketFromTableDelay
    ld a, $1f
    call SendSGBPacketFromTableDelay
    di
    call InitRegistersSGBPacket
    ld a, $e4
    ldh [rBGP], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld b, $0d
.loop1:
    ld c, $14
.loop2:
    ld [hl+], a
    inc a
    dec c
    jr nz, .loop2
    add hl, de
    dec b
    jr nz, .loop1
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
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld hl, SGBBorderGraphics2
    ld de, $8800
    ld bc, $06e0
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $2a
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld hl, Bank1E_Graphics_6125 ;this doesn't seem like graphics
    ld de, $8800
    ld bc, $0860
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $28
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld hl, SGBBorderPaletteData
    ld de, $8800
    ld bc, $1000
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $10
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld hl, UnknownData_1E_4C72
    ld de, $8800
    ld bc, $0fd2
    call DecompressNoHeader
    ld a, $81
    ldh [rLCDC], a
    ld a, $11
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld a, $0c
    rst $10 ;switch to bank C
    ld hl, UnknownData_0c_5ddd
    ld de, $8800
    ld bc, $0680
    call CopyData16
    ld a, $81
    ldh [rLCDC], a
    ld a, $20
    call SendSGBPacketFromTableDelay
    ei
    di
    call InitRegistersSGBPacket
    ld hl, $6438 ;offset to the pauline help sfx in bank 0xC
    ld de, $8800
    ld bc, $0bca
    call CopyData16
    ld a, $81
    ldh [rLCDC], a
    ld a, $20
    call SendSGBPacketFromTableDelay
    ei
    ld a, $05
    call SendSGBPacketFromTable
    ld a, $09
    call SendSGBPacketFromTable
    jp SendSGBSoundDataPackets


SendSGBPacketFromTableDelay:
    call SendSGBPacketFromTable
    ld b, 8
    jr DelayMainLoop

;Delays by ~70000 cycles (about 4 frames)
Delay2:
    ld b, 4
DelayMainLoop:
    ld de, 1750 ;Delay around 17500 cycles (1749*10 + 13 = 17503 cycles)
    call DelayLoop
    dec b
    jr nz, DelayMainLoop
    ret


InitRegistersSGBPacket:
    ldh a, [rIE]
    ld [wIERegisterTemp], a
    res 0, a
    ldh [rIE], a
.loop:
    ldh a, [rLY]
    cp $91 ;wait for vblank
    jr c, .loop
    ldh a, [rLCDC]
    and $7f ;and the lcdc register with 7f
    ldh [rLCDC], a
    ld a, [wIERegisterTemp]
    ldh [rIE], a ;set the IE register
    ret


;Delays by 10*de + 3 cycles
DelayLoop:
.loop
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, .loop
    ret

SendSGBPacketFromTableSkipSGBCheck:
    ld b, a
    jr SendSGBPacketFromTable.skipSGBCheck

;a: pointer table index
SendSGBPacketFromTable:
    ld b, a
    ld a, [wIsOnSGB]
    bit 7, a
    ret z ;return if the game is not running on sgb
.skipSGBCheck:
    ldh a, [hCurrentBank]
    push af
    ld a, BANK(SGBPacketTable) ;load the bank with the table (bank 1e)
    rst $10
    ld hl, SGBPacketTable
    ld a, b
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call SendSGBPacket
    call Delay2
    pop af
    rst $10
    ret


SendSGBPacketCheckSGB:
    ld a, [wIsOnSGB]
    bit 7, a
    ret z ;return if the game is not running on sgb
    call SendSGBPacket
    jp Delay2

;hl: offset to packet data
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
.nextByte:
    ld e, $08
    ld a, [hl+] ;Get the next byte
    ld d, a
.nextBit:
    bit 0, d
    ld a, $10 ;If the bit is 0, set P14/P15 to 0/1, otherwise set them to 1/0
    jr nz, .zeroBit
    ld a, $20 ;Set P14/P15 to 1/0 (bit is 1)
.zeroBit:
    ld [c], a
    ;Set P14/P15 to 1 (must set between pulses)
    ld a, $30
    ld [c], a
    rr d ;go to the next bit
    dec e
    jr nz, .nextBit
    dec b
    jr nz, .nextByte
    ;Send bit 1 as a stop bit (end of parameter data)
    ld a, $20
    ld [c], a
    ;Set P14/P15 to 1
    ld a, $30
    ld [c], a
    pop bc
    dec b
    ret z ;return if there are no more packets
    push bc
    call Delay2 ;wait for 70000 cycles
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

;Sends the 8 last sound data packets in the table.
SendSGBSoundDataPackets:
    ld c, $08
    ld a, $68 ;Set a to the index of the first sound data packet
.loop:
    push af
    push bc
    call SendSGBPacketFromTable
    pop bc
    pop af
    inc a
    dec c
    jr nz, .loop
    ret