.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_800447E4
func_800447E4:
/* 800447E4 00040444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800447E8 00040448  7C 08 02 A6 */	mflr r0
/* 800447EC 0004044C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800447F0 00040450  80 6D 97 E8 */	lwz r3, lbl_8063EAA8-_SDA_BASE_(r13)
/* 800447F4 00040454  2C 03 00 00 */	cmpwi r3, 0
/* 800447F8 00040458  41 82 00 08 */	beq lbl_80044800
/* 800447FC 0004045C  48 19 62 BD */	bl __dl__FPv
lbl_80044800:
/* 80044800 00040460  38 60 0E C0 */	li r3, 0xec0
/* 80044804 00040464  48 19 62 2D */	bl __nw__FUl
/* 80044808 00040468  2C 03 00 00 */	cmpwi r3, 0
/* 8004480C 0004046C  41 82 00 08 */	beq lbl_80044814
/* 80044810 00040470  48 00 00 89 */	bl func_80044898
lbl_80044814:
/* 80044814 00040474  3C 80 80 04 */	lis r4, lbl_80044850@ha
/* 80044818 00040478  3C A0 80 04 */	lis r5, lbl_80044884@ha
/* 8004481C 0004047C  90 6D 97 E8 */	stw r3, lbl_8063EAA8-_SDA_BASE_(r13)
/* 80044820 00040480  38 84 48 50 */	addi r4, r4, lbl_80044850@l
/* 80044824 00040484  80 6D A4 B8 */	lwz r3, lbl_8063F778-_SDA_BASE_(r13)
/* 80044828 00040488  38 A5 48 84 */	addi r5, r5, lbl_80044884@l
/* 8004482C 0004048C  38 C0 00 03 */	li r6, 3
/* 80044830 00040490  38 E0 00 0C */	li r7, 0xc
/* 80044834 00040494  48 1F A3 25 */	bl func_8023EB58
/* 80044838 00040498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004483C 0004049C  7C 08 03 A6 */	mtlr r0
/* 80044840 000404A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80044844 000404A4  4E 80 00 20 */	blr

.global func_80044848
func_80044848:
/* 80044848 000404A8  80 6D 97 E8 */	lwz r3, lbl_8063EAA8-_SDA_BASE_(r13)
/* 8004484C 000404AC  4E 80 00 20 */	blr
lbl_80044850:
/* 80044850 000404B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044854 000404B4  7C 08 02 A6 */	mflr r0
/* 80044858 000404B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004485C 000404BC  80 0D 97 E8 */	lwz r0, lbl_8063EAA8-_SDA_BASE_(r13)
/* 80044860 000404C0  2C 00 00 00 */	cmpwi r0, 0
/* 80044864 000404C4  41 82 00 10 */	beq lbl_80044874
/* 80044868 000404C8  4B FC 2B 35 */	bl func_8000739C
/* 8004486C 000404CC  80 6D 97 E8 */	lwz r3, lbl_8063EAA8-_SDA_BASE_(r13)
/* 80044870 000404D0  48 00 00 99 */	bl func_80044908
lbl_80044874:
/* 80044874 000404D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044878 000404D8  7C 08 03 A6 */	mtlr r0
/* 8004487C 000404DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80044880 000404E0  4E 80 00 20 */	blr
lbl_80044884:
/* 80044884 000404E4  80 6D 97 E8 */	lwz r3, lbl_8063EAA8-_SDA_BASE_(r13)
/* 80044888 000404E8  2C 03 00 00 */	cmpwi r3, 0
/* 8004488C 000404EC  4D 82 00 20 */	beqlr
/* 80044890 000404F0  48 00 01 00 */	b lbl_80044990
/* 80044894 000404F4  4E 80 00 20 */	blr

.global func_80044898
func_80044898:
/* 80044898 000404F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004489C 000404FC  7C 08 02 A6 */	mflr r0
/* 800448A0 00040500  90 01 00 24 */	stw r0, 0x24(r1)
/* 800448A4 00040504  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800448A8 00040508  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800448AC 0004050C  3B C3 07 80 */	addi r30, r3, 0x780
/* 800448B0 00040510  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800448B4 00040514  7C 7D 1B 78 */	mr r29, r3
/* 800448B8 00040518  7F BF EB 78 */	mr r31, r29
lbl_800448BC:
/* 800448BC 0004051C  7F E3 FB 78 */	mr r3, r31
/* 800448C0 00040520  48 00 02 A5 */	bl func_80044B64
/* 800448C4 00040524  3B FF 00 F0 */	addi r31, r31, 0xf0
/* 800448C8 00040528  7C 1F F0 40 */	cmplw r31, r30
/* 800448CC 0004052C  41 80 FF F0 */	blt lbl_800448BC
/* 800448D0 00040530  3B FD 0E C0 */	addi r31, r29, 0xec0
lbl_800448D4:
/* 800448D4 00040534  7F C3 F3 78 */	mr r3, r30
/* 800448D8 00040538  48 00 01 2D */	bl func_80044A04
/* 800448DC 0004053C  3B DE 00 E8 */	addi r30, r30, 0xe8
/* 800448E0 00040540  7C 1E F8 40 */	cmplw r30, r31
/* 800448E4 00040544  41 80 FF F0 */	blt lbl_800448D4
/* 800448E8 00040548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800448EC 0004054C  7F A3 EB 78 */	mr r3, r29
/* 800448F0 00040550  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800448F4 00040554  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800448F8 00040558  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800448FC 0004055C  7C 08 03 A6 */	mtlr r0
/* 80044900 00040560  38 21 00 20 */	addi r1, r1, 0x20
/* 80044904 00040564  4E 80 00 20 */	blr

.global func_80044908
func_80044908:
/* 80044908 00040568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004490C 0004056C  7C 08 02 A6 */	mflr r0
/* 80044910 00040570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044914 00040574  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80044918 00040578  FF E0 08 90 */	fmr f31, f1
/* 8004491C 0004057C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80044920 00040580  3B E3 0E C0 */	addi r31, r3, 0xec0
/* 80044924 00040584  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80044928 00040588  3B C3 07 80 */	addi r30, r3, 0x780
/* 8004492C 0004058C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80044930 00040590  7C 7D 1B 78 */	mr r29, r3
/* 80044934 00040594  48 00 00 14 */	b lbl_80044948
lbl_80044938:
/* 80044938 00040598  FC 20 F8 90 */	fmr f1, f31
/* 8004493C 0004059C  7F C3 F3 78 */	mr r3, r30
/* 80044940 000405A0  48 00 01 69 */	bl func_80044AA8
/* 80044944 000405A4  3B DE 00 E8 */	addi r30, r30, 0xe8
lbl_80044948:
/* 80044948 000405A8  7C 1E F8 40 */	cmplw r30, r31
/* 8004494C 000405AC  40 82 FF EC */	bne lbl_80044938
/* 80044950 000405B0  3B FD 07 80 */	addi r31, r29, 0x780
/* 80044954 000405B4  48 00 00 14 */	b lbl_80044968
lbl_80044958:
/* 80044958 000405B8  FC 20 F8 90 */	fmr f1, f31
/* 8004495C 000405BC  7F A3 EB 78 */	mr r3, r29
/* 80044960 000405C0  48 00 04 35 */	bl func_80044D94
/* 80044964 000405C4  3B BD 00 F0 */	addi r29, r29, 0xf0
lbl_80044968:
/* 80044968 000405C8  7C 1D F8 40 */	cmplw r29, r31
/* 8004496C 000405CC  40 82 FF EC */	bne lbl_80044958
/* 80044970 000405D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044974 000405D4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80044978 000405D8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8004497C 000405DC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80044980 000405E0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80044984 000405E4  7C 08 03 A6 */	mtlr r0
/* 80044988 000405E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8004498C 000405EC  4E 80 00 20 */	blr
lbl_80044990:
/* 80044990 000405F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044994 000405F4  7C 08 02 A6 */	mflr r0
/* 80044998 000405F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004499C 000405FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800449A0 00040600  3B E3 0E C0 */	addi r31, r3, 0xec0
/* 800449A4 00040604  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800449A8 00040608  3B C3 07 80 */	addi r30, r3, 0x780
/* 800449AC 0004060C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800449B0 00040610  7C 7D 1B 78 */	mr r29, r3
/* 800449B4 00040614  48 00 00 10 */	b lbl_800449C4
lbl_800449B8:
/* 800449B8 00040618  7F C3 F3 78 */	mr r3, r30
/* 800449BC 0004061C  48 00 00 F1 */	bl func_80044AAC
/* 800449C0 00040620  3B DE 00 E8 */	addi r30, r30, 0xe8
lbl_800449C4:
/* 800449C4 00040624  7C 1E F8 40 */	cmplw r30, r31
/* 800449C8 00040628  40 82 FF F0 */	bne lbl_800449B8
/* 800449CC 0004062C  3B FD 07 80 */	addi r31, r29, 0x780
/* 800449D0 00040630  48 00 00 10 */	b lbl_800449E0
lbl_800449D4:
/* 800449D4 00040634  7F A3 EB 78 */	mr r3, r29
/* 800449D8 00040638  48 00 04 1D */	bl func_80044DF4
/* 800449DC 0004063C  3B BD 00 F0 */	addi r29, r29, 0xf0
lbl_800449E0:
/* 800449E0 00040640  7C 1D F8 40 */	cmplw r29, r31
/* 800449E4 00040644  40 82 FF F0 */	bne lbl_800449D4
/* 800449E8 00040648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800449EC 0004064C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800449F0 00040650  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800449F4 00040654  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800449F8 00040658  7C 08 03 A6 */	mtlr r0
/* 800449FC 0004065C  38 21 00 20 */	addi r1, r1, 0x20
/* 80044A00 00040660  4E 80 00 20 */	blr

.global func_80044A04
func_80044A04:
/* 80044A04 00040664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044A08 00040668  7C 08 02 A6 */	mflr r0
/* 80044A0C 0004066C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044A10 00040670  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80044A14 00040674  3B E3 00 88 */	addi r31, r3, 0x88
/* 80044A18 00040678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80044A1C 0004067C  3B C3 00 1C */	addi r30, r3, 0x1c
/* 80044A20 00040680  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80044A24 00040684  7C 7D 1B 78 */	mr r29, r3
lbl_80044A28:
/* 80044A28 00040688  7F C3 F3 78 */	mr r3, r30
/* 80044A2C 0004068C  48 00 B8 F9 */	bl func_80050324
/* 80044A30 00040690  3B DE 00 24 */	addi r30, r30, 0x24
/* 80044A34 00040694  7C 1E F8 40 */	cmplw r30, r31
/* 80044A38 00040698  41 80 FF F0 */	blt lbl_80044A28
/* 80044A3C 0004069C  C0 02 83 78 */	lfs f0, lbl_80640978-_SDA2_BASE_(r2)
/* 80044A40 000406A0  38 80 00 00 */	li r4, 0
/* 80044A44 000406A4  38 00 FF FF */	li r0, -1
/* 80044A48 000406A8  98 9D 00 00 */	stb r4, 0(r29)
/* 80044A4C 000406AC  7F A3 EB 78 */	mr r3, r29
/* 80044A50 000406B0  B0 9D 00 14 */	sth r4, 0x14(r29)
/* 80044A54 000406B4  B0 9D 00 16 */	sth r4, 0x16(r29)
/* 80044A58 000406B8  90 9D 00 18 */	stw r4, 0x18(r29)
/* 80044A5C 000406BC  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80044A60 000406C0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80044A64 000406C4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80044A68 000406C8  90 9D 00 04 */	stw r4, 4(r29)
/* 80044A6C 000406CC  98 9D 00 01 */	stb r4, 1(r29)
/* 80044A70 000406D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80044A74 000406D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80044A78 000406D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80044A7C 000406DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044A80 000406E0  7C 08 03 A6 */	mtlr r0
/* 80044A84 000406E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80044A88 000406E8  4E 80 00 20 */	blr

.global Audio_SoundAttributes_SetSoundType
Audio_SoundAttributes_SetSoundType:
/* 80044A8C 000406EC  90 83 00 04 */	stw r4, 4(r3)
/* 80044A90 000406F0  98 A3 00 01 */	stb r5, 1(r3)
/* 80044A94 000406F4  4E 80 00 20 */	blr

.global func_80044A98
func_80044A98:
/* 80044A98 000406F8  4E 80 00 20 */	blr

.global func_80044A9C
func_80044A9C:
/* 80044A9C 000406FC  7C 83 23 78 */	mr r3, r4
/* 80044AA0 00040700  7C A4 2B 78 */	mr r4, r5
/* 80044AA4 00040704  48 11 78 64 */	b func_8015C308

.global func_80044AA8
func_80044AA8:
/* 80044AA8 00040708  4E 80 00 20 */	blr

.global func_80044AAC
func_80044AAC:
/* 80044AAC 0004070C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044AB0 00040710  7C 08 02 A6 */	mflr r0
/* 80044AB4 00040714  7C 65 1B 78 */	mr r5, r3
/* 80044AB8 00040718  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044ABC 0004071C  88 03 00 00 */	lbz r0, 0(r3)
/* 80044AC0 00040720  2C 00 00 00 */	cmpwi r0, 0
/* 80044AC4 00040724  41 82 00 90 */	beq lbl_80044B54
/* 80044AC8 00040728  80 83 00 04 */	lwz r4, 4(r3)
/* 80044ACC 0004072C  2C 04 00 00 */	cmpwi r4, 0
/* 80044AD0 00040730  41 82 00 84 */	beq lbl_80044B54
/* 80044AD4 00040734  88 03 00 01 */	lbz r0, 1(r3)
/* 80044AD8 00040738  2C 00 00 00 */	cmpwi r0, 0
/* 80044ADC 0004073C  41 82 00 44 */	beq lbl_80044B20
/* 80044AE0 00040740  C0 25 00 08 */	lfs f1, 8(r5)
/* 80044AE4 00040744  7C 83 23 78 */	mr r3, r4
/* 80044AE8 00040748  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80044AEC 0004074C  39 20 00 00 */	li r9, 0
/* 80044AF0 00040750  FC 20 08 1E */	fctiwz f1, f1
/* 80044AF4 00040754  A8 C5 00 14 */	lha r6, 0x14(r5)
/* 80044AF8 00040758  FC 00 00 1E */	fctiwz f0, f0
/* 80044AFC 0004075C  A8 E5 00 16 */	lha r7, 0x16(r5)
/* 80044B00 00040760  81 05 00 10 */	lwz r8, 0x10(r5)
/* 80044B04 00040764  39 40 00 01 */	li r10, 1
/* 80044B08 00040768  D8 21 00 08 */	stfd f1, 8(r1)
/* 80044B0C 0004076C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80044B10 00040770  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80044B14 00040774  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80044B18 00040778  48 20 B5 85 */	bl func_8025009C
/* 80044B1C 0004077C  48 00 00 38 */	b lbl_80044B54
lbl_80044B20:
/* 80044B20 00040780  C0 25 00 08 */	lfs f1, 8(r5)
/* 80044B24 00040784  7C 83 23 78 */	mr r3, r4
/* 80044B28 00040788  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80044B2C 0004078C  FC 20 08 1E */	fctiwz f1, f1
/* 80044B30 00040790  A8 C5 00 14 */	lha r6, 0x14(r5)
/* 80044B34 00040794  FC 00 00 1E */	fctiwz f0, f0
/* 80044B38 00040798  A8 E5 00 16 */	lha r7, 0x16(r5)
/* 80044B3C 0004079C  81 05 00 10 */	lwz r8, 0x10(r5)
/* 80044B40 000407A0  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80044B44 000407A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80044B48 000407A8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80044B4C 000407AC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80044B50 000407B0  48 20 B5 E5 */	bl func_80250134
lbl_80044B54:
/* 80044B54 000407B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044B58 000407B8  7C 08 03 A6 */	mtlr r0
/* 80044B5C 000407BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80044B60 000407C0  4E 80 00 20 */	blr

.global func_80044B64
func_80044B64:
/* 80044B64 000407C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044B68 000407C8  7C 08 02 A6 */	mflr r0
/* 80044B6C 000407CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044B70 000407D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80044B74 000407D4  3B E3 00 90 */	addi r31, r3, 0x90
/* 80044B78 000407D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80044B7C 000407DC  3B C3 00 24 */	addi r30, r3, 0x24
/* 80044B80 000407E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80044B84 000407E4  7C 7D 1B 78 */	mr r29, r3
lbl_80044B88:
/* 80044B88 000407E8  7F C3 F3 78 */	mr r3, r30
/* 80044B8C 000407EC  48 00 B7 99 */	bl func_80050324
/* 80044B90 000407F0  3B DE 00 24 */	addi r30, r30, 0x24
/* 80044B94 000407F4  7C 1E F8 40 */	cmplw r30, r31
/* 80044B98 000407F8  41 80 FF F0 */	blt lbl_80044B88
/* 80044B9C 000407FC  C0 02 83 78 */	lfs f0, lbl_80640978-_SDA2_BASE_(r2)
/* 80044BA0 00040800  38 C0 00 00 */	li r6, 0
/* 80044BA4 00040804  38 A0 00 AF */	li r5, 0xaf
/* 80044BA8 00040808  38 80 00 FF */	li r4, 0xff
/* 80044BAC 0004080C  38 00 00 64 */	li r0, 0x64
/* 80044BB0 00040810  98 DD 00 00 */	stb r6, 0(r29)
/* 80044BB4 00040814  7F A3 EB 78 */	mr r3, r29
/* 80044BB8 00040818  98 DD 00 01 */	stb r6, 1(r29)
/* 80044BBC 0004081C  90 DD 00 04 */	stw r6, 4(r29)
/* 80044BC0 00040820  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80044BC4 00040824  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80044BC8 00040828  98 BD 00 10 */	stb r5, 0x10(r29)
/* 80044BCC 0004082C  98 BD 00 11 */	stb r5, 0x11(r29)
/* 80044BD0 00040830  98 BD 00 12 */	stb r5, 0x12(r29)
/* 80044BD4 00040834  98 9D 00 13 */	stb r4, 0x13(r29)
/* 80044BD8 00040838  98 DD 00 14 */	stb r6, 0x14(r29)
/* 80044BDC 0004083C  98 DD 00 15 */	stb r6, 0x15(r29)
/* 80044BE0 00040840  98 BD 00 16 */	stb r5, 0x16(r29)
/* 80044BE4 00040844  98 9D 00 17 */	stb r4, 0x17(r29)
/* 80044BE8 00040848  98 DD 00 18 */	stb r6, 0x18(r29)
/* 80044BEC 0004084C  98 DD 00 19 */	stb r6, 0x19(r29)
/* 80044BF0 00040850  98 DD 00 1A */	stb r6, 0x1a(r29)
/* 80044BF4 00040854  98 9D 00 1B */	stb r4, 0x1b(r29)
/* 80044BF8 00040858  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80044BFC 0004085C  90 DD 00 20 */	stw r6, 0x20(r29)
/* 80044C00 00040860  B0 DD 00 90 */	sth r6, 0x90(r29)
/* 80044C04 00040864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80044C08 00040868  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80044C0C 0004086C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80044C10 00040870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044C14 00040874  7C 08 03 A6 */	mtlr r0
/* 80044C18 00040878  38 21 00 20 */	addi r1, r1, 0x20
/* 80044C1C 0004087C  4E 80 00 20 */	blr

.global func_80044C20
func_80044C20:
/* 80044C20 00040880  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 80044C24 00040884  7C 08 02 A6 */	mflr r0
/* 80044C28 00040888  90 01 02 14 */	stw r0, 0x214(r1)
/* 80044C2C 0004088C  7C 80 23 78 */	mr r0, r4
/* 80044C30 00040890  93 E1 02 0C */	stw r31, 0x20c(r1)
/* 80044C34 00040894  7C 7F 1B 78 */	mr r31, r3
/* 80044C38 00040898  90 83 00 04 */	stw r4, 4(r3)
/* 80044C3C 0004089C  38 81 00 08 */	addi r4, r1, 8
/* 80044C40 000408A0  7C 03 03 78 */	mr r3, r0
/* 80044C44 000408A4  48 20 B7 95 */	bl func_802503D8
/* 80044C48 000408A8  7C 60 07 34 */	extsh r0, r3
/* 80044C4C 000408AC  2C 00 00 30 */	cmpwi r0, 0x30
/* 80044C50 000408B0  41 80 00 08 */	blt lbl_80044C58
/* 80044C54 000408B4  38 60 00 2F */	li r3, 0x2f
lbl_80044C58:
/* 80044C58 000408B8  7C 60 07 34 */	extsh r0, r3
/* 80044C5C 000408BC  38 E0 00 00 */	li r7, 0
/* 80044C60 000408C0  54 05 08 3C */	slwi r5, r0, 1
/* 80044C64 000408C4  38 7F 00 90 */	addi r3, r31, 0x90
/* 80044C68 000408C8  7C DF 2A 14 */	add r6, r31, r5
/* 80044C6C 000408CC  38 81 00 08 */	addi r4, r1, 8
/* 80044C70 000408D0  B0 E6 00 90 */	sth r7, 0x90(r6)
/* 80044C74 000408D4  4B FB F3 8D */	bl memcpy
/* 80044C78 000408D8  80 01 02 14 */	lwz r0, 0x214(r1)
/* 80044C7C 000408DC  83 E1 02 0C */	lwz r31, 0x20c(r1)
/* 80044C80 000408E0  7C 08 03 A6 */	mtlr r0
/* 80044C84 000408E4  38 21 02 10 */	addi r1, r1, 0x210
/* 80044C88 000408E8  4E 80 00 20 */	blr

.global func_80044C8C
func_80044C8C:
/* 80044C8C 000408EC  7C 83 23 78 */	mr r3, r4
/* 80044C90 000408F0  7C A4 2B 78 */	mr r4, r5
/* 80044C94 000408F4  48 11 76 74 */	b func_8015C308

.global func_80044C98
func_80044C98:
/* 80044C98 000408F8  2C 04 00 00 */	cmpwi r4, 0
/* 80044C9C 000408FC  40 82 00 18 */	bne lbl_80044CB4
/* 80044CA0 00040900  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80044CA4 00040904  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80044CA8 00040908  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80044CAC 0004090C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80044CB0 00040910  4E 80 00 20 */	blr
lbl_80044CB4:
/* 80044CB4 00040914  2C 04 00 01 */	cmpwi r4, 1
/* 80044CB8 00040918  4C 82 00 20 */	bnelr
/* 80044CBC 0004091C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80044CC0 00040920  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80044CC4 00040924  60 00 00 04 */	ori r0, r0, 4
/* 80044CC8 00040928  90 03 00 20 */	stw r0, 0x20(r3)
/* 80044CCC 0004092C  4E 80 00 20 */	blr

.global func_80044CD0
func_80044CD0:
/* 80044CD0 00040930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044CD4 00040934  7C 08 02 A6 */	mflr r0
/* 80044CD8 00040938  C8 22 83 80 */	lfd f1, lbl_80640980-_SDA2_BASE_(r2)
/* 80044CDC 0004093C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044CE0 00040940  3C 00 43 30 */	lis r0, 0x4330
/* 80044CE4 00040944  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 80044CE8 00040948  38 63 00 90 */	addi r3, r3, 0x90
/* 80044CEC 0004094C  90 01 00 08 */	stw r0, 8(r1)
/* 80044CF0 00040950  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80044CF4 00040954  90 01 00 0C */	stw r0, 0xc(r1)
/* 80044CF8 00040958  C8 01 00 08 */	lfd f0, 8(r1)
/* 80044CFC 0004095C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80044D00 00040960  48 20 B8 61 */	bl func_80250560
/* 80044D04 00040964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044D08 00040968  7C 08 03 A6 */	mtlr r0
/* 80044D0C 0004096C  38 21 00 10 */	addi r1, r1, 0x10
/* 80044D10 00040970  4E 80 00 20 */	blr

.global func_80044D14
func_80044D14:
/* 80044D14 00040974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044D18 00040978  7C 08 02 A6 */	mflr r0
/* 80044D1C 0004097C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044D20 00040980  38 A1 00 08 */	addi r5, r1, 8
/* 80044D24 00040984  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80044D28 00040988  FF E0 18 90 */	fmr f31, f3
/* 80044D2C 0004098C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80044D30 00040990  7C 9F 23 78 */	mr r31, r4
/* 80044D34 00040994  38 83 00 08 */	addi r4, r3, 8
/* 80044D38 00040998  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80044D3C 0004099C  7C 7E 1B 78 */	mr r30, r3
/* 80044D40 000409A0  7F E7 FB 78 */	mr r7, r31
/* 80044D44 000409A4  7C 86 23 78 */	mr r6, r4
/* 80044D48 000409A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80044D4C 000409AC  FC 20 F8 90 */	fmr f1, f31
/* 80044D50 000409B0  38 63 00 24 */	addi r3, r3, 0x24
/* 80044D54 000409B4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80044D58 000409B8  48 00 B5 E5 */	bl func_8005033C
/* 80044D5C 000409BC  FC 20 F8 90 */	fmr f1, f31
/* 80044D60 000409C0  38 9E 00 0C */	addi r4, r30, 0xc
/* 80044D64 000409C4  7C 86 23 78 */	mr r6, r4
/* 80044D68 000409C8  7F E7 FB 78 */	mr r7, r31
/* 80044D6C 000409CC  38 7E 00 48 */	addi r3, r30, 0x48
/* 80044D70 000409D0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80044D74 000409D4  48 00 B5 C9 */	bl func_8005033C
/* 80044D78 000409D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044D7C 000409DC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80044D80 000409E0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80044D84 000409E4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80044D88 000409E8  7C 08 03 A6 */	mtlr r0
/* 80044D8C 000409EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80044D90 000409F0  4E 80 00 20 */	blr

.global func_80044D94
func_80044D94:
/* 80044D94 000409F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044D98 000409F8  7C 08 02 A6 */	mflr r0
/* 80044D9C 000409FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044DA0 00040A00  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80044DA4 00040A04  FF E0 08 90 */	fmr f31, f1
/* 80044DA8 00040A08  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80044DAC 00040A0C  7C 7F 1B 78 */	mr r31, r3
/* 80044DB0 00040A10  81 83 00 44 */	lwz r12, 0x44(r3)
/* 80044DB4 00040A14  81 8C 00 08 */	lwz r12, 8(r12)
/* 80044DB8 00040A18  7D 89 03 A6 */	mtctr r12
/* 80044DBC 00040A1C  38 63 00 24 */	addi r3, r3, 0x24
/* 80044DC0 00040A20  4E 80 04 21 */	bctrl
/* 80044DC4 00040A24  81 9F 00 68 */	lwz r12, 0x68(r31)
/* 80044DC8 00040A28  FC 20 F8 90 */	fmr f1, f31
/* 80044DCC 00040A2C  38 7F 00 48 */	addi r3, r31, 0x48
/* 80044DD0 00040A30  81 8C 00 08 */	lwz r12, 8(r12)
/* 80044DD4 00040A34  7D 89 03 A6 */	mtctr r12
/* 80044DD8 00040A38  4E 80 04 21 */	bctrl
/* 80044DDC 00040A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044DE0 00040A40  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80044DE4 00040A44  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80044DE8 00040A48  7C 08 03 A6 */	mtlr r0
/* 80044DEC 00040A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80044DF0 00040A50  4E 80 00 20 */	blr

.global func_80044DF4
func_80044DF4:
/* 80044DF4 00040A54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80044DF8 00040A58  7C 08 02 A6 */	mflr r0
/* 80044DFC 00040A5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80044E00 00040A60  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80044E04 00040A64  7C 7F 1B 78 */	mr r31, r3
/* 80044E08 00040A68  88 03 00 00 */	lbz r0, 0(r3)
/* 80044E0C 00040A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80044E10 00040A70  41 82 00 E4 */	beq lbl_80044EF4
/* 80044E14 00040A74  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80044E18 00040A78  38 81 00 10 */	addi r4, r1, 0x10
/* 80044E1C 00040A7C  98 01 00 10 */	stb r0, 0x10(r1)
/* 80044E20 00040A80  88 03 00 15 */	lbz r0, 0x15(r3)
/* 80044E24 00040A84  98 01 00 11 */	stb r0, 0x11(r1)
/* 80044E28 00040A88  88 03 00 16 */	lbz r0, 0x16(r3)
/* 80044E2C 00040A8C  98 01 00 12 */	stb r0, 0x12(r1)
/* 80044E30 00040A90  88 03 00 17 */	lbz r0, 0x17(r3)
/* 80044E34 00040A94  38 60 00 00 */	li r3, 0
/* 80044E38 00040A98  98 01 00 13 */	stb r0, 0x13(r1)
/* 80044E3C 00040A9C  48 20 B7 B5 */	bl func_802505F0
/* 80044E40 00040AA0  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80044E44 00040AA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80044E48 00040AA8  38 60 00 01 */	li r3, 1
/* 80044E4C 00040AAC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80044E50 00040AB0  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80044E54 00040AB4  98 01 00 0D */	stb r0, 0xd(r1)
/* 80044E58 00040AB8  88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 80044E5C 00040ABC  98 01 00 0E */	stb r0, 0xe(r1)
/* 80044E60 00040AC0  88 1F 00 1B */	lbz r0, 0x1b(r31)
/* 80044E64 00040AC4  98 01 00 0F */	stb r0, 0xf(r1)
/* 80044E68 00040AC8  48 20 B7 89 */	bl func_802505F0
/* 80044E6C 00040ACC  88 7F 00 01 */	lbz r3, 1(r31)
/* 80044E70 00040AD0  48 20 B7 E5 */	bl func_80250654
/* 80044E74 00040AD4  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 80044E78 00040AD8  3C 00 43 30 */	lis r0, 0x4330
/* 80044E7C 00040ADC  3C 60 80 41 */	lis r3, lbl_8040A430@ha
/* 80044E80 00040AE0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80044E84 00040AE4  C8 22 83 80 */	lfd f1, lbl_80640980-_SDA2_BASE_(r2)
/* 80044E88 00040AE8  38 63 A4 30 */	addi r3, r3, lbl_8040A430@l
/* 80044E8C 00040AEC  98 81 00 08 */	stb r4, 8(r1)
/* 80044E90 00040AF0  38 C1 00 08 */	addi r6, r1, 8
/* 80044E94 00040AF4  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 80044E98 00040AF8  98 01 00 09 */	stb r0, 9(r1)
/* 80044E9C 00040AFC  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 80044EA0 00040B00  98 01 00 0A */	stb r0, 0xa(r1)
/* 80044EA4 00040B04  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 80044EA8 00040B08  98 01 00 0B */	stb r0, 0xb(r1)
/* 80044EAC 00040B0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80044EB0 00040B10  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80044EB4 00040B14  FC 60 10 1E */	fctiwz f3, f2
/* 80044EB8 00040B18  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80044EBC 00040B1C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80044EC0 00040B20  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80044EC4 00040B24  FC 40 00 1E */	fctiwz f2, f0
/* 80044EC8 00040B28  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80044ECC 00040B2C  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 80044ED0 00040B30  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 80044ED4 00040B34  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80044ED8 00040B38  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 80044EDC 00040B3C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80044EE0 00040B40  EC 20 08 28 */	fsubs f1, f0, f1
/* 80044EE4 00040B44  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80044EE8 00040B48  7C 84 07 34 */	extsh r4, r4
/* 80044EEC 00040B4C  7C A5 07 34 */	extsh r5, r5
/* 80044EF0 00040B50  48 20 B5 31 */	bl func_80250420
lbl_80044EF4:
/* 80044EF4 00040B54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80044EF8 00040B58  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80044EFC 00040B5C  7C 08 03 A6 */	mtlr r0
/* 80044F00 00040B60  38 21 00 40 */	addi r1, r1, 0x40
/* 80044F04 00040B64  4E 80 00 20 */	blr

.global func_80044F08
func_80044F08:
/* 80044F08 00040B68  38 A0 00 01 */	li r5, 1
/* 80044F0C 00040B6C  38 6D 97 E0 */	addi r3, r13, lbl_8063EAA0-_SDA_BASE_
/* 80044F10 00040B70  38 80 00 04 */	li r4, 4
/* 80044F14 00040B74  38 00 00 00 */	li r0, 0
/* 80044F18 00040B78  98 AD 97 E0 */	stb r5, lbl_8063EAA0-_SDA_BASE_(r13)
/* 80044F1C 00040B7C  B0 83 00 02 */	sth r4, 2(r3)
/* 80044F20 00040B80  98 03 00 04 */	stb r0, 4(r3)
/* 80044F24 00040B84  4E 80 00 20 */	blr
