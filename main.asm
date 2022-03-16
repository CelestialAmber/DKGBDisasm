; Disassembly of "donkeykong.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

INCLUDE "constants.asm"
INCLUDE "home.asm"

INCLUDE "bank_000.asm"
INCLUDE "src/sgb_functions.asm"

INCLUDE "bank_001.asm"
INCLUDE "bank_002.asm"
INCLUDE "bank_003.asm"
INCLUDE "bank_004.asm"

;Banks 5/6 (Level data)
SECTION "ROM Bank $005", ROMX[$4000], BANK[$05]
INCLUDE "data/levels.asm"
INCLUDE "data/level_data_1.asm"

SECTION "ROM Bank $006", ROMX[$4000], BANK[$06]
INCLUDE "data/level_data_2.asm"


INCLUDE "bank_007.asm"
INCLUDE "bank_008.asm"
INCLUDE "bank_009.asm"
INCLUDE "bank_00a.asm"
INCLUDE "bank_00b.asm"
INCLUDE "bank_00c.asm"
INCLUDE "bank_00d.asm"
INCLUDE "bank_00e.asm"
INCLUDE "bank_00f.asm"
INCLUDE "bank_010.asm"
INCLUDE "bank_011.asm"

;Bank 12 (Level data)
SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]
INCLUDE "data/level_data_3.asm"


INCLUDE "bank_013.asm"
INCLUDE "bank_014.asm"
INCLUDE "bank_015.asm"
INCLUDE "bank_016.asm"
INCLUDE "bank_017.asm"
INCLUDE "bank_018.asm"
INCLUDE "bank_019.asm"
INCLUDE "bank_01a.asm"
INCLUDE "bank_01b.asm"
INCLUDE "bank_01c.asm"
INCLUDE "bank_01d.asm"
INCLUDE "bank_01e.asm"
INCLUDE "bank_01f.asm"