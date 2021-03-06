.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global SOGetSockOpt
SOGetSockOpt:
/* 802F7750 002F33B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F7754 002F33B4  7C 08 02 A6 */	mflr r0
/* 802F7758 002F33B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F775C 002F33BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7760 002F33C0  4B EC F9 C5 */	bl _savegpr_26
/* 802F7764 002F33C4  7C 7A 1B 78 */	mr r26, r3
/* 802F7768 002F33C8  7C 9B 23 78 */	mr r27, r4
/* 802F776C 002F33CC  7C BF 2B 78 */	mr r31, r5
/* 802F7770 002F33D0  7C DC 33 78 */	mr r28, r6
/* 802F7774 002F33D4  7C FD 3B 78 */	mr r29, r7
/* 802F7778 002F33D8  38 81 00 08 */	addi r4, r1, 8
/* 802F777C 002F33DC  38 60 00 00 */	li r3, 0
/* 802F7780 002F33E0  4B FF E4 45 */	bl SOiPrepare
/* 802F7784 002F33E4  2C 03 00 00 */	cmpwi r3, 0
/* 802F7788 002F33E8  40 82 00 B4 */	bne lbl_802F783C
/* 802F778C 002F33EC  38 60 00 0C */	li r3, 0xc
/* 802F7790 002F33F0  38 80 00 20 */	li r4, 0x20
/* 802F7794 002F33F4  4B FF E3 15 */	bl SOiAlloc
/* 802F7798 002F33F8  2C 03 00 00 */	cmpwi r3, 0
/* 802F779C 002F33FC  7C 7E 1B 78 */	mr r30, r3
/* 802F77A0 002F3400  40 82 00 0C */	bne lbl_802F77AC
/* 802F77A4 002F3404  3B E0 FF CF */	li r31, -49
/* 802F77A8 002F3408  48 00 00 88 */	b lbl_802F7830
lbl_802F77AC:
/* 802F77AC 002F340C  93 43 00 00 */	stw r26, 0(r3)
/* 802F77B0 002F3410  7F C7 F3 78 */	mr r7, r30
/* 802F77B4 002F3414  38 80 00 08 */	li r4, 8
/* 802F77B8 002F3418  38 A0 00 00 */	li r5, 0
/* 802F77BC 002F341C  93 63 00 04 */	stw r27, 4(r3)
/* 802F77C0 002F3420  38 C0 00 00 */	li r6, 0
/* 802F77C4 002F3424  39 00 00 18 */	li r8, 0x18
/* 802F77C8 002F3428  93 E3 00 08 */	stw r31, 8(r3)
/* 802F77CC 002F342C  80 61 00 08 */	lwz r3, 8(r1)
/* 802F77D0 002F3430  4B FA C3 21 */	bl IOS_Ioctl
/* 802F77D4 002F3434  2C 03 00 00 */	cmpwi r3, 0
/* 802F77D8 002F3438  7C 7F 1B 78 */	mr r31, r3
/* 802F77DC 002F343C  41 80 00 44 */	blt lbl_802F7820
/* 802F77E0 002F3440  2C 1D 00 00 */	cmpwi r29, 0
/* 802F77E4 002F3444  41 82 00 3C */	beq lbl_802F7820
/* 802F77E8 002F3448  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802F77EC 002F344C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802F77F0 002F3450  7C 00 28 00 */	cmpw r0, r5
/* 802F77F4 002F3454  41 80 00 24 */	blt lbl_802F7818
/* 802F77F8 002F3458  2C 1C 00 00 */	cmpwi r28, 0
/* 802F77FC 002F345C  41 82 00 10 */	beq lbl_802F780C
/* 802F7800 002F3460  7F 83 E3 78 */	mr r3, r28
/* 802F7804 002F3464  38 9E 00 10 */	addi r4, r30, 0x10
/* 802F7808 002F3468  4B D0 C7 F9 */	bl memcpy
lbl_802F780C:
/* 802F780C 002F346C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F7810 002F3470  90 1D 00 00 */	stw r0, 0(r29)
/* 802F7814 002F3474  48 00 00 0C */	b lbl_802F7820
lbl_802F7818:
/* 802F7818 002F3478  90 BD 00 00 */	stw r5, 0(r29)
/* 802F781C 002F347C  3B E0 FF E4 */	li r31, -28
lbl_802F7820:
/* 802F7820 002F3480  7F C4 F3 78 */	mr r4, r30
/* 802F7824 002F3484  38 60 00 0C */	li r3, 0xc
/* 802F7828 002F3488  38 A0 00 20 */	li r5, 0x20
/* 802F782C 002F348C  4B FF E3 65 */	bl SOiFree
lbl_802F7830:
/* 802F7830 002F3490  7F E4 FB 78 */	mr r4, r31
/* 802F7834 002F3494  38 60 00 00 */	li r3, 0
/* 802F7838 002F3498  4B FF E4 75 */	bl SOiConclude
lbl_802F783C:
/* 802F783C 002F349C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7840 002F34A0  4B EC F9 31 */	bl _restgpr_26
/* 802F7844 002F34A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F7848 002F34A8  7C 08 03 A6 */	mtlr r0
/* 802F784C 002F34AC  38 21 00 30 */	addi r1, r1, 0x30
/* 802F7850 002F34B0  4E 80 00 20 */	blr

.global SOSetSockOpt
SOSetSockOpt:
/* 802F7854 002F34B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F7858 002F34B8  7C 08 02 A6 */	mflr r0
/* 802F785C 002F34BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F7860 002F34C0  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7864 002F34C4  4B EC F8 C1 */	bl _savegpr_26
/* 802F7868 002F34C8  7C 7A 1B 78 */	mr r26, r3
/* 802F786C 002F34CC  7C 9B 23 78 */	mr r27, r4
/* 802F7870 002F34D0  7C BC 2B 78 */	mr r28, r5
/* 802F7874 002F34D4  7C DD 33 78 */	mr r29, r6
/* 802F7878 002F34D8  7C FF 3B 78 */	mr r31, r7
/* 802F787C 002F34DC  38 81 00 08 */	addi r4, r1, 8
/* 802F7880 002F34E0  38 60 00 00 */	li r3, 0
/* 802F7884 002F34E4  4B FF E3 41 */	bl SOiPrepare
/* 802F7888 002F34E8  2C 03 00 00 */	cmpwi r3, 0
/* 802F788C 002F34EC  40 82 00 B4 */	bne lbl_802F7940
/* 802F7890 002F34F0  2C 1F 00 00 */	cmpwi r31, 0
/* 802F7894 002F34F4  41 80 00 0C */	blt lbl_802F78A0
/* 802F7898 002F34F8  2C 1F 00 14 */	cmpwi r31, 0x14
/* 802F789C 002F34FC  40 81 00 0C */	ble lbl_802F78A8
lbl_802F78A0:
/* 802F78A0 002F3500  3B E0 FF E4 */	li r31, -28
/* 802F78A4 002F3504  48 00 00 90 */	b lbl_802F7934
lbl_802F78A8:
/* 802F78A8 002F3508  38 60 00 0C */	li r3, 0xc
/* 802F78AC 002F350C  38 80 00 40 */	li r4, 0x40
/* 802F78B0 002F3510  4B FF E1 F9 */	bl SOiAlloc
/* 802F78B4 002F3514  2C 03 00 00 */	cmpwi r3, 0
/* 802F78B8 002F3518  7C 7E 1B 78 */	mr r30, r3
/* 802F78BC 002F351C  40 82 00 0C */	bne lbl_802F78C8
/* 802F78C0 002F3520  3B E0 FF CF */	li r31, -49
/* 802F78C4 002F3524  48 00 00 70 */	b lbl_802F7934
lbl_802F78C8:
/* 802F78C8 002F3528  93 43 00 00 */	stw r26, 0(r3)
/* 802F78CC 002F352C  2C 1D 00 00 */	cmpwi r29, 0
/* 802F78D0 002F3530  93 63 00 04 */	stw r27, 4(r3)
/* 802F78D4 002F3534  93 83 00 08 */	stw r28, 8(r3)
/* 802F78D8 002F3538  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802F78DC 002F353C  41 82 00 18 */	beq lbl_802F78F4
/* 802F78E0 002F3540  7F A4 EB 78 */	mr r4, r29
/* 802F78E4 002F3544  7F E5 FB 78 */	mr r5, r31
/* 802F78E8 002F3548  38 63 00 10 */	addi r3, r3, 0x10
/* 802F78EC 002F354C  4B D0 C7 15 */	bl memcpy
/* 802F78F0 002F3550  48 00 00 14 */	b lbl_802F7904
lbl_802F78F4:
/* 802F78F4 002F3554  7F E5 FB 78 */	mr r5, r31
/* 802F78F8 002F3558  38 80 00 00 */	li r4, 0
/* 802F78FC 002F355C  38 63 00 10 */	addi r3, r3, 0x10
/* 802F7900 002F3560  4B D0 C8 05 */	bl memset
lbl_802F7904:
/* 802F7904 002F3564  80 61 00 08 */	lwz r3, 8(r1)
/* 802F7908 002F3568  7F C5 F3 78 */	mr r5, r30
/* 802F790C 002F356C  38 80 00 09 */	li r4, 9
/* 802F7910 002F3570  38 C0 00 24 */	li r6, 0x24
/* 802F7914 002F3574  38 E0 00 00 */	li r7, 0
/* 802F7918 002F3578  39 00 00 00 */	li r8, 0
/* 802F791C 002F357C  4B FA C1 D5 */	bl IOS_Ioctl
/* 802F7920 002F3580  7C 7F 1B 78 */	mr r31, r3
/* 802F7924 002F3584  7F C4 F3 78 */	mr r4, r30
/* 802F7928 002F3588  38 60 00 0C */	li r3, 0xc
/* 802F792C 002F358C  38 A0 00 40 */	li r5, 0x40
/* 802F7930 002F3590  4B FF E2 61 */	bl SOiFree
lbl_802F7934:
/* 802F7934 002F3594  7F E4 FB 78 */	mr r4, r31
/* 802F7938 002F3598  38 60 00 00 */	li r3, 0
/* 802F793C 002F359C  4B FF E3 71 */	bl SOiConclude
lbl_802F7940:
/* 802F7940 002F35A0  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7944 002F35A4  4B EC F8 2D */	bl _restgpr_26
/* 802F7948 002F35A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F794C 002F35AC  7C 08 03 A6 */	mtlr r0
/* 802F7950 002F35B0  38 21 00 30 */	addi r1, r1, 0x30
/* 802F7954 002F35B4  4E 80 00 20 */	blr

.global SOGetInterfaceOpt
SOGetInterfaceOpt:
/* 802F7958 002F35B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F795C 002F35BC  7C 08 02 A6 */	mflr r0
/* 802F7960 002F35C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F7964 002F35C4  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7968 002F35C8  4B EC F7 B9 */	bl _savegpr_25
/* 802F796C 002F35CC  7C 9A 23 78 */	mr r26, r4
/* 802F7970 002F35D0  7C B9 2B 78 */	mr r25, r5
/* 802F7974 002F35D4  7C DE 33 78 */	mr r30, r6
/* 802F7978 002F35D8  7C FF 3B 78 */	mr r31, r7
/* 802F797C 002F35DC  38 81 00 0C */	addi r4, r1, 0xc
/* 802F7980 002F35E0  38 A1 00 08 */	addi r5, r1, 8
/* 802F7984 002F35E4  38 60 00 00 */	li r3, 0
/* 802F7988 002F35E8  4B FF E3 81 */	bl SOiPrepareTempRm
/* 802F798C 002F35EC  2C 03 00 00 */	cmpwi r3, 0
/* 802F7990 002F35F0  40 82 01 8C */	bne lbl_802F7B1C
/* 802F7994 002F35F4  38 19 EF FF */	addi r0, r25, -4097
/* 802F7998 002F35F8  28 00 00 01 */	cmplwi r0, 1
/* 802F799C 002F35FC  41 81 00 0C */	bgt lbl_802F79A8
/* 802F79A0 002F3600  3B 80 FF E4 */	li r28, -28
/* 802F79A4 002F3604  48 00 01 68 */	b lbl_802F7B0C
lbl_802F79A8:
/* 802F79A8 002F3608  2C 1F 00 00 */	cmpwi r31, 0
/* 802F79AC 002F360C  38 60 00 00 */	li r3, 0
/* 802F79B0 002F3610  41 82 00 10 */	beq lbl_802F79C0
/* 802F79B4 002F3614  80 1F 00 00 */	lwz r0, 0(r31)
/* 802F79B8 002F3618  2C 00 00 00 */	cmpwi r0, 0
/* 802F79BC 002F361C  40 80 00 08 */	bge lbl_802F79C4
lbl_802F79C0:
/* 802F79C0 002F3620  38 60 00 01 */	li r3, 1
lbl_802F79C4:
/* 802F79C4 002F3624  2C 03 00 00 */	cmpwi r3, 0
/* 802F79C8 002F3628  41 82 00 0C */	beq lbl_802F79D4
/* 802F79CC 002F362C  38 60 00 00 */	li r3, 0
/* 802F79D0 002F3630  48 00 00 08 */	b lbl_802F79D8
lbl_802F79D4:
/* 802F79D4 002F3634  80 7F 00 00 */	lwz r3, 0(r31)
lbl_802F79D8:
/* 802F79D8 002F3638  38 03 00 7F */	addi r0, r3, 0x7f
/* 802F79DC 002F363C  38 60 00 0C */	li r3, 0xc
/* 802F79E0 002F3640  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 802F79E4 002F3644  7F A4 EB 78 */	mr r4, r29
/* 802F79E8 002F3648  4B FF E0 C1 */	bl SOiAlloc
/* 802F79EC 002F364C  2C 03 00 00 */	cmpwi r3, 0
/* 802F79F0 002F3650  7C 7B 1B 78 */	mr r27, r3
/* 802F79F4 002F3654  40 82 00 0C */	bne lbl_802F7A00
/* 802F79F8 002F3658  3B 80 FF CF */	li r28, -49
/* 802F79FC 002F365C  48 00 01 10 */	b lbl_802F7B0C
lbl_802F7A00:
/* 802F7A00 002F3660  93 43 00 20 */	stw r26, 0x20(r3)
/* 802F7A04 002F3664  38 A3 00 20 */	addi r5, r3, 0x20
/* 802F7A08 002F3668  2C 1F 00 00 */	cmpwi r31, 0
/* 802F7A0C 002F366C  38 80 00 00 */	li r4, 0
/* 802F7A10 002F3670  3B 45 00 20 */	addi r26, r5, 0x20
/* 802F7A14 002F3674  93 23 00 24 */	stw r25, 0x24(r3)
/* 802F7A18 002F3678  3B 3A 00 20 */	addi r25, r26, 0x20
/* 802F7A1C 002F367C  41 82 00 10 */	beq lbl_802F7A2C
/* 802F7A20 002F3680  80 1F 00 00 */	lwz r0, 0(r31)
/* 802F7A24 002F3684  2C 00 00 00 */	cmpwi r0, 0
/* 802F7A28 002F3688  40 80 00 08 */	bge lbl_802F7A30
lbl_802F7A2C:
/* 802F7A2C 002F368C  38 80 00 01 */	li r4, 1
lbl_802F7A30:
/* 802F7A30 002F3690  2C 04 00 00 */	cmpwi r4, 0
/* 802F7A34 002F3694  41 82 00 0C */	beq lbl_802F7A40
/* 802F7A38 002F3698  38 00 00 00 */	li r0, 0
/* 802F7A3C 002F369C  48 00 00 08 */	b lbl_802F7A44
lbl_802F7A40:
/* 802F7A40 002F36A0  80 1F 00 00 */	lwz r0, 0(r31)
lbl_802F7A44:
/* 802F7A44 002F36A4  90 1A 00 00 */	stw r0, 0(r26)
/* 802F7A48 002F36A8  38 00 00 08 */	li r0, 8
/* 802F7A4C 002F36AC  2C 1F 00 00 */	cmpwi r31, 0
/* 802F7A50 002F36B0  38 80 00 00 */	li r4, 0
/* 802F7A54 002F36B4  90 A3 00 00 */	stw r5, 0(r3)
/* 802F7A58 002F36B8  90 03 00 04 */	stw r0, 4(r3)
/* 802F7A5C 002F36BC  93 23 00 08 */	stw r25, 8(r3)
/* 802F7A60 002F36C0  41 82 00 10 */	beq lbl_802F7A70
/* 802F7A64 002F36C4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802F7A68 002F36C8  2C 00 00 00 */	cmpwi r0, 0
/* 802F7A6C 002F36CC  40 80 00 08 */	bge lbl_802F7A74
lbl_802F7A70:
/* 802F7A70 002F36D0  38 80 00 01 */	li r4, 1
lbl_802F7A74:
/* 802F7A74 002F36D4  2C 04 00 00 */	cmpwi r4, 0
/* 802F7A78 002F36D8  41 82 00 0C */	beq lbl_802F7A84
/* 802F7A7C 002F36DC  38 00 00 00 */	li r0, 0
/* 802F7A80 002F36E0  48 00 00 08 */	b lbl_802F7A88
lbl_802F7A84:
/* 802F7A84 002F36E4  80 1F 00 00 */	lwz r0, 0(r31)
lbl_802F7A88:
/* 802F7A88 002F36E8  90 03 00 0C */	stw r0, 0xc(r3)
/* 802F7A8C 002F36EC  38 00 00 04 */	li r0, 4
/* 802F7A90 002F36F0  7F 67 DB 78 */	mr r7, r27
/* 802F7A94 002F36F4  38 80 00 1C */	li r4, 0x1c
/* 802F7A98 002F36F8  93 43 00 10 */	stw r26, 0x10(r3)
/* 802F7A9C 002F36FC  38 A0 00 01 */	li r5, 1
/* 802F7AA0 002F3700  38 C0 00 02 */	li r6, 2
/* 802F7AA4 002F3704  90 03 00 14 */	stw r0, 0x14(r3)
/* 802F7AA8 002F3708  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802F7AAC 002F370C  4B FA C3 95 */	bl IOS_Ioctlv
/* 802F7AB0 002F3710  2C 03 00 00 */	cmpwi r3, 0
/* 802F7AB4 002F3714  7C 7C 1B 78 */	mr r28, r3
/* 802F7AB8 002F3718  41 80 00 44 */	blt lbl_802F7AFC
/* 802F7ABC 002F371C  2C 1F 00 00 */	cmpwi r31, 0
/* 802F7AC0 002F3720  41 82 00 3C */	beq lbl_802F7AFC
/* 802F7AC4 002F3724  80 BA 00 00 */	lwz r5, 0(r26)
/* 802F7AC8 002F3728  80 1F 00 00 */	lwz r0, 0(r31)
/* 802F7ACC 002F372C  7C 00 28 00 */	cmpw r0, r5
/* 802F7AD0 002F3730  41 80 00 24 */	blt lbl_802F7AF4
/* 802F7AD4 002F3734  2C 1E 00 00 */	cmpwi r30, 0
/* 802F7AD8 002F3738  41 82 00 10 */	beq lbl_802F7AE8
/* 802F7ADC 002F373C  7F C3 F3 78 */	mr r3, r30
/* 802F7AE0 002F3740  7F 24 CB 78 */	mr r4, r25
/* 802F7AE4 002F3744  4B D0 C5 1D */	bl memcpy
lbl_802F7AE8:
/* 802F7AE8 002F3748  80 1A 00 00 */	lwz r0, 0(r26)
/* 802F7AEC 002F374C  90 1F 00 00 */	stw r0, 0(r31)
/* 802F7AF0 002F3750  48 00 00 0C */	b lbl_802F7AFC
lbl_802F7AF4:
/* 802F7AF4 002F3754  90 BF 00 00 */	stw r5, 0(r31)
/* 802F7AF8 002F3758  3B 80 FF E4 */	li r28, -28
lbl_802F7AFC:
/* 802F7AFC 002F375C  7F 64 DB 78 */	mr r4, r27
/* 802F7B00 002F3760  7F A5 EB 78 */	mr r5, r29
/* 802F7B04 002F3764  38 60 00 0C */	li r3, 0xc
/* 802F7B08 002F3768  4B FF E0 89 */	bl SOiFree
lbl_802F7B0C:
/* 802F7B0C 002F376C  80 A1 00 08 */	lwz r5, 8(r1)
/* 802F7B10 002F3770  7F 84 E3 78 */	mr r4, r28
/* 802F7B14 002F3774  38 60 00 00 */	li r3, 0
/* 802F7B18 002F3778  4B FF E4 C9 */	bl SOiConcludeTempRm
lbl_802F7B1C:
/* 802F7B1C 002F377C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F7B20 002F3780  4B EC F6 4D */	bl _restgpr_25
/* 802F7B24 002F3784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F7B28 002F3788  7C 08 03 A6 */	mtlr r0
/* 802F7B2C 002F378C  38 21 00 30 */	addi r1, r1, 0x30
/* 802F7B30 002F3790  4E 80 00 20 */	blr
