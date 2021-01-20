hOAMDMAFunction equ $FF80
;bit 0:a
;bit 1:b
;bit 2:select
;bit 3:start
;bit 4:right
;bit 5:left
;bit 6:up
;bit 7:down
hJoypad equ $FF8A
hCurrentBank equ $FF8C
;stores the current game scene/state(cutscene, in stage, title screen/intro cutscene, others)
hCurrentScene equ $FF8E
hFF90 equ $FF90