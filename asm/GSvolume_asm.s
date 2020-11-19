.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801E07C8
func_801E07C8:
/* 801E07C8 001DC428  38 A0 00 01 */	li r5, 1
/* 801E07CC 001DC42C  38 6D A0 A0 */	addi r3, r13, lbl_8063F360-_SDA_BASE_
/* 801E07D0 001DC430  38 80 00 04 */	li r4, 4
/* 801E07D4 001DC434  38 00 00 00 */	li r0, 0
/* 801E07D8 001DC438  98 AD A0 A0 */	stb r5, lbl_8063F360-_SDA_BASE_(r13)
/* 801E07DC 001DC43C  B0 83 00 02 */	sth r4, 2(r3)
/* 801E07E0 001DC440  98 03 00 04 */	stb r0, 4(r3)
/* 801E07E4 001DC444  4E 80 00 20 */	blr
