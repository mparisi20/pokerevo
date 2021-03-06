.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global btm_discovery_db_init
btm_discovery_db_init:
/* 802C71C4 002C2E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C71C8 002C2E28  7C 08 02 A6 */	mflr r0
/* 802C71CC 002C2E2C  38 80 00 00 */	li r4, 0
/* 802C71D0 002C2E30  38 A0 10 20 */	li r5, 0x1020
/* 802C71D4 002C2E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C71D8 002C2E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C71DC 002C2E3C  3F E0 80 57 */	lis r31, lbl_80568B78@ha
/* 802C71E0 002C2E40  3B FF 8B 78 */	addi r31, r31, lbl_80568B78@l
/* 802C71E4 002C2E44  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 802C71E8 002C2E48  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 802C71EC 002C2E4C  38 7F 06 58 */	addi r3, r31, 0x658
/* 802C71F0 002C2E50  4B D3 CF 15 */	bl memset
/* 802C71F4 002C2E54  38 60 00 01 */	li r3, 1
/* 802C71F8 002C2E58  38 80 00 02 */	li r4, 2
/* 802C71FC 002C2E5C  38 00 10 02 */	li r0, 0x1002
/* 802C7200 002C2E60  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 802C7204 002C2E64  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 802C7208 002C2E68  38 DF 06 74 */	addi r6, r31, 0x674
/* 802C720C 002C2E6C  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 802C7210 002C2E70  38 80 0F A0 */	li r4, 0xfa0
/* 802C7214 002C2E74  38 A0 00 01 */	li r5, 1
/* 802C7218 002C2E78  38 E0 00 00 */	li r7, 0
/* 802C721C 002C2E7C  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 802C7220 002C2E80  39 00 00 00 */	li r8, 0
/* 802C7224 002C2E84  48 01 AB C5 */	bl SDP_InitDiscoveryDb
/* 802C7228 002C2E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C722C 002C2E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C7230 002C2E90  7C 08 03 A6 */	mtlr r0
/* 802C7234 002C2E94  38 21 00 10 */	addi r1, r1, 0x10
/* 802C7238 002C2E98  4E 80 00 20 */	blr

.global btm_discovery_db_reset
btm_discovery_db_reset:
/* 802C723C 002C2E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7240 002C2EA0  7C 08 02 A6 */	mflr r0
/* 802C7244 002C2EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7248 002C2EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C724C 002C2EAC  3F E0 80 57 */	lis r31, lbl_80568B78@ha
/* 802C7250 002C2EB0  3B FF 8B 78 */	addi r31, r31, lbl_80568B78@l
/* 802C7254 002C2EB4  38 7F 06 58 */	addi r3, r31, 0x658
/* 802C7258 002C2EB8  4B FF 62 F5 */	bl btu_stop_timer
/* 802C725C 002C2EBC  88 1F 16 74 */	lbz r0, 0x1674(r31)
/* 802C7260 002C2EC0  2C 00 00 00 */	cmpwi r0, 0
/* 802C7264 002C2EC4  41 82 00 28 */	beq lbl_802C728C
/* 802C7268 002C2EC8  81 9F 06 D0 */	lwz r12, 0x6d0(r31)
/* 802C726C 002C2ECC  38 00 00 00 */	li r0, 0
/* 802C7270 002C2ED0  98 1F 16 74 */	stb r0, 0x1674(r31)
/* 802C7274 002C2ED4  2C 0C 00 00 */	cmpwi r12, 0
/* 802C7278 002C2ED8  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 802C727C 002C2EDC  41 82 00 10 */	beq lbl_802C728C
/* 802C7280 002C2EE0  38 60 00 00 */	li r3, 0
/* 802C7284 002C2EE4  7D 89 03 A6 */	mtctr r12
/* 802C7288 002C2EE8  4E 80 04 21 */	bctrl
lbl_802C728C:
/* 802C728C 002C2EEC  3F E0 80 57 */	lis r31, lbl_80568B78@ha
/* 802C7290 002C2EF0  38 80 00 00 */	li r4, 0
/* 802C7294 002C2EF4  3B FF 8B 78 */	addi r31, r31, lbl_80568B78@l
/* 802C7298 002C2EF8  38 A0 10 20 */	li r5, 0x1020
/* 802C729C 002C2EFC  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 802C72A0 002C2F00  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 802C72A4 002C2F04  38 7F 06 58 */	addi r3, r31, 0x658
/* 802C72A8 002C2F08  4B D3 CE 5D */	bl memset
/* 802C72AC 002C2F0C  38 60 00 01 */	li r3, 1
/* 802C72B0 002C2F10  38 80 00 02 */	li r4, 2
/* 802C72B4 002C2F14  38 00 10 02 */	li r0, 0x1002
/* 802C72B8 002C2F18  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 802C72BC 002C2F1C  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 802C72C0 002C2F20  38 DF 06 74 */	addi r6, r31, 0x674
/* 802C72C4 002C2F24  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 802C72C8 002C2F28  38 80 0F A0 */	li r4, 0xfa0
/* 802C72CC 002C2F2C  38 A0 00 01 */	li r5, 1
/* 802C72D0 002C2F30  38 E0 00 00 */	li r7, 0
/* 802C72D4 002C2F34  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 802C72D8 002C2F38  39 00 00 00 */	li r8, 0
/* 802C72DC 002C2F3C  48 01 AB 0D */	bl SDP_InitDiscoveryDb
/* 802C72E0 002C2F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C72E4 002C2F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C72E8 002C2F48  7C 08 03 A6 */	mtlr r0
/* 802C72EC 002C2F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C72F0 002C2F50  4E 80 00 20 */	blr

.global btm_discovery_timeout
btm_discovery_timeout:
/* 802C72F4 002C2F54  4E 80 00 20 */	blr
