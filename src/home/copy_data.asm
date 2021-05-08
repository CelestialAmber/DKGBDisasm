;used for filling memory if the number of bytes to fill is more than 256 (1 byte)
;fills bc bytes starting at address hl with the value in a
FillMemory16:
.loop
    ld [hl+], a
    ld d, a
    dec bc
    ld a, b
    or c
    ld a, d
    jr nz, .loop
    ret
    
;fills c bytes starting at address hl with the value in a
FillMemory:
.loop
    ld [hl+], a
    dec c
    jr nz, .loop
    ret
    
;hl = data to copy offset, de = destination offset, bc = number of bytes to copy
CopyData16:
.loop
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, .loop
    ret
    
;hl = data to copy offset, de = destination offset, c = number of bytes to copy
CopyData:
.loop
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, .loop
    ret
    