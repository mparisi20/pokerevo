.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8003E03C
func_8003E03C:
/* 8003E03C 00039C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E040 00039CA0  7C 08 02 A6 */	mflr r0
/* 8003E044 00039CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E048 00039CA8  80 6D 97 C0 */	lwz r3, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E04C 00039CAC  2C 03 00 00 */	cmpwi r3, 0
/* 8003E050 00039CB0  41 82 00 08 */	beq lbl_8003E058
/* 8003E054 00039CB4  48 19 CA 65 */	bl __dl__FPv
lbl_8003E058:
/* 8003E058 00039CB8  38 60 00 90 */	li r3, 0x90
/* 8003E05C 00039CBC  48 19 C9 D5 */	bl __nw__FUl
/* 8003E060 00039CC0  2C 03 00 00 */	cmpwi r3, 0
/* 8003E064 00039CC4  41 82 00 08 */	beq lbl_8003E06C
/* 8003E068 00039CC8  48 00 00 FD */	bl func_8003E164
lbl_8003E06C:
/* 8003E06C 00039CCC  3C 80 80 04 */	lis r4, lbl_8003E124@ha
/* 8003E070 00039CD0  3C A0 80 04 */	lis r5, lbl_8003E158@ha
/* 8003E074 00039CD4  90 6D 97 C0 */	stw r3, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E078 00039CD8  38 84 E1 24 */	addi r4, r4, lbl_8003E124@l
/* 8003E07C 00039CDC  80 6D A4 B8 */	lwz r3, lbl_8063F778-_SDA_BASE_(r13)
/* 8003E080 00039CE0  38 A5 E1 58 */	addi r5, r5, lbl_8003E158@l
/* 8003E084 00039CE4  38 C0 00 03 */	li r6, 3
/* 8003E088 00039CE8  38 E0 00 0C */	li r7, 0xc
/* 8003E08C 00039CEC  48 20 0A CD */	bl func_8023EB58
/* 8003E090 00039CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E094 00039CF4  7C 08 03 A6 */	mtlr r0
/* 8003E098 00039CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E09C 00039CFC  4E 80 00 20 */	blr

.global func_8003E0A0
func_8003E0A0:
/* 8003E0A0 00039D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E0A4 00039D04  7C 08 02 A6 */	mflr r0
/* 8003E0A8 00039D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E0AC 00039D0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003E0B0 00039D10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003E0B4 00039D14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003E0B8 00039D18  80 0D 97 C0 */	lwz r0, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E0BC 00039D1C  2C 00 00 00 */	cmpwi r0, 0
/* 8003E0C0 00039D20  41 82 00 48 */	beq lbl_8003E108
/* 8003E0C4 00039D24  3B A0 00 00 */	li r29, 0
/* 8003E0C8 00039D28  3B C0 00 00 */	li r30, 0
/* 8003E0CC 00039D2C  3B E0 00 00 */	li r31, 0
lbl_8003E0D0:
/* 8003E0D0 00039D30  80 0D 97 C0 */	lwz r0, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E0D4 00039D34  7C 60 F2 14 */	add r3, r0, r30
/* 8003E0D8 00039D38  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8003E0DC 00039D3C  2C 03 00 00 */	cmpwi r3, 0
/* 8003E0E0 00039D40  41 82 00 18 */	beq lbl_8003E0F8
/* 8003E0E4 00039D44  38 80 00 01 */	li r4, 1
/* 8003E0E8 00039D48  4B FF 94 55 */	bl func_8003753C
/* 8003E0EC 00039D4C  80 0D 97 C0 */	lwz r0, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E0F0 00039D50  7C 60 F2 14 */	add r3, r0, r30
/* 8003E0F4 00039D54  93 E3 00 10 */	stw r31, 0x10(r3)
lbl_8003E0F8:
/* 8003E0F8 00039D58  3B BD 00 01 */	addi r29, r29, 1
/* 8003E0FC 00039D5C  3B DE 00 04 */	addi r30, r30, 4
/* 8003E100 00039D60  2C 1D 00 20 */	cmpwi r29, 0x20
/* 8003E104 00039D64  41 80 FF CC */	blt lbl_8003E0D0
lbl_8003E108:
/* 8003E108 00039D68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E10C 00039D6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003E110 00039D70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003E114 00039D74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003E118 00039D78  7C 08 03 A6 */	mtlr r0
/* 8003E11C 00039D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E120 00039D80  4E 80 00 20 */	blr
lbl_8003E124:
/* 8003E124 00039D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E128 00039D88  7C 08 02 A6 */	mflr r0
/* 8003E12C 00039D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E130 00039D90  80 0D 97 C0 */	lwz r0, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E134 00039D94  2C 00 00 00 */	cmpwi r0, 0
/* 8003E138 00039D98  41 82 00 10 */	beq lbl_8003E148
/* 8003E13C 00039D9C  4B FC 92 61 */	bl func_8000739C
/* 8003E140 00039DA0  80 6D 97 C0 */	lwz r3, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E144 00039DA4  48 00 03 75 */	bl func_8003E4B8
lbl_8003E148:
/* 8003E148 00039DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E14C 00039DAC  7C 08 03 A6 */	mtlr r0
/* 8003E150 00039DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E154 00039DB4  4E 80 00 20 */	blr
lbl_8003E158:
/* 8003E158 00039DB8  4E 80 00 20 */	blr

.global func_8003E15C
func_8003E15C:
/* 8003E15C 00039DBC  80 6D 97 C0 */	lwz r3, lbl_8063EA80-_SDA_BASE_(r13)
/* 8003E160 00039DC0  4E 80 00 20 */	blr

.global func_8003E164
func_8003E164:
/* 8003E164 00039DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E168 00039DC8  7C 08 02 A6 */	mflr r0
/* 8003E16C 00039DCC  38 80 00 00 */	li r4, 0
/* 8003E170 00039DD0  38 A0 00 80 */	li r5, 0x80
/* 8003E174 00039DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E178 00039DD8  38 00 00 00 */	li r0, 0
/* 8003E17C 00039DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E180 00039DE0  7C 7F 1B 78 */	mr r31, r3
/* 8003E184 00039DE4  90 03 00 00 */	stw r0, 0(r3)
/* 8003E188 00039DE8  38 63 00 10 */	addi r3, r3, 0x10
/* 8003E18C 00039DEC  4B FC 5F 79 */	bl memset
/* 8003E190 00039DF0  3C 80 80 64 */	lis r4, lbl_8063CE34@ha
/* 8003E194 00039DF4  7F E3 FB 78 */	mr r3, r31
/* 8003E198 00039DF8  38 84 CE 34 */	addi r4, r4, lbl_8063CE34@l
/* 8003E19C 00039DFC  38 04 00 10 */	addi r0, r4, 0x10
/* 8003E1A0 00039E00  90 9F 00 04 */	stw r4, 4(r31)
/* 8003E1A4 00039E04  90 1F 00 08 */	stw r0, 8(r31)
/* 8003E1A8 00039E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E1AC 00039E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E1B0 00039E10  7C 08 03 A6 */	mtlr r0
/* 8003E1B4 00039E14  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E1B8 00039E18  4E 80 00 20 */	blr

.global func_8003E1BC
func_8003E1BC:
/* 8003E1BC 00039E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E1C0 00039E20  7C 08 02 A6 */	mflr r0
/* 8003E1C4 00039E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E1C8 00039E28  38 00 00 20 */	li r0, 0x20
/* 8003E1CC 00039E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E1D0 00039E30  3B E0 00 00 */	li r31, 0
/* 8003E1D4 00039E34  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E1D8 00039E38  7C 7E 1B 78 */	mr r30, r3
/* 8003E1DC 00039E3C  7C 09 03 A6 */	mtctr r0
lbl_8003E1E0:
/* 8003E1E0 00039E40  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8003E1E4 00039E44  2C 00 00 00 */	cmpwi r0, 0
/* 8003E1E8 00039E48  40 82 00 28 */	bne lbl_8003E210
/* 8003E1EC 00039E4C  38 60 0D F8 */	li r3, 0xdf8
/* 8003E1F0 00039E50  48 19 C8 41 */	bl __nw__FUl
/* 8003E1F4 00039E54  2C 03 00 00 */	cmpwi r3, 0
/* 8003E1F8 00039E58  41 82 00 08 */	beq lbl_8003E200
/* 8003E1FC 00039E5C  4B FF 90 89 */	bl func_80037284
lbl_8003E200:
/* 8003E200 00039E60  57 E0 10 3A */	slwi r0, r31, 2
/* 8003E204 00039E64  7C 9E 02 14 */	add r4, r30, r0
/* 8003E208 00039E68  90 64 00 10 */	stw r3, 0x10(r4)
/* 8003E20C 00039E6C  48 00 00 14 */	b lbl_8003E220
lbl_8003E210:
/* 8003E210 00039E70  38 63 00 04 */	addi r3, r3, 4
/* 8003E214 00039E74  3B FF 00 01 */	addi r31, r31, 1
/* 8003E218 00039E78  42 00 FF C8 */	bdnz lbl_8003E1E0
/* 8003E21C 00039E7C  38 60 00 00 */	li r3, 0
lbl_8003E220:
/* 8003E220 00039E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E224 00039E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E228 00039E88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E22C 00039E8C  7C 08 03 A6 */	mtlr r0
/* 8003E230 00039E90  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E234 00039E94  4E 80 00 20 */	blr

.global func_8003E238
func_8003E238:
/* 8003E238 00039E98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E23C 00039E9C  7C 08 02 A6 */	mflr r0
/* 8003E240 00039EA0  2C 04 00 00 */	cmpwi r4, 0
/* 8003E244 00039EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E248 00039EA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003E24C 00039EAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003E250 00039EB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003E254 00039EB4  7C 7D 1B 78 */	mr r29, r3
/* 8003E258 00039EB8  41 82 00 80 */	beq lbl_8003E2D8
/* 8003E25C 00039EBC  38 00 00 20 */	li r0, 0x20
/* 8003E260 00039EC0  83 E4 0C 48 */	lwz r31, 0xc48(r4)
/* 8003E264 00039EC4  3B C0 00 00 */	li r30, 0
/* 8003E268 00039EC8  7C 09 03 A6 */	mtctr r0
lbl_8003E26C:
/* 8003E26C 00039ECC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8003E270 00039ED0  7C 00 20 40 */	cmplw r0, r4
/* 8003E274 00039ED4  40 82 00 58 */	bne lbl_8003E2CC
/* 8003E278 00039ED8  7C 83 23 78 */	mr r3, r4
/* 8003E27C 00039EDC  38 80 00 01 */	li r4, 1
/* 8003E280 00039EE0  4B FF 92 BD */	bl func_8003753C
/* 8003E284 00039EE4  57 C0 10 3A */	slwi r0, r30, 2
/* 8003E288 00039EE8  2C 1F 00 00 */	cmpwi r31, 0
/* 8003E28C 00039EEC  7C 7D 02 14 */	add r3, r29, r0
/* 8003E290 00039EF0  38 00 00 00 */	li r0, 0
/* 8003E294 00039EF4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8003E298 00039EF8  41 82 00 40 */	beq lbl_8003E2D8
/* 8003E29C 00039EFC  28 1F 00 0C */	cmplwi r31, 0xc
/* 8003E2A0 00039F00  41 82 00 38 */	beq lbl_8003E2D8
/* 8003E2A4 00039F04  7F A3 EB 78 */	mr r3, r29
/* 8003E2A8 00039F08  7F E4 FB 78 */	mr r4, r31
/* 8003E2AC 00039F0C  48 00 00 49 */	bl func_8003E2F4
/* 8003E2B0 00039F10  2C 03 00 00 */	cmpwi r3, 0
/* 8003E2B4 00039F14  40 82 00 24 */	bne lbl_8003E2D8
/* 8003E2B8 00039F18  7F E3 FB 78 */	mr r3, r31
/* 8003E2BC 00039F1C  48 20 B5 D5 */	bl func_80249890
/* 8003E2C0 00039F20  7F E3 FB 78 */	mr r3, r31
/* 8003E2C4 00039F24  48 19 D3 B1 */	bl func_801DB674
/* 8003E2C8 00039F28  48 00 00 10 */	b lbl_8003E2D8
lbl_8003E2CC:
/* 8003E2CC 00039F2C  38 63 00 04 */	addi r3, r3, 4
/* 8003E2D0 00039F30  3B DE 00 01 */	addi r30, r30, 1
/* 8003E2D4 00039F34  42 00 FF 98 */	bdnz lbl_8003E26C
lbl_8003E2D8:
/* 8003E2D8 00039F38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E2DC 00039F3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003E2E0 00039F40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003E2E4 00039F44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003E2E8 00039F48  7C 08 03 A6 */	mtlr r0
/* 8003E2EC 00039F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E2F0 00039F50  4E 80 00 20 */	blr

.global func_8003E2F4
func_8003E2F4:
/* 8003E2F4 00039F54  38 00 00 08 */	li r0, 8
/* 8003E2F8 00039F58  38 C0 00 00 */	li r6, 0
/* 8003E2FC 00039F5C  38 E0 00 00 */	li r7, 0
/* 8003E300 00039F60  7C 09 03 A6 */	mtctr r0
lbl_8003E304:
/* 8003E304 00039F64  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8003E308 00039F68  2C 05 00 00 */	cmpwi r5, 0
/* 8003E30C 00039F6C  41 82 00 14 */	beq lbl_8003E320
/* 8003E310 00039F70  80 05 0C 48 */	lwz r0, 0xc48(r5)
/* 8003E314 00039F74  7C 04 00 40 */	cmplw r4, r0
/* 8003E318 00039F78  40 82 00 08 */	bne lbl_8003E320
/* 8003E31C 00039F7C  38 C6 00 01 */	addi r6, r6, 1
lbl_8003E320:
/* 8003E320 00039F80  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8003E324 00039F84  2C 05 00 00 */	cmpwi r5, 0
/* 8003E328 00039F88  41 82 00 14 */	beq lbl_8003E33C
/* 8003E32C 00039F8C  80 05 0C 48 */	lwz r0, 0xc48(r5)
/* 8003E330 00039F90  7C 04 00 40 */	cmplw r4, r0
/* 8003E334 00039F94  40 82 00 08 */	bne lbl_8003E33C
/* 8003E338 00039F98  38 C6 00 01 */	addi r6, r6, 1
lbl_8003E33C:
/* 8003E33C 00039F9C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8003E340 00039FA0  2C 05 00 00 */	cmpwi r5, 0
/* 8003E344 00039FA4  41 82 00 14 */	beq lbl_8003E358
/* 8003E348 00039FA8  80 05 0C 48 */	lwz r0, 0xc48(r5)
/* 8003E34C 00039FAC  7C 04 00 40 */	cmplw r4, r0
/* 8003E350 00039FB0  40 82 00 08 */	bne lbl_8003E358
/* 8003E354 00039FB4  38 C6 00 01 */	addi r6, r6, 1
lbl_8003E358:
/* 8003E358 00039FB8  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8003E35C 00039FBC  2C 05 00 00 */	cmpwi r5, 0
/* 8003E360 00039FC0  41 82 00 14 */	beq lbl_8003E374
/* 8003E364 00039FC4  80 05 0C 48 */	lwz r0, 0xc48(r5)
/* 8003E368 00039FC8  7C 04 00 40 */	cmplw r4, r0
/* 8003E36C 00039FCC  40 82 00 08 */	bne lbl_8003E374
/* 8003E370 00039FD0  38 C6 00 01 */	addi r6, r6, 1
lbl_8003E374:
/* 8003E374 00039FD4  38 63 00 10 */	addi r3, r3, 0x10
/* 8003E378 00039FD8  38 E7 00 03 */	addi r7, r7, 3
/* 8003E37C 00039FDC  42 00 FF 88 */	bdnz lbl_8003E304
/* 8003E380 00039FE0  7C C3 33 78 */	mr r3, r6
/* 8003E384 00039FE4  4E 80 00 20 */	blr

.global func_8003E388
func_8003E388:
/* 8003E388 00039FE8  38 00 00 04 */	li r0, 4
/* 8003E38C 00039FEC  90 83 00 0C */	stw r4, 0xc(r3)
/* 8003E390 00039FF0  38 C0 00 00 */	li r6, 0
/* 8003E394 00039FF4  38 80 00 00 */	li r4, 0
/* 8003E398 00039FF8  7C 09 03 A6 */	mtctr r0
lbl_8003E39C:
/* 8003E39C 00039FFC  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8003E3A0 0003A000  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3A4 0003A004  41 82 00 08 */	beq lbl_8003E3AC
/* 8003E3A8 0003A008  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3AC:
/* 8003E3AC 0003A00C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8003E3B0 0003A010  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3B4 0003A014  41 82 00 08 */	beq lbl_8003E3BC
/* 8003E3B8 0003A018  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3BC:
/* 8003E3BC 0003A01C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8003E3C0 0003A020  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3C4 0003A024  41 82 00 08 */	beq lbl_8003E3CC
/* 8003E3C8 0003A028  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3CC:
/* 8003E3CC 0003A02C  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8003E3D0 0003A030  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3D4 0003A034  41 82 00 08 */	beq lbl_8003E3DC
/* 8003E3D8 0003A038  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3DC:
/* 8003E3DC 0003A03C  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 8003E3E0 0003A040  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3E4 0003A044  41 82 00 08 */	beq lbl_8003E3EC
/* 8003E3E8 0003A048  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3EC:
/* 8003E3EC 0003A04C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 8003E3F0 0003A050  2C 05 00 00 */	cmpwi r5, 0
/* 8003E3F4 0003A054  41 82 00 08 */	beq lbl_8003E3FC
/* 8003E3F8 0003A058  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E3FC:
/* 8003E3FC 0003A05C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8003E400 0003A060  2C 05 00 00 */	cmpwi r5, 0
/* 8003E404 0003A064  41 82 00 08 */	beq lbl_8003E40C
/* 8003E408 0003A068  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E40C:
/* 8003E40C 0003A06C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 8003E410 0003A070  2C 05 00 00 */	cmpwi r5, 0
/* 8003E414 0003A074  41 82 00 08 */	beq lbl_8003E41C
/* 8003E418 0003A078  90 85 0C B0 */	stw r4, 0xcb0(r5)
lbl_8003E41C:
/* 8003E41C 0003A07C  38 63 00 20 */	addi r3, r3, 0x20
/* 8003E420 0003A080  38 C6 00 07 */	addi r6, r6, 7
/* 8003E424 0003A084  42 00 FF 78 */	bdnz lbl_8003E39C
/* 8003E428 0003A088  4E 80 00 20 */	blr

.global func_8003E42C
func_8003E42C:
/* 8003E42C 0003A08C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8003E430 0003A090  4E 80 00 20 */	blr

.global func_8003E434
func_8003E434:
/* 8003E434 0003A094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E438 0003A098  7C 08 02 A6 */	mflr r0
/* 8003E43C 0003A09C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E440 0003A0A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003E444 0003A0A4  7C BF 2B 78 */	mr r31, r5
/* 8003E448 0003A0A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003E44C 0003A0AC  7C 9E 23 78 */	mr r30, r4
/* 8003E450 0003A0B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003E454 0003A0B4  7C 7D 1B 78 */	mr r29, r3
/* 8003E458 0003A0B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8003E45C 0003A0BC  48 35 2D 21 */	bl func_8039117C
/* 8003E460 0003A0C0  7C 03 F0 40 */	cmplw r3, r30
/* 8003E464 0003A0C4  40 80 00 10 */	bge lbl_8003E474
/* 8003E468 0003A0C8  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8003E46C 0003A0CC  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8003E470 0003A0D0  48 00 00 2C */	b lbl_8003E49C
lbl_8003E474:
/* 8003E474 0003A0D4  80 7D 00 04 */	lwz r3, 4(r29)
/* 8003E478 0003A0D8  7F C4 F3 78 */	mr r4, r30
/* 8003E47C 0003A0DC  7F E5 FB 78 */	mr r5, r31
/* 8003E480 0003A0E0  48 35 2E 45 */	bl func_803912C4
/* 8003E484 0003A0E4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8003E488 0003A0E8  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8003E48C 0003A0EC  28 00 00 FF */	cmplwi r0, 0xff
/* 8003E490 0003A0F0  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8003E494 0003A0F4  41 82 00 08 */	beq lbl_8003E49C
/* 8003E498 0003A0F8  7C 03 03 78 */	mr r3, r0
lbl_8003E49C:
/* 8003E49C 0003A0FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E4A0 0003A100  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003E4A4 0003A104  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003E4A8 0003A108  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003E4AC 0003A10C  7C 08 03 A6 */	mtlr r0
/* 8003E4B0 0003A110  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E4B4 0003A114  4E 80 00 20 */	blr

.global func_8003E4B8
func_8003E4B8:
/* 8003E4B8 0003A118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E4BC 0003A11C  7C 08 02 A6 */	mflr r0
/* 8003E4C0 0003A120  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E4C4 0003A124  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8003E4C8 0003A128  FF E0 08 90 */	fmr f31, f1
/* 8003E4CC 0003A12C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003E4D0 0003A130  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8003E4D4 0003A134  3B C0 00 00 */	li r30, 0
/* 8003E4D8 0003A138  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8003E4DC 0003A13C  7C 7D 1B 78 */	mr r29, r3
/* 8003E4E0 0003A140  7F BF EB 78 */	mr r31, r29
lbl_8003E4E4:
/* 8003E4E4 0003A144  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8003E4E8 0003A148  2C 04 00 00 */	cmpwi r4, 0
/* 8003E4EC 0003A14C  41 82 00 28 */	beq lbl_8003E514
/* 8003E4F0 0003A150  80 04 00 00 */	lwz r0, 0(r4)
/* 8003E4F4 0003A154  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003E4F8 0003A158  41 82 00 10 */	beq lbl_8003E508
/* 8003E4FC 0003A15C  7F A3 EB 78 */	mr r3, r29
/* 8003E500 0003A160  4B FF FD 39 */	bl func_8003E238
/* 8003E504 0003A164  48 00 00 10 */	b lbl_8003E514
lbl_8003E508:
/* 8003E508 0003A168  FC 20 F8 90 */	fmr f1, f31
/* 8003E50C 0003A16C  7C 83 23 78 */	mr r3, r4
/* 8003E510 0003A170  4B FF D3 C5 */	bl func_8003B8D4
lbl_8003E514:
/* 8003E514 0003A174  3B DE 00 01 */	addi r30, r30, 1
/* 8003E518 0003A178  3B FF 00 04 */	addi r31, r31, 4
/* 8003E51C 0003A17C  2C 1E 00 20 */	cmpwi r30, 0x20
/* 8003E520 0003A180  41 80 FF C4 */	blt lbl_8003E4E4
/* 8003E524 0003A184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E528 0003A188  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8003E52C 0003A18C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003E530 0003A190  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8003E534 0003A194  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8003E538 0003A198  7C 08 03 A6 */	mtlr r0
/* 8003E53C 0003A19C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E540 0003A1A0  4E 80 00 20 */	blr

.global func_8003E544
func_8003E544:
/* 8003E544 0003A1A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003E548 0003A1A8  7C 08 02 A6 */	mflr r0
/* 8003E54C 0003A1AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003E550 0003A1B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8003E554 0003A1B4  48 18 8B C5 */	bl _savegpr_23
/* 8003E558 0003A1B8  7C 77 1B 78 */	mr r23, r3
/* 8003E55C 0003A1BC  80 63 00 04 */	lwz r3, 4(r3)
/* 8003E560 0003A1C0  7C 98 23 78 */	mr r24, r4
/* 8003E564 0003A1C4  7C B9 2B 78 */	mr r25, r5
/* 8003E568 0003A1C8  7C DA 33 78 */	mr r26, r6
/* 8003E56C 0003A1CC  3B 80 FF FF */	li r28, -1
/* 8003E570 0003A1D0  48 35 2C 0D */	bl func_8039117C
/* 8003E574 0003A1D4  28 1A 00 02 */	cmplwi r26, 2
/* 8003E578 0003A1D8  7C 7D 1B 78 */	mr r29, r3
/* 8003E57C 0003A1DC  41 80 00 08 */	blt lbl_8003E584
/* 8003E580 0003A1E0  3B 40 00 00 */	li r26, 0
lbl_8003E584:
/* 8003E584 0003A1E4  3B 60 00 00 */	li r27, 0
/* 8003E588 0003A1E8  48 00 00 64 */	b lbl_8003E5EC
lbl_8003E58C:
/* 8003E58C 0003A1EC  80 77 00 04 */	lwz r3, 4(r23)
/* 8003E590 0003A1F0  7F 64 DB 78 */	mr r4, r27
/* 8003E594 0003A1F4  48 35 2C 05 */	bl func_80391198
/* 8003E598 0003A1F8  7C 7E 1B 78 */	mr r30, r3
/* 8003E59C 0003A1FC  80 77 00 04 */	lwz r3, 4(r23)
/* 8003E5A0 0003A200  7F 64 DB 78 */	mr r4, r27
/* 8003E5A4 0003A204  48 35 2C 29 */	bl func_803911CC
/* 8003E5A8 0003A208  7C 7F 1B 78 */	mr r31, r3
/* 8003E5AC 0003A20C  80 77 00 04 */	lwz r3, 4(r23)
/* 8003E5B0 0003A210  7F 64 DB 78 */	mr r4, r27
/* 8003E5B4 0003A214  48 35 2C 85 */	bl func_80391238
/* 8003E5B8 0003A218  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8003E5BC 0003A21C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8003E5C0 0003A220  7C 00 C0 40 */	cmplw r0, r24
/* 8003E5C4 0003A224  40 82 00 24 */	bne lbl_8003E5E8
/* 8003E5C8 0003A228  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8003E5CC 0003A22C  7C 00 C8 40 */	cmplw r0, r25
/* 8003E5D0 0003A230  40 82 00 18 */	bne lbl_8003E5E8
/* 8003E5D4 0003A234  7C 1A 18 40 */	cmplw r26, r3
/* 8003E5D8 0003A238  7F 7C DB 78 */	mr r28, r27
/* 8003E5DC 0003A23C  40 82 00 0C */	bne lbl_8003E5E8
/* 8003E5E0 0003A240  7F 63 DB 78 */	mr r3, r27
/* 8003E5E4 0003A244  48 00 00 14 */	b lbl_8003E5F8
lbl_8003E5E8:
/* 8003E5E8 0003A248  3B 7B 00 01 */	addi r27, r27, 1
lbl_8003E5EC:
/* 8003E5EC 0003A24C  7C 1B E8 00 */	cmpw r27, r29
/* 8003E5F0 0003A250  41 80 FF 9C */	blt lbl_8003E58C
/* 8003E5F4 0003A254  7F 83 E3 78 */	mr r3, r28
lbl_8003E5F8:
/* 8003E5F8 0003A258  39 61 00 30 */	addi r11, r1, 0x30
/* 8003E5FC 0003A25C  48 18 8B 69 */	bl _restgpr_23
/* 8003E600 0003A260  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003E604 0003A264  7C 08 03 A6 */	mtlr r0
/* 8003E608 0003A268  38 21 00 30 */	addi r1, r1, 0x30
/* 8003E60C 0003A26C  4E 80 00 20 */	blr

.global func_8003E610
func_8003E610:
/* 8003E610 0003A270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E614 0003A274  7C 08 02 A6 */	mflr r0
/* 8003E618 0003A278  38 A0 00 00 */	li r5, 0
/* 8003E61C 0003A27C  38 C0 00 FF */	li r6, 0xff
/* 8003E620 0003A280  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E624 0003A284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E628 0003A288  7C 7F 1B 78 */	mr r31, r3
/* 8003E62C 0003A28C  4B FF FF 19 */	bl func_8003E544
/* 8003E630 0003A290  2C 03 00 00 */	cmpwi r3, 0
/* 8003E634 0003A294  7C 64 1B 78 */	mr r4, r3
/* 8003E638 0003A298  41 80 00 10 */	blt lbl_8003E648
/* 8003E63C 0003A29C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8003E640 0003A2A0  48 35 2B C1 */	bl func_80391200
/* 8003E644 0003A2A4  48 00 00 08 */	b lbl_8003E64C
lbl_8003E648:
/* 8003E648 0003A2A8  38 60 FF FF */	li r3, -1
lbl_8003E64C:
/* 8003E64C 0003A2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E650 0003A2B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E654 0003A2B4  7C 08 03 A6 */	mtlr r0
/* 8003E658 0003A2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E65C 0003A2BC  4E 80 00 20 */	blr

.global func_8003E660
func_8003E660:
/* 8003E660 0003A2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E664 0003A2C4  7C 08 02 A6 */	mflr r0
/* 8003E668 0003A2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E66C 0003A2CC  80 63 00 08 */	lwz r3, 8(r3)
/* 8003E670 0003A2D0  2C 03 00 00 */	cmpwi r3, 0
/* 8003E674 0003A2D4  41 82 00 10 */	beq lbl_8003E684
/* 8003E678 0003A2D8  48 35 37 75 */	bl func_80391DEC
/* 8003E67C 0003A2DC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003E680 0003A2E0  48 00 00 08 */	b lbl_8003E688
lbl_8003E684:
/* 8003E684 0003A2E4  38 60 FF FF */	li r3, -1
lbl_8003E688:
/* 8003E688 0003A2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E68C 0003A2EC  7C 08 03 A6 */	mtlr r0
/* 8003E690 0003A2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E694 0003A2F4  4E 80 00 20 */	blr

.global func_8003E698
func_8003E698:
/* 8003E698 0003A2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E69C 0003A2FC  7C 08 02 A6 */	mflr r0
/* 8003E6A0 0003A300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E6A4 0003A304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E6A8 0003A308  7C 7F 1B 78 */	mr r31, r3
/* 8003E6AC 0003A30C  4B FF FE 99 */	bl func_8003E544
/* 8003E6B0 0003A310  2C 03 00 00 */	cmpwi r3, 0
/* 8003E6B4 0003A314  7C 64 1B 78 */	mr r4, r3
/* 8003E6B8 0003A318  41 80 00 10 */	blt lbl_8003E6C8
/* 8003E6BC 0003A31C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8003E6C0 0003A320  48 35 2C 59 */	bl func_80391318
/* 8003E6C4 0003A324  48 00 00 08 */	b lbl_8003E6CC
lbl_8003E6C8:
/* 8003E6C8 0003A328  38 60 00 00 */	li r3, 0
lbl_8003E6CC:
/* 8003E6CC 0003A32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E6D0 0003A330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E6D4 0003A334  7C 08 03 A6 */	mtlr r0
/* 8003E6D8 0003A338  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E6DC 0003A33C  4E 80 00 20 */	blr

.global func_8003E6E0
func_8003E6E0:
/* 8003E6E0 0003A340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E6E4 0003A344  7C 08 02 A6 */	mflr r0
/* 8003E6E8 0003A348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E6EC 0003A34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E6F0 0003A350  7C BF 2B 78 */	mr r31, r5
/* 8003E6F4 0003A354  7C C5 33 78 */	mr r5, r6
/* 8003E6F8 0003A358  7C E6 3B 78 */	mr r6, r7
/* 8003E6FC 0003A35C  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E700 0003A360  7C 7E 1B 78 */	mr r30, r3
/* 8003E704 0003A364  4B FF FE 41 */	bl func_8003E544
/* 8003E708 0003A368  2C 03 00 00 */	cmpwi r3, 0
/* 8003E70C 0003A36C  7C 64 1B 78 */	mr r4, r3
/* 8003E710 0003A370  41 80 00 24 */	blt lbl_8003E734
/* 8003E714 0003A374  2C 1F 00 00 */	cmpwi r31, 0
/* 8003E718 0003A378  41 82 00 10 */	beq lbl_8003E728
/* 8003E71C 0003A37C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8003E720 0003A380  48 35 2C 61 */	bl func_80391380
/* 8003E724 0003A384  48 00 00 14 */	b lbl_8003E738
lbl_8003E728:
/* 8003E728 0003A388  80 7E 00 04 */	lwz r3, 4(r30)
/* 8003E72C 0003A38C  48 35 2C 21 */	bl func_8039134C
/* 8003E730 0003A390  48 00 00 08 */	b lbl_8003E738
lbl_8003E734:
/* 8003E734 0003A394  38 60 00 00 */	li r3, 0
lbl_8003E738:
/* 8003E738 0003A398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E73C 0003A39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E740 0003A3A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E744 0003A3A4  7C 08 03 A6 */	mtlr r0
/* 8003E748 0003A3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E74C 0003A3AC  4E 80 00 20 */	blr

.global func_8003E750
func_8003E750:
/* 8003E750 0003A3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E754 0003A3B4  7C 08 02 A6 */	mflr r0
/* 8003E758 0003A3B8  2C 05 00 00 */	cmpwi r5, 0
/* 8003E75C 0003A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E760 0003A3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E764 0003A3C4  7C BF 2B 78 */	mr r31, r5
/* 8003E768 0003A3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E76C 0003A3CC  7C 7E 1B 78 */	mr r30, r3
/* 8003E770 0003A3D0  40 80 00 0C */	bge lbl_8003E77C
/* 8003E774 0003A3D4  38 60 00 00 */	li r3, 0
/* 8003E778 0003A3D8  48 00 00 34 */	b lbl_8003E7AC
lbl_8003E77C:
/* 8003E77C 0003A3DC  7C C5 33 78 */	mr r5, r6
/* 8003E780 0003A3E0  7C E6 3B 78 */	mr r6, r7
/* 8003E784 0003A3E4  4B FF FD C1 */	bl func_8003E544
/* 8003E788 0003A3E8  2C 03 00 00 */	cmpwi r3, 0
/* 8003E78C 0003A3EC  7C 64 1B 78 */	mr r4, r3
/* 8003E790 0003A3F0  41 80 00 18 */	blt lbl_8003E7A8
/* 8003E794 0003A3F4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8003E798 0003A3F8  7F E5 FB 78 */	mr r5, r31
/* 8003E79C 0003A3FC  48 35 2A D5 */	bl func_80391270
/* 8003E7A0 0003A400  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8003E7A4 0003A404  48 00 00 08 */	b lbl_8003E7AC
lbl_8003E7A8:
/* 8003E7A8 0003A408  38 60 FF FF */	li r3, -1
lbl_8003E7AC:
/* 8003E7AC 0003A40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E7B0 0003A410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E7B4 0003A414  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E7B8 0003A418  7C 08 03 A6 */	mtlr r0
/* 8003E7BC 0003A41C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E7C0 0003A420  4E 80 00 20 */	blr

.global func_8003E7C4
func_8003E7C4:
/* 8003E7C4 0003A424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E7C8 0003A428  7C 08 02 A6 */	mflr r0
/* 8003E7CC 0003A42C  2C 05 00 00 */	cmpwi r5, 0
/* 8003E7D0 0003A430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E7D4 0003A434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E7D8 0003A438  7C BF 2B 78 */	mr r31, r5
/* 8003E7DC 0003A43C  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E7E0 0003A440  7C 7E 1B 78 */	mr r30, r3
/* 8003E7E4 0003A444  40 80 00 08 */	bge lbl_8003E7EC
/* 8003E7E8 0003A448  3B E0 00 00 */	li r31, 0
lbl_8003E7EC:
/* 8003E7EC 0003A44C  7C C5 33 78 */	mr r5, r6
/* 8003E7F0 0003A450  7F C3 F3 78 */	mr r3, r30
/* 8003E7F4 0003A454  7C E6 3B 78 */	mr r6, r7
/* 8003E7F8 0003A458  4B FF FD 4D */	bl func_8003E544
/* 8003E7FC 0003A45C  2C 03 00 00 */	cmpwi r3, 0
/* 8003E800 0003A460  7C 64 1B 78 */	mr r4, r3
/* 8003E804 0003A464  40 80 00 08 */	bge lbl_8003E80C
/* 8003E808 0003A468  38 80 00 00 */	li r4, 0
lbl_8003E80C:
/* 8003E80C 0003A46C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8003E810 0003A470  7F E5 FB 78 */	mr r5, r31
/* 8003E814 0003A474  48 35 2A B1 */	bl func_803912C4
/* 8003E818 0003A478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E81C 0003A47C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8003E820 0003A480  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E824 0003A484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E828 0003A488  7C 08 03 A6 */	mtlr r0
/* 8003E82C 0003A48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E830 0003A490  4E 80 00 20 */	blr

.global func_8003E834
func_8003E834:
/* 8003E834 0003A494  38 A0 00 01 */	li r5, 1
/* 8003E838 0003A498  38 6D 97 B8 */	addi r3, r13, lbl_8063EA78-_SDA_BASE_
/* 8003E83C 0003A49C  38 80 00 04 */	li r4, 4
/* 8003E840 0003A4A0  38 00 00 00 */	li r0, 0
/* 8003E844 0003A4A4  98 AD 97 B8 */	stb r5, lbl_8063EA78-_SDA_BASE_(r13)
/* 8003E848 0003A4A8  B0 83 00 02 */	sth r4, 2(r3)
/* 8003E84C 0003A4AC  98 03 00 04 */	stb r0, 4(r3)
/* 8003E850 0003A4B0  4E 80 00 20 */	blr
