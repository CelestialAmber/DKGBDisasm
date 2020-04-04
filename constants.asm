INCLUDE "charmap.asm"
INCLUDE "hram.asm"

HeaderLogo equ $104
HeaderCartridgeType equ $147
HeaderOldLicenseeCode equ $14b
HeaderDestinationCode equ $14a
HeaderMaskROMVersion equ $14c

;Game State/Scene Values
SceneIntroTitle equ $2
SceneFileSelect equ $3
SceneRecordMenu equ $8
SceneStage equ $10
ScenePauseScreen equ $11
SceneStageMapScreen equ $14
SceneBonusGameCircle equ $15
SceneBonusGameSlots equ $16
SceneCredits equ $1a
SceneGameOverScreen equ $1c
SceneCutscene equ $1e




