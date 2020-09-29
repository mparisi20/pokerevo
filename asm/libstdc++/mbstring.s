.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global mbtowc
mbtowc:
/* 801CA13C 001C5D9C  3C C0 80 42 */	lis r6, lbl_80422D48@ha
/* 801CA140 001C5DA0  38 C6 2D 48 */	addi r6, r6, lbl_80422D48@l
/* 801CA144 001C5DA4  80 C6 00 38 */	lwz r6, 0x38(r6)
/* 801CA148 001C5DA8  81 86 00 20 */	lwz r12, 0x20(r6)
/* 801CA14C 001C5DAC  7D 89 03 A6 */	mtctr r12
/* 801CA150 001C5DB0  4E 80 04 20 */	bctr

.global __mbtowc_noconv
__mbtowc_noconv:
/* 801CA154 001C5DB4  2C 04 00 00 */	cmpwi r4, 0
/* 801CA158 001C5DB8  40 82 00 0C */	bne lbl_801CA164
/* 801CA15C 001C5DBC  38 60 00 00 */	li r3, 0
/* 801CA160 001C5DC0  4E 80 00 20 */	blr
lbl_801CA164:
/* 801CA164 001C5DC4  2C 05 00 00 */	cmpwi r5, 0
/* 801CA168 001C5DC8  40 82 00 0C */	bne lbl_801CA174
/* 801CA16C 001C5DCC  38 60 FF FF */	li r3, -1
/* 801CA170 001C5DD0  4E 80 00 20 */	blr
lbl_801CA174:
/* 801CA174 001C5DD4  2C 03 00 00 */	cmpwi r3, 0
/* 801CA178 001C5DD8  41 82 00 0C */	beq lbl_801CA184
/* 801CA17C 001C5DDC  88 04 00 00 */	lbz r0, 0(r4)
/* 801CA180 001C5DE0  B0 03 00 00 */	sth r0, 0(r3)
lbl_801CA184:
/* 801CA184 001C5DE4  88 04 00 00 */	lbz r0, 0(r4)
/* 801CA188 001C5DE8  7C 00 07 75 */	extsb. r0, r0
/* 801CA18C 001C5DEC  40 82 00 0C */	bne lbl_801CA198
/* 801CA190 001C5DF0  38 60 00 00 */	li r3, 0
/* 801CA194 001C5DF4  4E 80 00 20 */	blr
lbl_801CA198:
/* 801CA198 001C5DF8  38 60 00 01 */	li r3, 1
/* 801CA19C 001C5DFC  4E 80 00 20 */	blr

.global __wctomb_noconv
__wctomb_noconv:
/* 801CA1A0 001C5E00  2C 03 00 00 */	cmpwi r3, 0
/* 801CA1A4 001C5E04  40 82 00 0C */	bne lbl_801CA1B0
/* 801CA1A8 001C5E08  38 60 00 00 */	li r3, 0
/* 801CA1AC 001C5E0C  4E 80 00 20 */	blr
lbl_801CA1B0:
/* 801CA1B0 001C5E10  98 83 00 00 */	stb r4, 0(r3)
/* 801CA1B4 001C5E14  38 60 00 01 */	li r3, 1
/* 801CA1B8 001C5E18  4E 80 00 20 */	blr

.global wcstombs
wcstombs:
/* 801CA1BC 001C5E1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CA1C0 001C5E20  7C 08 02 A6 */	mflr r0
/* 801CA1C4 001C5E24  2C 03 00 00 */	cmpwi r3, 0
/* 801CA1C8 001C5E28  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CA1CC 001C5E2C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801CA1D0 001C5E30  7C 7A 1B 78 */	mr r26, r3
/* 801CA1D4 001C5E34  7C BB 2B 78 */	mr r27, r5
/* 801CA1D8 001C5E38  3B A0 00 00 */	li r29, 0
/* 801CA1DC 001C5E3C  41 82 00 0C */	beq lbl_801CA1E8
/* 801CA1E0 001C5E40  2C 04 00 00 */	cmpwi r4, 0
/* 801CA1E4 001C5E44  40 82 00 0C */	bne lbl_801CA1F0
lbl_801CA1E8:
/* 801CA1E8 001C5E48  38 60 00 00 */	li r3, 0
/* 801CA1EC 001C5E4C  48 00 00 74 */	b lbl_801CA260
lbl_801CA1F0:
/* 801CA1F0 001C5E50  3F E0 80 42 */	lis r31, lbl_80422D48@ha
/* 801CA1F4 001C5E54  7C 9C 23 78 */	mr r28, r4
/* 801CA1F8 001C5E58  3B FF 2D 48 */	addi r31, r31, lbl_80422D48@l
/* 801CA1FC 001C5E5C  48 00 00 58 */	b lbl_801CA254
lbl_801CA200:
/* 801CA200 001C5E60  A0 9C 00 00 */	lhz r4, 0(r28)
/* 801CA204 001C5E64  2C 04 00 00 */	cmpwi r4, 0
/* 801CA208 001C5E68  40 82 00 10 */	bne lbl_801CA218
/* 801CA20C 001C5E6C  38 00 00 00 */	li r0, 0
/* 801CA210 001C5E70  7C 1A E9 AE */	stbx r0, r26, r29
/* 801CA214 001C5E74  48 00 00 48 */	b lbl_801CA25C
lbl_801CA218:
/* 801CA218 001C5E78  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 801CA21C 001C5E7C  38 61 00 08 */	addi r3, r1, 8
/* 801CA220 001C5E80  81 85 00 24 */	lwz r12, 0x24(r5)
/* 801CA224 001C5E84  7D 89 03 A6 */	mtctr r12
/* 801CA228 001C5E88  3B 9C 00 02 */	addi r28, r28, 2
/* 801CA22C 001C5E8C  4E 80 04 21 */	bctrl
/* 801CA230 001C5E90  7C 1D 1A 14 */	add r0, r29, r3
/* 801CA234 001C5E94  7C 7E 1B 78 */	mr r30, r3
/* 801CA238 001C5E98  7C 00 D8 40 */	cmplw r0, r27
/* 801CA23C 001C5E9C  41 81 00 20 */	bgt lbl_801CA25C
/* 801CA240 001C5EA0  7F C5 F3 78 */	mr r5, r30
/* 801CA244 001C5EA4  7C 7A EA 14 */	add r3, r26, r29
/* 801CA248 001C5EA8  38 81 00 08 */	addi r4, r1, 8
/* 801CA24C 001C5EAC  48 00 41 45 */	bl func_801CE390
/* 801CA250 001C5EB0  7F BD F2 14 */	add r29, r29, r30
lbl_801CA254:
/* 801CA254 001C5EB4  7C 1D D8 40 */	cmplw r29, r27
/* 801CA258 001C5EB8  40 81 FF A8 */	ble lbl_801CA200
lbl_801CA25C:
/* 801CA25C 001C5EBC  7F A3 EB 78 */	mr r3, r29
lbl_801CA260:
/* 801CA260 001C5EC0  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801CA264 001C5EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CA268 001C5EC8  7C 08 03 A6 */	mtlr r0
/* 801CA26C 001C5ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 801CA270 001C5ED0  4E 80 00 20 */	blr
