.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global ListCallback
ListCallback:
/* 8035E084 00359CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E088 00359CE8  7C 08 02 A6 */	mflr r0
/* 8035E08C 00359CEC  28 04 00 07 */	cmplwi r4, 7
/* 8035E090 00359CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E094 00359CF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035E098 00359CF8  7C DF 33 78 */	mr r31, r6
/* 8035E09C 00359CFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035E0A0 00359D00  7C BE 2B 78 */	mr r30, r5
/* 8035E0A4 00359D04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035E0A8 00359D08  7C 7D 1B 78 */	mr r29, r3
/* 8035E0AC 00359D0C  41 81 01 C4 */	bgt lbl_8035E270
/* 8035E0B0 00359D10  3C E0 80 45 */	lis r7, lbl_8044C5F0@ha
/* 8035E0B4 00359D14  54 80 10 3A */	slwi r0, r4, 2
/* 8035E0B8 00359D18  38 E7 C5 F0 */	addi r7, r7, lbl_8044C5F0@l
/* 8035E0BC 00359D1C  7C E7 00 2E */	lwzx r7, r7, r0
/* 8035E0C0 00359D20  7C E9 03 A6 */	mtctr r7
/* 8035E0C4 00359D24  4E 80 04 20 */	bctr
/* 8035E0C8 00359D28  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E0CC 00359D2C  7F E3 FB 78 */	mr r3, r31
/* 8035E0D0 00359D30  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E0D4 00359D34  38 80 00 00 */	li r4, 0
/* 8035E0D8 00359D38  7D 89 03 A6 */	mtctr r12
/* 8035E0DC 00359D3C  4E 80 04 21 */	bctrl
/* 8035E0E0 00359D40  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 8035E0E4 00359D44  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8035E0E8 00359D48  41 82 00 0C */	beq lbl_8035E0F4
/* 8035E0EC 00359D4C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8035E0F0 00359D50  40 82 01 80 */	bne lbl_8035E270
lbl_8035E0F4:
/* 8035E0F4 00359D54  70 60 00 2C */	andi. r0, r3, 0x2c
/* 8035E0F8 00359D58  40 82 01 78 */	bne lbl_8035E270
/* 8035E0FC 00359D5C  80 1F 08 2C */	lwz r0, 0x82c(r31)
/* 8035E100 00359D60  2C 00 00 00 */	cmpwi r0, 0
/* 8035E104 00359D64  40 82 01 6C */	bne lbl_8035E270
/* 8035E108 00359D68  88 1E 00 15 */	lbz r0, 0x15(r30)
/* 8035E10C 00359D6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8035E110 00359D70  41 82 00 2C */	beq lbl_8035E13C
/* 8035E114 00359D74  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8035E118 00359D78  2C 00 00 00 */	cmpwi r0, 0
/* 8035E11C 00359D7C  41 82 00 10 */	beq lbl_8035E12C
/* 8035E120 00359D80  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8035E124 00359D84  2C 00 00 00 */	cmpwi r0, 0
/* 8035E128 00359D88  40 82 00 0C */	bne lbl_8035E134
lbl_8035E12C:
/* 8035E12C 00359D8C  38 C0 00 01 */	li r6, 1
/* 8035E130 00359D90  48 00 00 10 */	b lbl_8035E140
lbl_8035E134:
/* 8035E134 00359D94  38 C0 00 00 */	li r6, 0
/* 8035E138 00359D98  48 00 00 08 */	b lbl_8035E140
lbl_8035E13C:
/* 8035E13C 00359D9C  38 C0 00 02 */	li r6, 2
lbl_8035E140:
/* 8035E140 00359DA0  A0 1D 07 D0 */	lhz r0, 0x7d0(r29)
/* 8035E144 00359DA4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8035E148 00359DA8  41 82 00 1C */	beq lbl_8035E164
/* 8035E14C 00359DAC  7F E3 FB 78 */	mr r3, r31
/* 8035E150 00359DB0  7F C4 F3 78 */	mr r4, r30
/* 8035E154 00359DB4  38 A0 00 00 */	li r5, 0
/* 8035E158 00359DB8  38 E0 00 01 */	li r7, 1
/* 8035E15C 00359DBC  4B FF EB DD */	bl SBQueryEngineUpdateServer
/* 8035E160 00359DC0  48 00 01 10 */	b lbl_8035E270
lbl_8035E164:
/* 8035E164 00359DC4  7F E3 FB 78 */	mr r3, r31
/* 8035E168 00359DC8  7F C4 F3 78 */	mr r4, r30
/* 8035E16C 00359DCC  38 A0 00 00 */	li r5, 0
/* 8035E170 00359DD0  38 E0 00 00 */	li r7, 0
/* 8035E174 00359DD4  4B FF EB C5 */	bl SBQueryEngineUpdateServer
/* 8035E178 00359DD8  48 00 00 F8 */	b lbl_8035E270
/* 8035E17C 00359DDC  88 05 00 14 */	lbz r0, 0x14(r5)
/* 8035E180 00359DE0  70 00 00 43 */	andi. r0, r0, 0x43
/* 8035E184 00359DE4  40 82 00 20 */	bne lbl_8035E1A4
/* 8035E188 00359DE8  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E18C 00359DEC  7F E3 FB 78 */	mr r3, r31
/* 8035E190 00359DF0  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E194 00359DF4  38 80 00 02 */	li r4, 2
/* 8035E198 00359DF8  7D 89 03 A6 */	mtctr r12
/* 8035E19C 00359DFC  4E 80 04 21 */	bctrl
/* 8035E1A0 00359E00  48 00 00 D0 */	b lbl_8035E270
lbl_8035E1A4:
/* 8035E1A4 00359E04  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E1A8 00359E08  7F E3 FB 78 */	mr r3, r31
/* 8035E1AC 00359E0C  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E1B0 00359E10  38 80 00 01 */	li r4, 1
/* 8035E1B4 00359E14  7D 89 03 A6 */	mtctr r12
/* 8035E1B8 00359E18  4E 80 04 21 */	bctrl
/* 8035E1BC 00359E1C  48 00 00 B4 */	b lbl_8035E270
/* 8035E1C0 00359E20  88 05 00 14 */	lbz r0, 0x14(r5)
/* 8035E1C4 00359E24  70 00 00 2C */	andi. r0, r0, 0x2c
/* 8035E1C8 00359E28  41 82 00 10 */	beq lbl_8035E1D8
/* 8035E1CC 00359E2C  7F E3 FB 78 */	mr r3, r31
/* 8035E1D0 00359E30  7F C4 F3 78 */	mr r4, r30
/* 8035E1D4 00359E34  4B FF F1 B1 */	bl SBQueryEngineRemoveServerFromFIFOs
lbl_8035E1D8:
/* 8035E1D8 00359E38  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E1DC 00359E3C  7F E3 FB 78 */	mr r3, r31
/* 8035E1E0 00359E40  7F C5 F3 78 */	mr r5, r30
/* 8035E1E4 00359E44  80 DF 08 3C */	lwz r6, 0x83c(r31)
/* 8035E1E8 00359E48  38 80 00 03 */	li r4, 3
/* 8035E1EC 00359E4C  7D 89 03 A6 */	mtctr r12
/* 8035E1F0 00359E50  4E 80 04 21 */	bctrl
/* 8035E1F4 00359E54  48 00 00 7C */	b lbl_8035E270
/* 8035E1F8 00359E58  80 06 08 28 */	lwz r0, 0x828(r6)
/* 8035E1FC 00359E5C  2C 00 00 00 */	cmpwi r0, 0
/* 8035E200 00359E60  41 82 00 08 */	beq lbl_8035E208
/* 8035E204 00359E64  48 00 1E 41 */	bl SBServerListDisconnect
lbl_8035E208:
/* 8035E208 00359E68  80 7D 00 04 */	lwz r3, 4(r29)
/* 8035E20C 00359E6C  4B FD 7C DD */	bl ArrayLength
/* 8035E210 00359E70  2C 03 00 00 */	cmpwi r3, 0
/* 8035E214 00359E74  41 82 00 10 */	beq lbl_8035E224
/* 8035E218 00359E78  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8035E21C 00359E7C  2C 00 00 00 */	cmpwi r0, 0
/* 8035E220 00359E80  40 82 00 50 */	bne lbl_8035E270
lbl_8035E224:
/* 8035E224 00359E84  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E228 00359E88  7F E3 FB 78 */	mr r3, r31
/* 8035E22C 00359E8C  80 DF 08 3C */	lwz r6, 0x83c(r31)
/* 8035E230 00359E90  38 80 00 04 */	li r4, 4
/* 8035E234 00359E94  38 A0 00 00 */	li r5, 0
/* 8035E238 00359E98  7D 89 03 A6 */	mtctr r12
/* 8035E23C 00359E9C  4E 80 04 21 */	bctrl
/* 8035E240 00359EA0  48 00 00 30 */	b lbl_8035E270
/* 8035E244 00359EA4  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E248 00359EA8  7F E3 FB 78 */	mr r3, r31
/* 8035E24C 00359EAC  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E250 00359EB0  38 80 00 05 */	li r4, 5
/* 8035E254 00359EB4  38 A0 00 00 */	li r5, 0
/* 8035E258 00359EB8  7D 89 03 A6 */	mtctr r12
/* 8035E25C 00359EBC  4E 80 04 21 */	bctrl
/* 8035E260 00359EC0  48 00 00 10 */	b lbl_8035E270
/* 8035E264 00359EC4  80 86 06 F0 */	lwz r4, 0x6f0(r6)
/* 8035E268 00359EC8  7F E3 FB 78 */	mr r3, r31
/* 8035E26C 00359ECC  4B FF EA 51 */	bl SBQueryEngineSetPublicIP
lbl_8035E270:
/* 8035E270 00359ED0  2C 1E 00 00 */	cmpwi r30, 0
/* 8035E274 00359ED4  41 82 00 2C */	beq lbl_8035E2A0
/* 8035E278 00359ED8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8035E27C 00359EDC  80 1F 08 30 */	lwz r0, 0x830(r31)
/* 8035E280 00359EE0  7C 03 00 40 */	cmplw r3, r0
/* 8035E284 00359EE4  40 82 00 1C */	bne lbl_8035E2A0
/* 8035E288 00359EE8  A0 7E 00 04 */	lhz r3, 4(r30)
/* 8035E28C 00359EEC  A0 1F 08 34 */	lhz r0, 0x834(r31)
/* 8035E290 00359EF0  7C 03 00 40 */	cmplw r3, r0
/* 8035E294 00359EF4  40 82 00 0C */	bne lbl_8035E2A0
/* 8035E298 00359EF8  38 00 00 00 */	li r0, 0
/* 8035E29C 00359EFC  90 1F 08 30 */	stw r0, 0x830(r31)
lbl_8035E2A0:
/* 8035E2A0 00359F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E2A4 00359F04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035E2A8 00359F08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035E2AC 00359F0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035E2B0 00359F10  7C 08 03 A6 */	mtlr r0
/* 8035E2B4 00359F14  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E2B8 00359F18  4E 80 00 20 */	blr

.global EngineCallback
EngineCallback:
/* 8035E2BC 00359F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E2C0 00359F20  7C 08 02 A6 */	mflr r0
/* 8035E2C4 00359F24  2C 04 00 02 */	cmpwi r4, 2
/* 8035E2C8 00359F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E2CC 00359F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E2D0 00359F30  7C DF 33 78 */	mr r31, r6
/* 8035E2D4 00359F34  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E2D8 00359F38  7C BE 2B 78 */	mr r30, r5
/* 8035E2DC 00359F3C  41 82 00 5C */	beq lbl_8035E338
/* 8035E2E0 00359F40  40 80 00 14 */	bge lbl_8035E2F4
/* 8035E2E4 00359F44  2C 04 00 00 */	cmpwi r4, 0
/* 8035E2E8 00359F48  41 82 00 34 */	beq lbl_8035E31C
/* 8035E2EC 00359F4C  40 80 00 14 */	bge lbl_8035E300
/* 8035E2F0 00359F50  48 00 00 80 */	b lbl_8035E370
lbl_8035E2F4:
/* 8035E2F4 00359F54  2C 04 00 04 */	cmpwi r4, 4
/* 8035E2F8 00359F58  40 80 00 78 */	bge lbl_8035E370
/* 8035E2FC 00359F5C  48 00 00 58 */	b lbl_8035E354
lbl_8035E300:
/* 8035E300 00359F60  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E304 00359F64  7F E3 FB 78 */	mr r3, r31
/* 8035E308 00359F68  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E30C 00359F6C  38 80 00 02 */	li r4, 2
/* 8035E310 00359F70  7D 89 03 A6 */	mtctr r12
/* 8035E314 00359F74  4E 80 04 21 */	bctrl
/* 8035E318 00359F78  48 00 00 58 */	b lbl_8035E370
lbl_8035E31C:
/* 8035E31C 00359F7C  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E320 00359F80  7F E3 FB 78 */	mr r3, r31
/* 8035E324 00359F84  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E328 00359F88  38 80 00 01 */	li r4, 1
/* 8035E32C 00359F8C  7D 89 03 A6 */	mtctr r12
/* 8035E330 00359F90  4E 80 04 21 */	bctrl
/* 8035E334 00359F94  48 00 00 3C */	b lbl_8035E370
lbl_8035E338:
/* 8035E338 00359F98  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E33C 00359F9C  7F E3 FB 78 */	mr r3, r31
/* 8035E340 00359FA0  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E344 00359FA4  38 80 00 04 */	li r4, 4
/* 8035E348 00359FA8  7D 89 03 A6 */	mtctr r12
/* 8035E34C 00359FAC  4E 80 04 21 */	bctrl
/* 8035E350 00359FB0  48 00 00 20 */	b lbl_8035E370
lbl_8035E354:
/* 8035E354 00359FB4  81 9F 08 38 */	lwz r12, 0x838(r31)
/* 8035E358 00359FB8  7F E3 FB 78 */	mr r3, r31
/* 8035E35C 00359FBC  80 C6 08 3C */	lwz r6, 0x83c(r6)
/* 8035E360 00359FC0  38 80 00 06 */	li r4, 6
/* 8035E364 00359FC4  7D 89 03 A6 */	mtctr r12
/* 8035E368 00359FC8  4E 80 04 21 */	bctrl
/* 8035E36C 00359FCC  48 00 00 34 */	b lbl_8035E3A0
lbl_8035E370:
/* 8035E370 00359FD0  2C 1E 00 00 */	cmpwi r30, 0
/* 8035E374 00359FD4  41 82 00 2C */	beq lbl_8035E3A0
/* 8035E378 00359FD8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8035E37C 00359FDC  80 1F 08 30 */	lwz r0, 0x830(r31)
/* 8035E380 00359FE0  7C 03 00 40 */	cmplw r3, r0
/* 8035E384 00359FE4  40 82 00 1C */	bne lbl_8035E3A0
/* 8035E388 00359FE8  A0 7E 00 04 */	lhz r3, 4(r30)
/* 8035E38C 00359FEC  A0 1F 08 34 */	lhz r0, 0x834(r31)
/* 8035E390 00359FF0  7C 03 00 40 */	cmplw r3, r0
/* 8035E394 00359FF4  40 82 00 0C */	bne lbl_8035E3A0
/* 8035E398 00359FF8  38 00 00 00 */	li r0, 0
/* 8035E39C 00359FFC  90 1F 08 30 */	stw r0, 0x830(r31)
lbl_8035E3A0:
/* 8035E3A0 0035A000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E3A4 0035A004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E3A8 0035A008  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E3AC 0035A00C  7C 08 03 A6 */	mtlr r0
/* 8035E3B0 0035A010  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E3B4 0035A014  4E 80 00 20 */	blr

.global ServerBrowserNewA
ServerBrowserNewA:
/* 8035E3B8 0035A018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035E3BC 0035A01C  7C 08 02 A6 */	mflr r0
/* 8035E3C0 0035A020  90 01 00 34 */	stw r0, 0x34(r1)
/* 8035E3C4 0035A024  39 61 00 30 */	addi r11, r1, 0x30
/* 8035E3C8 0035A028  4B E6 8D 4D */	bl _savegpr_22
/* 8035E3CC 0035A02C  2C 09 00 00 */	cmpwi r9, 0
/* 8035E3D0 0035A030  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8035E3D4 0035A034  7C 76 1B 78 */	mr r22, r3
/* 8035E3D8 0035A038  7C 97 23 78 */	mr r23, r4
/* 8035E3DC 0035A03C  7C B8 2B 78 */	mr r24, r5
/* 8035E3E0 0035A040  7C D9 33 78 */	mr r25, r6
/* 8035E3E4 0035A044  7C FA 3B 78 */	mr r26, r7
/* 8035E3E8 0035A048  7D 1B 43 78 */	mr r27, r8
/* 8035E3EC 0035A04C  7D 3C 4B 78 */	mr r28, r9
/* 8035E3F0 0035A050  7D 5D 53 78 */	mr r29, r10
/* 8035E3F4 0035A054  40 82 00 18 */	bne lbl_8035E40C
/* 8035E3F8 0035A058  80 0D B0 A8 */	lwz r0, lbl_80640368-_SDA_BASE_(r13)
/* 8035E3FC 0035A05C  2C 00 00 01 */	cmpwi r0, 1
/* 8035E400 0035A060  41 82 00 0C */	beq lbl_8035E40C
/* 8035E404 0035A064  38 60 00 00 */	li r3, 0
/* 8035E408 0035A068  48 00 00 7C */	b lbl_8035E484
lbl_8035E40C:
/* 8035E40C 0035A06C  38 60 08 40 */	li r3, 0x840
/* 8035E410 0035A070  4B FD AF 05 */	bl gsimalloc
/* 8035E414 0035A074  2C 03 00 00 */	cmpwi r3, 0
/* 8035E418 0035A078  7C 7F 1B 78 */	mr r31, r3
/* 8035E41C 0035A07C  40 82 00 0C */	bne lbl_8035E428
/* 8035E420 0035A080  38 60 00 00 */	li r3, 0
/* 8035E424 0035A084  48 00 00 60 */	b lbl_8035E484
lbl_8035E428:
/* 8035E428 0035A088  93 A3 08 38 */	stw r29, 0x838(r3)
/* 8035E42C 0035A08C  3D 20 80 36 */	lis r9, ListCallback@ha
/* 8035E430 0035A090  38 00 00 00 */	li r0, 0
/* 8035E434 0035A094  7E C4 B3 78 */	mr r4, r22
/* 8035E438 0035A098  93 C3 08 3C */	stw r30, 0x83c(r3)
/* 8035E43C 0035A09C  7E E5 BB 78 */	mr r5, r23
/* 8035E440 0035A0A0  7F 06 C3 78 */	mr r6, r24
/* 8035E444 0035A0A4  7F 27 CB 78 */	mr r7, r25
/* 8035E448 0035A0A8  90 03 08 2C */	stw r0, 0x82c(r3)
/* 8035E44C 0035A0AC  7F 88 E3 78 */	mr r8, r28
/* 8035E450 0035A0B0  7F EA FB 78 */	mr r10, r31
/* 8035E454 0035A0B4  39 29 E0 84 */	addi r9, r9, ListCallback@l
/* 8035E458 0035A0B8  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E45C 0035A0BC  48 00 0D F1 */	bl SBServerListInit
/* 8035E460 0035A0C0  3C E0 80 36 */	lis r7, EngineCallback@ha
/* 8035E464 0035A0C4  7F E3 FB 78 */	mr r3, r31
/* 8035E468 0035A0C8  7F 44 D3 78 */	mr r4, r26
/* 8035E46C 0035A0CC  7F 65 DB 78 */	mr r5, r27
/* 8035E470 0035A0D0  7F 86 E3 78 */	mr r6, r28
/* 8035E474 0035A0D4  7F E8 FB 78 */	mr r8, r31
/* 8035E478 0035A0D8  38 E7 E2 BC */	addi r7, r7, EngineCallback@l
/* 8035E47C 0035A0DC  4B FF E7 A1 */	bl SBQueryEngineInit
/* 8035E480 0035A0E0  7F E3 FB 78 */	mr r3, r31
lbl_8035E484:
/* 8035E484 0035A0E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8035E488 0035A0E8  4B E6 8C D9 */	bl _restgpr_22
/* 8035E48C 0035A0EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035E490 0035A0F0  7C 08 03 A6 */	mtlr r0
/* 8035E494 0035A0F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8035E498 0035A0F8  4E 80 00 20 */	blr

.global ServerBrowserFree
ServerBrowserFree:
/* 8035E49C 0035A0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E4A0 0035A100  7C 08 02 A6 */	mflr r0
/* 8035E4A4 0035A104  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E4A8 0035A108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E4AC 0035A10C  7C 7F 1B 78 */	mr r31, r3
/* 8035E4B0 0035A110  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E4B4 0035A114  48 00 1C FD */	bl SBServerListCleanup
/* 8035E4B8 0035A118  7F E3 FB 78 */	mr r3, r31
/* 8035E4BC 0035A11C  4B FF E8 29 */	bl SBEngineCleanup
/* 8035E4C0 0035A120  7F E3 FB 78 */	mr r3, r31
/* 8035E4C4 0035A124  4B FD AE 75 */	bl gsifree
/* 8035E4C8 0035A128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E4CC 0035A12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E4D0 0035A130  7C 08 03 A6 */	mtlr r0
/* 8035E4D4 0035A134  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E4D8 0035A138  4E 80 00 20 */	blr

.global ServerBrowserBeginUpdate2
ServerBrowserBeginUpdate2:
/* 8035E4DC 0035A13C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8035E4E0 0035A140  7C 08 02 A6 */	mflr r0
/* 8035E4E4 0035A144  90 01 01 44 */	stw r0, 0x144(r1)
/* 8035E4E8 0035A148  39 61 01 40 */	addi r11, r1, 0x140
/* 8035E4EC 0035A14C  4B E6 8C 25 */	bl _savegpr_21
/* 8035E4F0 0035A150  38 00 00 20 */	li r0, 0x20
/* 8035E4F4 0035A154  7C 9B 23 78 */	mr r27, r4
/* 8035E4F8 0035A158  7C FC 3B 78 */	mr r28, r7
/* 8035E4FC 0035A15C  7C 7A 1B 78 */	mr r26, r3
/* 8035E500 0035A160  7D 1D 43 78 */	mr r29, r8
/* 8035E504 0035A164  7D 3E 4B 78 */	mr r30, r9
/* 8035E508 0035A168  7D 5F 53 78 */	mr r31, r10
/* 8035E50C 0035A16C  38 E1 00 04 */	addi r7, r1, 4
/* 8035E510 0035A170  38 80 00 00 */	li r4, 0
/* 8035E514 0035A174  7C 09 03 A6 */	mtctr r0
lbl_8035E518:
/* 8035E518 0035A178  90 87 00 04 */	stw r4, 4(r7)
/* 8035E51C 0035A17C  94 87 00 08 */	stwu r4, 8(r7)
/* 8035E520 0035A180  42 00 FF F8 */	bdnz lbl_8035E518
/* 8035E524 0035A184  3A C0 00 00 */	li r22, 0
/* 8035E528 0035A188  3F 00 80 45 */	lis r24, lbl_8044BB78@ha
/* 8035E52C 0035A18C  90 A3 08 28 */	stw r5, 0x828(r3)
/* 8035E530 0035A190  7C D9 33 78 */	mr r25, r6
/* 8035E534 0035A194  3B 18 BB 78 */	addi r24, r24, lbl_8044BB78@l
/* 8035E538 0035A198  3A A0 00 00 */	li r21, 0
/* 8035E53C 0035A19C  92 C3 00 40 */	stw r22, 0x40(r3)
/* 8035E540 0035A1A0  48 00 00 58 */	b lbl_8035E598
lbl_8035E544:
/* 8035E544 0035A1A4  88 19 00 00 */	lbz r0, 0(r25)
/* 8035E548 0035A1A8  54 00 10 3A */	slwi r0, r0, 2
/* 8035E54C 0035A1AC  7E F8 00 2E */	lwzx r23, r24, r0
/* 8035E550 0035A1B0  7E E3 BB 78 */	mr r3, r23
/* 8035E554 0035A1B4  4B E6 86 11 */	bl strlen
/* 8035E558 0035A1B8  7C 76 1A 14 */	add r3, r22, r3
/* 8035E55C 0035A1BC  38 03 00 01 */	addi r0, r3, 1
/* 8035E560 0035A1C0  2C 00 01 00 */	cmpwi r0, 0x100
/* 8035E564 0035A1C4  40 80 00 3C */	bge lbl_8035E5A0
/* 8035E568 0035A1C8  38 61 00 08 */	addi r3, r1, 8
/* 8035E56C 0035A1CC  7E E5 BB 78 */	mr r5, r23
/* 8035E570 0035A1D0  7C 63 B2 14 */	add r3, r3, r22
/* 8035E574 0035A1D4  38 8D 95 00 */	addi r4, r13, lbl_8063E7C0-_SDA_BASE_
/* 8035E578 0035A1D8  4C C6 31 82 */	crclr 6
/* 8035E57C 0035A1DC  4B E6 E5 81 */	bl func_801CCAFC
/* 8035E580 0035A1E0  88 99 00 00 */	lbz r4, 0(r25)
/* 8035E584 0035A1E4  7E D6 1A 14 */	add r22, r22, r3
/* 8035E588 0035A1E8  7F 43 D3 78 */	mr r3, r26
/* 8035E58C 0035A1EC  4B FF ED D9 */	bl SBQueryEngineAddQueryKey
/* 8035E590 0035A1F0  3A B5 00 01 */	addi r21, r21, 1
/* 8035E594 0035A1F4  3B 39 00 01 */	addi r25, r25, 1
lbl_8035E598:
/* 8035E598 0035A1F8  7C 15 E0 00 */	cmpw r21, r28
/* 8035E59C 0035A1FC  41 80 FF A8 */	blt lbl_8035E544
lbl_8035E5A0:
/* 8035E5A0 0035A200  7F A5 EB 78 */	mr r5, r29
/* 8035E5A4 0035A204  7F C6 F3 78 */	mr r6, r30
/* 8035E5A8 0035A208  7F E7 FB 78 */	mr r7, r31
/* 8035E5AC 0035A20C  38 7A 00 4C */	addi r3, r26, 0x4c
/* 8035E5B0 0035A210  38 81 00 08 */	addi r4, r1, 8
/* 8035E5B4 0035A214  48 00 12 CD */	bl SBServerListConnectAndQuery
/* 8035E5B8 0035A218  2C 03 00 00 */	cmpwi r3, 0
/* 8035E5BC 0035A21C  41 82 00 08 */	beq lbl_8035E5C4
/* 8035E5C0 0035A220  48 00 00 48 */	b lbl_8035E608
lbl_8035E5C4:
/* 8035E5C4 0035A224  2C 1B 00 00 */	cmpwi r27, 0
/* 8035E5C8 0035A228  40 82 00 40 */	bne lbl_8035E608
/* 8035E5CC 0035A22C  48 00 00 1C */	b lbl_8035E5E8
lbl_8035E5D0:
/* 8035E5D0 0035A230  38 60 00 0A */	li r3, 0xa
/* 8035E5D4 0035A234  4B FD AA 51 */	bl msleep
/* 8035E5D8 0035A238  7F 43 D3 78 */	mr r3, r26
/* 8035E5DC 0035A23C  4B FF EC 0D */	bl SBQueryEngineThink
/* 8035E5E0 0035A240  38 7A 00 4C */	addi r3, r26, 0x4c
/* 8035E5E4 0035A244  48 00 3F 35 */	bl SBListThink
lbl_8035E5E8:
/* 8035E5E8 0035A248  80 1A 00 4C */	lwz r0, 0x4c(r26)
/* 8035E5EC 0035A24C  2C 00 00 03 */	cmpwi r0, 3
/* 8035E5F0 0035A250  41 82 FF E0 */	beq lbl_8035E5D0
/* 8035E5F4 0035A254  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 8035E5F8 0035A258  2C 00 00 00 */	cmpwi r0, 0
/* 8035E5FC 0035A25C  40 81 00 0C */	ble lbl_8035E608
/* 8035E600 0035A260  2C 03 00 00 */	cmpwi r3, 0
/* 8035E604 0035A264  41 82 FF CC */	beq lbl_8035E5D0
lbl_8035E608:
/* 8035E608 0035A268  39 61 01 40 */	addi r11, r1, 0x140
/* 8035E60C 0035A26C  4B E6 8B 51 */	bl _restgpr_21
/* 8035E610 0035A270  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8035E614 0035A274  7C 08 03 A6 */	mtlr r0
/* 8035E618 0035A278  38 21 01 40 */	addi r1, r1, 0x140
/* 8035E61C 0035A27C  4E 80 00 20 */	blr

.global ServerBrowserLimitUpdateA
ServerBrowserLimitUpdateA:
/* 8035E620 0035A280  7D 2A 4B 78 */	mr r10, r9
/* 8035E624 0035A284  39 20 00 80 */	li r9, 0x80
/* 8035E628 0035A288  4B FF FE B4 */	b ServerBrowserBeginUpdate2

.global func_8035E62C
func_8035E62C:
/* 8035E62C 0035A28C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E630 0035A290  7C 08 02 A6 */	mflr r0
/* 8035E634 0035A294  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E638 0035A298  39 61 00 20 */	addi r11, r1, 0x20
/* 8035E63C 0035A29C  4B E6 8A ED */	bl _savegpr_27
/* 8035E640 0035A2A0  7C 7B 1B 78 */	mr r27, r3
/* 8035E644 0035A2A4  7C 9C 23 78 */	mr r28, r4
/* 8035E648 0035A2A8  7C BD 2B 78 */	mr r29, r5
/* 8035E64C 0035A2AC  7C DE 33 78 */	mr r30, r6
/* 8035E650 0035A2B0  3B E0 00 00 */	li r31, 0
/* 8035E654 0035A2B4  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E658 0035A2B8  48 00 19 ED */	bl SBServerListDisconnect
/* 8035E65C 0035A2BC  7F 63 DB 78 */	mr r3, r27
/* 8035E660 0035A2C0  4B FF E6 65 */	bl SBEngineHaltUpdates
/* 8035E664 0035A2C4  80 DB 00 00 */	lwz r6, 0(r27)
/* 8035E668 0035A2C8  7F A4 EB 78 */	mr r4, r29
/* 8035E66C 0035A2CC  7F C5 F3 78 */	mr r5, r30
/* 8035E670 0035A2D0  38 7B 00 4C */	addi r3, r27, 0x4c
/* 8035E674 0035A2D4  48 00 17 0D */	bl func_8035FD80
/* 8035E678 0035A2D8  2C 1C 00 00 */	cmpwi r28, 0
/* 8035E67C 0035A2DC  40 82 00 44 */	bne lbl_8035E6C0
/* 8035E680 0035A2E0  48 00 00 20 */	b lbl_8035E6A0
lbl_8035E684:
/* 8035E684 0035A2E4  38 60 00 0A */	li r3, 0xa
/* 8035E688 0035A2E8  4B FD A9 9D */	bl msleep
/* 8035E68C 0035A2EC  7F 63 DB 78 */	mr r3, r27
/* 8035E690 0035A2F0  4B FF EB 59 */	bl SBQueryEngineThink
/* 8035E694 0035A2F4  38 7B 00 4C */	addi r3, r27, 0x4c
/* 8035E698 0035A2F8  48 00 3E 81 */	bl SBListThink
/* 8035E69C 0035A2FC  7C 7F 1B 78 */	mr r31, r3
lbl_8035E6A0:
/* 8035E6A0 0035A300  80 1B 00 4C */	lwz r0, 0x4c(r27)
/* 8035E6A4 0035A304  2C 00 00 00 */	cmpwi r0, 0
/* 8035E6A8 0035A308  41 82 FF DC */	beq lbl_8035E684
/* 8035E6AC 0035A30C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8035E6B0 0035A310  2C 00 00 00 */	cmpwi r0, 0
/* 8035E6B4 0035A314  40 81 00 0C */	ble lbl_8035E6C0
/* 8035E6B8 0035A318  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E6BC 0035A31C  41 82 FF C8 */	beq lbl_8035E684
lbl_8035E6C0:
/* 8035E6C0 0035A320  39 61 00 20 */	addi r11, r1, 0x20
/* 8035E6C4 0035A324  7F E3 FB 78 */	mr r3, r31
/* 8035E6C8 0035A328  4B E6 8A AD */	bl _restgpr_27
/* 8035E6CC 0035A32C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E6D0 0035A330  7C 08 03 A6 */	mtlr r0
/* 8035E6D4 0035A334  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E6D8 0035A338  4E 80 00 20 */	blr

.global ServerBrowserSendMessageToServerA
ServerBrowserSendMessageToServerA:
/* 8035E6DC 0035A33C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E6E0 0035A340  7C 08 02 A6 */	mflr r0
/* 8035E6E4 0035A344  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E6E8 0035A348  39 61 00 20 */	addi r11, r1, 0x20
/* 8035E6EC 0035A34C  4B E6 8A 3D */	bl _savegpr_27
/* 8035E6F0 0035A350  7C 7B 1B 78 */	mr r27, r3
/* 8035E6F4 0035A354  7C 9C 23 78 */	mr r28, r4
/* 8035E6F8 0035A358  7C A3 2B 78 */	mr r3, r5
/* 8035E6FC 0035A35C  7C DD 33 78 */	mr r29, r6
/* 8035E700 0035A360  7C FE 3B 78 */	mr r30, r7
/* 8035E704 0035A364  4B F9 86 79 */	bl func_802F6D7C
/* 8035E708 0035A368  7C 7F 1B 78 */	mr r31, r3
/* 8035E70C 0035A36C  7F 83 E3 78 */	mr r3, r28
/* 8035E710 0035A370  4B FD 98 61 */	bl inet_addr
/* 8035E714 0035A374  7C 64 1B 78 */	mr r4, r3
/* 8035E718 0035A378  7F A6 EB 78 */	mr r6, r29
/* 8035E71C 0035A37C  7F C7 F3 78 */	mr r7, r30
/* 8035E720 0035A380  38 7B 00 4C */	addi r3, r27, 0x4c
/* 8035E724 0035A384  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 8035E728 0035A388  48 00 3A BD */	bl SBSendMessageToServer
/* 8035E72C 0035A38C  39 61 00 20 */	addi r11, r1, 0x20
/* 8035E730 0035A390  4B E6 8A 45 */	bl _restgpr_27
/* 8035E734 0035A394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E738 0035A398  7C 08 03 A6 */	mtlr r0
/* 8035E73C 0035A39C  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E740 0035A3A0  4E 80 00 20 */	blr

.global ServerBrowserSendNatNegotiateCookieToServerA
ServerBrowserSendNatNegotiateCookieToServerA:
/* 8035E744 0035A3A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E748 0035A3A8  7C 08 02 A6 */	mflr r0
/* 8035E74C 0035A3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E750 0035A3B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035E754 0035A3B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035E758 0035A3B8  7C DE 33 78 */	mr r30, r6
/* 8035E75C 0035A3BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035E760 0035A3C0  7C 9D 23 78 */	mr r29, r4
/* 8035E764 0035A3C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8035E768 0035A3C8  7C 7C 1B 78 */	mr r28, r3
/* 8035E76C 0035A3CC  7C A3 2B 78 */	mr r3, r5
/* 8035E770 0035A3D0  4B F9 86 0D */	bl func_802F6D7C
/* 8035E774 0035A3D4  7C 7F 1B 78 */	mr r31, r3
/* 8035E778 0035A3D8  7F A3 EB 78 */	mr r3, r29
/* 8035E77C 0035A3DC  4B FD 97 F5 */	bl inet_addr
/* 8035E780 0035A3E0  7C 64 1B 78 */	mr r4, r3
/* 8035E784 0035A3E4  7F C6 F3 78 */	mr r6, r30
/* 8035E788 0035A3E8  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8035E78C 0035A3EC  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 8035E790 0035A3F0  48 00 3B 59 */	bl SBSendNatNegotiateCookieToServer
/* 8035E794 0035A3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E798 0035A3F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035E79C 0035A3FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035E7A0 0035A400  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035E7A4 0035A404  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8035E7A8 0035A408  7C 08 03 A6 */	mtlr r0
/* 8035E7AC 0035A40C  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E7B0 0035A410  4E 80 00 20 */	blr

.global ServerBrowserRemoveServer
ServerBrowserRemoveServer:
/* 8035E7B4 0035A414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E7B8 0035A418  7C 08 02 A6 */	mflr r0
/* 8035E7BC 0035A41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E7C0 0035A420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E7C4 0035A424  7C 7F 1B 78 */	mr r31, r3
/* 8035E7C8 0035A428  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E7CC 0035A42C  48 00 07 35 */	bl SBServerListFindServer
/* 8035E7D0 0035A430  2C 03 FF FF */	cmpwi r3, -1
/* 8035E7D4 0035A434  41 82 00 10 */	beq lbl_8035E7E4
/* 8035E7D8 0035A438  7C 64 1B 78 */	mr r4, r3
/* 8035E7DC 0035A43C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8035E7E0 0035A440  48 00 07 A9 */	bl SBServerListRemoveAt
lbl_8035E7E4:
/* 8035E7E4 0035A444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E7E8 0035A448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E7EC 0035A44C  7C 08 03 A6 */	mtlr r0
/* 8035E7F0 0035A450  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E7F4 0035A454  4E 80 00 20 */	blr

.global ServerBrowserThink
ServerBrowserThink:
/* 8035E7F8 0035A458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E7FC 0035A45C  7C 08 02 A6 */	mflr r0
/* 8035E800 0035A460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E804 0035A464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E808 0035A468  7C 7F 1B 78 */	mr r31, r3
/* 8035E80C 0035A46C  4B FF E9 DD */	bl SBQueryEngineThink
/* 8035E810 0035A470  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8035E814 0035A474  48 00 3D 05 */	bl SBListThink
/* 8035E818 0035A478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E81C 0035A47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E820 0035A480  7C 08 03 A6 */	mtlr r0
/* 8035E824 0035A484  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E828 0035A488  4E 80 00 20 */	blr

.global ServerBrowserClear
ServerBrowserClear:
/* 8035E82C 0035A48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E830 0035A490  7C 08 02 A6 */	mflr r0
/* 8035E834 0035A494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E838 0035A498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E83C 0035A49C  7C 7F 1B 78 */	mr r31, r3
/* 8035E840 0035A4A0  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E844 0035A4A4  48 00 18 01 */	bl SBServerListDisconnect
/* 8035E848 0035A4A8  7F E3 FB 78 */	mr r3, r31
/* 8035E84C 0035A4AC  4B FF E4 79 */	bl SBEngineHaltUpdates
/* 8035E850 0035A4B0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8035E854 0035A4B4  48 00 07 FD */	bl SBServerListClear
/* 8035E858 0035A4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E85C 0035A4BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E860 0035A4C0  7C 08 03 A6 */	mtlr r0
/* 8035E864 0035A4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E868 0035A4C8  4E 80 00 20 */	blr

.global ServerBrowserState
ServerBrowserState:
/* 8035E86C 0035A4CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8035E870 0035A4D0  2C 00 00 00 */	cmpwi r0, 0
/* 8035E874 0035A4D4  40 81 00 0C */	ble lbl_8035E880
/* 8035E878 0035A4D8  38 60 00 02 */	li r3, 2
/* 8035E87C 0035A4DC  4E 80 00 20 */	blr
lbl_8035E880:
/* 8035E880 0035A4E0  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8035E884 0035A4E4  2C 00 00 03 */	cmpwi r0, 3
/* 8035E888 0035A4E8  41 82 00 0C */	beq lbl_8035E894
/* 8035E88C 0035A4EC  2C 00 00 00 */	cmpwi r0, 0
/* 8035E890 0035A4F0  40 82 00 0C */	bne lbl_8035E89C
lbl_8035E894:
/* 8035E894 0035A4F4  38 60 00 01 */	li r3, 1
/* 8035E898 0035A4F8  4E 80 00 20 */	blr
lbl_8035E89C:
/* 8035E89C 0035A4FC  2C 00 00 01 */	cmpwi r0, 1
/* 8035E8A0 0035A500  38 60 00 03 */	li r3, 3
/* 8035E8A4 0035A504  4C 82 00 20 */	bnelr
/* 8035E8A8 0035A508  38 60 00 00 */	li r3, 0
/* 8035E8AC 0035A50C  4E 80 00 20 */	blr

.global ServerBrowserGetServer
ServerBrowserGetServer:
/* 8035E8B0 0035A510  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E8B4 0035A514  48 00 07 74 */	b SBServerListNth

.global ServerBrowserCount
ServerBrowserCount:
/* 8035E8B8 0035A518  38 63 00 4C */	addi r3, r3, 0x4c
/* 8035E8BC 0035A51C  48 00 07 64 */	b SBServerListCount

.global ServerBrowserSortA
ServerBrowserSortA:
/* 8035E8C0 0035A520  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 8035E8C4 0035A524  7C 08 02 A6 */	mflr r0
/* 8035E8C8 0035A528  90 01 02 24 */	stw r0, 0x224(r1)
/* 8035E8CC 0035A52C  93 E1 02 1C */	stw r31, 0x21c(r1)
/* 8035E8D0 0035A530  7C 9F 23 78 */	mr r31, r4
/* 8035E8D4 0035A534  7C A4 2B 78 */	mr r4, r5
/* 8035E8D8 0035A538  93 C1 02 18 */	stw r30, 0x218(r1)
/* 8035E8DC 0035A53C  7C 7E 1B 78 */	mr r30, r3
/* 8035E8E0 0035A540  38 61 01 0C */	addi r3, r1, 0x10c
/* 8035E8E4 0035A544  90 C1 02 0C */	stw r6, 0x20c(r1)
/* 8035E8E8 0035A548  4B E6 F9 E9 */	bl func_801CE2D0
/* 8035E8EC 0035A54C  38 00 00 20 */	li r0, 0x20
/* 8035E8F0 0035A550  38 C1 00 04 */	addi r6, r1, 4
/* 8035E8F4 0035A554  38 81 01 08 */	addi r4, r1, 0x108
/* 8035E8F8 0035A558  7C 09 03 A6 */	mtctr r0
lbl_8035E8FC:
/* 8035E8FC 0035A55C  80 64 00 04 */	lwz r3, 4(r4)
/* 8035E900 0035A560  84 04 00 08 */	lwzu r0, 8(r4)
/* 8035E904 0035A564  90 66 00 04 */	stw r3, 4(r6)
/* 8035E908 0035A568  94 06 00 08 */	stwu r0, 8(r6)
/* 8035E90C 0035A56C  42 00 FF F0 */	bdnz lbl_8035E8FC
/* 8035E910 0035A570  80 04 00 04 */	lwz r0, 4(r4)
/* 8035E914 0035A574  7F E4 FB 78 */	mr r4, r31
/* 8035E918 0035A578  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8035E91C 0035A57C  38 A1 00 08 */	addi r5, r1, 8
/* 8035E920 0035A580  90 06 00 04 */	stw r0, 4(r6)
/* 8035E924 0035A584  48 00 04 71 */	bl SBServerListSort
/* 8035E928 0035A588  80 01 02 24 */	lwz r0, 0x224(r1)
/* 8035E92C 0035A58C  83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 8035E930 0035A590  83 C1 02 18 */	lwz r30, 0x218(r1)
/* 8035E934 0035A594  7C 08 03 A6 */	mtlr r0
/* 8035E938 0035A598  38 21 02 20 */	addi r1, r1, 0x220
/* 8035E93C 0035A59C  4E 80 00 20 */	blr

.global ServerBrowserGetMyPublicIPAddr
ServerBrowserGetMyPublicIPAddr:
/* 8035E940 0035A5A0  80 63 06 F0 */	lwz r3, 0x6f0(r3)
/* 8035E944 0035A5A4  4E 80 00 20 */	blr
