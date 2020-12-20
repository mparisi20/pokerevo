.include "macros.inc"

.section .data, "wa"  # 0x80405D60 - 0x80474F00

.global lbl_80423410
lbl_80423410:
	.incbin "baserom.dol", 0x41F510, 0x48
