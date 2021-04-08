;SGB command macros, taken from pokegold, and using constant names from poketcg
;https://gbdev.io/pandocs/#sgb-functions

attr_blk: MACRO
	db (ATTR_BLK << 3) + ((\1 * 6) / 16 + 1)
	db \1
ENDM

attr_blk_data: MACRO
	db \1 ; which regions are affected
	db \2 + (\3 << 2) + (\4 << 4) ; palette for each region
	db \5, \6, \7, \8 ; x1, y1, x2, y2
ENDM

attr_chr: MACRO
	db (ATTR_CHR << 3) + \1
	db \2 ;beginning x coordinate
    db \3 ;beginning y coordinate
    dw \4 ;number of data sets
    db \5 ;writing style
ENDM

attr_set: MACRO
	db (ATTR_SET << 3) + 1
	db \1
    ds 14
ENDM

sgb_pal_set: MACRO
	db (PAL_SET << 3) + 1
	dw \1, \2, \3, \4
    db \5
	ds 6, 0
ENDM

sgb_pal01: MACRO
	db (PAL01 << 3) + 1
ENDM

sgb_pal23: MACRO
	db (PAL23 << 3) + 1
ENDM

sgb_pal_trn: MACRO
	db (PAL_TRN << 3) + 1
	ds 15
ENDM

sgb_pal_pri: MACRO
	db (PAL_PRI << 3) + 1
    db \1
	ds 14
ENDM

sgb_attr_trn: MACRO
	db (ATTR_TRN << 3) + 1
	ds 15
ENDM

sgb_mlt_req: MACRO
	db (MLT_REQ << 3) + 1
	db \1 - 1
	ds 14
ENDM

sgb_chr_trn: MACRO
	db (CHR_TRN << 3) + 1
	db \1 + (\2 << 1)
	ds 14
ENDM

sgb_pct_trn: MACRO
	db (PCT_TRN << 3) + 1
	ds 15
ENDM

sgb_sou_trn: MACRO
	db (SOU_TRN << 3) + 1
	ds 15
ENDM

sgb_mask_en: MACRO
	db (MASK_EN << 3) + 1
	db \1
	ds 14
ENDM

sgb_data_snd: MACRO
	db (DATA_SND << 3) + 1
	dw \1 ; address
	db \2 ; bank
	db \3 ; length (1-11)
ENDM

sgb_sound: MACRO
	db (SOUND << 3) + 1
	db \1
    db \2
    db \3 + (\4 << 2) + (\5 << 4) + (\6 << 6)
    db \7
    ds 11
ENDM

sgb_atrc_en: MACRO
	db (ATRC_EN << 3) + 1
    db \1
	ds 14
ENDM



SGBPacketTable:
    dw Packet_0 ;index 0
    dw Packet_1
    dw Packet_2
    dw Packet_3
    dw Packet_4
    dw Packet_5
    dw Packet_6
    dw Packet_7
    dw Packet_8
    dw MltReq1Packet
    dw MltReq2Packet ;index 10
    dw Packet_11
    dw Packet_12
    dw Packet_13
    dw Packet_14
    dw Packet_15
    dw Packet_16
    dw Packet_17
    dw Packet_18
    dw Packet_18
    dw Packet_18 ;index 20
    dw Packet_18
    dw Packet_19
    dw Packet_20
    dw Packet_21
    dw Packet_22
    dw Packet_23
    dw Packet_24
    dw Packet_25
    dw Packet_26
    dw Packet_27 ;index 30
    dw Packet_28
    dw Packet_29
    dw Packet_30
    dw Packet_31
    dw Packet_32
    dw Packet_33
    dw Packet_34
    dw Packet_32
    dw Packet_35
    dw Packet_36 ;index 40
    dw Packet_37
    dw Packet_38
    dw Packet_39
    dw Packet_40
    dw Packet_41
    dw Packet_42
    dw Packet_43
    dw Packet_44
    dw Packet_45
    dw Packet_46 ;index 50
    dw Packet_47
    dw Packet_48
    dw Packet_50
    dw Packet_49
    dw Packet_51
    dw Packet_52
    dw Packet_53
    dw Packet_54
    dw Packet_55
    dw Packet_56 ;index 60
    dw Packet_57
    dw Packet_57
    dw Packet_58
    dw Packet_59
    dw Packet_60
    dw Packet_61
    dw Packet_62
    dw Packet_63
    dw Packet_64
    dw Packet_65 ;index 70
    dw Packet_66
    dw Packet_67
    dw Packet_68
    dw Packet_69
    dw Packet_70
    dw Packet_71
    dw Packet_72
    dw Packet_73
    dw Packet_74
    dw Packet_75 ;index 80
    dw Packet_77
    dw Packet_78
    dw Packet_77
    dw Packet_78
    dw Packet_78
    dw Packet_77
    dw Packet_78
    dw Packet_79
    dw Packet_77
    dw Packet_79 ;index 90
    dw Packet_70
    dw Packet_70
    dw Packet_70
    dw Packet_70
    dw Packet_80
    dw Packet_85
    dw Packet_86
    dw Packet_87
    dw Packet_88
    dw Packet_81 ;index 100
    dw Packet_82
    dw Packet_83
    dw Packet_84
    dw Packet_89
    dw Packet_90
    dw Packet_91
    dw Packet_92
    dw Packet_93
    dw Packet_94
    dw Packet_95 ;index 110
    dw Packet_96

;offset 40e0
Packet_0:
    sgb_pal_set $2C, $2D, $2C, $2D, 0
Packet_1:
    sgb_mask_en 2
Packet_2:
    sgb_sound $0C, $00, 0, 2, 0, 2, 0
Packet_3:
    attr_set $03
Packet_4:
    attr_blk 1
    attr_blk_data 1, 0, 0, 0, 0, 0, $13, $11
    ds 8
Packet_5:
    sgb_pal_pri 1
Packet_6:
    sgb_pal_set $B0, $B1, $B2, $B3, $D1
Packet_7:
    sgb_mask_en 1
Packet_8:
    sgb_pal_set $B4, $B5, $B6, $B7, $D2
MltReq1Packet:
    sgb_mlt_req 1
MltReq2Packet:
    sgb_mlt_req 2
Packet_11:
    sgb_mask_en 0
Packet_12:
    sgb_pal_set $AC, $AD, $AE, $AF, $D0
Packet_13:
    sgb_pal_set $AC, $AD, $AE, $E7, $D0
Packet_14:
    attr_set $01
Packet_15:
    attr_set $17
Packet_16:
    sgb_pal_trn
Packet_17:
    sgb_attr_trn
Packet_18:
    sgb_pal_set $04, $05, $06, $07, $C3
Packet_19:
    sgb_pal_set $08, $09, $0A, $0B, $C7
Packet_20:
    sgb_pal_set $0C, $0D, $0E, $0F, $C8
Packet_21:
    sgb_pal_set $10, $11, $12, $13, $C9
Packet_22:
    sgb_pal_set $14, $15, $16, $17, $CA
Packet_23:
    sgb_pal_set $18, $19, $1A, $1B, $CB
Packet_24:
    sgb_pal_set $1C, $1D, $1E, $1F, $CC
Packet_25:
    sgb_pal_set $20, $21, $22, $23, $CD
Packet_26:
    sgb_pal_set $24, $25, $26, $27, $CE
Packet_27:
    sgb_pal_set $28, $29, $2A, $2B, $CF
Packet_28:
    sgb_sound $80, $80, 0, 3, 0, 2, 0
Packet_29:
    sgb_sou_trn
Packet_30:
    sgb_pal_set $00, $2D, $2E, $2F, $40
Packet_31:
    sgb_pal_set $00, $01, $02, $03, $C2
Packet_32:
    sgb_pal_set $B8, $B9, $BA, $BB, $C6
Packet_33:
    sgb_pal_set $B8, $B9, $BA, $BB, $D3
Packet_34:
    sgb_pal_set $B8, $B9, $BA, $BB, $D5
Packet_35:
    sgb_chr_trn 0, 0
Packet_36:
    sgb_pct_trn
Packet_37:
    sgb_pal_set $BC, $BD, $BE, $BF, $D4
Packet_38:
    sgb_chr_trn 1, 0
Packet_39:
    sgb_pal_set $CC, $CD, $CE, $CF, $C4
Packet_40:
    attr_set $18
Packet_41:
    sgb_pal01
    REPT 7
    RGB 0,0,0
    ENDR
    db $00
Packet_42:
    sgb_pal23
    REPT 7
    RGB 0,0,0
    ENDR
    db $00
Packet_43:
    sgb_pal_set $0180, $0180, $0180, $0180, $D6
Packet_44:
    sgb_pal_set $C4, $C5, $C6, $C7, $C0
Packet_45:
    sgb_pal_set $2C, $2D, $2C, $2D, $40
Packet_46:
    sgb_pal_set $E8, $E9, $EA, $EB, $DB
Packet_47:
    sgb_pal_set $EC, $ED, $EE, $EF, $DC
Packet_48:
    sgb_pal_set $F0, $F1, $F2, $F3, $DC
Packet_49:
    sgb_pal_set $F0, $F1, $F2, $F3, $DD
Packet_50:
    sgb_pal_set $F0, $F1, $F2, $F3, $DE
Packet_51:
    sgb_pal_set $F0, $F1, $F2, $F3, $DF
Packet_52:
    sgb_pal_set $F4, $F5, $F6, $F7, $E0
Packet_53:
    sgb_pal_set $F8, $F9, $FA, $FB, $E1
Packet_54:
    sgb_pal_set $FC, $FD, $FE, $FF, $DD
Packet_55:
    sgb_pal_set $FC, $FD, $FE, $FF, $DD
Packet_56:
    sgb_pal_set $FC, $FD, $FE, $FF, $DD
Packet_57:
    sgb_pal_set $100, $101, $102, $103, $DF
Packet_58:
    sgb_pal_set $100, $101, $102, $103, $E3
Packet_59:
    sgb_pal_set $104, $105, $106, $107, $E4
Packet_60:
    sgb_pal_set $104, $105, $106, $107, $E5
Packet_61:
    sgb_pal_set $104, $105, $106, $107, $E6
Packet_62:
    sgb_pal_set $104, $105, $106, $107, $E6
Packet_63:
    sgb_pal_set $104, $105, $106, $107, $E7
Packet_64:
    sgb_pal_set $108, $109, $10A, $10B, $E8
Packet_65:
    sgb_pal_set $108, $109, $10A, $10B, $E9
Packet_66:
    sgb_pal_set $114, $115, $116, $117, $EA
Packet_67:
    sgb_pal_set $108, $109, $10A, $10B, $EB
Packet_68:
    sgb_pal_set $108, $109, $10A, $10B, $EC
Packet_69:
    sgb_pal_set $10C, $10D, $10E, $10F, $D9
Packet_70:
    sgb_pal_set $C8, $C9, $CA, $CB, $C5
Packet_71:
    sgb_pal_set $108, $109, $10A, $10B, $E2
Packet_72:
    sgb_atrc_en 0
Packet_73:
    sgb_atrc_en 1
Packet_74:
    sgb_sound $00, $00, 0, 0, 0, 0, 3
Packet_75:
    attr_blk 3
    attr_blk_data 1, 0, 0, 0, $0B, $04, $12, $09
    attr_blk_data 1, 0, 0, 0, $01, $0B, $08, $10
    attr_blk_data 1, 0, 0, 0, $0B, $0B, $12, $10
    ds 12
Packet_77:
    attr_blk 2
    attr_blk_data 1, 0, 0, 0, $0B, $04, $12, $09
    attr_blk_data 1, 0, 0, 0, $01, $0B, $08, $10
    ds 2
Packet_78:
    attr_blk 1
    attr_blk_data 1, 0, 0, 0, $0B, $0B, $12, $10
    ds 8
Packet_79:
    sgb_pal_set $C0, $C1, $C2, $C3, $9A
Packet_80:
    sgb_pal_set $1FF, $1FF, $1FF, $1FF, $C1
Packet_81:
    attr_chr 1, $04, $0E, 3, 0
    db $3C
    ds 9
Packet_82:
    attr_chr 1, $08, $0E, 3, 0
    db $3C
    ds 9
Packet_83:
    attr_chr 1, $0C, $0E, 3, 0
    db $3C
    ds 9
Packet_84:
    attr_chr 1, $10, $0E, 3, 0
    db $3C
    ds 9
Packet_85:
    attr_chr 1, $04, $10, 3, 0
    db $FC
    ds 9
Packet_86:
    attr_chr 1, $08, $10, 3, 0
    db $FC
    ds 9
Packet_87:
    attr_chr 1, $0C, $10, 3, 0
    db $FC
    ds 9
Packet_88:
    attr_chr 1, $10, $10, 3, 0
    db $FC
    ds 9
Packet_89:
    sgb_data_snd $85D, $00, $04
    db $8C, $D0, $F4, $60, $00, $00, $00, $00, $00, $00, $00
Packet_90:
    sgb_data_snd $852, $00, $0B
    db $A9, $E7, $9F, $01, $C0, $7E, $E8, $E8, $E8, $E8, $E0
Packet_91:
    sgb_data_snd $847, $00, $0B
    db $C4, $D0, $16, $A5, $CB, $C9, $05, $D0, $10, $A2, $28
Packet_92:
    sgb_data_snd $83C, $00, $0B
    db $F0, $12, $A5, $C9, $C9, $C8, $D0, $1C, $A5, $CA, $C9
Packet_93:
    sgb_data_snd $831, $00, $0B
    db $0C, $A5, $CA, $C9, $7E, $D0, $06, $A5, $CB, $C9, $7E
Packet_94:
    sgb_data_snd $826, $00, $0B
    db $39, $CD, $48, $0C, $D0, $34, $A5, $C9, $C9, $80, $D0
Packet_95:
    sgb_data_snd $81B, $00, $0B
    db $EA, $EA, $EA, $EA, $EA, $A9, $01, $CD, $4F, $0C, $D0
Packet_96:
    sgb_data_snd $810, $00, $0B
    db $4C, $20, $08, $EA, $EA, $EA, $EA, $EA, $60, $EA, $EA