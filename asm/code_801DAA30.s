.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __nw__FUl
__nw__FUl:
/* 801DAA30 001D6690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DAA34 001D6694  7C 08 02 A6 */	mflr r0
/* 801DAA38 001D6698  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAA3C 001D669C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DAA40 001D66A0  7C 7F 1B 78 */	mr r31, r3
/* 801DAA44 001D66A4  48 00 00 E5 */	bl func_801DAB28
/* 801DAA48 001D66A8  2C 03 00 00 */	cmpwi r3, 0
/* 801DAA4C 001D66AC  41 82 00 10 */	beq lbl_801DAA5C
/* 801DAA50 001D66B0  7F E3 FB 78 */	mr r3, r31
/* 801DAA54 001D66B4  48 00 03 11 */	bl func_801DAD64
/* 801DAA58 001D66B8  48 00 00 08 */	b lbl_801DAA60
lbl_801DAA5C:
/* 801DAA5C 001D66BC  38 60 00 00 */	li r3, 0
lbl_801DAA60:
/* 801DAA60 001D66C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAA64 001D66C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DAA68 001D66C8  7C 08 03 A6 */	mtlr r0
/* 801DAA6C 001D66CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DAA70 001D66D0  4E 80 00 20 */	blr

.global func_801DAA74
func_801DAA74:
/* 801DAA74 001D66D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DAA78 001D66D8  7C 08 02 A6 */	mflr r0
/* 801DAA7C 001D66DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAA80 001D66E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DAA84 001D66E4  7C 7F 1B 78 */	mr r31, r3
/* 801DAA88 001D66E8  48 00 00 A1 */	bl func_801DAB28
/* 801DAA8C 001D66EC  2C 03 00 00 */	cmpwi r3, 0
/* 801DAA90 001D66F0  41 82 00 10 */	beq lbl_801DAAA0
/* 801DAA94 001D66F4  7F E3 FB 78 */	mr r3, r31
/* 801DAA98 001D66F8  48 00 02 CD */	bl func_801DAD64
/* 801DAA9C 001D66FC  48 00 00 08 */	b lbl_801DAAA4
lbl_801DAAA0:
/* 801DAAA0 001D6700  38 60 00 00 */	li r3, 0
lbl_801DAAA4:
/* 801DAAA4 001D6704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DAAA8 001D6708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DAAAC 001D670C  7C 08 03 A6 */	mtlr r0
/* 801DAAB0 001D6710  38 21 00 10 */	addi r1, r1, 0x10
/* 801DAAB4 001D6714  4E 80 00 20 */	blr

.global __dl__FPv
__dl__FPv:
/* 801DAAB8 001D6718  48 00 03 EC */	b func_801DAEA4

.global func_801DAABC
func_801DAABC:
/* 801DAABC 001D671C  48 00 03 E8 */	b func_801DAEA4

.global func_801DAAC0
func_801DAAC0:
/* 801DAAC0 001D6720  38 A0 00 01 */	li r5, 1
/* 801DAAC4 001D6724  38 6D A0 08 */	addi r3, r13, lbl_8063F2C8-_SDA_BASE_
/* 801DAAC8 001D6728  38 80 00 04 */	li r4, 4
/* 801DAACC 001D672C  38 00 00 00 */	li r0, 0
/* 801DAAD0 001D6730  98 AD A0 08 */	stb r5, lbl_8063F2C8-_SDA_BASE_(r13)
/* 801DAAD4 001D6734  B0 83 00 02 */	sth r4, 2(r3)
/* 801DAAD8 001D6738  98 03 00 04 */	stb r0, 4(r3)
/* 801DAADC 001D673C  4E 80 00 20 */	blr
