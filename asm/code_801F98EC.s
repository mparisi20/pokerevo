.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801F98EC
func_801F98EC:
/* 801F98EC 001F554C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F98F0 001F5550  7C 08 02 A6 */	mflr r0
/* 801F98F4 001F5554  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F98F8 001F5558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F98FC 001F555C  7C 9F 23 78 */	mr r31, r4
/* 801F9900 001F5560  38 80 00 07 */	li r4, 7
/* 801F9904 001F5564  93 C1 00 08 */	stw r30, 8(r1)
/* 801F9908 001F5568  7C 7E 1B 78 */	mr r30, r3
/* 801F990C 001F556C  4B FF 81 DD */	bl __ct__6GSnullFUc
/* 801F9910 001F5570  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9914 001F5574  3C 60 80 42 */	lis r3, lbl_80423720@ha
/* 801F9918 001F5578  38 00 00 00 */	li r0, 0
/* 801F991C 001F557C  2C 1F 00 00 */	cmpwi r31, 0
/* 801F9920 001F5580  38 63 37 20 */	addi r3, r3, lbl_80423720@l
/* 801F9924 001F5584  90 1E 01 04 */	stw r0, 0x104(r30)
/* 801F9928 001F5588  90 7E 01 00 */	stw r3, 0x100(r30)
/* 801F992C 001F558C  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 801F9930 001F5590  D0 1E 01 0C */	stfs f0, 0x10c(r30)
/* 801F9934 001F5594  D0 1E 01 10 */	stfs f0, 0x110(r30)
/* 801F9938 001F5598  D0 1E 01 14 */	stfs f0, 0x114(r30)
/* 801F993C 001F559C  D0 1E 01 18 */	stfs f0, 0x118(r30)
/* 801F9940 001F55A0  D0 1E 01 1C */	stfs f0, 0x11c(r30)
/* 801F9944 001F55A4  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 801F9948 001F55A8  D0 1E 01 24 */	stfs f0, 0x124(r30)
/* 801F994C 001F55AC  D0 1E 01 28 */	stfs f0, 0x128(r30)
/* 801F9950 001F55B0  90 1E 01 2C */	stw r0, 0x12c(r30)
/* 801F9954 001F55B4  90 1E 01 30 */	stw r0, 0x130(r30)
/* 801F9958 001F55B8  93 FE 01 34 */	stw r31, 0x134(r30)
/* 801F995C 001F55BC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 801F9960 001F55C0  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 801F9964 001F55C4  41 82 00 14 */	beq lbl_801F9978
/* 801F9968 001F55C8  7F E3 FB 78 */	mr r3, r31
/* 801F996C 001F55CC  7F C4 F3 78 */	mr r4, r30
/* 801F9970 001F55D0  48 00 D5 01 */	bl func_80206E70
/* 801F9974 001F55D4  90 7E 01 38 */	stw r3, 0x138(r30)
lbl_801F9978:
/* 801F9978 001F55D8  7F C3 F3 78 */	mr r3, r30
/* 801F997C 001F55DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9980 001F55E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F9984 001F55E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9988 001F55E8  7C 08 03 A6 */	mtlr r0
/* 801F998C 001F55EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9990 001F55F0  4E 80 00 20 */	blr

.global func_801F9994
func_801F9994:
/* 801F9994 001F55F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9998 001F55F8  7C 08 02 A6 */	mflr r0
/* 801F999C 001F55FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F99A0 001F5600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F99A4 001F5604  7C 7F 1B 78 */	mr r31, r3
/* 801F99A8 001F5608  93 C1 00 08 */	stw r30, 8(r1)
/* 801F99AC 001F560C  7C BE 2B 78 */	mr r30, r5
/* 801F99B0 001F5610  4B FF 82 19 */	bl __ct__6GSnullFPvP11gUnkClass10
/* 801F99B4 001F5614  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F99B8 001F5618  3C 60 80 42 */	lis r3, lbl_80423720@ha
/* 801F99BC 001F561C  38 00 00 00 */	li r0, 0
/* 801F99C0 001F5620  93 DF 01 30 */	stw r30, 0x130(r31)
/* 801F99C4 001F5624  38 63 37 20 */	addi r3, r3, lbl_80423720@l
/* 801F99C8 001F5628  90 7F 01 00 */	stw r3, 0x100(r31)
/* 801F99CC 001F562C  90 1F 01 04 */	stw r0, 0x104(r31)
/* 801F99D0 001F5630  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 801F99D4 001F5634  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 801F99D8 001F5638  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 801F99DC 001F563C  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 801F99E0 001F5640  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801F99E4 001F5644  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801F99E8 001F5648  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 801F99EC 001F564C  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 801F99F0 001F5650  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 801F99F4 001F5654  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801F99F8 001F5658  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801F99FC 001F565C  2C 03 00 00 */	cmpwi r3, 0
/* 801F9A00 001F5660  90 7F 01 34 */	stw r3, 0x134(r31)
/* 801F9A04 001F5664  90 1F 01 38 */	stw r0, 0x138(r31)
/* 801F9A08 001F5668  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 801F9A0C 001F566C  41 82 00 10 */	beq lbl_801F9A1C
/* 801F9A10 001F5670  7F E4 FB 78 */	mr r4, r31
/* 801F9A14 001F5674  48 00 D4 5D */	bl func_80206E70
/* 801F9A18 001F5678  90 7F 01 38 */	stw r3, 0x138(r31)
lbl_801F9A1C:
/* 801F9A1C 001F567C  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 801F9A20 001F5680  38 80 00 00 */	li r4, 0
/* 801F9A24 001F5684  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801F9A28 001F5688  41 82 00 08 */	beq lbl_801F9A30
/* 801F9A2C 001F568C  60 84 00 01 */	ori r4, r4, 1
lbl_801F9A30:
/* 801F9A30 001F5690  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 801F9A34 001F5694  41 82 00 0C */	beq lbl_801F9A40
/* 801F9A38 001F5698  60 80 00 02 */	ori r0, r4, 2
/* 801F9A3C 001F569C  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_801F9A40:
/* 801F9A40 001F56A0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 801F9A44 001F56A4  41 82 00 0C */	beq lbl_801F9A50
/* 801F9A48 001F56A8  60 80 00 04 */	ori r0, r4, 4
/* 801F9A4C 001F56AC  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_801F9A50:
/* 801F9A50 001F56B0  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 801F9A54 001F56B4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801F9A58 001F56B8  7C 63 02 78 */	xor r3, r3, r0
/* 801F9A5C 001F56BC  70 60 01 24 */	andi. r0, r3, 0x124
/* 801F9A60 001F56C0  41 82 00 10 */	beq lbl_801F9A70
/* 801F9A64 001F56C4  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 801F9A68 001F56C8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801F9A6C 001F56CC  98 1F 00 13 */	stb r0, 0x13(r31)
lbl_801F9A70:
/* 801F9A70 001F56D0  70 60 00 92 */	andi. r0, r3, 0x92
/* 801F9A74 001F56D4  41 82 00 10 */	beq lbl_801F9A84
/* 801F9A78 001F56D8  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 801F9A7C 001F56DC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801F9A80 001F56E0  98 1F 00 13 */	stb r0, 0x13(r31)
lbl_801F9A84:
/* 801F9A84 001F56E4  70 60 00 49 */	andi. r0, r3, 0x49
/* 801F9A88 001F56E8  41 82 00 10 */	beq lbl_801F9A98
/* 801F9A8C 001F56EC  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 801F9A90 001F56F0  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801F9A94 001F56F4  98 1F 00 13 */	stb r0, 0x13(r31)
lbl_801F9A98:
/* 801F9A98 001F56F8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801F9A9C 001F56FC  7F E3 FB 78 */	mr r3, r31
/* 801F9AA0 001F5700  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 801F9AA4 001F5704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9AA8 001F5708  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F9AAC 001F570C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9AB0 001F5710  7C 08 03 A6 */	mtlr r0
/* 801F9AB4 001F5714  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9AB8 001F5718  4E 80 00 20 */	blr
/* 801F9ABC 001F571C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9AC0 001F5720  7C 08 02 A6 */	mflr r0
/* 801F9AC4 001F5724  2C 03 00 00 */	cmpwi r3, 0
/* 801F9AC8 001F5728  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9ACC 001F572C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9AD0 001F5730  7C 9F 23 78 */	mr r31, r4
/* 801F9AD4 001F5734  93 C1 00 08 */	stw r30, 8(r1)
/* 801F9AD8 001F5738  7C 7E 1B 78 */	mr r30, r3
/* 801F9ADC 001F573C  41 82 00 44 */	beq lbl_801F9B20
/* 801F9AE0 001F5740  80 03 01 38 */	lwz r0, 0x138(r3)
/* 801F9AE4 001F5744  3C 80 80 42 */	lis r4, lbl_80423720@ha
/* 801F9AE8 001F5748  38 84 37 20 */	addi r4, r4, lbl_80423720@l
/* 801F9AEC 001F574C  2C 00 00 00 */	cmpwi r0, 0
/* 801F9AF0 001F5750  90 83 01 00 */	stw r4, 0x100(r3)
/* 801F9AF4 001F5754  41 82 00 0C */	beq lbl_801F9B00
/* 801F9AF8 001F5758  7C 03 03 78 */	mr r3, r0
/* 801F9AFC 001F575C  48 00 D5 1D */	bl func_80207018
lbl_801F9B00:
/* 801F9B00 001F5760  7F C3 F3 78 */	mr r3, r30
/* 801F9B04 001F5764  38 80 00 00 */	li r4, 0
/* 801F9B08 001F5768  4B FF 84 1D */	bl __dt__6GSnullFv
/* 801F9B0C 001F576C  2C 1F 00 00 */	cmpwi r31, 0
/* 801F9B10 001F5770  40 81 00 10 */	ble lbl_801F9B20
/* 801F9B14 001F5774  80 6D 96 38 */	lwz r3, lbl_8063E8F8-_SDA_BASE_(r13)
/* 801F9B18 001F5778  7F C4 F3 78 */	mr r4, r30
/* 801F9B1C 001F577C  4B FE 12 2D */	bl func_801DAD48
lbl_801F9B20:
/* 801F9B20 001F5780  7F C3 F3 78 */	mr r3, r30
/* 801F9B24 001F5784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9B28 001F5788  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F9B2C 001F578C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9B30 001F5790  7C 08 03 A6 */	mtlr r0
/* 801F9B34 001F5794  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9B38 001F5798  4E 80 00 20 */	blr
/* 801F9B3C 001F579C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801F9B40 001F57A0  7C 08 02 A6 */	mflr r0
/* 801F9B44 001F57A4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801F9B48 001F57A8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801F9B4C 001F57AC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801F9B50 001F57B0  FF E0 08 90 */	fmr f31, f1
/* 801F9B54 001F57B4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801F9B58 001F57B8  7C 7F 1B 78 */	mr r31, r3
/* 801F9B5C 001F57BC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801F9B60 001F57C0  4B FF A1 1D */	bl func_801F3C7C__6GSnullFv
/* 801F9B64 001F57C4  2C 03 00 00 */	cmpwi r3, 0
/* 801F9B68 001F57C8  41 82 00 24 */	beq lbl_801F9B8C
/* 801F9B6C 001F57CC  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9B70 001F57D0  C3 E2 98 40 */	lfs f31, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9B74 001F57D4  2C 03 00 00 */	cmpwi r3, 0
/* 801F9B78 001F57D8  41 82 00 2C */	beq lbl_801F9BA4
/* 801F9B7C 001F57DC  A0 03 01 48 */	lhz r0, 0x148(r3)
/* 801F9B80 001F57E0  60 00 00 02 */	ori r0, r0, 2
/* 801F9B84 001F57E4  B0 03 01 48 */	sth r0, 0x148(r3)
/* 801F9B88 001F57E8  48 00 00 1C */	b lbl_801F9BA4
lbl_801F9B8C:
/* 801F9B8C 001F57EC  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9B90 001F57F0  2C 03 00 00 */	cmpwi r3, 0
/* 801F9B94 001F57F4  41 82 00 10 */	beq lbl_801F9BA4
/* 801F9B98 001F57F8  A0 03 01 48 */	lhz r0, 0x148(r3)
/* 801F9B9C 001F57FC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801F9BA0 001F5800  B0 03 01 48 */	sth r0, 0x148(r3)
lbl_801F9BA4:
/* 801F9BA4 001F5804  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 801F9BA8 001F5808  FC 20 F8 90 */	fmr f1, f31
/* 801F9BAC 001F580C  7F E3 FB 78 */	mr r3, r31
/* 801F9BB0 001F5810  54 1E 07 FE */	clrlwi r30, r0, 0x1f
/* 801F9BB4 001F5814  4B FF 9D AD */	bl func1__6GSnullFf
/* 801F9BB8 001F5818  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9BBC 001F581C  2C 03 00 00 */	cmpwi r3, 0
/* 801F9BC0 001F5820  41 82 04 64 */	beq lbl_801FA024
/* 801F9BC4 001F5824  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9BC8 001F5828  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801F9BCC 001F582C  41 82 00 30 */	beq lbl_801F9BFC
/* 801F9BD0 001F5830  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 801F9BD4 001F5834  C0 02 98 44 */	lfs f0, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9BD8 001F5838  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801F9BDC 001F583C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9BE0 001F5840  D0 3F 01 0C */	stfs f1, 0x10c(r31)
/* 801F9BE4 001F5844  4C 40 13 82 */	cror 2, 0, 2
/* 801F9BE8 001F5848  40 82 00 14 */	bne lbl_801F9BFC
/* 801F9BEC 001F584C  48 00 DB ED */	bl func_802077D8
/* 801F9BF0 001F5850  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9BF4 001F5854  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801F9BF8 001F5858  90 1F 01 04 */	stw r0, 0x104(r31)
lbl_801F9BFC:
/* 801F9BFC 001F585C  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9C00 001F5860  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801F9C04 001F5864  41 82 00 34 */	beq lbl_801F9C38
/* 801F9C08 001F5868  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 801F9C0C 001F586C  C0 02 98 44 */	lfs f0, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9C10 001F5870  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801F9C14 001F5874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9C18 001F5878  D0 3F 01 10 */	stfs f1, 0x110(r31)
/* 801F9C1C 001F587C  4C 40 13 82 */	cror 2, 0, 2
/* 801F9C20 001F5880  40 82 00 18 */	bne lbl_801F9C38
/* 801F9C24 001F5884  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9C28 001F5888  48 00 DA 25 */	bl func_8020764C
/* 801F9C2C 001F588C  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9C30 001F5890  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801F9C34 001F5894  90 1F 01 04 */	stw r0, 0x104(r31)
lbl_801F9C38:
/* 801F9C38 001F5898  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9C3C 001F589C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F9C40 001F58A0  41 82 00 58 */	beq lbl_801F9C98
/* 801F9C44 001F58A4  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 801F9C48 001F58A8  C0 02 98 44 */	lfs f0, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9C4C 001F58AC  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801F9C50 001F58B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F9C54 001F58B4  D0 3F 01 08 */	stfs f1, 0x108(r31)
/* 801F9C58 001F58B8  4C 40 13 82 */	cror 2, 0, 2
/* 801F9C5C 001F58BC  40 82 00 3C */	bne lbl_801F9C98
/* 801F9C60 001F58C0  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 801F9C64 001F58C4  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 801F9C68 001F58C8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 801F9C6C 001F58CC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801F9C70 001F58D0  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9C74 001F58D4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801F9C78 001F58D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801F9C7C 001F58DC  D0 5F 01 14 */	stfs f2, 0x114(r31)
/* 801F9C80 001F58E0  D0 3F 01 18 */	stfs f1, 0x118(r31)
/* 801F9C84 001F58E4  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801F9C88 001F58E8  48 00 D4 5D */	bl func_802070E4
/* 801F9C8C 001F58EC  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 801F9C90 001F58F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801F9C94 001F58F4  90 1F 01 04 */	stw r0, 0x104(r31)
lbl_801F9C98:
/* 801F9C98 001F58F8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 801F9C9C 001F58FC  2C 1E 00 00 */	cmpwi r30, 0
/* 801F9CA0 001F5900  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801F9CA4 001F5904  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 801F9CA8 001F5908  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801F9CAC 001F590C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 801F9CB0 001F5910  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801F9CB4 001F5914  41 82 02 48 */	beq lbl_801F9EFC
/* 801F9CB8 001F5918  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801F9CBC 001F591C  38 81 00 70 */	addi r4, r1, 0x70
/* 801F9CC0 001F5920  48 08 22 99 */	bl PSMTXCopy
/* 801F9CC4 001F5924  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 801F9CC8 001F5928  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801F9CCC 001F592C  EC 21 00 72 */	fmuls f1, f1, f1
/* 801F9CD0 001F5930  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 801F9CD4 001F5934  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F9CD8 001F5938  C0 62 98 40 */	lfs f3, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9CDC 001F593C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F9CE0 001F5940  EC 01 00 2A */	fadds f0, f1, f0
/* 801F9CE4 001F5944  EC 22 00 2A */	fadds f1, f2, f0
/* 801F9CE8 001F5948  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801F9CEC 001F594C  4C 40 13 82 */	cror 2, 0, 2
/* 801F9CF0 001F5950  40 82 00 08 */	bne lbl_801F9CF8
/* 801F9CF4 001F5954  48 00 00 0C */	b lbl_801F9D00
lbl_801F9CF8:
/* 801F9CF8 001F5958  4B FD AB 3D */	bl sqrt
/* 801F9CFC 001F595C  FC 60 08 18 */	frsp f3, f1
lbl_801F9D00:
/* 801F9D00 001F5960  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801F9D04 001F5964  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 801F9D08 001F5968  EC 21 00 72 */	fmuls f1, f1, f1
/* 801F9D0C 001F596C  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 801F9D10 001F5970  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F9D14 001F5974  C0 82 98 40 */	lfs f4, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9D18 001F5978  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F9D1C 001F597C  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 801F9D20 001F5980  EC 01 00 2A */	fadds f0, f1, f0
/* 801F9D24 001F5984  EC 22 00 2A */	fadds f1, f2, f0
/* 801F9D28 001F5988  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 801F9D2C 001F598C  4C 40 13 82 */	cror 2, 0, 2
/* 801F9D30 001F5990  40 82 00 08 */	bne lbl_801F9D38
/* 801F9D34 001F5994  48 00 00 0C */	b lbl_801F9D40
lbl_801F9D38:
/* 801F9D38 001F5998  4B FD AA FD */	bl sqrt
/* 801F9D3C 001F599C  FC 80 08 18 */	frsp f4, f1
lbl_801F9D40:
/* 801F9D40 001F59A0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801F9D44 001F59A4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801F9D48 001F59A8  EC 21 00 72 */	fmuls f1, f1, f1
/* 801F9D4C 001F59AC  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 801F9D50 001F59B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F9D54 001F59B4  C0 62 98 40 */	lfs f3, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9D58 001F59B8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F9D5C 001F59BC  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801F9D60 001F59C0  EC 01 00 2A */	fadds f0, f1, f0
/* 801F9D64 001F59C4  EC 22 00 2A */	fadds f1, f2, f0
/* 801F9D68 001F59C8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801F9D6C 001F59CC  4C 40 13 82 */	cror 2, 0, 2
/* 801F9D70 001F59D0  40 82 00 08 */	bne lbl_801F9D78
/* 801F9D74 001F59D4  48 00 00 0C */	b lbl_801F9D80
lbl_801F9D78:
/* 801F9D78 001F59D8  4B FD AA BD */	bl sqrt
/* 801F9D7C 001F59DC  FC 60 08 18 */	frsp f3, f1
lbl_801F9D80:
/* 801F9D80 001F59E0  FC 00 18 18 */	frsp f0, f3
/* 801F9D84 001F59E4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801F9D88 001F59E8  C0 82 98 48 */	lfs f4, lbl_80641E48-_SDA2_BASE_(r2)
/* 801F9D8C 001F59EC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801F9D90 001F59F0  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 801F9D94 001F59F4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 801F9D98 001F59F8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801F9D9C 001F59FC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 801F9DA0 001F5A00  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801F9DA4 001F5A04  40 81 00 28 */	ble lbl_801F9DCC
/* 801F9DA8 001F5A08  C0 22 98 44 */	lfs f1, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9DAC 001F5A0C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801F9DB0 001F5A10  40 80 00 1C */	bge lbl_801F9DCC
/* 801F9DB4 001F5A14  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9DB8 001F5A18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F9DBC 001F5A1C  40 80 00 08 */	bge lbl_801F9DC4
/* 801F9DC0 001F5A20  48 00 00 10 */	b lbl_801F9DD0
lbl_801F9DC4:
/* 801F9DC4 001F5A24  FC 80 08 90 */	fmr f4, f1
/* 801F9DC8 001F5A28  48 00 00 08 */	b lbl_801F9DD0
lbl_801F9DCC:
/* 801F9DCC 001F5A2C  C0 81 00 58 */	lfs f4, 0x58(r1)
lbl_801F9DD0:
/* 801F9DD0 001F5A30  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801F9DD4 001F5A34  C0 62 98 48 */	lfs f3, lbl_80641E48-_SDA2_BASE_(r2)
/* 801F9DD8 001F5A38  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801F9DDC 001F5A3C  40 81 00 28 */	ble lbl_801F9E04
/* 801F9DE0 001F5A40  C0 22 98 44 */	lfs f1, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9DE4 001F5A44  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801F9DE8 001F5A48  40 80 00 1C */	bge lbl_801F9E04
/* 801F9DEC 001F5A4C  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9DF0 001F5A50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F9DF4 001F5A54  40 80 00 08 */	bge lbl_801F9DFC
/* 801F9DF8 001F5A58  48 00 00 10 */	b lbl_801F9E08
lbl_801F9DFC:
/* 801F9DFC 001F5A5C  FC 60 08 90 */	fmr f3, f1
/* 801F9E00 001F5A60  48 00 00 08 */	b lbl_801F9E08
lbl_801F9E04:
/* 801F9E04 001F5A64  C0 61 00 5C */	lfs f3, 0x5c(r1)
lbl_801F9E08:
/* 801F9E08 001F5A68  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801F9E0C 001F5A6C  C0 A2 98 48 */	lfs f5, lbl_80641E48-_SDA2_BASE_(r2)
/* 801F9E10 001F5A70  FC 02 28 40 */	fcmpo cr0, f2, f5
/* 801F9E14 001F5A74  40 81 00 28 */	ble lbl_801F9E3C
/* 801F9E18 001F5A78  C0 22 98 44 */	lfs f1, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9E1C 001F5A7C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801F9E20 001F5A80  40 80 00 1C */	bge lbl_801F9E3C
/* 801F9E24 001F5A84  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9E28 001F5A88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F9E2C 001F5A8C  40 80 00 08 */	bge lbl_801F9E34
/* 801F9E30 001F5A90  48 00 00 10 */	b lbl_801F9E40
lbl_801F9E34:
/* 801F9E34 001F5A94  FC A0 08 90 */	fmr f5, f1
/* 801F9E38 001F5A98  48 00 00 08 */	b lbl_801F9E40
lbl_801F9E3C:
/* 801F9E3C 001F5A9C  C0 A1 00 60 */	lfs f5, 0x60(r1)
lbl_801F9E40:
/* 801F9E40 001F5AA0  C0 02 98 4C */	lfs f0, lbl_80641E4C-_SDA2_BASE_(r2)
/* 801F9E44 001F5AA4  38 61 00 70 */	addi r3, r1, 0x70
/* 801F9E48 001F5AA8  7C 64 1B 78 */	mr r4, r3
/* 801F9E4C 001F5AAC  EC 40 18 24 */	fdivs f2, f0, f3
/* 801F9E50 001F5AB0  EC 20 20 24 */	fdivs f1, f0, f4
/* 801F9E54 001F5AB4  EC 60 28 24 */	fdivs f3, f0, f5
/* 801F9E58 001F5AB8  48 08 27 11 */	bl PSMTXScaleApply
/* 801F9E5C 001F5ABC  38 61 00 20 */	addi r3, r1, 0x20
/* 801F9E60 001F5AC0  38 81 00 70 */	addi r4, r1, 0x70
/* 801F9E64 001F5AC4  48 08 33 61 */	bl C_QUATMtx
/* 801F9E68 001F5AC8  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9E6C 001F5ACC  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 801F9E70 001F5AD0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801F9E74 001F5AD4  2C 03 00 00 */	cmpwi r3, 0
/* 801F9E78 001F5AD8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801F9E7C 001F5ADC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801F9E80 001F5AE0  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801F9E84 001F5AE4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801F9E88 001F5AE8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801F9E8C 001F5AEC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801F9E90 001F5AF0  41 82 00 1C */	beq lbl_801F9EAC
/* 801F9E94 001F5AF4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801F9E98 001F5AF8  D0 03 01 14 */	stfs f0, 0x114(r3)
/* 801F9E9C 001F5AFC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801F9EA0 001F5B00  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 801F9EA4 001F5B04  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801F9EA8 001F5B08  D0 03 01 1C */	stfs f0, 0x11c(r3)
lbl_801F9EAC:
/* 801F9EAC 001F5B0C  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9EB0 001F5B10  2C 03 00 00 */	cmpwi r3, 0
/* 801F9EB4 001F5B14  41 82 00 24 */	beq lbl_801F9ED8
/* 801F9EB8 001F5B18  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801F9EBC 001F5B1C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801F9EC0 001F5B20  D0 23 01 20 */	stfs f1, 0x120(r3)
/* 801F9EC4 001F5B24  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801F9EC8 001F5B28  D0 03 01 24 */	stfs f0, 0x124(r3)
/* 801F9ECC 001F5B2C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801F9ED0 001F5B30  D0 23 01 28 */	stfs f1, 0x128(r3)
/* 801F9ED4 001F5B34  D0 03 01 2C */	stfs f0, 0x12c(r3)
lbl_801F9ED8:
/* 801F9ED8 001F5B38  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9EDC 001F5B3C  2C 03 00 00 */	cmpwi r3, 0
/* 801F9EE0 001F5B40  41 82 00 1C */	beq lbl_801F9EFC
/* 801F9EE4 001F5B44  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801F9EE8 001F5B48  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801F9EEC 001F5B4C  D0 03 01 30 */	stfs f0, 0x130(r3)
/* 801F9EF0 001F5B50  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801F9EF4 001F5B54  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 801F9EF8 001F5B58  D0 03 01 38 */	stfs f0, 0x138(r3)
lbl_801F9EFC:
/* 801F9EFC 001F5B5C  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9F00 001F5B60  2C 03 00 00 */	cmpwi r3, 0
/* 801F9F04 001F5B64  41 82 00 18 */	beq lbl_801F9F1C
/* 801F9F08 001F5B68  A0 03 01 48 */	lhz r0, 0x148(r3)
/* 801F9F0C 001F5B6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F9F10 001F5B70  41 82 00 0C */	beq lbl_801F9F1C
/* 801F9F14 001F5B74  38 00 00 01 */	li r0, 1
/* 801F9F18 001F5B78  48 00 00 08 */	b lbl_801F9F20
lbl_801F9F1C:
/* 801F9F1C 001F5B7C  38 00 00 00 */	li r0, 0
lbl_801F9F20:
/* 801F9F20 001F5B80  2C 00 00 00 */	cmpwi r0, 0
/* 801F9F24 001F5B84  41 82 01 00 */	beq lbl_801FA024
/* 801F9F28 001F5B88  7F E3 FB 78 */	mr r3, r31
/* 801F9F2C 001F5B8C  4B FF 9D 51 */	bl func_801F3C7C__6GSnullFv
/* 801F9F30 001F5B90  2C 03 00 00 */	cmpwi r3, 0
/* 801F9F34 001F5B94  40 82 00 94 */	bne lbl_801F9FC8
/* 801F9F38 001F5B98  C0 02 98 44 */	lfs f0, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9F3C 001F5B9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801F9F40 001F5BA0  40 81 00 88 */	ble lbl_801F9FC8
/* 801F9F44 001F5BA4  38 61 00 64 */	addi r3, r1, 0x64
/* 801F9F48 001F5BA8  38 9F 01 14 */	addi r4, r31, 0x114
/* 801F9F4C 001F5BAC  38 A1 00 08 */	addi r5, r1, 8
/* 801F9F50 001F5BB0  48 08 2D 99 */	bl PSVECSubtract
/* 801F9F54 001F5BB4  C0 22 98 44 */	lfs f1, lbl_80641E44-_SDA2_BASE_(r2)
/* 801F9F58 001F5BB8  38 61 00 08 */	addi r3, r1, 8
/* 801F9F5C 001F5BBC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801F9F60 001F5BC0  40 80 00 28 */	bge lbl_801F9F88
/* 801F9F64 001F5BC4  C0 42 98 48 */	lfs f2, lbl_80641E48-_SDA2_BASE_(r2)
/* 801F9F68 001F5BC8  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 801F9F6C 001F5BCC  40 81 00 1C */	ble lbl_801F9F88
/* 801F9F70 001F5BD0  C0 02 98 40 */	lfs f0, lbl_80641E40-_SDA2_BASE_(r2)
/* 801F9F74 001F5BD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801F9F78 001F5BD8  40 80 00 08 */	bge lbl_801F9F80
/* 801F9F7C 001F5BDC  48 00 00 08 */	b lbl_801F9F84
lbl_801F9F80:
/* 801F9F80 001F5BE0  FC 40 08 90 */	fmr f2, f1
lbl_801F9F84:
/* 801F9F84 001F5BE4  FF E0 10 90 */	fmr f31, f2
lbl_801F9F88:
/* 801F9F88 001F5BE8  C0 02 98 4C */	lfs f0, lbl_80641E4C-_SDA2_BASE_(r2)
/* 801F9F8C 001F5BEC  38 81 00 14 */	addi r4, r1, 0x14
/* 801F9F90 001F5BF0  EC 20 F8 24 */	fdivs f1, f0, f31
/* 801F9F94 001F5BF4  48 08 2D 79 */	bl PSVECScale
/* 801F9F98 001F5BF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801F9F9C 001F5BFC  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 801F9FA0 001F5C00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801F9FA4 001F5C04  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 801F9FA8 001F5C08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801F9FAC 001F5C0C  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 801F9FB0 001F5C10  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801F9FB4 001F5C14  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 801F9FB8 001F5C18  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801F9FBC 001F5C1C  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801F9FC0 001F5C20  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801F9FC4 001F5C24  D0 1F 01 1C */	stfs f0, 0x11c(r31)
lbl_801F9FC8:
/* 801F9FC8 001F5C28  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 801F9FCC 001F5C2C  2C 03 00 00 */	cmpwi r3, 0
/* 801F9FD0 001F5C30  41 82 00 1C */	beq lbl_801F9FEC
/* 801F9FD4 001F5C34  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 801F9FD8 001F5C38  D0 03 01 3C */	stfs f0, 0x13c(r3)
/* 801F9FDC 001F5C3C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 801F9FE0 001F5C40  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 801F9FE4 001F5C44  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 801F9FE8 001F5C48  D0 03 01 44 */	stfs f0, 0x144(r3)
lbl_801F9FEC:
/* 801F9FEC 001F5C4C  7F E3 FB 78 */	mr r3, r31
/* 801F9FF0 001F5C50  4B FF 9C F1 */	bl func_801F3CE0
/* 801F9FF4 001F5C54  80 9F 01 38 */	lwz r4, 0x138(r31)
/* 801F9FF8 001F5C58  2C 04 00 00 */	cmpwi r4, 0
/* 801F9FFC 001F5C5C  41 82 00 28 */	beq lbl_801FA024
/* 801FA000 001F5C60  2C 03 00 00 */	cmpwi r3, 0
/* 801FA004 001F5C64  41 82 00 14 */	beq lbl_801FA018
/* 801FA008 001F5C68  A0 04 01 48 */	lhz r0, 0x148(r4)
/* 801FA00C 001F5C6C  60 00 00 04 */	ori r0, r0, 4
/* 801FA010 001F5C70  B0 04 01 48 */	sth r0, 0x148(r4)
/* 801FA014 001F5C74  48 00 00 10 */	b lbl_801FA024
lbl_801FA018:
/* 801FA018 001F5C78  A0 04 01 48 */	lhz r0, 0x148(r4)
/* 801FA01C 001F5C7C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801FA020 001F5C80  B0 04 01 48 */	sth r0, 0x148(r4)
lbl_801FA024:
/* 801FA024 001F5C84  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801FA028 001F5C88  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801FA02C 001F5C8C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801FA030 001F5C90  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801FA034 001F5C94  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801FA038 001F5C98  7C 08 03 A6 */	mtlr r0
/* 801FA03C 001F5C9C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801FA040 001F5CA0  4E 80 00 20 */	blr

.global func_801FA044
func_801FA044:
/* 801FA044 001F5CA4  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 801FA048 001F5CA8  2C 00 00 00 */	cmpwi r0, 0
/* 801FA04C 001F5CAC  41 82 00 0C */	beq lbl_801FA058
/* 801FA050 001F5CB0  7C 03 03 78 */	mr r3, r0
/* 801FA054 001F5CB4  4E 80 00 20 */	blr
lbl_801FA058:
/* 801FA058 001F5CB8  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 801FA05C 001F5CBC  2C 03 00 00 */	cmpwi r3, 0
/* 801FA060 001F5CC0  41 82 00 0C */	beq lbl_801FA06C
/* 801FA064 001F5CC4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 801FA068 001F5CC8  4E 80 00 20 */	blr
lbl_801FA06C:
/* 801FA06C 001F5CCC  38 60 00 00 */	li r3, 0
/* 801FA070 001F5CD0  4E 80 00 20 */	blr

.global func_801FA074
func_801FA074:
/* 801FA074 001F5CD4  38 A0 00 01 */	li r5, 1
/* 801FA078 001F5CD8  38 6D A1 28 */	addi r3, r13, lbl_8063F3E8-_SDA_BASE_
/* 801FA07C 001F5CDC  38 80 00 04 */	li r4, 4
/* 801FA080 001F5CE0  38 00 00 00 */	li r0, 0
/* 801FA084 001F5CE4  98 AD A1 28 */	stb r5, lbl_8063F3E8-_SDA_BASE_(r13)
/* 801FA088 001F5CE8  B0 83 00 02 */	sth r4, 2(r3)
/* 801FA08C 001F5CEC  98 03 00 04 */	stb r0, 4(r3)
/* 801FA090 001F5CF0  4E 80 00 20 */	blr
