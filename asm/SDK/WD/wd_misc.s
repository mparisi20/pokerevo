.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WDi_GetWork
WDi_GetWork:
/* 802EDD5C 002E99BC  3C 60 80 44 */	lis r3, lbl_80445BB0@ha
/* 802EDD60 002E99C0  38 63 5B B0 */	addi r3, r3, lbl_80445BB0@l
/* 802EDD64 002E99C4  4E 80 00 20 */	blr

.global WDi_Ioctlv
WDi_Ioctlv:
/* 802EDD68 002E99C8  3D 00 80 44 */	lis r8, lbl_80445BB0@ha
/* 802EDD6C 002E99CC  7C 8A 23 78 */	mr r10, r4
/* 802EDD70 002E99D0  80 08 5B B0 */	lwz r0, lbl_80445BB0@l(r8)
/* 802EDD74 002E99D4  7C A9 2B 78 */	mr r9, r5
/* 802EDD78 002E99D8  7C C7 33 78 */	mr r7, r6
/* 802EDD7C 002E99DC  2C 00 00 00 */	cmpwi r0, 0
/* 802EDD80 002E99E0  40 80 00 10 */	bge lbl_802EDD90
/* 802EDD84 002E99E4  3C 60 80 01 */	lis r3, -0x7fff
/* 802EDD88 002E99E8  38 63 80 00 */	subi r3, r3, 0x8000
/* 802EDD8C 002E99EC  4E 80 00 20 */	blr
lbl_802EDD90:
/* 802EDD90 002E99F0  80 08 5B B0 */	lwz r0, 0x5bb0(r8)
/* 802EDD94 002E99F4  7C 64 1B 78 */	mr r4, r3
/* 802EDD98 002E99F8  7D 45 53 78 */	mr r5, r10
/* 802EDD9C 002E99FC  7D 26 4B 78 */	mr r6, r9
/* 802EDDA0 002E9A00  7C 03 03 78 */	mr r3, r0
/* 802EDDA4 002E9A04  4B FB 60 9C */	b IOS_Ioctlv
/* 802EDDA8 002E9A08  4E 80 00 20 */	blr

.global WDi_SetupHeap
WDi_SetupHeap:
/* 802EDDAC 002E9A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EDDB0 002E9A10  7C 08 02 A6 */	mflr r0
/* 802EDDB4 002E9A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EDDB8 002E9A18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EDDBC 002E9A1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EDDC0 002E9A20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EDDC4 002E9A24  7C 7D 1B 78 */	mr r29, r3
/* 802EDDC8 002E9A28  4B FB 4B 2D */	bl IPCGetBufferLo
/* 802EDDCC 002E9A2C  3F E0 80 44 */	lis r31, lbl_80445BB0@ha
/* 802EDDD0 002E9A30  7C 7E 1B 78 */	mr r30, r3
/* 802EDDD4 002E9A34  3B FF 5B B0 */	addi r31, r31, lbl_80445BB0@l
/* 802EDDD8 002E9A38  80 1F 00 08 */	lwz r0, 8(r31)
/* 802EDDDC 002E9A3C  2C 00 FF FF */	cmpwi r0, -1
/* 802EDDE0 002E9A40  40 82 00 48 */	bne lbl_802EDE28
/* 802EDDE4 002E9A44  4B FB 4B 09 */	bl IPCGetBufferHi
/* 802EDDE8 002E9A48  7C 1E EA 14 */	add r0, r30, r29
/* 802EDDEC 002E9A4C  7C 00 18 40 */	cmplw r0, r3
/* 802EDDF0 002E9A50  40 81 00 0C */	ble lbl_802EDDFC
/* 802EDDF4 002E9A54  38 60 FF EA */	li r3, -22
/* 802EDDF8 002E9A58  48 00 00 34 */	b lbl_802EDE2C
lbl_802EDDFC:
/* 802EDDFC 002E9A5C  7F C3 F3 78 */	mr r3, r30
/* 802EDE00 002E9A60  7F A4 EB 78 */	mr r4, r29
/* 802EDE04 002E9A64  4B FB 62 01 */	bl iosCreateHeap
/* 802EDE08 002E9A68  90 7F 00 08 */	stw r3, 8(r31)
/* 802EDE0C 002E9A6C  80 1F 00 08 */	lwz r0, 8(r31)
/* 802EDE10 002E9A70  2C 00 00 00 */	cmpwi r0, 0
/* 802EDE14 002E9A74  40 80 00 0C */	bge lbl_802EDE20
/* 802EDE18 002E9A78  80 7F 00 08 */	lwz r3, 8(r31)
/* 802EDE1C 002E9A7C  48 00 00 10 */	b lbl_802EDE2C
lbl_802EDE20:
/* 802EDE20 002E9A80  7C 7E EA 14 */	add r3, r30, r29
/* 802EDE24 002E9A84  4B FB 4A D9 */	bl IPCSetBufferLo
lbl_802EDE28:
/* 802EDE28 002E9A88  38 60 00 00 */	li r3, 0
lbl_802EDE2C:
/* 802EDE2C 002E9A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDE30 002E9A90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EDE34 002E9A94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EDE38 002E9A98  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EDE3C 002E9A9C  7C 08 03 A6 */	mtlr r0
/* 802EDE40 002E9AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDE44 002E9AA4  4E 80 00 20 */	blr

.global WDi_CleanupHeap
WDi_CleanupHeap:
/* 802EDE48 002E9AA8  38 60 00 00 */	li r3, 0
/* 802EDE4C 002E9AAC  4E 80 00 20 */	blr
