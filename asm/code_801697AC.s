.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801697AC
func_801697AC:
/* 801697AC 0016540C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801697B0 00165410  7C 08 02 A6 */	mflr r0
/* 801697B4 00165414  38 6D 9E 9C */	addi r3, r13, lbl_8063F15C-_SDA_BASE_
/* 801697B8 00165418  90 01 00 14 */	stw r0, 0x14(r1)
/* 801697BC 0016541C  48 00 00 C9 */	bl func_80169884
/* 801697C0 00165420  48 00 36 65 */	bl func_8016CE24
/* 801697C4 00165424  48 01 31 BD */	bl func_8017C980
/* 801697C8 00165428  38 60 00 00 */	li r3, 0
/* 801697CC 0016542C  4B EE F3 45 */	bl func_80058B10
/* 801697D0 00165430  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801697D4 00165434  48 27 03 E1 */	bl func_803D9BB4
/* 801697D8 00165438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801697DC 0016543C  7C 08 03 A6 */	mtlr r0
/* 801697E0 00165440  38 21 00 10 */	addi r1, r1, 0x10
/* 801697E4 00165444  4E 80 00 20 */	blr

.global func_801697E8
func_801697E8:
/* 801697E8 00165448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801697EC 0016544C  7C 08 02 A6 */	mflr r0
/* 801697F0 00165450  90 01 00 14 */	stw r0, 0x14(r1)
/* 801697F4 00165454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801697F8 00165458  3F E0 80 40 */	lis r31, lbl_803FC4A8@ha
/* 801697FC 0016545C  3B FF C4 A8 */	addi r31, r31, lbl_803FC4A8@l
/* 80169800 00165460  48 00 00 14 */	b lbl_80169814
lbl_80169804:
/* 80169804 00165464  48 0E 00 8D */	bl func_80249890
/* 80169808 00165468  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8016980C 0016546C  48 0E 01 61 */	bl func_8024996C
/* 80169810 00165470  3B FF 00 02 */	addi r31, r31, 2
lbl_80169814:
/* 80169814 00165474  A0 7F 00 00 */	lhz r3, 0(r31)
/* 80169818 00165478  2C 03 00 00 */	cmpwi r3, 0
/* 8016981C 0016547C  40 82 FF E8 */	bne lbl_80169804
/* 80169820 00165480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169824 00165484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169828 00165488  7C 08 03 A6 */	mtlr r0
/* 8016982C 0016548C  38 21 00 10 */	addi r1, r1, 0x10
/* 80169830 00165490  4E 80 00 20 */	blr

.global func_80169834
func_80169834:
/* 80169834 00165494  3C 80 80 42 */	lis r4, lbl_8041F7A0@ha
/* 80169838 00165498  38 84 F7 A0 */	addi r4, r4, lbl_8041F7A0@l
/* 8016983C 0016549C  90 83 00 00 */	stw r4, 0(r3)
/* 80169840 001654A0  4E 80 00 20 */	blr
lbl_80169844:
/* 80169844 001654A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80169848 001654A8  7C 08 02 A6 */	mflr r0
/* 8016984C 001654AC  2C 03 00 00 */	cmpwi r3, 0
/* 80169850 001654B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169854 001654B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80169858 001654B8  7C 7F 1B 78 */	mr r31, r3
/* 8016985C 001654BC  41 82 00 10 */	beq lbl_8016986C
/* 80169860 001654C0  2C 04 00 00 */	cmpwi r4, 0
/* 80169864 001654C4  40 81 00 08 */	ble lbl_8016986C
/* 80169868 001654C8  48 07 12 51 */	bl __dl__FPv
lbl_8016986C:
/* 8016986C 001654CC  7F E3 FB 78 */	mr r3, r31
/* 80169870 001654D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169874 001654D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80169878 001654D8  7C 08 03 A6 */	mtlr r0
/* 8016987C 001654DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80169880 001654E0  4E 80 00 20 */	blr

.global func_80169884
func_80169884:
/* 80169884 001654E4  4E 80 00 20 */	blr
/* 80169888 001654E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016988C 001654EC  7C 08 02 A6 */	mflr r0
/* 80169890 001654F0  38 60 00 01 */	li r3, 1
/* 80169894 001654F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80169898 001654F8  4B E9 FF 71 */	bl func_80009808
/* 8016989C 001654FC  4B EC C5 01 */	bl func_80035D9C
/* 801698A0 00165500  4B EC C5 05 */	bl func_80035DA4
/* 801698A4 00165504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801698A8 00165508  7C 08 03 A6 */	mtlr r0
/* 801698AC 0016550C  38 21 00 10 */	addi r1, r1, 0x10
/* 801698B0 00165510  4E 80 00 20 */	blr

.global __set_debug_bba
__set_debug_bba:
/* 801698B4 00165514  38 00 00 01 */	li r0, 1
/* 801698B8 00165518  98 0D 9E 96 */	stb r0, lbl_8063F156-_SDA_BASE_(r13)
/* 801698BC 0016551C  4E 80 00 20 */	blr
/* 801698C0 00165520  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801698C4 00165524  7C 08 02 A6 */	mflr r0
/* 801698C8 00165528  90 01 00 64 */	stw r0, 0x64(r1)
/* 801698CC 0016552C  39 61 00 60 */	addi r11, r1, 0x60
/* 801698D0 00165530  48 05 D8 55 */	bl _savegpr_26
/* 801698D4 00165534  7C 9A 23 78 */	mr r26, r4
/* 801698D8 00165538  4B EC C4 C5 */	bl func_80035D9C
/* 801698DC 0016553C  7C 7F 1B 78 */	mr r31, r3
/* 801698E0 00165540  48 01 2C B1 */	bl func_8017C590
/* 801698E4 00165544  4B FF FF 05 */	bl func_801697E8
/* 801698E8 00165548  38 00 00 06 */	li r0, 6
/* 801698EC 0016554C  90 0D 9E B0 */	stw r0, lbl_8063F170-_SDA_BASE_(r13)
/* 801698F0 00165550  48 27 65 31 */	bl func_803DFE20
/* 801698F4 00165554  4B ED DF 2D */	bl func_80047820
/* 801698F8 00165558  3C 60 80 49 */	lis r3, lbl_80496754@ha
/* 801698FC 0016555C  38 63 67 54 */	addi r3, r3, lbl_80496754@l
/* 80169900 00165560  80 A3 00 04 */	lwz r5, 4(r3)
/* 80169904 00165564  2C 05 00 00 */	cmpwi r5, 0
/* 80169908 00165568  41 82 00 BC */	beq lbl_801699C4
/* 8016990C 0016556C  80 05 01 04 */	lwz r0, 0x104(r5)
/* 80169910 00165570  C0 42 90 40 */	lfs f2, lbl_80641640-_SDA2_BASE_(r2)
/* 80169914 00165574  C0 22 90 44 */	lfs f1, lbl_80641644-_SDA2_BASE_(r2)
/* 80169918 00165578  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8016991C 0016557C  C0 02 90 48 */	lfs f0, lbl_80641648-_SDA2_BASE_(r2)
/* 80169920 00165580  28 00 00 01 */	cmplwi r0, 1
/* 80169924 00165584  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80169928 00165588  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8016992C 0016558C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80169930 00165590  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80169934 00165594  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80169938 00165598  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8016993C 0016559C  40 82 00 2C */	bne lbl_80169968
/* 80169940 001655A0  C0 02 90 4C */	lfs f0, lbl_8064164C-_SDA2_BASE_(r2)
/* 80169944 001655A4  C0 22 90 50 */	lfs f1, lbl_80641650-_SDA2_BASE_(r2)
/* 80169948 001655A8  D0 05 01 68 */	stfs f0, 0x168(r5)
/* 8016994C 001655AC  C0 02 90 54 */	lfs f0, lbl_80641654-_SDA2_BASE_(r2)
/* 80169950 001655B0  D0 25 01 7C */	stfs f1, 0x17c(r5)
/* 80169954 001655B4  D0 05 01 80 */	stfs f0, 0x180(r5)
/* 80169958 001655B8  80 05 01 04 */	lwz r0, 0x104(r5)
/* 8016995C 001655BC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169960 001655C0  60 00 00 09 */	ori r0, r0, 9
/* 80169964 001655C4  90 05 01 04 */	stw r0, 0x104(r5)
lbl_80169968:
/* 80169968 001655C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8016996C 001655CC  3C 80 80 49 */	lis r4, GSjHat@ha
/* 80169970 001655D0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80169974 001655D4  38 64 36 14 */	addi r3, r4, GSjHat@l
/* 80169978 001655D8  D0 05 01 AC */	stfs f0, 0x1ac(r5)
/* 8016997C 001655DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80169980 001655E0  D0 25 01 B0 */	stfs f1, 0x1b0(r5)
/* 80169984 001655E4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80169988 001655E8  D0 05 01 B4 */	stfs f0, 0x1b4(r5)
/* 8016998C 001655EC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80169990 001655F0  C0 64 36 14 */	lfs f3, 0x3614(r4)
/* 80169994 001655F4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80169998 001655F8  D0 65 01 B8 */	stfs f3, 0x1b8(r5)
/* 8016999C 001655FC  C0 63 00 04 */	lfs f3, 4(r3)
/* 801699A0 00165600  D0 65 01 BC */	stfs f3, 0x1bc(r5)
/* 801699A4 00165604  C0 63 00 08 */	lfs f3, 8(r3)
/* 801699A8 00165608  D0 65 01 C0 */	stfs f3, 0x1c0(r5)
/* 801699AC 0016560C  D0 45 01 C4 */	stfs f2, 0x1c4(r5)
/* 801699B0 00165610  D0 25 01 C8 */	stfs f1, 0x1c8(r5)
/* 801699B4 00165614  D0 05 01 CC */	stfs f0, 0x1cc(r5)
/* 801699B8 00165618  80 05 01 04 */	lwz r0, 0x104(r5)
/* 801699BC 0016561C  60 00 00 30 */	ori r0, r0, 0x30
/* 801699C0 00165620  90 05 01 04 */	stw r0, 0x104(r5)
lbl_801699C4:
/* 801699C4 00165624  4B EC 96 C5 */	bl func_80033088
/* 801699C8 00165628  7C 7D 1B 78 */	mr r29, r3
/* 801699CC 0016562C  38 80 00 00 */	li r4, 0
/* 801699D0 00165630  4B EC AE ED */	bl func_800348BC
/* 801699D4 00165634  7F A3 EB 78 */	mr r3, r29
/* 801699D8 00165638  38 80 00 00 */	li r4, 0
/* 801699DC 0016563C  4B EC B4 8D */	bl func_80034E68
/* 801699E0 00165640  7F A3 EB 78 */	mr r3, r29
/* 801699E4 00165644  38 80 00 00 */	li r4, 0
/* 801699E8 00165648  4B EC B5 BD */	bl func_80034FA4
/* 801699EC 0016564C  7F A3 EB 78 */	mr r3, r29
/* 801699F0 00165650  38 80 00 00 */	li r4, 0
/* 801699F4 00165654  4B EC B8 85 */	bl func_80035278
/* 801699F8 00165658  4B ED BB 99 */	bl func_80045590
/* 801699FC 0016565C  2C 03 00 00 */	cmpwi r3, 0
/* 80169A00 00165660  7C 7D 1B 78 */	mr r29, r3
/* 80169A04 00165664  41 82 00 C4 */	beq lbl_80169AC8
/* 80169A08 00165668  38 1A FC 18 */	addi r0, r26, -1000
/* 80169A0C 0016566C  3B C0 00 00 */	li r30, 0
/* 80169A10 00165670  28 00 00 0A */	cmplwi r0, 0xa
/* 80169A14 00165674  41 81 00 9C */	bgt lbl_80169AB0
/* 80169A18 00165678  3C 60 80 42 */	lis r3, lbl_8041F774@ha
/* 80169A1C 0016567C  54 00 10 3A */	slwi r0, r0, 2
/* 80169A20 00165680  38 63 F7 74 */	addi r3, r3, lbl_8041F774@l
/* 80169A24 00165684  7C 63 00 2E */	lwzx r3, r3, r0
/* 80169A28 00165688  7C 69 03 A6 */	mtctr r3
/* 80169A2C 0016568C  4E 80 04 20 */	bctr
/* 80169A30 00165690  3C 60 02 31 */	lis r3, 0x02310400@ha
/* 80169A34 00165694  3B C3 04 00 */	addi r30, r3, 0x02310400@l
/* 80169A38 00165698  48 00 00 78 */	b lbl_80169AB0
/* 80169A3C 0016569C  3C 60 02 33 */	lis r3, 0x02330400@ha
/* 80169A40 001656A0  3B C3 04 00 */	addi r30, r3, 0x02330400@l
/* 80169A44 001656A4  48 00 00 6C */	b lbl_80169AB0
/* 80169A48 001656A8  3C 60 02 35 */	lis r3, 0x02350400@ha
/* 80169A4C 001656AC  3B C3 04 00 */	addi r30, r3, 0x02350400@l
/* 80169A50 001656B0  48 00 00 60 */	b lbl_80169AB0
/* 80169A54 001656B4  3C 60 02 37 */	lis r3, 0x02370400@ha
/* 80169A58 001656B8  3B C3 04 00 */	addi r30, r3, 0x02370400@l
/* 80169A5C 001656BC  48 00 00 54 */	b lbl_80169AB0
/* 80169A60 001656C0  3C 60 02 39 */	lis r3, 0x02390400@ha
/* 80169A64 001656C4  3B C3 04 00 */	addi r30, r3, 0x02390400@l
/* 80169A68 001656C8  48 00 00 48 */	b lbl_80169AB0
/* 80169A6C 001656CC  3C 60 02 3B */	lis r3, 0x023B0400@ha
/* 80169A70 001656D0  3B C3 04 00 */	addi r30, r3, 0x023B0400@l
/* 80169A74 001656D4  48 00 00 3C */	b lbl_80169AB0
/* 80169A78 001656D8  3C 60 02 3D */	lis r3, 0x023D0400@ha
/* 80169A7C 001656DC  3B C3 04 00 */	addi r30, r3, 0x023D0400@l
/* 80169A80 001656E0  48 00 00 30 */	b lbl_80169AB0
/* 80169A84 001656E4  3C 60 02 3F */	lis r3, 0x023F0400@ha
/* 80169A88 001656E8  3B C3 04 00 */	addi r30, r3, 0x023F0400@l
/* 80169A8C 001656EC  48 00 00 24 */	b lbl_80169AB0
/* 80169A90 001656F0  3C 60 02 41 */	lis r3, 0x02410400@ha
/* 80169A94 001656F4  3B C3 04 00 */	addi r30, r3, 0x02410400@l
/* 80169A98 001656F8  48 00 00 18 */	b lbl_80169AB0
/* 80169A9C 001656FC  3C 60 02 43 */	lis r3, 0x02430400@ha
/* 80169AA0 00165700  3B C3 04 00 */	addi r30, r3, 0x02430400@l
/* 80169AA4 00165704  48 00 00 0C */	b lbl_80169AB0
/* 80169AA8 00165708  3C 60 02 45 */	lis r3, 0x02450400@ha
/* 80169AAC 0016570C  3B C3 04 00 */	addi r30, r3, 0x02450400@l
lbl_80169AB0:
/* 80169AB0 00165710  80 6D A3 80 */	lwz r3, lbl_8063F640-_SDA_BASE_(r13)
/* 80169AB4 00165714  48 0B CD CD */	bl func_80226880
/* 80169AB8 00165718  7C 64 1B 78 */	mr r4, r3
/* 80169ABC 0016571C  7F A3 EB 78 */	mr r3, r29
/* 80169AC0 00165720  7F C5 F3 78 */	mr r5, r30
/* 80169AC4 00165724  4B ED C6 41 */	bl func_80046104
lbl_80169AC8:
/* 80169AC8 00165728  4B FB 2E AD */	bl func_8011C974
/* 80169ACC 0016572C  7C 7C 1B 78 */	mr r28, r3
/* 80169AD0 00165730  48 01 2A B9 */	bl func_8017C588
/* 80169AD4 00165734  2C 03 00 00 */	cmpwi r3, 0
/* 80169AD8 00165738  41 82 00 0C */	beq lbl_80169AE4
/* 80169ADC 0016573C  7F 84 E3 78 */	mr r4, r28
/* 80169AE0 00165740  48 01 2B F9 */	bl func_8017C6D8
lbl_80169AE4:
/* 80169AE4 00165744  4B EA 2D 05 */	bl func_8000C7E8
/* 80169AE8 00165748  4B EA 37 85 */	bl func_8000D26C
/* 80169AEC 0016574C  48 00 07 71 */	bl func_8016A25C
/* 80169AF0 00165750  80 6D 96 F0 */	lwz r3, lbl_8063E9B0-_SDA_BASE_(r13)
/* 80169AF4 00165754  2C 03 00 00 */	cmpwi r3, 0
/* 80169AF8 00165758  41 82 00 24 */	beq lbl_80169B1C
/* 80169AFC 0016575C  3C A0 80 42 */	lis r5, lbl_8041F758@ha
/* 80169B00 00165760  38 80 00 01 */	li r4, 1
/* 80169B04 00165764  38 A5 F7 58 */	addi r5, r5, lbl_8041F758@l
/* 80169B08 00165768  38 C0 00 00 */	li r6, 0
/* 80169B0C 0016576C  38 E0 00 00 */	li r7, 0
/* 80169B10 00165770  39 00 00 00 */	li r8, 0
/* 80169B14 00165774  39 20 00 00 */	li r9, 0
/* 80169B18 00165778  4B EB B7 61 */	bl func_80025278
lbl_80169B1C:
/* 80169B1C 0016577C  4B EF 33 D1 */	bl func_8005CEEC
/* 80169B20 00165780  4B EF 34 2D */	bl func_8005CF4C
/* 80169B24 00165784  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80169B28 00165788  48 0B AA 61 */	bl func_80224588
/* 80169B2C 0016578C  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80169B30 00165790  48 0B AA 59 */	bl func_80224588
/* 80169B34 00165794  38 60 00 01 */	li r3, 1
/* 80169B38 00165798  48 00 0B 85 */	bl func_8016A6BC
/* 80169B3C 0016579C  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80169B40 001657A0  48 0B AA 49 */	bl func_80224588
/* 80169B44 001657A4  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80169B48 001657A8  48 0B AA 41 */	bl func_80224588
/* 80169B4C 001657AC  38 61 00 08 */	addi r3, r1, 8
/* 80169B50 001657B0  38 80 00 08 */	li r4, 8
/* 80169B54 001657B4  48 0D D4 E5 */	bl func_80247038
/* 80169B58 001657B8  2C 1D 00 00 */	cmpwi r29, 0
/* 80169B5C 001657BC  41 82 00 F4 */	beq lbl_80169C50
/* 80169B60 001657C0  7F A3 EB 78 */	mr r3, r29
/* 80169B64 001657C4  38 80 00 00 */	li r4, 0
/* 80169B68 001657C8  4B ED BE C9 */	bl func_80045A30
/* 80169B6C 001657CC  3F C0 80 64 */	lis r30, lbl_8063CE34@ha
/* 80169B70 001657D0  3B A0 00 00 */	li r29, 0
/* 80169B74 001657D4  3B DE CE 34 */	addi r30, r30, lbl_8063CE34@l
lbl_80169B78:
/* 80169B78 001657D8  7F E3 FB 78 */	mr r3, r31
/* 80169B7C 001657DC  7F A4 EB 78 */	mr r4, r29
/* 80169B80 001657E0  38 A0 00 0F */	li r5, 0xf
/* 80169B84 001657E4  38 C0 00 00 */	li r6, 0
/* 80169B88 001657E8  4B EC C9 CD */	bl func_80036554
/* 80169B8C 001657EC  2C 03 00 00 */	cmpwi r3, 0
/* 80169B90 001657F0  41 82 00 54 */	beq lbl_80169BE4
/* 80169B94 001657F4  7F E3 FB 78 */	mr r3, r31
/* 80169B98 001657F8  7F A4 EB 78 */	mr r4, r29
/* 80169B9C 001657FC  38 A0 00 12 */	li r5, 0x12
/* 80169BA0 00165800  38 C0 00 00 */	li r6, 0
/* 80169BA4 00165804  4B EC C9 B1 */	bl func_80036554
/* 80169BA8 00165808  2C 03 00 10 */	cmpwi r3, 0x10
/* 80169BAC 0016580C  7C 7B 1B 78 */	mr r27, r3
/* 80169BB0 00165810  41 81 00 34 */	bgt lbl_80169BE4
/* 80169BB4 00165814  7F 64 DB 78 */	mr r4, r27
/* 80169BB8 00165818  38 7E 00 50 */	addi r3, r30, 0x50
/* 80169BBC 0016581C  48 22 D1 45 */	bl func_80396D00
/* 80169BC0 00165820  7C 64 1B 78 */	mr r4, r3
/* 80169BC4 00165824  38 61 00 08 */	addi r3, r1, 8
/* 80169BC8 00165828  48 0D D5 49 */	bl func_80247110
/* 80169BCC 0016582C  7F 64 DB 78 */	mr r4, r27
/* 80169BD0 00165830  38 7E 00 50 */	addi r3, r30, 0x50
/* 80169BD4 00165834  48 22 D1 C9 */	bl func_80396D9C
/* 80169BD8 00165838  7C 64 1B 78 */	mr r4, r3
/* 80169BDC 0016583C  38 61 00 08 */	addi r3, r1, 8
/* 80169BE0 00165840  48 0D D5 31 */	bl func_80247110
lbl_80169BE4:
/* 80169BE4 00165844  3B BD 00 01 */	addi r29, r29, 1
/* 80169BE8 00165848  2C 1D 00 04 */	cmpwi r29, 4
/* 80169BEC 0016584C  41 80 FF 8C */	blt lbl_80169B78
/* 80169BF0 00165850  38 61 00 08 */	addi r3, r1, 8
/* 80169BF4 00165854  48 0D D4 F5 */	bl func_802470E8
/* 80169BF8 00165858  2C 03 00 00 */	cmpwi r3, 0
/* 80169BFC 0016585C  40 82 00 54 */	bne lbl_80169C50
/* 80169C00 00165860  38 00 00 00 */	li r0, 0
/* 80169C04 00165864  38 61 00 08 */	addi r3, r1, 8
/* 80169C08 00165868  98 0D 9E 96 */	stb r0, lbl_8063F156-_SDA_BASE_(r13)
/* 80169C0C 0016586C  48 0D D5 75 */	bl func_80247180
/* 80169C10 00165870  3C A0 80 17 */	lis r5, __set_debug_bba@ha
/* 80169C14 00165874  7C 64 1B 78 */	mr r4, r3
/* 80169C18 00165878  38 A5 98 B4 */	addi r5, r5, __set_debug_bba@l
/* 80169C1C 0016587C  38 60 1E AA */	li r3, 0x1eaa
/* 80169C20 00165880  38 C0 00 00 */	li r6, 0
/* 80169C24 00165884  38 E0 00 00 */	li r7, 0
/* 80169C28 00165888  48 0D FB 95 */	bl func_802497BC
/* 80169C2C 0016588C  48 00 00 0C */	b lbl_80169C38
lbl_80169C30:
/* 80169C30 00165890  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80169C34 00165894  48 0B A9 55 */	bl func_80224588
lbl_80169C38:
/* 80169C38 00165898  88 0D 9E 96 */	lbz r0, lbl_8063F156-_SDA_BASE_(r13)
/* 80169C3C 0016589C  2C 00 00 00 */	cmpwi r0, 0
/* 80169C40 001658A0  41 82 FF F0 */	beq lbl_80169C30
/* 80169C44 001658A4  38 61 00 08 */	addi r3, r1, 8
/* 80169C48 001658A8  38 80 1E AA */	li r4, 0x1eaa
/* 80169C4C 001658AC  48 0D D5 3D */	bl func_80247188
lbl_80169C50:
/* 80169C50 001658B0  38 61 00 28 */	addi r3, r1, 0x28
/* 80169C54 001658B4  48 00 C7 91 */	bl func_801763E4
/* 80169C58 001658B8  80 1C 00 08 */	lwz r0, 8(r28)
/* 80169C5C 001658BC  3B C0 00 00 */	li r30, 0
/* 80169C60 001658C0  3B 40 00 01 */	li r26, 1
/* 80169C64 001658C4  2C 00 00 03 */	cmpwi r0, 3
/* 80169C68 001658C8  41 82 00 3C */	beq lbl_80169CA4
/* 80169C6C 001658CC  40 80 00 14 */	bge lbl_80169C80
/* 80169C70 001658D0  2C 00 00 01 */	cmpwi r0, 1
/* 80169C74 001658D4  41 82 00 30 */	beq lbl_80169CA4
/* 80169C78 001658D8  40 80 00 14 */	bge lbl_80169C8C
/* 80169C7C 001658DC  48 00 00 28 */	b lbl_80169CA4
lbl_80169C80:
/* 80169C80 001658E0  2C 00 00 05 */	cmpwi r0, 5
/* 80169C84 001658E4  40 80 00 20 */	bge lbl_80169CA4
/* 80169C88 001658E8  48 00 00 10 */	b lbl_80169C98
lbl_80169C8C:
/* 80169C8C 001658EC  3B 60 00 00 */	li r27, 0
/* 80169C90 001658F0  3B A0 00 02 */	li r29, 2
/* 80169C94 001658F4  48 00 00 18 */	b lbl_80169CAC
lbl_80169C98:
/* 80169C98 001658F8  3B 60 00 01 */	li r27, 1
/* 80169C9C 001658FC  3B A0 00 03 */	li r29, 3
/* 80169CA0 00165900  48 00 00 0C */	b lbl_80169CAC
lbl_80169CA4:
/* 80169CA4 00165904  3B 60 00 01 */	li r27, 1
/* 80169CA8 00165908  3B A0 00 02 */	li r29, 2
lbl_80169CAC:
/* 80169CAC 0016590C  7F E3 FB 78 */	mr r3, r31
/* 80169CB0 00165910  7F 64 DB 78 */	mr r4, r27
/* 80169CB4 00165914  4B EC C1 AD */	bl func_80035E60
/* 80169CB8 00165918  7F E3 FB 78 */	mr r3, r31
/* 80169CBC 0016591C  7F A4 EB 78 */	mr r4, r29
/* 80169CC0 00165920  4B EC C1 B1 */	bl func_80035E70
/* 80169CC4 00165924  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80169CC8 00165928  2C 00 00 02 */	cmpwi r0, 2
/* 80169CCC 0016592C  41 82 00 38 */	beq lbl_80169D04
/* 80169CD0 00165930  40 80 00 14 */	bge lbl_80169CE4
/* 80169CD4 00165934  2C 00 00 00 */	cmpwi r0, 0
/* 80169CD8 00165938  41 82 00 1C */	beq lbl_80169CF4
/* 80169CDC 0016593C  40 80 00 20 */	bge lbl_80169CFC
/* 80169CE0 00165940  48 00 00 38 */	b lbl_80169D18
lbl_80169CE4:
/* 80169CE4 00165944  2C 00 00 04 */	cmpwi r0, 4
/* 80169CE8 00165948  41 82 00 2C */	beq lbl_80169D14
/* 80169CEC 0016594C  40 80 00 2C */	bge lbl_80169D18
/* 80169CF0 00165950  48 00 00 1C */	b lbl_80169D0C
lbl_80169CF4:
/* 80169CF4 00165954  3B C0 00 00 */	li r30, 0
/* 80169CF8 00165958  48 00 00 20 */	b lbl_80169D18
lbl_80169CFC:
/* 80169CFC 0016595C  3B C0 00 01 */	li r30, 1
/* 80169D00 00165960  48 00 00 18 */	b lbl_80169D18
lbl_80169D04:
/* 80169D04 00165964  3B C0 00 02 */	li r30, 2
/* 80169D08 00165968  48 00 00 10 */	b lbl_80169D18
lbl_80169D0C:
/* 80169D0C 0016596C  3B C0 00 03 */	li r30, 3
/* 80169D10 00165970  48 00 00 08 */	b lbl_80169D18
lbl_80169D14:
/* 80169D14 00165974  3B C0 00 04 */	li r30, 4
lbl_80169D18:
/* 80169D18 00165978  7F E3 FB 78 */	mr r3, r31
/* 80169D1C 0016597C  7F C4 F3 78 */	mr r4, r30
/* 80169D20 00165980  4B EC C1 79 */	bl func_80035E98
/* 80169D24 00165984  88 1C 00 1B */	lbz r0, 0x1b(r28)
/* 80169D28 00165988  2C 00 00 02 */	cmpwi r0, 2
/* 80169D2C 0016598C  41 82 00 08 */	beq lbl_80169D34
/* 80169D30 00165990  48 00 00 08 */	b lbl_80169D38
lbl_80169D34:
/* 80169D34 00165994  3B 40 00 02 */	li r26, 2
lbl_80169D38:
/* 80169D38 00165998  7F E3 FB 78 */	mr r3, r31
/* 80169D3C 0016599C  7F 44 D3 78 */	mr r4, r26
/* 80169D40 001659A0  4B EC C1 51 */	bl func_80035E90
/* 80169D44 001659A4  38 61 00 28 */	addi r3, r1, 0x28
/* 80169D48 001659A8  38 80 1E DD */	li r4, 0x1edd
/* 80169D4C 001659AC  48 00 C7 71 */	bl func_801764BC
/* 80169D50 001659B0  38 00 00 02 */	li r0, 2
/* 80169D54 001659B4  90 0D 9E B0 */	stw r0, lbl_8063F170-_SDA_BASE_(r13)
/* 80169D58 001659B8  88 1C 00 14 */	lbz r0, 0x14(r28)
/* 80169D5C 001659BC  28 00 00 03 */	cmplwi r0, 3
/* 80169D60 001659C0  40 82 00 2C */	bne lbl_80169D8C
/* 80169D64 001659C4  80 6D A3 80 */	lwz r3, lbl_8063F640-_SDA_BASE_(r13)
/* 80169D68 001659C8  48 0B CA D5 */	bl func_8022683C
/* 80169D6C 001659CC  88 FC 00 18 */	lbz r7, 0x18(r28)
/* 80169D70 001659D0  7C 64 1B 78 */	mr r4, r3
/* 80169D74 001659D4  7F 65 DB 78 */	mr r5, r27
/* 80169D78 001659D8  7F A6 EB 78 */	mr r6, r29
/* 80169D7C 001659DC  38 61 00 28 */	addi r3, r1, 0x28
/* 80169D80 001659E0  39 00 00 00 */	li r8, 0
/* 80169D84 001659E4  48 00 C9 ED */	bl func_80176770
/* 80169D88 001659E8  48 00 00 28 */	b lbl_80169DB0
lbl_80169D8C:
/* 80169D8C 001659EC  80 6D A3 80 */	lwz r3, lbl_8063F640-_SDA_BASE_(r13)
/* 80169D90 001659F0  48 0B CA AD */	bl func_8022683C
/* 80169D94 001659F4  7C 64 1B 78 */	mr r4, r3
/* 80169D98 001659F8  7F 65 DB 78 */	mr r5, r27
/* 80169D9C 001659FC  7F A6 EB 78 */	mr r6, r29
/* 80169DA0 00165A00  38 61 00 28 */	addi r3, r1, 0x28
/* 80169DA4 00165A04  38 E0 00 00 */	li r7, 0
/* 80169DA8 00165A08  39 00 00 00 */	li r8, 0
/* 80169DAC 00165A0C  48 00 C9 C5 */	bl func_80176770
lbl_80169DB0:
/* 80169DB0 00165A10  C0 22 90 58 */	lfs f1, lbl_80641658-_SDA2_BASE_(r2)
/* 80169DB4 00165A14  38 60 00 01 */	li r3, 1
/* 80169DB8 00165A18  4B EE 63 D5 */	bl func_8005018C
/* 80169DBC 00165A1C  3C 80 80 42 */	lis r4, lbl_8041F764@ha
/* 80169DC0 00165A20  38 61 00 28 */	addi r3, r1, 0x28
/* 80169DC4 00165A24  38 84 F7 64 */	addi r4, r4, lbl_8041F764@l
/* 80169DC8 00165A28  38 A0 00 01 */	li r5, 1
/* 80169DCC 00165A2C  38 C0 00 00 */	li r6, 0
/* 80169DD0 00165A30  38 E0 00 00 */	li r7, 0
/* 80169DD4 00165A34  39 00 00 00 */	li r8, 0
/* 80169DD8 00165A38  39 20 00 00 */	li r9, 0
/* 80169DDC 00165A3C  48 00 C9 F1 */	bl func_801767CC
/* 80169DE0 00165A40  38 61 00 28 */	addi r3, r1, 0x28
/* 80169DE4 00165A44  48 00 CA C9 */	bl func_801768AC
/* 80169DE8 00165A48  38 00 00 06 */	li r0, 6
/* 80169DEC 00165A4C  38 61 00 08 */	addi r3, r1, 8
/* 80169DF0 00165A50  90 0D 9E B0 */	stw r0, lbl_8063F170-_SDA_BASE_(r13)
/* 80169DF4 00165A54  38 80 1E AA */	li r4, 0x1eaa
/* 80169DF8 00165A58  48 0D D3 FD */	bl func_802471F4
/* 80169DFC 00165A5C  38 60 00 00 */	li r3, 0
/* 80169E00 00165A60  48 00 33 C1 */	bl func_8016D1C0
/* 80169E04 00165A64  3B C0 00 00 */	li r30, 0
lbl_80169E08:
/* 80169E08 00165A68  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80169E0C 00165A6C  38 80 00 00 */	li r4, 0
/* 80169E10 00165A70  48 00 33 B9 */	bl func_8016D1C8
/* 80169E14 00165A74  3B DE 00 01 */	addi r30, r30, 1
/* 80169E18 00165A78  2C 1E 00 04 */	cmpwi r30, 4
/* 80169E1C 00165A7C  41 80 FF EC */	blt lbl_80169E08
/* 80169E20 00165A80  3C 60 80 17 */	lis r3, lbl_8016A7E0@ha
/* 80169E24 00165A84  38 80 00 00 */	li r4, 0
/* 80169E28 00165A88  38 63 A7 E0 */	addi r3, r3, lbl_8016A7E0@l
/* 80169E2C 00165A8C  38 A0 40 00 */	li r5, 0x4000
/* 80169E30 00165A90  38 C0 00 09 */	li r6, 9
/* 80169E34 00165A94  38 E0 00 01 */	li r7, 1
/* 80169E38 00165A98  48 0B D7 3D */	bl func_80227574
/* 80169E3C 00165A9C  90 6D 9E 98 */	stw r3, lbl_8063F158-_SDA_BASE_(r13)
/* 80169E40 00165AA0  4B EE E6 A9 */	bl func_800584E8
/* 80169E44 00165AA4  4B EE E5 61 */	bl func_800583A4
/* 80169E48 00165AA8  4B EA 29 A1 */	bl func_8000C7E8
/* 80169E4C 00165AAC  4B EA 35 79 */	bl func_8000D3C4
/* 80169E50 00165AB0  38 60 00 00 */	li r3, 0
/* 80169E54 00165AB4  4B E9 F9 B5 */	bl func_80009808
/* 80169E58 00165AB8  38 61 00 28 */	addi r3, r1, 0x28
/* 80169E5C 00165ABC  38 80 FF FF */	li r4, -1
/* 80169E60 00165AC0  48 00 C5 CD */	bl func_8017642C
/* 80169E64 00165AC4  38 61 00 08 */	addi r3, r1, 8
/* 80169E68 00165AC8  38 80 FF FF */	li r4, -1
/* 80169E6C 00165ACC  48 0D D2 1D */	bl func_80247088
/* 80169E70 00165AD0  39 61 00 60 */	addi r11, r1, 0x60
/* 80169E74 00165AD4  48 05 D2 FD */	bl _restgpr_26
/* 80169E78 00165AD8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80169E7C 00165ADC  7C 08 03 A6 */	mtlr r0
/* 80169E80 00165AE0  38 21 00 60 */	addi r1, r1, 0x60
/* 80169E84 00165AE4  4E 80 00 20 */	blr
/* 80169E88 00165AE8  4E 80 00 20 */	blr
/* 80169E8C 00165AEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80169E90 00165AF0  7C 08 02 A6 */	mflr r0
/* 80169E94 00165AF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80169E98 00165AF8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80169E9C 00165AFC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80169EA0 00165B00  80 6D 9E 98 */	lwz r3, lbl_8063F158-_SDA_BASE_(r13)
/* 80169EA4 00165B04  2C 03 00 00 */	cmpwi r3, 0
/* 80169EA8 00165B08  41 82 00 14 */	beq lbl_80169EBC
/* 80169EAC 00165B0C  38 80 00 00 */	li r4, 0
/* 80169EB0 00165B10  48 0B A7 FD */	bl func_802246AC
/* 80169EB4 00165B14  38 00 00 00 */	li r0, 0
/* 80169EB8 00165B18  90 0D 9E 98 */	stw r0, lbl_8063F158-_SDA_BASE_(r13)
lbl_80169EBC:
/* 80169EBC 00165B1C  4B EE 39 51 */	bl func_8004D80C
/* 80169EC0 00165B20  2C 03 00 00 */	cmpwi r3, 0
/* 80169EC4 00165B24  41 82 00 08 */	beq lbl_80169ECC
/* 80169EC8 00165B28  4B EE 3A 3D */	bl func_8004D904
lbl_80169ECC:
/* 80169ECC 00165B2C  C0 42 90 60 */	lfs f2, lbl_80641660-_SDA2_BASE_(r2)
/* 80169ED0 00165B30  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169ED4 00165B34  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169ED8 00165B38  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169EDC 00165B3C  EC 00 08 2A */	fadds f0, f0, f1
/* 80169EE0 00165B40  FC 00 00 1E */	fctiwz f0, f0
/* 80169EE4 00165B44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80169EE8 00165B48  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80169EEC 00165B4C  4B EA 16 85 */	bl func_8000B570
/* 80169EF0 00165B50  4B EA 28 F9 */	bl func_8000C7E8
/* 80169EF4 00165B54  4B EA 37 99 */	bl func_8000D68C
/* 80169EF8 00165B58  C0 42 90 44 */	lfs f2, lbl_80641644-_SDA2_BASE_(r2)
/* 80169EFC 00165B5C  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169F00 00165B60  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169F04 00165B64  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169F08 00165B68  EC 00 08 2A */	fadds f0, f0, f1
/* 80169F0C 00165B6C  FC 00 00 1E */	fctiwz f0, f0
/* 80169F10 00165B70  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80169F14 00165B74  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80169F18 00165B78  4B EA 16 F1 */	bl func_8000B608
/* 80169F1C 00165B7C  C0 42 90 44 */	lfs f2, lbl_80641644-_SDA2_BASE_(r2)
/* 80169F20 00165B80  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169F24 00165B84  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169F28 00165B88  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169F2C 00165B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 80169F30 00165B90  FC 00 00 1E */	fctiwz f0, f0
/* 80169F34 00165B94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80169F38 00165B98  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80169F3C 00165B9C  4B EA 17 3D */	bl func_8000B678
/* 80169F40 00165BA0  C0 42 90 44 */	lfs f2, lbl_80641644-_SDA2_BASE_(r2)
/* 80169F44 00165BA4  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169F48 00165BA8  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169F4C 00165BAC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169F50 00165BB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80169F54 00165BB4  FC 00 00 1E */	fctiwz f0, f0
/* 80169F58 00165BB8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80169F5C 00165BBC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80169F60 00165BC0  4B EA 17 51 */	bl func_8000B6B0
/* 80169F64 00165BC4  C0 42 90 44 */	lfs f2, lbl_80641644-_SDA2_BASE_(r2)
/* 80169F68 00165BC8  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169F6C 00165BCC  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169F70 00165BD0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169F74 00165BD4  EC 00 08 2A */	fadds f0, f0, f1
/* 80169F78 00165BD8  FC 00 00 1E */	fctiwz f0, f0
/* 80169F7C 00165BDC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80169F80 00165BE0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80169F84 00165BE4  4B EA 17 65 */	bl func_8000B6E8
/* 80169F88 00165BE8  C0 42 90 44 */	lfs f2, lbl_80641644-_SDA2_BASE_(r2)
/* 80169F8C 00165BEC  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 80169F90 00165BF0  C0 02 90 5C */	lfs f0, lbl_8064165C-_SDA2_BASE_(r2)
/* 80169F94 00165BF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80169F98 00165BF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80169F9C 00165BFC  FC 00 00 1E */	fctiwz f0, f0
/* 80169FA0 00165C00  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80169FA4 00165C04  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80169FA8 00165C08  4B EA 16 99 */	bl func_8000B640
/* 80169FAC 00165C0C  4B EF 36 95 */	bl func_8005D640
/* 80169FB0 00165C10  4B ED B5 E1 */	bl func_80045590
/* 80169FB4 00165C14  2C 03 00 00 */	cmpwi r3, 0
/* 80169FB8 00165C18  41 82 00 08 */	beq lbl_80169FC0
/* 80169FBC 00165C1C  4B ED C1 FD */	bl func_800461B8
lbl_80169FC0:
/* 80169FC0 00165C20  48 00 06 81 */	bl func_8016A640
/* 80169FC4 00165C24  4B ED 40 DD */	bl func_8003E0A0
/* 80169FC8 00165C28  4B ED D8 99 */	bl func_80047860
/* 80169FCC 00165C2C  38 60 1E AA */	li r3, 0x1eaa
/* 80169FD0 00165C30  48 07 16 A5 */	bl func_801DB674
/* 80169FD4 00165C34  38 60 1E AA */	li r3, 0x1eaa
/* 80169FD8 00165C38  48 0D F8 B9 */	bl func_80249890
/* 80169FDC 00165C3C  38 60 1E AA */	li r3, 0x1eaa
/* 80169FE0 00165C40  48 0D F9 8D */	bl func_8024996C
/* 80169FE4 00165C44  4B FF F8 05 */	bl func_801697E8
/* 80169FE8 00165C48  48 27 5E 3D */	bl func_803DFE24
/* 80169FEC 00165C4C  80 6D 96 2C */	lwz r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 80169FF0 00165C50  38 80 00 64 */	li r4, 0x64
/* 80169FF4 00165C54  48 07 0F 7D */	bl func_801DAF70
/* 80169FF8 00165C58  3B E0 00 00 */	li r31, 0
/* 80169FFC 00165C5C  93 ED 9E B0 */	stw r31, lbl_8063F170-_SDA_BASE_(r13)
/* 8016A000 00165C60  4B EC 90 89 */	bl func_80033088
/* 8016A004 00165C64  7C 7E 1B 78 */	mr r30, r3
/* 8016A008 00165C68  38 80 00 00 */	li r4, 0
/* 8016A00C 00165C6C  4B EC A8 B1 */	bl func_800348BC
/* 8016A010 00165C70  7F C3 F3 78 */	mr r3, r30
/* 8016A014 00165C74  38 80 00 00 */	li r4, 0
/* 8016A018 00165C78  4B EC AE 51 */	bl func_80034E68
/* 8016A01C 00165C7C  7F C3 F3 78 */	mr r3, r30
/* 8016A020 00165C80  38 80 00 00 */	li r4, 0
/* 8016A024 00165C84  4B EC AF 81 */	bl func_80034FA4
/* 8016A028 00165C88  7F C3 F3 78 */	mr r3, r30
/* 8016A02C 00165C8C  38 80 00 00 */	li r4, 0
/* 8016A030 00165C90  4B EC B2 49 */	bl func_80035278
/* 8016A034 00165C94  38 60 00 02 */	li r3, 2
/* 8016A038 00165C98  48 0D 10 21 */	bl func_8023B058
/* 8016A03C 00165C9C  38 80 00 00 */	li r4, 0
/* 8016A040 00165CA0  48 0D 89 C1 */	bl func_80242A00
/* 8016A044 00165CA4  4B EE 37 C9 */	bl func_8004D80C
/* 8016A048 00165CA8  2C 03 00 00 */	cmpwi r3, 0
/* 8016A04C 00165CAC  41 82 00 20 */	beq lbl_8016A06C
/* 8016A050 00165CB0  9B E1 00 08 */	stb r31, 8(r1)
/* 8016A054 00165CB4  38 81 00 08 */	addi r4, r1, 8
/* 8016A058 00165CB8  38 63 34 C0 */	addi r3, r3, 0x34c0
/* 8016A05C 00165CBC  9B E1 00 09 */	stb r31, 9(r1)
/* 8016A060 00165CC0  9B E1 00 0A */	stb r31, 0xa(r1)
/* 8016A064 00165CC4  9B E1 00 0B */	stb r31, 0xb(r1)
/* 8016A068 00165CC8  4B EE 4B 39 */	bl func_8004EBA0
lbl_8016A06C:
/* 8016A06C 00165CCC  48 01 25 65 */	bl func_8017C5D0
/* 8016A070 00165CD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016A074 00165CD4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8016A078 00165CD8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8016A07C 00165CDC  7C 08 03 A6 */	mtlr r0
/* 8016A080 00165CE0  38 21 00 50 */	addi r1, r1, 0x50
/* 8016A084 00165CE4  4E 80 00 20 */	blr
/* 8016A088 00165CE8  4E 80 00 20 */	blr

.global func_8016A08C
func_8016A08C:
/* 8016A08C 00165CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016A090 00165CF0  7C 08 02 A6 */	mflr r0
/* 8016A094 00165CF4  38 60 00 01 */	li r3, 1
/* 8016A098 00165CF8  38 8D 9E 90 */	addi r4, r13, lbl_8063F150-_SDA_BASE_
/* 8016A09C 00165CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016A0A0 00165D00  38 A0 00 04 */	li r5, 4
/* 8016A0A4 00165D04  38 00 00 00 */	li r0, 0
/* 8016A0A8 00165D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016A0AC 00165D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8016A0B0 00165D10  3F C0 80 49 */	lis r30, lbl_8048CBC8@ha
/* 8016A0B4 00165D14  3B DE CB C8 */	addi r30, r30, lbl_8048CBC8@l
/* 8016A0B8 00165D18  98 6D 9E 90 */	stb r3, lbl_8063F150-_SDA_BASE_(r13)
/* 8016A0BC 00165D1C  38 6D 9E 9C */	addi r3, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A0C0 00165D20  B0 A4 00 02 */	sth r5, 2(r4)
/* 8016A0C4 00165D24  98 04 00 04 */	stb r0, 4(r4)
/* 8016A0C8 00165D28  4B FF F7 6D */	bl func_80169834
/* 8016A0CC 00165D2C  3C 80 80 17 */	lis r4, lbl_80169844@ha
/* 8016A0D0 00165D30  38 BE 00 00 */	addi r5, r30, 0
/* 8016A0D4 00165D34  38 84 98 44 */	addi r4, r4, lbl_80169844@l
/* 8016A0D8 00165D38  38 6D 9E 9C */	addi r3, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A0DC 00165D3C  48 05 CB 6D */	bl __register_global_object_tmp
/* 8016A0E0 00165D40  38 7E 00 18 */	addi r3, r30, 0x18
/* 8016A0E4 00165D44  38 80 03 E8 */	li r4, 0x3e8
/* 8016A0E8 00165D48  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A0EC 00165D4C  48 0B BD 59 */	bl func_80225E44
/* 8016A0F0 00165D50  3F E0 80 22 */	lis r31, func_80225EE0@ha
/* 8016A0F4 00165D54  38 7E 00 18 */	addi r3, r30, 0x18
/* 8016A0F8 00165D58  38 9F 5E E0 */	addi r4, r31, func_80225EE0@l
/* 8016A0FC 00165D5C  38 BE 00 0C */	addi r5, r30, 0xc
/* 8016A100 00165D60  48 05 CB 49 */	bl __register_global_object_tmp
/* 8016A104 00165D64  38 7E 00 40 */	addi r3, r30, 0x40
/* 8016A108 00165D68  38 80 03 E9 */	li r4, 0x3e9
/* 8016A10C 00165D6C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A110 00165D70  48 0B BD 35 */	bl func_80225E44
/* 8016A114 00165D74  38 7E 00 40 */	addi r3, r30, 0x40
/* 8016A118 00165D78  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A11C 00165D7C  38 BE 00 34 */	addi r5, r30, 0x34
/* 8016A120 00165D80  48 05 CB 29 */	bl __register_global_object_tmp
/* 8016A124 00165D84  38 7E 00 68 */	addi r3, r30, 0x68
/* 8016A128 00165D88  38 80 03 EA */	li r4, 0x3ea
/* 8016A12C 00165D8C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A130 00165D90  48 0B BD 15 */	bl func_80225E44
/* 8016A134 00165D94  38 7E 00 68 */	addi r3, r30, 0x68
/* 8016A138 00165D98  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A13C 00165D9C  38 BE 00 5C */	addi r5, r30, 0x5c
/* 8016A140 00165DA0  48 05 CB 09 */	bl __register_global_object_tmp
/* 8016A144 00165DA4  38 7E 00 90 */	addi r3, r30, 0x90
/* 8016A148 00165DA8  38 80 03 EB */	li r4, 0x3eb
/* 8016A14C 00165DAC  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A150 00165DB0  48 0B BC F5 */	bl func_80225E44
/* 8016A154 00165DB4  38 7E 00 90 */	addi r3, r30, 0x90
/* 8016A158 00165DB8  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A15C 00165DBC  38 BE 00 84 */	addi r5, r30, 0x84
/* 8016A160 00165DC0  48 05 CA E9 */	bl __register_global_object_tmp
/* 8016A164 00165DC4  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8016A168 00165DC8  38 80 03 EC */	li r4, 0x3ec
/* 8016A16C 00165DCC  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A170 00165DD0  48 0B BC D5 */	bl func_80225E44
/* 8016A174 00165DD4  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8016A178 00165DD8  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A17C 00165DDC  38 BE 00 AC */	addi r5, r30, 0xac
/* 8016A180 00165DE0  48 05 CA C9 */	bl __register_global_object_tmp
/* 8016A184 00165DE4  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8016A188 00165DE8  38 80 03 ED */	li r4, 0x3ed
/* 8016A18C 00165DEC  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A190 00165DF0  48 0B BC B5 */	bl func_80225E44
/* 8016A194 00165DF4  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8016A198 00165DF8  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A19C 00165DFC  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 8016A1A0 00165E00  48 05 CA A9 */	bl __register_global_object_tmp
/* 8016A1A4 00165E04  38 7E 01 08 */	addi r3, r30, 0x108
/* 8016A1A8 00165E08  38 80 03 EE */	li r4, 0x3ee
/* 8016A1AC 00165E0C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A1B0 00165E10  48 0B BC 95 */	bl func_80225E44
/* 8016A1B4 00165E14  38 7E 01 08 */	addi r3, r30, 0x108
/* 8016A1B8 00165E18  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A1BC 00165E1C  38 BE 00 FC */	addi r5, r30, 0xfc
/* 8016A1C0 00165E20  48 05 CA 89 */	bl __register_global_object_tmp
/* 8016A1C4 00165E24  38 7E 01 30 */	addi r3, r30, 0x130
/* 8016A1C8 00165E28  38 80 03 EF */	li r4, 0x3ef
/* 8016A1CC 00165E2C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A1D0 00165E30  48 0B BC 75 */	bl func_80225E44
/* 8016A1D4 00165E34  38 7E 01 30 */	addi r3, r30, 0x130
/* 8016A1D8 00165E38  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A1DC 00165E3C  38 BE 01 24 */	addi r5, r30, 0x124
/* 8016A1E0 00165E40  48 05 CA 69 */	bl __register_global_object_tmp
/* 8016A1E4 00165E44  38 7E 01 58 */	addi r3, r30, 0x158
/* 8016A1E8 00165E48  38 80 03 F0 */	li r4, 0x3f0
/* 8016A1EC 00165E4C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A1F0 00165E50  48 0B BC 55 */	bl func_80225E44
/* 8016A1F4 00165E54  38 7E 01 58 */	addi r3, r30, 0x158
/* 8016A1F8 00165E58  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A1FC 00165E5C  38 BE 01 4C */	addi r5, r30, 0x14c
/* 8016A200 00165E60  48 05 CA 49 */	bl __register_global_object_tmp
/* 8016A204 00165E64  38 7E 01 80 */	addi r3, r30, 0x180
/* 8016A208 00165E68  38 80 03 F1 */	li r4, 0x3f1
/* 8016A20C 00165E6C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A210 00165E70  48 0B BC 35 */	bl func_80225E44
/* 8016A214 00165E74  38 7E 01 80 */	addi r3, r30, 0x180
/* 8016A218 00165E78  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A21C 00165E7C  38 BE 01 74 */	addi r5, r30, 0x174
/* 8016A220 00165E80  48 05 CA 29 */	bl __register_global_object_tmp
/* 8016A224 00165E84  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8016A228 00165E88  38 80 03 F2 */	li r4, 0x3f2
/* 8016A22C 00165E8C  38 AD 9E 9C */	addi r5, r13, lbl_8063F15C-_SDA_BASE_
/* 8016A230 00165E90  48 0B BC 15 */	bl func_80225E44
/* 8016A234 00165E94  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8016A238 00165E98  38 9F 5E E0 */	addi r4, r31, 0x5ee0
/* 8016A23C 00165E9C  38 BE 01 9C */	addi r5, r30, 0x19c
/* 8016A240 00165EA0  48 05 CA 09 */	bl __register_global_object_tmp
/* 8016A244 00165EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016A248 00165EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016A24C 00165EAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8016A250 00165EB0  7C 08 03 A6 */	mtlr r0
/* 8016A254 00165EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8016A258 00165EB8  4E 80 00 20 */	blr
