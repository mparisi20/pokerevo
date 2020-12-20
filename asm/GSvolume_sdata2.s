.include "macros.inc"

.section .sdata2, "wa"  # 0x80640600 - 0x80643020

.global lbl_80641C40
lbl_80641C40:
	.incbin "baserom.dol", 0x473C60, 0x8
.global lbl_80641C48
lbl_80641C48:
	.incbin "baserom.dol", 0x473C68, 0x4
.global lbl_80641C4C
lbl_80641C4C:
	.incbin "baserom.dol", 0x473C6C, 0x4
.global lbl_80641C50
lbl_80641C50:
	.incbin "baserom.dol", 0x473C70, 0x4
.global lbl_80641C54
lbl_80641C54:
	.incbin "baserom.dol", 0x473C74, 0x4
.global lbl_80641C58
lbl_80641C58:
	.incbin "baserom.dol", 0x473C78, 0x4
.global lbl_80641C5C
lbl_80641C5C:
	.incbin "baserom.dol", 0x473C7C, 0x4
.global lbl_80641C60
lbl_80641C60:
	.incbin "baserom.dol", 0x473C80, 0x8
.global lbl_80641C68
lbl_80641C68:
	.incbin "baserom.dol", 0x473C88, 0x4
.global lbl_80641C6C
lbl_80641C6C:
	.incbin "baserom.dol", 0x473C8C, 0x4
.global lbl_80641C70
lbl_80641C70:
	.incbin "baserom.dol", 0x473C90, 0x8
.global lbl_80641C78
lbl_80641C78:
	.incbin "baserom.dol", 0x473C98, 0x8
