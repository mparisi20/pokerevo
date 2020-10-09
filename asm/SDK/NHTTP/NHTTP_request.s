.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global NHTTPi_InitRequestInfo
NHTTPi_InitRequestInfo:
/* 802F8CB4 002F4914  38 00 00 00 */	li r0, 0
/* 802F8CB8 002F4918  90 03 00 00 */	stw r0, 0(r3)
/* 802F8CBC 002F491C  4E 80 00 20 */	blr

.global NHTTP_CreateRequest
NHTTP_CreateRequest:
/* 802F8CC0 002F4920  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 802F8CC4 002F4924  7C 08 02 A6 */	mflr r0
/* 802F8CC8 002F4928  90 01 01 44 */	stw r0, 0x144(r1)
/* 802F8CCC 002F492C  39 61 01 40 */	addi r11, r1, 0x140
/* 802F8CD0 002F4930  4B EC E4 3D */	bl _savegpr_20
/* 802F8CD4 002F4934  2C 05 00 03 */	cmpwi r5, 3
/* 802F8CD8 002F4938  7C 75 1B 78 */	mr r21, r3
/* 802F8CDC 002F493C  7C 9C 23 78 */	mr r28, r4
/* 802F8CE0 002F4940  7C B6 2B 78 */	mr r22, r5
/* 802F8CE4 002F4944  7C DB 33 78 */	mr r27, r6
/* 802F8CE8 002F4948  7C FA 3B 78 */	mr r26, r7
/* 802F8CEC 002F494C  7D 17 43 78 */	mr r23, r8
/* 802F8CF0 002F4950  7D 39 4B 78 */	mr r25, r9
/* 802F8CF4 002F4954  7D 54 53 78 */	mr r20, r10
/* 802F8CF8 002F4958  3B 00 00 00 */	li r24, 0
/* 802F8CFC 002F495C  40 80 00 0C */	bge lbl_802F8D08
/* 802F8D00 002F4960  2C 05 00 00 */	cmpwi r5, 0
/* 802F8D04 002F4964  40 80 00 14 */	bge lbl_802F8D18
lbl_802F8D08:
/* 802F8D08 002F4968  7E A3 AB 78 */	mr r3, r21
/* 802F8D0C 002F496C  38 80 00 0B */	li r4, 0xb
/* 802F8D10 002F4970  4B FF EE F1 */	bl NHTTPi_SetError
/* 802F8D14 002F4974  48 00 05 08 */	b lbl_802F921C
lbl_802F8D18:
/* 802F8D18 002F4978  38 60 02 48 */	li r3, 0x248
/* 802F8D1C 002F497C  38 80 00 04 */	li r4, 4
/* 802F8D20 002F4980  4B FF EE 41 */	bl NHTTPi_alloc
/* 802F8D24 002F4984  2C 03 00 00 */	cmpwi r3, 0
/* 802F8D28 002F4988  7C 78 1B 78 */	mr r24, r3
/* 802F8D2C 002F498C  40 82 00 14 */	bne lbl_802F8D40
/* 802F8D30 002F4990  7E A3 AB 78 */	mr r3, r21
/* 802F8D34 002F4994  38 80 00 01 */	li r4, 1
/* 802F8D38 002F4998  4B FF EE C9 */	bl NHTTPi_SetError
/* 802F8D3C 002F499C  48 00 04 E0 */	b lbl_802F921C
lbl_802F8D40:
/* 802F8D40 002F49A0  38 80 02 48 */	li r4, 0x248
/* 802F8D44 002F49A4  48 00 13 A5 */	bl func_802FA0E8
/* 802F8D48 002F49A8  38 60 04 3C */	li r3, 0x43c
/* 802F8D4C 002F49AC  38 80 00 04 */	li r4, 4
/* 802F8D50 002F49B0  4B FF EE 11 */	bl NHTTPi_alloc
/* 802F8D54 002F49B4  2C 03 00 00 */	cmpwi r3, 0
/* 802F8D58 002F49B8  90 78 00 2C */	stw r3, 0x2c(r24)
/* 802F8D5C 002F49BC  40 82 00 14 */	bne lbl_802F8D70
/* 802F8D60 002F49C0  7E A3 AB 78 */	mr r3, r21
/* 802F8D64 002F49C4  38 80 00 01 */	li r4, 1
/* 802F8D68 002F49C8  4B FF EE 99 */	bl NHTTPi_SetError
/* 802F8D6C 002F49CC  48 00 04 B0 */	b lbl_802F921C
lbl_802F8D70:
/* 802F8D70 002F49D0  38 80 04 3C */	li r4, 0x43c
/* 802F8D74 002F49D4  48 00 13 75 */	bl func_802FA0E8
/* 802F8D78 002F49D8  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 802F8D7C 002F49DC  7F 83 E3 78 */	mr r3, r28
/* 802F8D80 002F49E0  93 64 00 28 */	stw r27, 0x28(r4)
/* 802F8D84 002F49E4  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 802F8D88 002F49E8  93 44 00 1C */	stw r26, 0x1c(r4)
/* 802F8D8C 002F49EC  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 802F8D90 002F49F0  93 24 00 2C */	stw r25, 0x2c(r4)
/* 802F8D94 002F49F4  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 802F8D98 002F49F8  92 84 00 30 */	stw r20, 0x30(r4)
/* 802F8D9C 002F49FC  48 00 13 45 */	bl func_802FA0E0
/* 802F8DA0 002F4A00  2C 03 00 07 */	cmpwi r3, 7
/* 802F8DA4 002F4A04  7C 74 1B 78 */	mr r20, r3
/* 802F8DA8 002F4A08  41 81 00 14 */	bgt lbl_802F8DBC
/* 802F8DAC 002F4A0C  7E A3 AB 78 */	mr r3, r21
/* 802F8DB0 002F4A10  38 80 00 04 */	li r4, 4
/* 802F8DB4 002F4A14  4B FF EE 4D */	bl NHTTPi_SetError
/* 802F8DB8 002F4A18  48 00 04 64 */	b lbl_802F921C
lbl_802F8DBC:
/* 802F8DBC 002F4A1C  7E 84 A3 78 */	mr r4, r20
/* 802F8DC0 002F4A20  38 61 00 08 */	addi r3, r1, 8
/* 802F8DC4 002F4A24  48 00 13 25 */	bl func_802FA0E8
/* 802F8DC8 002F4A28  7F 84 E3 78 */	mr r4, r28
/* 802F8DCC 002F4A2C  7E 85 A3 78 */	mr r5, r20
/* 802F8DD0 002F4A30  38 61 00 08 */	addi r3, r1, 8
/* 802F8DD4 002F4A34  48 00 13 09 */	bl func_802FA0DC
/* 802F8DD8 002F4A38  38 00 00 50 */	li r0, 0x50
/* 802F8DDC 002F4A3C  38 61 00 08 */	addi r3, r1, 8
/* 802F8DE0 002F4A40  90 18 00 20 */	stw r0, 0x20(r24)
/* 802F8DE4 002F4A44  3B A0 00 07 */	li r29, 7
/* 802F8DE8 002F4A48  38 8D 8C 18 */	addi r4, r13, lbl_8063DED8-_SDA_BASE_
/* 802F8DEC 002F4A4C  38 A0 00 07 */	li r5, 7
/* 802F8DF0 002F4A50  48 00 13 05 */	bl func_802FA0F4
/* 802F8DF4 002F4A54  2C 03 00 00 */	cmpwi r3, 0
/* 802F8DF8 002F4A58  41 82 00 44 */	beq lbl_802F8E3C
/* 802F8DFC 002F4A5C  3C 80 80 44 */	lis r4, lbl_804460B8@ha
/* 802F8E00 002F4A60  38 61 00 08 */	addi r3, r1, 8
/* 802F8E04 002F4A64  38 84 60 B8 */	addi r4, r4, lbl_804460B8@l
/* 802F8E08 002F4A68  38 A0 00 08 */	li r5, 8
/* 802F8E0C 002F4A6C  48 00 12 E9 */	bl func_802FA0F4
/* 802F8E10 002F4A70  2C 03 00 00 */	cmpwi r3, 0
/* 802F8E14 002F4A74  41 82 00 14 */	beq lbl_802F8E28
/* 802F8E18 002F4A78  7E A3 AB 78 */	mr r3, r21
/* 802F8E1C 002F4A7C  38 80 00 04 */	li r4, 4
/* 802F8E20 002F4A80  4B FF ED E1 */	bl NHTTPi_SetError
/* 802F8E24 002F4A84  48 00 03 F8 */	b lbl_802F921C
lbl_802F8E28:
/* 802F8E28 002F4A88  38 60 00 01 */	li r3, 1
/* 802F8E2C 002F4A8C  38 00 01 BB */	li r0, 0x1bb
/* 802F8E30 002F4A90  90 78 00 08 */	stw r3, 8(r24)
/* 802F8E34 002F4A94  3B A0 00 08 */	li r29, 8
/* 802F8E38 002F4A98  90 18 00 20 */	stw r0, 0x20(r24)
lbl_802F8E3C:
/* 802F8E3C 002F4A9C  7F 9D A0 51 */	subf. r28, r29, r20
/* 802F8E40 002F4AA0  3B 21 00 08 */	addi r25, r1, 8
/* 802F8E44 002F4AA4  7F 39 EA 14 */	add r25, r25, r29
/* 802F8E48 002F4AA8  41 81 00 14 */	bgt lbl_802F8E5C
/* 802F8E4C 002F4AAC  7E A3 AB 78 */	mr r3, r21
/* 802F8E50 002F4AB0  38 80 00 04 */	li r4, 4
/* 802F8E54 002F4AB4  4B FF ED AD */	bl NHTTPi_SetError
/* 802F8E58 002F4AB8  48 00 03 C4 */	b lbl_802F921C
lbl_802F8E5C:
/* 802F8E5C 002F4ABC  7F 34 CB 78 */	mr r20, r25
/* 802F8E60 002F4AC0  3B 40 00 00 */	li r26, 0
/* 802F8E64 002F4AC4  3B 60 00 00 */	li r27, 0
/* 802F8E68 002F4AC8  3B C0 00 00 */	li r30, 0
/* 802F8E6C 002F4ACC  48 00 00 74 */	b lbl_802F8EE0
lbl_802F8E70:
/* 802F8E70 002F4AD0  2C 1E 00 02 */	cmpwi r30, 2
/* 802F8E74 002F4AD4  40 82 00 0C */	bne lbl_802F8E80
/* 802F8E78 002F4AD8  3B DE FF FF */	addi r30, r30, -1
/* 802F8E7C 002F4ADC  48 00 00 5C */	b lbl_802F8ED8
lbl_802F8E80:
/* 802F8E80 002F4AE0  2C 1E 00 01 */	cmpwi r30, 1
/* 802F8E84 002F4AE4  40 82 00 40 */	bne lbl_802F8EC4
/* 802F8E88 002F4AE8  7C 7A CA 14 */	add r3, r26, r25
/* 802F8E8C 002F4AEC  38 80 00 02 */	li r4, 2
/* 802F8E90 002F4AF0  38 63 FF FF */	addi r3, r3, -1
/* 802F8E94 002F4AF4  48 00 14 B1 */	bl func_802FA344
/* 802F8E98 002F4AF8  7C 60 07 75 */	extsb. r0, r3
/* 802F8E9C 002F4AFC  3B DE FF FF */	addi r30, r30, -1
/* 802F8EA0 002F4B00  40 80 00 14 */	bge lbl_802F8EB4
/* 802F8EA4 002F4B04  7E A3 AB 78 */	mr r3, r21
/* 802F8EA8 002F4B08  38 80 00 04 */	li r4, 4
/* 802F8EAC 002F4B0C  4B FF ED 55 */	bl NHTTPi_SetError
/* 802F8EB0 002F4B10  48 00 03 6C */	b lbl_802F921C
lbl_802F8EB4:
/* 802F8EB4 002F4B14  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802F8EB8 002F4B18  40 82 00 20 */	bne lbl_802F8ED8
/* 802F8EBC 002F4B1C  3B 7B FF FF */	addi r27, r27, -1
/* 802F8EC0 002F4B20  48 00 00 34 */	b lbl_802F8EF4
lbl_802F8EC4:
/* 802F8EC4 002F4B24  7C 60 07 74 */	extsb r0, r3
/* 802F8EC8 002F4B28  2C 00 00 25 */	cmpwi r0, 0x25
/* 802F8ECC 002F4B2C  40 82 00 0C */	bne lbl_802F8ED8
/* 802F8ED0 002F4B30  3B C0 00 02 */	li r30, 2
/* 802F8ED4 002F4B34  3B 7B 00 01 */	addi r27, r27, 1
lbl_802F8ED8:
/* 802F8ED8 002F4B38  3B 5A 00 01 */	addi r26, r26, 1
/* 802F8EDC 002F4B3C  3A 94 00 01 */	addi r20, r20, 1
lbl_802F8EE0:
/* 802F8EE0 002F4B40  7C 1A E0 00 */	cmpw r26, r28
/* 802F8EE4 002F4B44  40 80 00 10 */	bge lbl_802F8EF4
/* 802F8EE8 002F4B48  88 74 00 00 */	lbz r3, 0(r20)
/* 802F8EEC 002F4B4C  2C 03 00 2F */	cmpwi r3, 0x2f
/* 802F8EF0 002F4B50  40 82 FF 80 */	bne lbl_802F8E70
lbl_802F8EF4:
/* 802F8EF4 002F4B54  2C 1E 00 00 */	cmpwi r30, 0
/* 802F8EF8 002F4B58  41 82 00 14 */	beq lbl_802F8F0C
/* 802F8EFC 002F4B5C  7E A3 AB 78 */	mr r3, r21
/* 802F8F00 002F4B60  38 80 00 04 */	li r4, 4
/* 802F8F04 002F4B64  4B FF EC FD */	bl NHTTPi_SetError
/* 802F8F08 002F4B68  48 00 03 14 */	b lbl_802F921C
lbl_802F8F0C:
/* 802F8F0C 002F4B6C  57 63 08 3C */	slwi r3, r27, 1
/* 802F8F10 002F4B70  7C 1D E2 14 */	add r0, r29, r28
/* 802F8F14 002F4B74  7C 63 00 50 */	subf r3, r3, r0
/* 802F8F18 002F4B78  38 80 00 04 */	li r4, 4
/* 802F8F1C 002F4B7C  3A 83 00 01 */	addi r20, r3, 1
/* 802F8F20 002F4B80  7E 83 A3 78 */	mr r3, r20
/* 802F8F24 002F4B84  4B FF EC 3D */	bl NHTTPi_alloc
/* 802F8F28 002F4B88  2C 03 00 00 */	cmpwi r3, 0
/* 802F8F2C 002F4B8C  90 78 00 24 */	stw r3, 0x24(r24)
/* 802F8F30 002F4B90  40 82 00 14 */	bne lbl_802F8F44
/* 802F8F34 002F4B94  7E A3 AB 78 */	mr r3, r21
/* 802F8F38 002F4B98  38 80 00 01 */	li r4, 1
/* 802F8F3C 002F4B9C  4B FF EC C5 */	bl NHTTPi_SetError
/* 802F8F40 002F4BA0  48 00 02 DC */	b lbl_802F921C
lbl_802F8F44:
/* 802F8F44 002F4BA4  7E 84 A3 78 */	mr r4, r20
/* 802F8F48 002F4BA8  48 00 11 A1 */	bl func_802FA0E8
/* 802F8F4C 002F4BAC  80 78 00 24 */	lwz r3, 0x24(r24)
/* 802F8F50 002F4BB0  7F A5 EB 78 */	mr r5, r29
/* 802F8F54 002F4BB4  38 81 00 08 */	addi r4, r1, 8
/* 802F8F58 002F4BB8  48 00 11 85 */	bl func_802FA0DC
/* 802F8F5C 002F4BBC  7F 34 CB 78 */	mr r20, r25
/* 802F8F60 002F4BC0  3B E0 00 00 */	li r31, 0
/* 802F8F64 002F4BC4  3B 60 00 00 */	li r27, 0
/* 802F8F68 002F4BC8  3B C0 00 00 */	li r30, 0
/* 802F8F6C 002F4BCC  3B 40 00 00 */	li r26, 0
/* 802F8F70 002F4BD0  48 00 00 A4 */	b lbl_802F9014
lbl_802F8F74:
/* 802F8F74 002F4BD4  2C 1E 00 02 */	cmpwi r30, 2
/* 802F8F78 002F4BD8  40 82 00 0C */	bne lbl_802F8F84
/* 802F8F7C 002F4BDC  3B DE FF FF */	addi r30, r30, -1
/* 802F8F80 002F4BE0  48 00 00 8C */	b lbl_802F900C
lbl_802F8F84:
/* 802F8F84 002F4BE4  2C 1E 00 01 */	cmpwi r30, 1
/* 802F8F88 002F4BE8  40 82 00 3C */	bne lbl_802F8FC4
/* 802F8F8C 002F4BEC  7C 7F CA 14 */	add r3, r31, r25
/* 802F8F90 002F4BF0  38 80 00 02 */	li r4, 2
/* 802F8F94 002F4BF4  38 63 FF FF */	addi r3, r3, -1
/* 802F8F98 002F4BF8  48 00 13 AD */	bl func_802FA344
/* 802F8F9C 002F4BFC  80 98 00 24 */	lwz r4, 0x24(r24)
/* 802F8FA0 002F4C00  7C 65 07 74 */	extsb r5, r3
/* 802F8FA4 002F4C04  7C 1B EA 14 */	add r0, r27, r29
/* 802F8FA8 002F4C08  3B DE FF FF */	addi r30, r30, -1
/* 802F8FAC 002F4C0C  7C 84 02 14 */	add r4, r4, r0
/* 802F8FB0 002F4C10  2C 05 00 2F */	cmpwi r5, 0x2f
/* 802F8FB4 002F4C14  98 64 FF FF */	stb r3, -1(r4)
/* 802F8FB8 002F4C18  40 82 00 54 */	bne lbl_802F900C
/* 802F8FBC 002F4C1C  3B 40 00 01 */	li r26, 1
/* 802F8FC0 002F4C20  48 00 00 4C */	b lbl_802F900C
lbl_802F8FC4:
/* 802F8FC4 002F4C24  88 B4 00 00 */	lbz r5, 0(r20)
/* 802F8FC8 002F4C28  2C 05 00 2F */	cmpwi r5, 0x2f
/* 802F8FCC 002F4C2C  40 82 00 08 */	bne lbl_802F8FD4
/* 802F8FD0 002F4C30  3B 40 00 01 */	li r26, 1
lbl_802F8FD4:
/* 802F8FD4 002F4C34  7C A3 07 74 */	extsb r3, r5
/* 802F8FD8 002F4C38  7F 44 00 34 */	cntlzw r4, r26
/* 802F8FDC 002F4C3C  38 03 FF DB */	addi r0, r3, -37
/* 802F8FE0 002F4C40  7C 00 00 34 */	cntlzw r0, r0
/* 802F8FE4 002F4C44  54 83 D9 7E */	srwi r3, r4, 5
/* 802F8FE8 002F4C48  54 00 D9 7E */	srwi r0, r0, 5
/* 802F8FEC 002F4C4C  7C 60 00 39 */	and. r0, r3, r0
/* 802F8FF0 002F4C50  41 82 00 0C */	beq lbl_802F8FFC
/* 802F8FF4 002F4C54  3B C0 00 02 */	li r30, 2
/* 802F8FF8 002F4C58  48 00 00 10 */	b lbl_802F9008
lbl_802F8FFC:
/* 802F8FFC 002F4C5C  80 78 00 24 */	lwz r3, 0x24(r24)
/* 802F9000 002F4C60  7C 1B EA 14 */	add r0, r27, r29
/* 802F9004 002F4C64  7C A3 01 AE */	stbx r5, r3, r0
lbl_802F9008:
/* 802F9008 002F4C68  3B 7B 00 01 */	addi r27, r27, 1
lbl_802F900C:
/* 802F900C 002F4C6C  3B FF 00 01 */	addi r31, r31, 1
/* 802F9010 002F4C70  3A 94 00 01 */	addi r20, r20, 1
lbl_802F9014:
/* 802F9014 002F4C74  7C 1F E0 00 */	cmpw r31, r28
/* 802F9018 002F4C78  41 80 FF 5C */	blt lbl_802F8F74
/* 802F901C 002F4C7C  80 78 00 24 */	lwz r3, 0x24(r24)
/* 802F9020 002F4C80  7C 1D DA 14 */	add r0, r29, r27
/* 802F9024 002F4C84  38 80 00 00 */	li r4, 0
/* 802F9028 002F4C88  38 A0 00 00 */	li r5, 0
/* 802F902C 002F4C8C  7C 83 01 AE */	stbx r4, r3, r0
/* 802F9030 002F4C90  80 18 00 24 */	lwz r0, 0x24(r24)
/* 802F9034 002F4C94  7C 80 EA 14 */	add r4, r0, r29
/* 802F9038 002F4C98  7C 83 23 78 */	mr r3, r4
/* 802F903C 002F4C9C  7F 69 03 A6 */	mtctr r27
/* 802F9040 002F4CA0  2C 1B 00 00 */	cmpwi r27, 0
/* 802F9044 002F4CA4  40 81 00 34 */	ble lbl_802F9078
lbl_802F9048:
/* 802F9048 002F4CA8  88 03 00 00 */	lbz r0, 0(r3)
/* 802F904C 002F4CAC  7C 00 07 74 */	extsb r0, r0
/* 802F9050 002F4CB0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802F9054 002F4CB4  41 82 00 0C */	beq lbl_802F9060
/* 802F9058 002F4CB8  2C 00 00 3A */	cmpwi r0, 0x3a
/* 802F905C 002F4CBC  40 82 00 10 */	bne lbl_802F906C
lbl_802F9060:
/* 802F9060 002F4CC0  7C 05 EA 14 */	add r0, r5, r29
/* 802F9064 002F4CC4  90 18 00 14 */	stw r0, 0x14(r24)
/* 802F9068 002F4CC8  48 00 00 10 */	b lbl_802F9078
lbl_802F906C:
/* 802F906C 002F4CCC  38 A5 00 01 */	addi r5, r5, 1
/* 802F9070 002F4CD0  38 63 00 01 */	addi r3, r3, 1
/* 802F9074 002F4CD4  42 00 FF D4 */	bdnz lbl_802F9048
lbl_802F9078:
/* 802F9078 002F4CD8  7C 85 D8 00 */	cmpw cr1, r5, r27
/* 802F907C 002F4CDC  40 86 00 14 */	bne cr1, lbl_802F9090
/* 802F9080 002F4CE0  7C 05 EA 14 */	add r0, r5, r29
/* 802F9084 002F4CE4  90 18 00 14 */	stw r0, 0x14(r24)
/* 802F9088 002F4CE8  90 18 00 18 */	stw r0, 0x18(r24)
/* 802F908C 002F4CEC  48 00 00 C4 */	b lbl_802F9150
lbl_802F9090:
/* 802F9090 002F4CF0  7C 04 28 AE */	lbzx r0, r4, r5
/* 802F9094 002F4CF4  7C 00 07 74 */	extsb r0, r0
/* 802F9098 002F4CF8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802F909C 002F4CFC  40 82 00 10 */	bne lbl_802F90AC
/* 802F90A0 002F4D00  80 18 00 14 */	lwz r0, 0x14(r24)
/* 802F90A4 002F4D04  90 18 00 18 */	stw r0, 0x18(r24)
/* 802F90A8 002F4D08  48 00 00 A8 */	b lbl_802F9150
lbl_802F90AC:
/* 802F90AC 002F4D0C  2C 00 00 3A */	cmpwi r0, 0x3a
/* 802F90B0 002F4D10  40 82 00 A0 */	bne lbl_802F9150
/* 802F90B4 002F4D14  7C 05 D8 50 */	subf r0, r5, r27
/* 802F90B8 002F4D18  7C 64 2A 14 */	add r3, r4, r5
/* 802F90BC 002F4D1C  7C 09 03 A6 */	mtctr r0
/* 802F90C0 002F4D20  40 84 00 28 */	bge cr1, lbl_802F90E8
lbl_802F90C4:
/* 802F90C4 002F4D24  88 03 00 00 */	lbz r0, 0(r3)
/* 802F90C8 002F4D28  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802F90CC 002F4D2C  40 82 00 10 */	bne lbl_802F90DC
/* 802F90D0 002F4D30  7C 05 EA 14 */	add r0, r5, r29
/* 802F90D4 002F4D34  90 18 00 18 */	stw r0, 0x18(r24)
/* 802F90D8 002F4D38  48 00 00 10 */	b lbl_802F90E8
lbl_802F90DC:
/* 802F90DC 002F4D3C  38 A5 00 01 */	addi r5, r5, 1
/* 802F90E0 002F4D40  38 63 00 01 */	addi r3, r3, 1
/* 802F90E4 002F4D44  42 00 FF E0 */	bdnz lbl_802F90C4
lbl_802F90E8:
/* 802F90E8 002F4D48  7C 05 D8 00 */	cmpw r5, r27
/* 802F90EC 002F4D4C  40 82 00 10 */	bne lbl_802F90FC
/* 802F90F0 002F4D50  7C 05 EA 14 */	add r0, r5, r29
/* 802F90F4 002F4D54  90 18 00 18 */	stw r0, 0x18(r24)
/* 802F90F8 002F4D58  48 00 00 58 */	b lbl_802F9150
lbl_802F90FC:
/* 802F90FC 002F4D5C  80 98 00 14 */	lwz r4, 0x14(r24)
/* 802F9100 002F4D60  80 78 00 24 */	lwz r3, 0x24(r24)
/* 802F9104 002F4D64  38 84 00 01 */	addi r4, r4, 1
/* 802F9108 002F4D68  80 18 00 18 */	lwz r0, 0x18(r24)
/* 802F910C 002F4D6C  7C 63 22 14 */	add r3, r3, r4
/* 802F9110 002F4D70  7C 84 00 50 */	subf r4, r4, r0
/* 802F9114 002F4D74  48 00 16 25 */	bl func_802FA738
/* 802F9118 002F4D78  2C 03 00 00 */	cmpwi r3, 0
/* 802F911C 002F4D7C  40 80 00 0C */	bge lbl_802F9128
/* 802F9120 002F4D80  80 78 00 20 */	lwz r3, 0x20(r24)
/* 802F9124 002F4D84  48 00 00 24 */	b lbl_802F9148
lbl_802F9128:
/* 802F9128 002F4D88  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 802F912C 002F4D8C  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 802F9130 002F4D90  7C 03 00 00 */	cmpw r3, r0
/* 802F9134 002F4D94  40 81 00 14 */	ble lbl_802F9148
/* 802F9138 002F4D98  7E A3 AB 78 */	mr r3, r21
/* 802F913C 002F4D9C  38 80 00 04 */	li r4, 4
/* 802F9140 002F4DA0  4B FF EA C1 */	bl NHTTPi_SetError
/* 802F9144 002F4DA4  48 00 00 D8 */	b lbl_802F921C
lbl_802F9148:
/* 802F9148 002F4DA8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802F914C 002F4DAC  90 18 00 20 */	stw r0, 0x20(r24)
lbl_802F9150:
/* 802F9150 002F4DB0  80 B8 00 08 */	lwz r5, 8(r24)
/* 802F9154 002F4DB4  38 80 00 04 */	li r4, 4
/* 802F9158 002F4DB8  80 18 00 14 */	lwz r0, 0x14(r24)
/* 802F915C 002F4DBC  7C 65 00 D0 */	neg r3, r5
/* 802F9160 002F4DC0  7C 63 2B 78 */	or r3, r3, r5
/* 802F9164 002F4DC4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802F9168 002F4DC8  38 63 00 07 */	addi r3, r3, 7
/* 802F916C 002F4DCC  7E 83 00 50 */	subf r20, r3, r0
/* 802F9170 002F4DD0  38 74 00 01 */	addi r3, r20, 1
/* 802F9174 002F4DD4  4B FF E9 ED */	bl NHTTPi_alloc
/* 802F9178 002F4DD8  2C 03 00 00 */	cmpwi r3, 0
/* 802F917C 002F4DDC  90 78 00 28 */	stw r3, 0x28(r24)
/* 802F9180 002F4DE0  40 82 00 14 */	bne lbl_802F9194
/* 802F9184 002F4DE4  7E A3 AB 78 */	mr r3, r21
/* 802F9188 002F4DE8  38 80 00 01 */	li r4, 1
/* 802F918C 002F4DEC  4B FF EA 75 */	bl NHTTPi_SetError
/* 802F9190 002F4DF0  48 00 00 8C */	b lbl_802F921C
lbl_802F9194:
/* 802F9194 002F4DF4  38 94 00 01 */	addi r4, r20, 1
/* 802F9198 002F4DF8  48 00 0F 51 */	bl func_802FA0E8
/* 802F919C 002F4DFC  80 98 00 08 */	lwz r4, 8(r24)
/* 802F91A0 002F4E00  7E 85 A3 78 */	mr r5, r20
/* 802F91A4 002F4E04  80 D8 00 24 */	lwz r6, 0x24(r24)
/* 802F91A8 002F4E08  7C 04 00 D0 */	neg r0, r4
/* 802F91AC 002F4E0C  80 78 00 28 */	lwz r3, 0x28(r24)
/* 802F91B0 002F4E10  7C 00 23 78 */	or r0, r0, r4
/* 802F91B4 002F4E14  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802F91B8 002F4E18  38 04 00 07 */	addi r0, r4, 7
/* 802F91BC 002F4E1C  7C 86 02 14 */	add r4, r6, r0
/* 802F91C0 002F4E20  48 00 0F 1D */	bl func_802FA0DC
/* 802F91C4 002F4E24  3C 80 80 40 */	lis r4, lbl_803FE108@ha
/* 802F91C8 002F4E28  38 78 00 38 */	addi r3, r24, 0x38
/* 802F91CC 002F4E2C  38 84 E1 08 */	addi r4, r4, lbl_803FE108@l
/* 802F91D0 002F4E30  38 A0 00 14 */	li r5, 0x14
/* 802F91D4 002F4E34  48 00 0F 09 */	bl func_802FA0DC
/* 802F91D8 002F4E38  92 D8 00 1C */	stw r22, 0x1c(r24)
/* 802F91DC 002F4E3C  38 00 00 00 */	li r0, 0
/* 802F91E0 002F4E40  7F 03 C3 78 */	mr r3, r24
/* 802F91E4 002F4E44  90 18 00 AC */	stw r0, 0xac(r24)
/* 802F91E8 002F4E48  90 18 00 B0 */	stw r0, 0xb0(r24)
/* 802F91EC 002F4E4C  90 18 00 B4 */	stw r0, 0xb4(r24)
/* 802F91F0 002F4E50  90 18 00 B8 */	stw r0, 0xb8(r24)
/* 802F91F4 002F4E54  90 18 00 BC */	stw r0, 0xbc(r24)
/* 802F91F8 002F4E58  90 18 00 C0 */	stw r0, 0xc0(r24)
/* 802F91FC 002F4E5C  90 18 00 C4 */	stw r0, 0xc4(r24)
/* 802F9200 002F4E60  90 18 00 C8 */	stw r0, 0xc8(r24)
/* 802F9204 002F4E64  90 18 00 CC */	stw r0, 0xcc(r24)
/* 802F9208 002F4E68  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 802F920C 002F4E6C  92 E4 04 38 */	stw r23, 0x438(r4)
/* 802F9210 002F4E70  90 18 00 0C */	stw r0, 0xc(r24)
/* 802F9214 002F4E74  90 18 02 38 */	stw r0, 0x238(r24)
/* 802F9218 002F4E78  48 00 00 48 */	b lbl_802F9260
lbl_802F921C:
/* 802F921C 002F4E7C  2C 18 00 00 */	cmpwi r24, 0
/* 802F9220 002F4E80  41 82 00 3C */	beq lbl_802F925C
/* 802F9224 002F4E84  80 78 00 24 */	lwz r3, 0x24(r24)
/* 802F9228 002F4E88  2C 03 00 00 */	cmpwi r3, 0
/* 802F922C 002F4E8C  41 82 00 08 */	beq lbl_802F9234
/* 802F9230 002F4E90  4B FF E9 8D */	bl NHTTPi_free
lbl_802F9234:
/* 802F9234 002F4E94  80 78 00 28 */	lwz r3, 0x28(r24)
/* 802F9238 002F4E98  2C 03 00 00 */	cmpwi r3, 0
/* 802F923C 002F4E9C  41 82 00 08 */	beq lbl_802F9244
/* 802F9240 002F4EA0  4B FF E9 7D */	bl NHTTPi_free
lbl_802F9244:
/* 802F9244 002F4EA4  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 802F9248 002F4EA8  2C 03 00 00 */	cmpwi r3, 0
/* 802F924C 002F4EAC  41 82 00 08 */	beq lbl_802F9254
/* 802F9250 002F4EB0  4B FF E9 6D */	bl NHTTPi_free
lbl_802F9254:
/* 802F9254 002F4EB4  7F 03 C3 78 */	mr r3, r24
/* 802F9258 002F4EB8  4B FF E9 65 */	bl NHTTPi_free
lbl_802F925C:
/* 802F925C 002F4EBC  38 60 00 00 */	li r3, 0
lbl_802F9260:
/* 802F9260 002F4EC0  39 61 01 40 */	addi r11, r1, 0x140
/* 802F9264 002F4EC4  4B EC DE F5 */	bl _restgpr_20
/* 802F9268 002F4EC8  80 01 01 44 */	lwz r0, 0x144(r1)
/* 802F926C 002F4ECC  7C 08 03 A6 */	mtlr r0
/* 802F9270 002F4ED0  38 21 01 40 */	addi r1, r1, 0x140
/* 802F9274 002F4ED4  4E 80 00 20 */	blr

.global NHTTP_DestroyRequest
NHTTP_DestroyRequest:
/* 802F9278 002F4ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F927C 002F4EDC  7C 08 02 A6 */	mflr r0
/* 802F9280 002F4EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9284 002F4EE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F9288 002F4EE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F928C 002F4EEC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F9290 002F4EF0  7C 9D 23 78 */	mr r29, r4
/* 802F9294 002F4EF4  48 00 6C 59 */	bl func_802FFEEC
/* 802F9298 002F4EF8  7C 7E 1B 78 */	mr r30, r3
/* 802F929C 002F4EFC  7F A4 EB 78 */	mr r4, r29
/* 802F92A0 002F4F00  48 00 67 99 */	bl func_802FFA38
/* 802F92A4 002F4F04  2C 03 00 00 */	cmpwi r3, 0
/* 802F92A8 002F4F08  41 82 00 0C */	beq lbl_802F92B4
/* 802F92AC 002F4F0C  38 00 00 00 */	li r0, 0
/* 802F92B0 002F4F10  90 03 00 30 */	stw r0, 0x30(r3)
lbl_802F92B4:
/* 802F92B4 002F4F14  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 802F92B8 002F4F18  4B FF E9 05 */	bl NHTTPi_free
/* 802F92BC 002F4F1C  7F C3 F3 78 */	mr r3, r30
/* 802F92C0 002F4F20  7F A4 EB 78 */	mr r4, r29
/* 802F92C4 002F4F24  48 00 67 75 */	bl func_802FFA38
/* 802F92C8 002F4F28  2C 03 00 00 */	cmpwi r3, 0
/* 802F92CC 002F4F2C  41 82 00 0C */	beq lbl_802F92D8
/* 802F92D0 002F4F30  38 00 00 00 */	li r0, 0
/* 802F92D4 002F4F34  90 03 00 2C */	stw r0, 0x2c(r3)
lbl_802F92D8:
/* 802F92D8 002F4F38  83 FD 00 30 */	lwz r31, 0x30(r29)
/* 802F92DC 002F4F3C  48 00 00 2C */	b lbl_802F9308
lbl_802F92E0:
/* 802F92E0 002F4F40  80 7F 00 00 */	lwz r3, 0(r31)
/* 802F92E4 002F4F44  7C 1F 18 40 */	cmplw r31, r3
/* 802F92E8 002F4F48  41 82 00 14 */	beq lbl_802F92FC
/* 802F92EC 002F4F4C  83 C3 00 00 */	lwz r30, 0(r3)
/* 802F92F0 002F4F50  4B FF E8 CD */	bl NHTTPi_free
/* 802F92F4 002F4F54  93 DF 00 00 */	stw r30, 0(r31)
/* 802F92F8 002F4F58  48 00 00 10 */	b lbl_802F9308
lbl_802F92FC:
/* 802F92FC 002F4F5C  7F E3 FB 78 */	mr r3, r31
/* 802F9300 002F4F60  4B FF E8 BD */	bl NHTTPi_free
/* 802F9304 002F4F64  3B E0 00 00 */	li r31, 0
lbl_802F9308:
/* 802F9308 002F4F68  2C 1F 00 00 */	cmpwi r31, 0
/* 802F930C 002F4F6C  40 82 FF D4 */	bne lbl_802F92E0
/* 802F9310 002F4F70  83 DD 00 34 */	lwz r30, 0x34(r29)
/* 802F9314 002F4F74  48 00 00 2C */	b lbl_802F9340
lbl_802F9318:
/* 802F9318 002F4F78  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F931C 002F4F7C  7C 1E 18 40 */	cmplw r30, r3
/* 802F9320 002F4F80  41 82 00 14 */	beq lbl_802F9334
/* 802F9324 002F4F84  83 E3 00 00 */	lwz r31, 0(r3)
/* 802F9328 002F4F88  4B FF E8 95 */	bl NHTTPi_free
/* 802F932C 002F4F8C  93 FE 00 00 */	stw r31, 0(r30)
/* 802F9330 002F4F90  48 00 00 10 */	b lbl_802F9340
lbl_802F9334:
/* 802F9334 002F4F94  7F C3 F3 78 */	mr r3, r30
/* 802F9338 002F4F98  4B FF E8 85 */	bl NHTTPi_free
/* 802F933C 002F4F9C  3B C0 00 00 */	li r30, 0
lbl_802F9340:
/* 802F9340 002F4FA0  2C 1E 00 00 */	cmpwi r30, 0
/* 802F9344 002F4FA4  40 82 FF D4 */	bne lbl_802F9318
/* 802F9348 002F4FA8  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802F934C 002F4FAC  4B FF E8 71 */	bl NHTTPi_free
/* 802F9350 002F4FB0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802F9354 002F4FB4  4B FF E8 69 */	bl NHTTPi_free
/* 802F9358 002F4FB8  7F A3 EB 78 */	mr r3, r29
/* 802F935C 002F4FBC  4B FF E8 61 */	bl NHTTPi_free
/* 802F9360 002F4FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F9364 002F4FC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F9368 002F4FC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F936C 002F4FCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F9370 002F4FD0  7C 08 03 A6 */	mtlr r0
/* 802F9374 002F4FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9378 002F4FD8  4E 80 00 20 */	blr

.global NHTTPi_destroyRequestObject
NHTTPi_destroyRequestObject:
/* 802F937C 002F4FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F9380 002F4FE0  7C 08 02 A6 */	mflr r0
/* 802F9384 002F4FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9388 002F4FE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F938C 002F4FEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F9390 002F4FF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F9394 002F4FF4  7C 9D 23 78 */	mr r29, r4
/* 802F9398 002F4FF8  48 00 66 A1 */	bl func_802FFA38
/* 802F939C 002F4FFC  2C 03 00 00 */	cmpwi r3, 0
/* 802F93A0 002F5000  41 82 00 0C */	beq lbl_802F93AC
/* 802F93A4 002F5004  38 00 00 00 */	li r0, 0
/* 802F93A8 002F5008  90 03 00 2C */	stw r0, 0x2c(r3)
lbl_802F93AC:
/* 802F93AC 002F500C  83 FD 00 30 */	lwz r31, 0x30(r29)
/* 802F93B0 002F5010  48 00 00 2C */	b lbl_802F93DC
lbl_802F93B4:
/* 802F93B4 002F5014  80 7F 00 00 */	lwz r3, 0(r31)
/* 802F93B8 002F5018  7C 1F 18 40 */	cmplw r31, r3
/* 802F93BC 002F501C  41 82 00 14 */	beq lbl_802F93D0
/* 802F93C0 002F5020  83 C3 00 00 */	lwz r30, 0(r3)
/* 802F93C4 002F5024  4B FF E7 F9 */	bl NHTTPi_free
/* 802F93C8 002F5028  93 DF 00 00 */	stw r30, 0(r31)
/* 802F93CC 002F502C  48 00 00 10 */	b lbl_802F93DC
lbl_802F93D0:
/* 802F93D0 002F5030  7F E3 FB 78 */	mr r3, r31
/* 802F93D4 002F5034  4B FF E7 E9 */	bl NHTTPi_free
/* 802F93D8 002F5038  3B E0 00 00 */	li r31, 0
lbl_802F93DC:
/* 802F93DC 002F503C  2C 1F 00 00 */	cmpwi r31, 0
/* 802F93E0 002F5040  40 82 FF D4 */	bne lbl_802F93B4
/* 802F93E4 002F5044  83 DD 00 34 */	lwz r30, 0x34(r29)
/* 802F93E8 002F5048  48 00 00 2C */	b lbl_802F9414
lbl_802F93EC:
/* 802F93EC 002F504C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F93F0 002F5050  7C 1E 18 40 */	cmplw r30, r3
/* 802F93F4 002F5054  41 82 00 14 */	beq lbl_802F9408
/* 802F93F8 002F5058  83 E3 00 00 */	lwz r31, 0(r3)
/* 802F93FC 002F505C  4B FF E7 C1 */	bl NHTTPi_free
/* 802F9400 002F5060  93 FE 00 00 */	stw r31, 0(r30)
/* 802F9404 002F5064  48 00 00 10 */	b lbl_802F9414
lbl_802F9408:
/* 802F9408 002F5068  7F C3 F3 78 */	mr r3, r30
/* 802F940C 002F506C  4B FF E7 B1 */	bl NHTTPi_free
/* 802F9410 002F5070  3B C0 00 00 */	li r30, 0
lbl_802F9414:
/* 802F9414 002F5074  2C 1E 00 00 */	cmpwi r30, 0
/* 802F9418 002F5078  40 82 FF D4 */	bne lbl_802F93EC
/* 802F941C 002F507C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802F9420 002F5080  4B FF E7 9D */	bl NHTTPi_free
/* 802F9424 002F5084  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802F9428 002F5088  4B FF E7 95 */	bl NHTTPi_free
/* 802F942C 002F508C  7F A3 EB 78 */	mr r3, r29
/* 802F9430 002F5090  4B FF E7 8D */	bl NHTTPi_free
/* 802F9434 002F5094  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F9438 002F5098  38 60 00 01 */	li r3, 1
/* 802F943C 002F509C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F9440 002F50A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F9444 002F50A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F9448 002F50A8  7C 08 03 A6 */	mtlr r0
/* 802F944C 002F50AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9450 002F50B0  4E 80 00 20 */	blr

.global NHTTP_SendRequestAsync
NHTTP_SendRequestAsync:
/* 802F9454 002F50B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F9458 002F50B8  7C 08 02 A6 */	mflr r0
/* 802F945C 002F50BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9460 002F50C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9464 002F50C4  4B EC DC C5 */	bl _savegpr_27
/* 802F9468 002F50C8  7C 7C 1B 78 */	mr r28, r3
/* 802F946C 002F50CC  7C 9B 23 78 */	mr r27, r4
/* 802F9470 002F50D0  48 00 6A 61 */	bl func_802FFED0
/* 802F9474 002F50D4  7C 7F 1B 78 */	mr r31, r3
/* 802F9478 002F50D8  7F 83 E3 78 */	mr r3, r28
/* 802F947C 002F50DC  48 00 6A 69 */	bl func_802FFEE4
/* 802F9480 002F50E0  7C 7E 1B 78 */	mr r30, r3
/* 802F9484 002F50E4  7F 83 E3 78 */	mr r3, r28
/* 802F9488 002F50E8  48 00 6A 65 */	bl func_802FFEEC
/* 802F948C 002F50EC  80 1B 00 04 */	lwz r0, 4(r27)
/* 802F9490 002F50F0  7C 7D 1B 78 */	mr r29, r3
/* 802F9494 002F50F4  2C 00 00 00 */	cmpwi r0, 0
/* 802F9498 002F50F8  41 82 00 18 */	beq lbl_802F94B0
/* 802F949C 002F50FC  7F E3 FB 78 */	mr r3, r31
/* 802F94A0 002F5100  38 80 00 0B */	li r4, 0xb
/* 802F94A4 002F5104  4B FF E7 5D */	bl NHTTPi_SetError
/* 802F94A8 002F5108  38 60 FF FF */	li r3, -1
/* 802F94AC 002F510C  48 00 00 50 */	b lbl_802F94FC
lbl_802F94B0:
/* 802F94B0 002F5110  4B FF EF 95 */	bl NHTTPi_lockReqList
/* 802F94B4 002F5114  7F 83 E3 78 */	mr r3, r28
/* 802F94B8 002F5118  48 00 6A 1D */	bl func_802FFED4
/* 802F94BC 002F511C  7F 64 DB 78 */	mr r4, r27
/* 802F94C0 002F5120  4B FF EC F5 */	bl NHTTPi_setReqQueue
/* 802F94C4 002F5124  2C 03 00 00 */	cmpwi r3, 0
/* 802F94C8 002F5128  7C 7C 1B 78 */	mr r28, r3
/* 802F94CC 002F512C  41 80 00 18 */	blt lbl_802F94E4
/* 802F94D0 002F5130  38 00 00 01 */	li r0, 1
/* 802F94D4 002F5134  7F C3 F3 78 */	mr r3, r30
/* 802F94D8 002F5138  90 1B 00 04 */	stw r0, 4(r27)
/* 802F94DC 002F513C  4B FF F0 75 */	bl NHTTPi_kickCommThread
/* 802F94E0 002F5140  48 00 00 10 */	b lbl_802F94F0
lbl_802F94E4:
/* 802F94E4 002F5144  7F E3 FB 78 */	mr r3, r31
/* 802F94E8 002F5148  38 80 00 01 */	li r4, 1
/* 802F94EC 002F514C  4B FF E7 15 */	bl NHTTPi_SetError
lbl_802F94F0:
/* 802F94F0 002F5150  7F A3 EB 78 */	mr r3, r29
/* 802F94F4 002F5154  4B FF EF 55 */	bl NHTTPi_unlockReqList
/* 802F94F8 002F5158  7F 83 E3 78 */	mr r3, r28
lbl_802F94FC:
/* 802F94FC 002F515C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9500 002F5160  4B EC DC 75 */	bl _restgpr_27
/* 802F9504 002F5164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F9508 002F5168  7C 08 03 A6 */	mtlr r0
/* 802F950C 002F516C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9510 002F5170  4E 80 00 20 */	blr

.global NHTTP_CancelRequestAsync
NHTTP_CancelRequestAsync:
/* 802F9514 002F5174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F9518 002F5178  7C 08 02 A6 */	mflr r0
/* 802F951C 002F517C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9520 002F5180  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9524 002F5184  4B EC DC 05 */	bl _savegpr_27
/* 802F9528 002F5188  7C 7B 1B 78 */	mr r27, r3
/* 802F952C 002F518C  7C 9C 23 78 */	mr r28, r4
/* 802F9530 002F5190  3B C0 00 00 */	li r30, 0
/* 802F9534 002F5194  48 00 69 A9 */	bl func_802FFEDC
/* 802F9538 002F5198  7C 7F 1B 78 */	mr r31, r3
/* 802F953C 002F519C  7F 63 DB 78 */	mr r3, r27
/* 802F9540 002F51A0  48 00 69 AD */	bl func_802FFEEC
/* 802F9544 002F51A4  83 BF 00 00 */	lwz r29, 0(r31)
/* 802F9548 002F51A8  7C 7F 1B 78 */	mr r31, r3
/* 802F954C 002F51AC  4B FF EE F9 */	bl NHTTPi_lockReqList
/* 802F9550 002F51B0  2C 1D 00 00 */	cmpwi r29, 0
/* 802F9554 002F51B4  41 82 00 40 */	beq lbl_802F9594
/* 802F9558 002F51B8  80 1D 00 08 */	lwz r0, 8(r29)
/* 802F955C 002F51BC  7C 00 E0 00 */	cmpw r0, r28
/* 802F9560 002F51C0  40 82 00 34 */	bne lbl_802F9594
/* 802F9564 002F51C4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802F9568 002F51C8  80 03 00 00 */	lwz r0, 0(r3)
/* 802F956C 002F51CC  2C 00 00 00 */	cmpwi r0, 0
/* 802F9570 002F51D0  40 82 00 24 */	bne lbl_802F9594
/* 802F9574 002F51D4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802F9578 002F51D8  38 00 00 01 */	li r0, 1
/* 802F957C 002F51DC  7F E3 FB 78 */	mr r3, r31
/* 802F9580 002F51E0  90 04 00 00 */	stw r0, 0(r4)
/* 802F9584 002F51E4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802F9588 002F51E8  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 802F958C 002F51EC  48 00 0A 89 */	bl func_802FA014
/* 802F9590 002F51F0  3B C0 00 01 */	li r30, 1
lbl_802F9594:
/* 802F9594 002F51F4  2C 1E 00 00 */	cmpwi r30, 0
/* 802F9598 002F51F8  40 82 00 1C */	bne lbl_802F95B4
/* 802F959C 002F51FC  7F 63 DB 78 */	mr r3, r27
/* 802F95A0 002F5200  48 00 69 35 */	bl func_802FFED4
/* 802F95A4 002F5204  7F E4 FB 78 */	mr r4, r31
/* 802F95A8 002F5208  7F 85 E3 78 */	mr r5, r28
/* 802F95AC 002F520C  4B FF EC D5 */	bl NHTTPi_freeReqQueue
/* 802F95B0 002F5210  7C 7E 1B 78 */	mr r30, r3
lbl_802F95B4:
/* 802F95B4 002F5214  7F E3 FB 78 */	mr r3, r31
/* 802F95B8 002F5218  4B FF EE 91 */	bl NHTTPi_unlockReqList
/* 802F95BC 002F521C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F95C0 002F5220  7F C3 F3 78 */	mr r3, r30
/* 802F95C4 002F5224  4B EC DB B1 */	bl _restgpr_27
/* 802F95C8 002F5228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F95CC 002F522C  7C 08 03 A6 */	mtlr r0
/* 802F95D0 002F5230  38 21 00 20 */	addi r1, r1, 0x20
/* 802F95D4 002F5234  4E 80 00 20 */	blr

.global NHTTPi_cancelAllRequests
NHTTPi_cancelAllRequests:
/* 802F95D8 002F5238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F95DC 002F523C  7C 08 02 A6 */	mflr r0
/* 802F95E0 002F5240  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F95E4 002F5244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F95E8 002F5248  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F95EC 002F524C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F95F0 002F5250  7C 7D 1B 78 */	mr r29, r3
/* 802F95F4 002F5254  48 00 68 E9 */	bl func_802FFEDC
/* 802F95F8 002F5258  7C 7F 1B 78 */	mr r31, r3
/* 802F95FC 002F525C  7F A3 EB 78 */	mr r3, r29
/* 802F9600 002F5260  48 00 68 D5 */	bl func_802FFED4
/* 802F9604 002F5264  7C 7E 1B 78 */	mr r30, r3
/* 802F9608 002F5268  7F A3 EB 78 */	mr r3, r29
/* 802F960C 002F526C  48 00 68 E1 */	bl func_802FFEEC
/* 802F9610 002F5270  83 BF 00 00 */	lwz r29, 0(r31)
/* 802F9614 002F5274  7C 7F 1B 78 */	mr r31, r3
/* 802F9618 002F5278  4B FF EE 2D */	bl NHTTPi_lockReqList
/* 802F961C 002F527C  2C 1D 00 00 */	cmpwi r29, 0
/* 802F9620 002F5280  41 82 00 30 */	beq lbl_802F9650
/* 802F9624 002F5284  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802F9628 002F5288  80 03 00 00 */	lwz r0, 0(r3)
/* 802F962C 002F528C  2C 00 00 00 */	cmpwi r0, 0
/* 802F9630 002F5290  40 82 00 20 */	bne lbl_802F9650
/* 802F9634 002F5294  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802F9638 002F5298  38 00 00 01 */	li r0, 1
/* 802F963C 002F529C  7F E3 FB 78 */	mr r3, r31
/* 802F9640 002F52A0  90 04 00 00 */	stw r0, 0(r4)
/* 802F9644 002F52A4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802F9648 002F52A8  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 802F964C 002F52AC  48 00 09 C9 */	bl func_802FA014
lbl_802F9650:
/* 802F9650 002F52B0  7F C3 F3 78 */	mr r3, r30
/* 802F9654 002F52B4  7F E4 FB 78 */	mr r4, r31
/* 802F9658 002F52B8  4B FF ED 45 */	bl NHTTPi_allFreeReqQueue
/* 802F965C 002F52BC  7F E3 FB 78 */	mr r3, r31
/* 802F9660 002F52C0  4B FF ED E9 */	bl NHTTPi_unlockReqList
/* 802F9664 002F52C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F9668 002F52C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F966C 002F52CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F9670 002F52D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F9674 002F52D4  7C 08 03 A6 */	mtlr r0
/* 802F9678 002F52D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802F967C 002F52DC  4E 80 00 20 */	blr
