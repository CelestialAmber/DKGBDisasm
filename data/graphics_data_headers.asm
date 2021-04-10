;graphics data headers(mostly for compressed graphics, but there may be some uncompressed ones)
GraphicsDataHeaderTable::
    dw GraphicsDataHeaders_7527
    dw GraphicsDataHeaders_7527
    dw GraphicsDataHeaders_7527
    dw GraphicsDataHeaders_7527
    dw GraphicsDataHeaders_7536
    dw GraphicsDataHeaders_754c
    dw GraphicsDataHeaders_7554
    dw GraphicsDataHeaders_7571
    dw GraphicsDataHeaders_7580
    dw GraphicsDataHeaders_758f
    dw GraphicsDataHeaders_759e
    dw IntroTitleGraphicsHeaders
    dw GraphicsDataHeaders_75df
    dw GraphicsDataHeaders_75ee
    dw GraphicsDataHeaders_760b
    dw GraphicsDataHeaders_7621
    dw GraphicsDataHeaders_767d
    dw GraphicsDataHeaders_76e0
    dw GraphicsDataHeaders_7735
    dw GraphicsDataHeaders_7799
    dw GraphicsDataHeaders_777c
    dw GraphicsDataHeaders_77e7
    dw GraphicsDataHeaders_7835
    dw GraphicsDataHeaders_7835
    dw GraphicsDataHeaders_7891
    dw GraphicsDataHeaders_78bc
    dw GraphicsDataHeaders_7903
    dw GraphicsDataHeaders_794a
    dw GraphicsDataHeaders_7967
    dw GraphicsDataHeaders_7967
    dw GraphicsDataHeaders_79df
    dw GraphicsDataHeaders_7a18
    dw GraphicsDataHeaders_7a3c
    dw GraphicsDataHeaders_7a75
    dw GraphicsDataHeaders_7aca
    dw GraphicsDataHeaders_7ae7
    dw GraphicsDataHeaders_7b3c
    dw GraphicsDataHeaders_7b9f
    dw GraphicsDataHeaders_7c09
    dw GraphicsDataHeaders_7c57
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7c9f
    dw GraphicsDataHeaders_7cae
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7c90
    dw GraphicsDataHeaders_7ccb

;the first number is the number of entries
;entry format: bank number, bank data offset (2 bytes),
;vram copying start offset
GraphicsDataHeaders_7527::
    db 2
    gfxheader BANK(Bank1B_Graphics_4000),Bank1B_Graphics_4000,$8000,1
    gfxheader BANK(Bank1B_Graphics_45B3),Bank1B_Graphics_45B3,$8800,1
GraphicsDataHeaders_7536::
    db 3
    gfxheader $18,$4c3c,$9000,1
    gfxheader $18,$501f,$8080,1
    gfxheader $18,$50a3,$92b0,1
GraphicsDataHeaders_754c::
    db 1
    gfxheader BANK(IntroLevelScreenGraphics),IntroLevelScreenGraphics,$9000,1
GraphicsDataHeaders_7554::
    db 4
    gfxheader $04,$46f0,$8000,0,$300
    gfxheader $18,$4c3c,$9000,1
    gfxheader $04,$46d0,$82a0,0,$20
    gfxheader $04,$5f30,$8480,0,$80
GraphicsDataHeaders_7571::
    db 2
    gfxheader BANK(Bank1B_Graphics_732B),Bank1B_Graphics_732B,$86a0,2,$960
    gfxheader BANK(UIGraphics1),UIGraphics1,$9000,2,$170
GraphicsDataHeaders_7580::
    db 2
    gfxheader BANK(GameOverScreenGraphics),GameOverScreenGraphics,$8800,1
    gfxheader BANK(DKMenuFingerGraphics),DKMenuFingerGraphics,$8000,1
GraphicsDataHeaders_758f::
    db 2
    gfxheader BANK(BonusGameGraphics),BonusGameGraphics,$87e0,2,$820
    gfxheader BANK(UIGraphics1),UIGraphics1,$9000,2,$170
GraphicsDataHeaders_759e::
    db 7
    ;length: 0x874
    gfxheader BANK(FileSelectScreenGraphics),FileSelectScreenGraphics,$8800,1
    gfxheader BANK(DeleteFileBombGraphics),DeleteFileBombGraphics,$8400,1
    gfxheader $0e,$4f55,$8000,2,$2e0
    gfxheader $04,$4ef0,$8600,0,$1c0
    gfxheader $04,$46f0,$8300,0,$40
    gfxheader $04,$4bf0,$8340,0,$80
    gfxheader $04,$4730,$83c0,0,$40
;75d0
IntroTitleGraphicsHeaders::
    db 2
    ;title/intro graphics 1 header
    gfxheader BANK(IntroCutsceneGraphics),IntroCutsceneGraphics,$8000,1
    ;title/intro screen graphics 2 header
    gfxheader BANK(TitleScreenGraphics),TitleScreenGraphics,$8800,1

;75df
GraphicsDataHeaders_75df::
    db 2
    gfxheader $19,$6103,$8c00,1
    gfxheader $19,$642c,$9500,1
;75ee
GraphicsDataHeaders_75ee::
    db 4
    gfxheader $18,$4c3c,$9000,1
    gfxheader BANK(Bank1B_Graphics_4689),Bank1B_Graphics_4689,$8800,1
    gfxheader BANK(Bank1B_Graphics_49C7),Bank1B_Graphics_49C7,$8000,1
    gfxheader BANK(UIGraphics1),UIGraphics1,$9000,2,$170
;760b
GraphicsDataHeaders_760b::
    db 3
    gfxheader $18,$4c3c,$9000,1
    gfxheader BANK(Bank1B_Graphics_6E83),Bank1B_Graphics_6E83,$9500,1
    gfxheader BANK(Bank1B_Graphics_6F53),Bank1B_Graphics_6F53,$8800,1
;7621
GraphicsDataHeaders_7621::
    db 13
    gfxheader BANK(Bank1B_Graphics_49E8),Bank1B_Graphics_49E8,$8fe0,1
    gfxheader $18,$4c3c,$9000,1
    gfxheader BANK(Bank1B_Graphics_49FC),Bank1B_Graphics_49FC,$94c0,1
    gfxheader $0d,$506d,$8000,2,$460
    gfxheader $11,$4070,$80e0,0,$240
    gfxheader $11,$5110,$8320,0,$100
    gfxheader $11,$5590,$8420,0,$40
    gfxheader $11,$53f0,$8460,0,$80 
    gfxheader $11,$5490,$84e0,0,$40
    gfxheader $11,$52d0,$8520,0,$120
    gfxheader $04,$46f0,$8640,0,$40
    gfxheader $04,$4bf0,$8680,0,$80
    gfxheader $04,$47b0,$8700,0,$40
;767d
GraphicsDataHeaders_767d::
    db 14
    gfxheader BANK(Bank1B_Graphics_4A0E),Bank1B_Graphics_4A0E,$94e0,1
    gfxheader $13,$58ef,$9740,2,$40
    gfxheader $04,$4ef0,$8740,0,$80
    gfxheader $04,$4fb0,$87c0,0,$100
    gfxheader $04,$5190,$88c0,0,$20
    gfxheader $04,$4e90,$88e0,0,$20
    gfxheader $11,$4070,$8a00,0,$4e0
    gfxheader $04,$53d0,$8900,0,$160
    gfxheader $14,$5722,$8a60,2,$40
    gfxheader $04,$55b0,$8b00,0,$100
    gfxheader $04,$5530,$8aa0,0,$80
    gfxheader BANK(Bank1B_Graphics_5BDA),Bank1B_Graphics_5BDA,$8ba0,0,$40
    gfxheader $11,$5870,$8c00,0,$40
    gfxheader $13,$5d0a,$8ec0,2,$60
;76e0
GraphicsDataHeaders_76e0::
    db 12
    gfxheader BANK(Bank1B_Graphics_4B4D),Bank1B_Graphics_4B4D,$94e0,1
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$4c70,$8780,0,$40
    gfxheader BANK(Bank1B_Graphics_5C1A),Bank1B_Graphics_5C1A,$87c0,0,$40
    gfxheader $0d,$475a,$8800,2,$560
    gfxheader $11,$5870,$8800,0,$40
    gfxheader $11,$5830,$8840,0,$40
    gfxheader BANK(Bank1B_Graphics_5EB1),Bank1B_Graphics_5EB1,$8880,1
    gfxheader $04,$4990,$88c0,0,$20
    gfxheader $13,$47d0,$8c60,0,$10
    gfxheader $04,$4000,$8c70,0,$10
    gfxheader $1c,$6a23,$8c80,2,$e0
;7735
GraphicsDataHeaders_7735::
    db 10
    gfxheader BANK(Bank1B_Graphics_4C18),Bank1B_Graphics_4C18,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$4c70,$8780,0,$40
    gfxheader BANK(Bank1B_Graphics_5C1A),Bank1B_Graphics_5C1A,$87c0,0,$40
    gfxheader $0d,$506d,$8800,2,$460
    gfxheader $04,$50b0,$8800,0,$c0
    gfxheader $16,$5dd4,$8e00,2,$c0
    gfxheader $14,$4ac4,$8ec0,2,$80
    gfxheader $0e,$6124,$8f50,0,$20
    gfxheader $04,$4000,$8f70,0,$10
;777c    
GraphicsDataHeaders_777c::
    db 4
    gfxheader BANK(Bank1B_Graphics_4C18),Bank1B_Graphics_4C18,$94e0,1 
    gfxheader $0d,$4414,$8800,2,$4c0
    gfxheader $04,$5770,$8740,0,$180
    gfxheader $04,$4730,$88c0,0,$40
;7799   
GraphicsDataHeaders_7799:: 
    db 11
    gfxheader BANK(Bank1B_Graphics_4C18),Bank1B_Graphics_4C18,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$58f0,$8780,0,$80
    gfxheader $04,$5970,$8800,0,$40
    gfxheader BANK(Bank1B_Graphics_5F78),Bank1B_Graphics_5F78,$8840,1 
    gfxheader BANK(Bank1B_Graphics_5C5A),Bank1B_Graphics_5C5A,$8940,1 
    gfxheader BANK(Bank1B_Graphics_5D9E),Bank1B_Graphics_5D9E,$8ae0,1 
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$8c40,1 
    gfxheader BANK(Bank1B_Graphics_60F8),Bank1B_Graphics_60F8,$8d00,1 
    gfxheader $04,$4e90,$8d40,0,$20
    gfxheader $04,$59f0,$8e00,0,$180
;77e7    
GraphicsDataHeaders_77e7::
    db 11
    gfxheader BANK(Bank1B_Graphics_4C18),Bank1B_Graphics_4C18,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$4c70,$8780,0,$40
    gfxheader BANK(Bank1B_Graphics_5C1A),Bank1B_Graphics_5C1A,$87c0,0,$40
    gfxheader $11,$4870,$8800,0,$4c0
    gfxheader $11,$5870,$8800,0,$40
    gfxheader $04,$5210,$8840,0,$40
    gfxheader BANK(Bank1B_Graphics_5EB1),Bank1B_Graphics_5EB1,$8880,1 
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$88c0,1 
    gfxheader $04,$5250,$8be0,0,$180
    gfxheader BANK(Bank1B_Graphics_6038),Bank1B_Graphics_6038,$8f00,1 
;7835
GraphicsDataHeaders_7835:: 
    db 13
    gfxheader $0d,$475a,$8c00,2,$560
    gfxheader $11,$4870,$8800,0,$4c0
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$4730,$8780,0,$40
    gfxheader $04,$5770,$87c0,0,$c0
    gfxheader $04,$58b0,$8880,0,$c0
    gfxheader $04,$5970,$8940,0,$80
    gfxheader BANK(Bank1B_Graphics_5EB1),Bank1B_Graphics_5EB1,$89c0,1 
    gfxheader BANK(Bank1B_Graphics_5E91),Bank1B_Graphics_5E91,$8a00,0,$20
    gfxheader BANK(Bank1B_Graphics_49E8),Bank1B_Graphics_49E8,$8fe0,1 
    gfxheader $18,$4c3c,$9000,1 
    gfxheader BANK(Bank1B_Graphics_49FC),Bank1B_Graphics_49FC,$94c0,1 
    gfxheader BANK(Bank1B_Graphics_4EEB),Bank1B_Graphics_4EEB,$94e0,1 
;7891
GraphicsDataHeaders_7891::
    db 6
    gfxheader BANK(Bank1B_Graphics_5104),Bank1B_Graphics_5104,$94e0,1 
    gfxheader $0d,$49df,$8800,2,$4e0
    gfxheader BANK(Bank1B_Graphics_6120),Bank1B_Graphics_6120,$8800,1 
    gfxheader $04,$67b0,$8920,0,$40
    gfxheader $04,$6b70,$8960,0,$80
    gfxheader $04,$6870,$89e0,0,$40
;78bc
GraphicsDataHeaders_78bc::
    db 10
    gfxheader BANK(Bank1B_Graphics_5104),Bank1B_Graphics_5104,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $1c,$6106,$8800,2,$240
    gfxheader BANK(Bank1B_Graphics_62A3),Bank1B_Graphics_62A3,$8940,1 
    gfxheader $04,$4770,$89a0,0,$40
    gfxheader $04,$4830,$89e0,0,$40
    gfxheader $04,$49b0,$8a20,0,$80
    gfxheader $0e,$4f55,$8aa0,2,$2e0
    gfxheader $1c,$609d,$8f20,2,$80
    gfxheader $0e,$652e,$8fa0,0,$10
;7903
GraphicsDataHeaders_7903::
    db 10
    gfxheader BANK(Bank1B_Graphics_5104),Bank1B_Graphics_5104,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $1c,$6106,$8800,2,$240
    gfxheader BANK(Bank1B_Graphics_62A3),Bank1B_Graphics_62A3,$8940,1 
    gfxheader $04,$4770,$89a0,0,$40
    gfxheader $04,$4830,$89e0,0,$40
    gfxheader $04,$49b0,$8a20,0,$80
    gfxheader $0d,$59cd,$8aa0,2,$300
    gfxheader $1c,$609d,$8f20,2,$80
    gfxheader $0e,$652e,$8fa0,0,$10
;794a
GraphicsDataHeaders_794a::
    db 4
    gfxheader BANK(Bank1B_Graphics_52A1),Bank1B_Graphics_52A1,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $04,$4ef0,$8800,0,$1c0
    gfxheader $16,$75ee,$89c0,2,$80
;7967
GraphicsDataHeaders_7967::
    db 17
    gfxheader $0d,$475a,$8c00,2,$560
    gfxheader $11,$4870,$8800,0,$4c0
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$4730,$8780,0,$40
    gfxheader $04,$5770,$87c0,0,$c0
    gfxheader $04,$58b0,$8880,0,$c0
    gfxheader $04,$5970,$8940,0,$80
    gfxheader BANK(Bank1B_Graphics_5EB1),Bank1B_Graphics_5EB1,$89c0,1 
    gfxheader BANK(Bank1B_Graphics_5E91),Bank1B_Graphics_5E91,$8a00,0,$20
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$8be0,1 
    gfxheader $04,$67b0,$8e00,0,$40
    gfxheader $04,$6b70,$8e40,0,$80
    gfxheader $04,$6870,$8ec0,0,$40
    gfxheader BANK(Bank1B_Graphics_49E8),Bank1B_Graphics_49E8,$8fe0,1 
    gfxheader $18,$4c3c,$9000,1 
    gfxheader BANK(Bank1B_Graphics_49FC),Bank1B_Graphics_49FC,$94c0,1 
    gfxheader BANK(Bank1B_Graphics_52A1),Bank1B_Graphics_52A1,$94e0,1 
;79df
GraphicsDataHeaders_79df:: 
    db 8
    gfxheader BANK(Bank1B_Graphics_544B),Bank1B_Graphics_544B,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $04,$4ef0,$8800,0,$1c0
    gfxheader $16,$75ee,$89c0,2,$80
    gfxheader $04,$4730,$8a40,0,$40
    gfxheader $16,$7ade,$8f00,2,$60
    gfxheader $1c,$6864,$8f60,2,$60
    gfxheader $1c,$6887,$8fa0,2,$40
;7a18
GraphicsDataHeaders_7a18::
    db 5
    gfxheader BANK(Bank1B_Graphics_544B),Bank1B_Graphics_544B,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $1c,$6106,$8800,2,$240
    gfxheader $04,$4ef0,$8940,0,$20
    gfxheader $13,$70b7,$8960,2,$200
;7a3c    
GraphicsDataHeaders_7a3c::
    db 8
    gfxheader BANK(Bank1B_Graphics_544B),Bank1B_Graphics_544B,$94e0,1 
    gfxheader $04,$4870,$8740,0,$40
    gfxheader $04,$4af0,$8780,0,$40
    gfxheader $04,$4b70,$87c0,0,$40
    gfxheader $13,$7afe,$8800,2,$40
    gfxheader BANK(Bank1B_Graphics_62FC),Bank1B_Graphics_62FC,$8840,1 
    gfxheader $0e,$5a58,$8a00,2,$140
    gfxheader BANK(Bank1B_Graphics_63EE),Bank1B_Graphics_63EE,$9780,1 
;7a75    
GraphicsDataHeaders_7a75::
    db 12
    gfxheader BANK(Bank1B_Graphics_566F),Bank1B_Graphics_566F,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$58f0,$8780,0,$80
    gfxheader $04,$5970,$8800,0,$40
    gfxheader BANK(Bank1B_Graphics_5F78),Bank1B_Graphics_5F78,$8840,1 
    gfxheader BANK(Bank1B_Graphics_5C5A),Bank1B_Graphics_5C5A,$8940,1 
    gfxheader BANK(Bank1B_Graphics_5D9E),Bank1B_Graphics_5D9E,$8ae0,1 
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$8c40,1 
    gfxheader BANK(Bank1B_Graphics_60F8),Bank1B_Graphics_60F8,$8d00,1 
    gfxheader $04,$4e90,$8d40,0,$20
    gfxheader $04,$59f0,$8e00,0,$180
    gfxheader $0d,$62ce,$8d60,2,$60
;7aca    
GraphicsDataHeaders_7aca::
    db 4
    gfxheader BANK(Bank1B_Graphics_572D),Bank1B_Graphics_572D,$94e0,1 
    gfxheader $13,$7afe,$8800,2,$40
    gfxheader BANK(Bank1B_Graphics_62FC),Bank1B_Graphics_62FC,$8840,1 
    gfxheader $0e,$5a58,$8a00,2,$140
;7ae7   
GraphicsDataHeaders_7ae7:: 
    db 12
    gfxheader BANK(Bank1B_Graphics_572D),Bank1B_Graphics_572D,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$58f0,$8780,0,$80
    gfxheader $04,$5970,$8800,0,$40
    gfxheader BANK(Bank1B_Graphics_5F78),Bank1B_Graphics_5F78,$8840,1 
    gfxheader BANK(Bank1B_Graphics_5C5A),Bank1B_Graphics_5C5A,$8940,1 
    gfxheader BANK(Bank1B_Graphics_5D9E),Bank1B_Graphics_5D9E,$8ae0,1 
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$8c40,1 
    gfxheader BANK(Bank1B_Graphics_60F8),Bank1B_Graphics_60F8,$8d00,1 
    gfxheader $04,$4e90,$8d40,0,$20
    gfxheader $04,$59f0,$8e00,0,$180
    gfxheader BANK(Bank1B_Graphics_6414),Bank1B_Graphics_6414,$8d60,1 
;7b3c   
GraphicsDataHeaders_7b3c:: 
    db 14
    gfxheader BANK(Bank1B_Graphics_572D),Bank1B_Graphics_572D,$94e0,1 
    gfxheader $04,$47f0,$8740,0,$40
    gfxheader $04,$58f0,$8780,0,$80
    gfxheader $04,$5970,$8800,0,$40
    gfxheader BANK(Bank1B_Graphics_5F78),Bank1B_Graphics_5F78,$8840,1 
    gfxheader BANK(Bank1B_Graphics_5C5A),Bank1B_Graphics_5C5A,$8940,1 
    gfxheader BANK(Bank1B_Graphics_5D9E),Bank1B_Graphics_5D9E,$8ae0,1 
    gfxheader BANK(Bank1B_Graphics_5EEE),Bank1B_Graphics_5EEE,$8c40,1 
    gfxheader BANK(Bank1B_Graphics_60F8),Bank1B_Graphics_60F8,$8d00,1 
    gfxheader $04,$4e90,$8d40,0,$20
    gfxheader $04,$59f0,$8e00,0,$180
    gfxheader $04,$4870,$8d60,0,$40
    gfxheader $04,$4af0,$8da0,0,$40
    gfxheader $04,$59f0,$8e00,0,$180
;7b9f
GraphicsDataHeaders_7b9f::
    db 15
    gfxheader BANK(Bank1B_Graphics_572D),Bank1B_Graphics_572D,$94e0,1 
    gfxheader $04,$4ef0,$8740,0,$80
    gfxheader $04,$4fb0,$87c0,0,$100
    gfxheader $04,$5190,$88c0,0,$20
    gfxheader $04,$4e90,$88e0,0,$20
    gfxheader $11,$4070,$8a00,0,$4e0
    gfxheader $04,$53d0,$8900,0,$160
    gfxheader $14,$5722,$8a60,2,$40
    gfxheader $04,$55b0,$8b00,0,$100
    gfxheader $04,$5530,$8aa0,0,$80
    gfxheader BANK(Bank1B_Graphics_5BDA),Bank1B_Graphics_5BDA,$8ba0,0,$40
    gfxheader $11,$5870,$8c00,0,$40
    gfxheader $13,$5d0a,$8ec0,2,$60
    gfxheader BANK(Bank1B_Graphics_64CC),Bank1B_Graphics_64CC,$8f20,1 
    gfxheader $13,$7b42,$8fa0,2,$40
;7c09    
GraphicsDataHeaders_7c09::
    db 11
    gfxheader BANK(Bank1B_Graphics_58C5),Bank1B_Graphics_58C5,$94e0,1 
    gfxheader BANK(Bank1B_Graphics_61EC),Bank1B_Graphics_61EC,$8740,1 
    gfxheader $1c,$6106,$8800,2,$240
    gfxheader BANK(Bank1B_Graphics_62A3),Bank1B_Graphics_62A3,$8940,1 
    gfxheader $04,$4770,$89a0,0,$40
    gfxheader $04,$4830,$89e0,0,$40
    gfxheader $04,$49b0,$8a20,0,$80
    gfxheader $0d,$59cd,$8aa0,2,$300
    gfxheader $1c,$609d,$8f20,2,$80
    gfxheader $0e,$652e,$8fa0,0,$10
    gfxheader BANK(Bank1B_Graphics_652E),Bank1B_Graphics_652E,$8da0,1 
;7c57    
GraphicsDataHeaders_7c57::
    db 8
    gfxheader BANK(Bank1B_Graphics_59B7),Bank1B_Graphics_59B7,$94e0,1 
    gfxheader $0d,$4414,$8800,2,$4c0
    gfxheader $04,$5770,$8740,0,$180
    gfxheader $04,$4730,$88c0,0,$40
    gfxheader $04,$58f0,$8cc0,0,$80
    gfxheader $04,$4ef0,$8d40,0,$1c0
    gfxheader BANK(Bank1B_Graphics_657D),Bank1B_Graphics_657D,$8f00,1 
    gfxheader BANK(Bank1B_Graphics_6593),Bank1B_Graphics_6593,$9690,1 
;7c90
GraphicsDataHeaders_7c90::
    db 2
    gfxheader BANK(Bank1B_Graphics_5AF2),Bank1B_Graphics_5AF2,$9000,1 
    gfxheader BANK(Bank1B_Graphics_65EB),Bank1B_Graphics_65EB,$8000,1 
;7c9f    
GraphicsDataHeaders_7c9f::
    db 2
    gfxheader $19,$65cc,$9000,1 
    gfxheader BANK(MarioCircusDemoSprites),MarioCircusDemoSprites,$8000,1 
;7cae    
GraphicsDataHeaders_7cae::
    db 4
    gfxheader BANK(Bank1B_Graphics_59B7),Bank1B_Graphics_59B7,$94e0,1 
    gfxheader $11,$5970,$8000,0,$4c0
    gfxheader $11,$5e30,$84c0,0,$700
    gfxheader BANK(Bank1B_Graphics_65CE),Bank1B_Graphics_65CE,$8bc0,1 
;7ccb   
GraphicsDataHeaders_7ccb:: 
    db 2
    gfxheader BANK(CreditsGraphics),CreditsGraphics,$8000,2,$800
    gfxheader BANK(CreditsGraphics),CreditsGraphics,$8f10,2,$800