.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8025DF80
func_8025DF80:
/* 8025DF80 00259BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DF84 00259BE4  7C 08 02 A6 */	mflr r0
/* 8025DF88 00259BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DF8C 00259BEC  80 0D A6 D8 */	lwz r0, lbl_8063F998-_SDA_BASE_(r13)
/* 8025DF90 00259BF0  2C 00 00 00 */	cmpwi r0, 0
/* 8025DF94 00259BF4  40 82 00 1C */	bne lbl_8025DFB0
/* 8025DF98 00259BF8  48 00 04 75 */	bl func_8025E40C
/* 8025DF9C 00259BFC  48 00 03 AD */	bl func_8025E348
/* 8025DFA0 00259C00  38 60 00 18 */	li r3, 0x18
/* 8025DFA4 00259C04  4B F7 CA 8D */	bl __nw__FUl
/* 8025DFA8 00259C08  90 6D A6 D8 */	stw r3, lbl_8063F998-_SDA_BASE_(r13)
/* 8025DFAC 00259C0C  48 00 00 2D */	bl func_8025DFD8
lbl_8025DFB0:
/* 8025DFB0 00259C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025DFB4 00259C14  7C 08 03 A6 */	mtlr r0
/* 8025DFB8 00259C18  38 21 00 10 */	addi r1, r1, 0x10
/* 8025DFBC 00259C1C  4E 80 00 20 */	blr

.global func_8025DFC0
func_8025DFC0:
/* 8025DFC0 00259C20  7C 83 23 78 */	mr r3, r4
/* 8025DFC4 00259C24  48 00 04 B0 */	b func_8025E474

.global func_8025DFC8
func_8025DFC8:
/* 8025DFC8 00259C28  7C 83 23 78 */	mr r3, r4
/* 8025DFCC 00259C2C  48 00 05 04 */	b func_8025E4D0

.global func_8025DFD0
func_8025DFD0:
/* 8025DFD0 00259C30  80 6D A6 D8 */	lwz r3, lbl_8063F998-_SDA_BASE_(r13)
/* 8025DFD4 00259C34  4E 80 00 20 */	blr

.global func_8025DFD8
func_8025DFD8:
/* 8025DFD8 00259C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DFDC 00259C3C  7C 08 02 A6 */	mflr r0
/* 8025DFE0 00259C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DFE4 00259C44  80 0D A6 DC */	lwz r0, lbl_8063F99C-_SDA_BASE_(r13)
/* 8025DFE8 00259C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025DFEC 00259C4C  7C 7F 1B 78 */	mr r31, r3
/* 8025DFF0 00259C50  2C 00 00 00 */	cmpwi r0, 0
/* 8025DFF4 00259C54  40 82 00 80 */	bne lbl_8025E074
/* 8025DFF8 00259C58  38 60 60 5C */	li r3, 0x605c
/* 8025DFFC 00259C5C  4B F7 CA 35 */	bl __nw__FUl
/* 8025E000 00259C60  2C 03 00 00 */	cmpwi r3, 0
/* 8025E004 00259C64  41 82 00 08 */	beq lbl_8025E00C
/* 8025E008 00259C68  4B FF EE F1 */	bl func_8025CEF8
lbl_8025E00C:
/* 8025E00C 00259C6C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8025E010 00259C70  38 60 10 14 */	li r3, 0x1014
/* 8025E014 00259C74  4B F7 CA 1D */	bl __nw__FUl
/* 8025E018 00259C78  2C 03 00 00 */	cmpwi r3, 0
/* 8025E01C 00259C7C  41 82 00 08 */	beq lbl_8025E024
/* 8025E020 00259C80  48 00 34 51 */	bl func_80261470
lbl_8025E024:
/* 8025E024 00259C84  90 7F 00 08 */	stw r3, 8(r31)
/* 8025E028 00259C88  38 60 0F 48 */	li r3, 0xf48
/* 8025E02C 00259C8C  4B F7 CA 05 */	bl __nw__FUl
/* 8025E030 00259C90  2C 03 00 00 */	cmpwi r3, 0
/* 8025E034 00259C94  41 82 00 08 */	beq lbl_8025E03C
/* 8025E038 00259C98  48 00 5B 4D */	bl func_80263B84
lbl_8025E03C:
/* 8025E03C 00259C9C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8025E040 00259CA0  38 60 66 A8 */	li r3, 0x66a8
/* 8025E044 00259CA4  4B F7 C9 ED */	bl __nw__FUl
/* 8025E048 00259CA8  2C 03 00 00 */	cmpwi r3, 0
/* 8025E04C 00259CAC  41 82 00 08 */	beq lbl_8025E054
/* 8025E050 00259CB0  48 00 61 4D */	bl func_8026419C
lbl_8025E054:
/* 8025E054 00259CB4  3C 80 00 01 */	lis r4, 0x00008000@ha
/* 8025E058 00259CB8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8025E05C 00259CBC  38 64 80 00 */	addi r3, r4, 0x00008000@l
/* 8025E060 00259CC0  38 80 00 20 */	li r4, 0x20
/* 8025E064 00259CC4  4B F7 CD 69 */	bl func_801DADCC
/* 8025E068 00259CC8  38 00 00 01 */	li r0, 1
/* 8025E06C 00259CCC  90 7F 00 00 */	stw r3, 0(r31)
/* 8025E070 00259CD0  90 0D A6 DC */	stw r0, lbl_8063F99C-_SDA_BASE_(r13)
lbl_8025E074:
/* 8025E074 00259CD4  3C A0 00 01 */	lis r5, 0x00008000@ha
/* 8025E078 00259CD8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8025E07C 00259CDC  80 9F 00 00 */	lwz r4, 0(r31)
/* 8025E080 00259CE0  38 A5 80 00 */	addi r5, r5, 0x00008000@l
/* 8025E084 00259CE4  4B FF EE 89 */	bl func_8025CF0C
/* 8025E088 00259CE8  38 00 00 00 */	li r0, 0
/* 8025E08C 00259CEC  38 60 00 00 */	li r3, 0
/* 8025E090 00259CF0  90 1F 00 04 */	stw r0, 4(r31)
/* 8025E094 00259CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E098 00259CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E09C 00259CFC  7C 08 03 A6 */	mtlr r0
/* 8025E0A0 00259D00  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E0A4 00259D04  4E 80 00 20 */	blr

.global func_8025E0A8
func_8025E0A8:
/* 8025E0A8 00259D08  80 63 00 04 */	lwz r3, 4(r3)
/* 8025E0AC 00259D0C  4E 80 00 20 */	blr

.global func_8025E0B0
func_8025E0B0:
/* 8025E0B0 00259D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E0B4 00259D14  7C 08 02 A6 */	mflr r0
/* 8025E0B8 00259D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E0BC 00259D1C  48 00 01 FD */	bl func_8025E2B8
/* 8025E0C0 00259D20  2C 03 00 00 */	cmpwi r3, 0
/* 8025E0C4 00259D24  41 82 00 18 */	beq lbl_8025E0DC
/* 8025E0C8 00259D28  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E0CC 00259D2C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8025E0D0 00259D30  7D 89 03 A6 */	mtctr r12
/* 8025E0D4 00259D34  4E 80 04 21 */	bctrl
/* 8025E0D8 00259D38  48 00 00 08 */	b lbl_8025E0E0
lbl_8025E0DC:
/* 8025E0DC 00259D3C  38 60 FF FF */	li r3, -1
lbl_8025E0E0:
/* 8025E0E0 00259D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E0E4 00259D44  7C 08 03 A6 */	mtlr r0
/* 8025E0E8 00259D48  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E0EC 00259D4C  4E 80 00 20 */	blr

.global func_8025E0F0
func_8025E0F0:
/* 8025E0F0 00259D50  80 03 00 04 */	lwz r0, 4(r3)
/* 8025E0F4 00259D54  2C 00 00 00 */	cmpwi r0, 0
/* 8025E0F8 00259D58  41 82 00 0C */	beq lbl_8025E104
/* 8025E0FC 00259D5C  38 60 FF FF */	li r3, -1
/* 8025E100 00259D60  4E 80 00 20 */	blr
lbl_8025E104:
/* 8025E104 00259D64  38 00 00 01 */	li r0, 1
/* 8025E108 00259D68  90 03 00 04 */	stw r0, 4(r3)
/* 8025E10C 00259D6C  80 63 00 08 */	lwz r3, 8(r3)
/* 8025E110 00259D70  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E114 00259D74  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025E118 00259D78  7D 89 03 A6 */	mtctr r12
/* 8025E11C 00259D7C  4E 80 04 20 */	bctr
/* 8025E120 00259D80  4E 80 00 20 */	blr

.global func_8025E124
func_8025E124:
/* 8025E124 00259D84  80 03 00 04 */	lwz r0, 4(r3)
/* 8025E128 00259D88  2C 00 00 00 */	cmpwi r0, 0
/* 8025E12C 00259D8C  41 82 00 0C */	beq lbl_8025E138
/* 8025E130 00259D90  38 60 FF FF */	li r3, -1
/* 8025E134 00259D94  4E 80 00 20 */	blr
lbl_8025E138:
/* 8025E138 00259D98  38 00 00 02 */	li r0, 2
/* 8025E13C 00259D9C  90 03 00 04 */	stw r0, 4(r3)
/* 8025E140 00259DA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8025E144 00259DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E148 00259DA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025E14C 00259DAC  7D 89 03 A6 */	mtctr r12
/* 8025E150 00259DB0  4E 80 04 20 */	bctr
/* 8025E154 00259DB4  4E 80 00 20 */	blr

.global func_8025E158
func_8025E158:
/* 8025E158 00259DB8  80 03 00 04 */	lwz r0, 4(r3)
/* 8025E15C 00259DBC  2C 00 00 00 */	cmpwi r0, 0
/* 8025E160 00259DC0  41 82 00 0C */	beq lbl_8025E16C
/* 8025E164 00259DC4  38 60 FF FF */	li r3, -1
/* 8025E168 00259DC8  4E 80 00 20 */	blr
lbl_8025E16C:
/* 8025E16C 00259DCC  38 00 00 03 */	li r0, 3
/* 8025E170 00259DD0  90 03 00 04 */	stw r0, 4(r3)
/* 8025E174 00259DD4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025E178 00259DD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E17C 00259DDC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025E180 00259DE0  7D 89 03 A6 */	mtctr r12
/* 8025E184 00259DE4  4E 80 04 20 */	bctr
/* 8025E188 00259DE8  4E 80 00 20 */	blr

.global func_8025E18C
func_8025E18C:
/* 8025E18C 00259DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E190 00259DF0  7C 08 02 A6 */	mflr r0
/* 8025E194 00259DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E198 00259DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E19C 00259DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8025E1A0 00259E00  7C 7E 1B 78 */	mr r30, r3
/* 8025E1A4 00259E04  48 00 01 15 */	bl func_8025E2B8
/* 8025E1A8 00259E08  2C 03 00 00 */	cmpwi r3, 0
/* 8025E1AC 00259E0C  7C 7F 1B 78 */	mr r31, r3
/* 8025E1B0 00259E10  41 82 00 6C */	beq lbl_8025E21C
/* 8025E1B4 00259E14  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E1B8 00259E18  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8025E1BC 00259E1C  7D 89 03 A6 */	mtctr r12
/* 8025E1C0 00259E20  4E 80 04 21 */	bctrl
/* 8025E1C4 00259E24  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025E1C8 00259E28  7F E3 FB 78 */	mr r3, r31
/* 8025E1CC 00259E2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8025E1D0 00259E30  7D 89 03 A6 */	mtctr r12
/* 8025E1D4 00259E34  4E 80 04 21 */	bctrl
/* 8025E1D8 00259E38  2C 03 00 00 */	cmpwi r3, 0
/* 8025E1DC 00259E3C  40 82 00 34 */	bne lbl_8025E210
/* 8025E1E0 00259E40  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025E1E4 00259E44  7F E3 FB 78 */	mr r3, r31
/* 8025E1E8 00259E48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8025E1EC 00259E4C  7D 89 03 A6 */	mtctr r12
/* 8025E1F0 00259E50  4E 80 04 21 */	bctrl
/* 8025E1F4 00259E54  2C 03 00 00 */	cmpwi r3, 0
/* 8025E1F8 00259E58  40 82 00 18 */	bne lbl_8025E210
/* 8025E1FC 00259E5C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8025E200 00259E60  4B FF ED 51 */	bl func_8025CF50
/* 8025E204 00259E64  38 00 00 00 */	li r0, 0
/* 8025E208 00259E68  90 1E 00 04 */	stw r0, 4(r30)
/* 8025E20C 00259E6C  48 00 00 94 */	b lbl_8025E2A0
lbl_8025E210:
/* 8025E210 00259E70  7F E3 FB 78 */	mr r3, r31
/* 8025E214 00259E74  48 00 07 8D */	bl func_8025E9A0
/* 8025E218 00259E78  48 00 00 88 */	b lbl_8025E2A0
lbl_8025E21C:
/* 8025E21C 00259E7C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025E220 00259E80  2C 03 00 00 */	cmpwi r3, 0
/* 8025E224 00259E84  41 82 00 24 */	beq lbl_8025E248
/* 8025E228 00259E88  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E22C 00259E8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8025E230 00259E90  7D 89 03 A6 */	mtctr r12
/* 8025E234 00259E94  4E 80 04 21 */	bctrl
/* 8025E238 00259E98  2C 03 00 00 */	cmpwi r3, 0
/* 8025E23C 00259E9C  41 82 00 0C */	beq lbl_8025E248
/* 8025E240 00259EA0  38 00 00 01 */	li r0, 1
/* 8025E244 00259EA4  90 1E 00 04 */	stw r0, 4(r30)
lbl_8025E248:
/* 8025E248 00259EA8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8025E24C 00259EAC  2C 03 00 00 */	cmpwi r3, 0
/* 8025E250 00259EB0  41 82 00 24 */	beq lbl_8025E274
/* 8025E254 00259EB4  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E258 00259EB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8025E25C 00259EBC  7D 89 03 A6 */	mtctr r12
/* 8025E260 00259EC0  4E 80 04 21 */	bctrl
/* 8025E264 00259EC4  2C 03 00 00 */	cmpwi r3, 0
/* 8025E268 00259EC8  41 82 00 0C */	beq lbl_8025E274
/* 8025E26C 00259ECC  38 00 00 02 */	li r0, 2
/* 8025E270 00259ED0  90 1E 00 04 */	stw r0, 4(r30)
lbl_8025E274:
/* 8025E274 00259ED4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8025E278 00259ED8  2C 03 00 00 */	cmpwi r3, 0
/* 8025E27C 00259EDC  41 82 00 24 */	beq lbl_8025E2A0
/* 8025E280 00259EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E284 00259EE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8025E288 00259EE8  7D 89 03 A6 */	mtctr r12
/* 8025E28C 00259EEC  4E 80 04 21 */	bctrl
/* 8025E290 00259EF0  2C 03 00 00 */	cmpwi r3, 0
/* 8025E294 00259EF4  41 82 00 0C */	beq lbl_8025E2A0
/* 8025E298 00259EF8  38 00 00 03 */	li r0, 3
/* 8025E29C 00259EFC  90 1E 00 04 */	stw r0, 4(r30)
lbl_8025E2A0:
/* 8025E2A0 00259F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E2A4 00259F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E2A8 00259F08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025E2AC 00259F0C  7C 08 03 A6 */	mtlr r0
/* 8025E2B0 00259F10  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E2B4 00259F14  4E 80 00 20 */	blr

.global func_8025E2B8
func_8025E2B8:
/* 8025E2B8 00259F18  80 03 00 04 */	lwz r0, 4(r3)
/* 8025E2BC 00259F1C  2C 00 00 02 */	cmpwi r0, 2
/* 8025E2C0 00259F20  41 82 00 2C */	beq lbl_8025E2EC
/* 8025E2C4 00259F24  40 80 00 14 */	bge lbl_8025E2D8
/* 8025E2C8 00259F28  2C 00 00 00 */	cmpwi r0, 0
/* 8025E2CC 00259F2C  41 82 00 30 */	beq lbl_8025E2FC
/* 8025E2D0 00259F30  40 80 00 14 */	bge lbl_8025E2E4
/* 8025E2D4 00259F34  48 00 00 28 */	b lbl_8025E2FC
lbl_8025E2D8:
/* 8025E2D8 00259F38  2C 00 00 04 */	cmpwi r0, 4
/* 8025E2DC 00259F3C  40 80 00 20 */	bge lbl_8025E2FC
/* 8025E2E0 00259F40  48 00 00 14 */	b lbl_8025E2F4
lbl_8025E2E4:
/* 8025E2E4 00259F44  80 63 00 08 */	lwz r3, 8(r3)
/* 8025E2E8 00259F48  4E 80 00 20 */	blr
lbl_8025E2EC:
/* 8025E2EC 00259F4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8025E2F0 00259F50  4E 80 00 20 */	blr
lbl_8025E2F4:
/* 8025E2F4 00259F54  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025E2F8 00259F58  4E 80 00 20 */	blr
lbl_8025E2FC:
/* 8025E2FC 00259F5C  38 60 00 00 */	li r3, 0
/* 8025E300 00259F60  4E 80 00 20 */	blr

.global func_8025E304
func_8025E304:
/* 8025E304 00259F64  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8025E308 00259F68  4E 80 00 20 */	blr

.global func_8025E30C
func_8025E30C:
/* 8025E30C 00259F6C  80 63 00 08 */	lwz r3, 8(r3)
/* 8025E310 00259F70  4E 80 00 20 */	blr

.global func_8025E314
func_8025E314:
/* 8025E314 00259F74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8025E318 00259F78  4E 80 00 20 */	blr

.global func_8025E31C
func_8025E31C:
/* 8025E31C 00259F7C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025E320 00259F80  4E 80 00 20 */	blr

.global func_8025E324
func_8025E324:
/* 8025E324 00259F84  48 00 00 4C */	b func_8025E370

.global func_8025E328
func_8025E328:
/* 8025E328 00259F88  38 A0 00 01 */	li r5, 1
/* 8025E32C 00259F8C  38 6D A6 D0 */	addi r3, r13, lbl_8063F990-_SDA_BASE_
/* 8025E330 00259F90  38 80 00 04 */	li r4, 4
/* 8025E334 00259F94  38 00 00 00 */	li r0, 0
/* 8025E338 00259F98  98 AD A6 D0 */	stb r5, lbl_8063F990-_SDA_BASE_(r13)
/* 8025E33C 00259F9C  B0 83 00 02 */	sth r4, 2(r3)
/* 8025E340 00259FA0  98 03 00 04 */	stb r0, 4(r3)
/* 8025E344 00259FA4  4E 80 00 20 */	blr
