.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

lbl_80006980:
/* 80006980 000025E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006984 000025E4  7C 08 02 A6 */	mflr r0
/* 80006988 000025E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000698C 000025EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006990 000025F0  80 6D A4 C8 */	lwz r3, lbl_8063F788-_SDA_BASE_(r13)
/* 80006994 000025F4  8B E3 00 59 */	lbz r31, 0x59(r3)
/* 80006998 000025F8  48 23 96 55 */	bl func_8023FFEC
/* 8000699C 000025FC  3C 00 43 30 */	lis r0, 0x4330
/* 800069A0 00002600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800069A4 00002604  C8 62 80 08 */	lfd f3, lbl_80640608-_SDA2_BASE_(r2)
/* 800069A8 00002608  90 01 00 08 */	stw r0, 8(r1)
/* 800069AC 0000260C  C0 02 80 00 */	lfs f0, lbl_80640600-_SDA2_BASE_(r2)
/* 800069B0 00002610  C8 41 00 08 */	lfd f2, 8(r1)
/* 800069B4 00002614  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 800069B8 00002618  EC 42 18 28 */	fsubs f2, f2, f3
/* 800069BC 0000261C  EC 21 10 24 */	fdivs f1, f1, f2
/* 800069C0 00002620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800069C4 00002624  40 81 00 08 */	ble lbl_800069CC
/* 800069C8 00002628  48 00 00 08 */	b lbl_800069D0
lbl_800069CC:
/* 800069CC 0000262C  FC 20 00 90 */	fmr f1, f0
lbl_800069D0:
/* 800069D0 00002630  48 22 AA C1 */	bl func_80231490
/* 800069D4 00002634  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 800069D8 00002638  48 22 AB 6D */	bl func_80231544
/* 800069DC 0000263C  88 0D 96 3C */	lbz r0, lbl_8063E8FC-_SDA_BASE_(r13)
/* 800069E0 00002640  2C 00 00 00 */	cmpwi r0, 0
/* 800069E4 00002644  41 82 00 08 */	beq lbl_800069EC
/* 800069E8 00002648  48 00 44 A5 */	bl func_8000AE8C
lbl_800069EC:
/* 800069EC 0000264C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800069F0 00002650  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800069F4 00002654  7C 08 03 A6 */	mtlr r0
/* 800069F8 00002658  38 21 00 20 */	addi r1, r1, 0x20
/* 800069FC 0000265C  4E 80 00 20 */	blr

lbl_80006A00:
/* 80006A00 00002660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006A04 00002664  7C 08 02 A6 */	mflr r0
/* 80006A08 00002668  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006A0C 0000266C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80006A10 00002670  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80006A14 00002674  48 23 DD 81 */	bl func_80244794
/* 80006A18 00002678  2C 03 00 00 */	cmpwi r3, 0
/* 80006A1C 0000267C  7C 7E 1B 78 */	mr r30, r3
/* 80006A20 00002680  41 82 00 48 */	beq lbl_80006A68
/* 80006A24 00002684  80 6D A4 C8 */	lwz r3, lbl_8063F788-_SDA_BASE_(r13)
/* 80006A28 00002688  8B E3 00 59 */	lbz r31, 0x59(r3)
/* 80006A2C 0000268C  48 23 95 C1 */	bl func_8023FFEC
/* 80006A30 00002690  3C 00 43 30 */	lis r0, 0x4330
/* 80006A34 00002694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80006A38 00002698  C8 62 80 08 */	lfd f3, lbl_80640608-_SDA2_BASE_(r2)
/* 80006A3C 0000269C  7F C3 F3 78 */	mr r3, r30
/* 80006A40 000026A0  90 01 00 08 */	stw r0, 8(r1)
/* 80006A44 000026A4  C0 02 80 00 */	lfs f0, lbl_80640600-_SDA2_BASE_(r2)
/* 80006A48 000026A8  C8 41 00 08 */	lfd f2, 8(r1)
/* 80006A4C 000026AC  EC 42 18 28 */	fsubs f2, f2, f3
/* 80006A50 000026B0  EC 21 10 24 */	fdivs f1, f1, f2
/* 80006A54 000026B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80006A58 000026B8  40 81 00 08 */	ble lbl_80006A60
/* 80006A5C 000026BC  48 00 00 08 */	b lbl_80006A64
lbl_80006A60:
/* 80006A60 000026C0  FC 20 00 90 */	fmr f1, f0
lbl_80006A64:
/* 80006A64 000026C4  48 23 D9 2D */	bl func_80244390
lbl_80006A68:
/* 80006A68 000026C8  48 00 0A 59 */	bl func_800074C0
/* 80006A6C 000026CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006A70 000026D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80006A74 000026D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80006A78 000026D8  7C 08 03 A6 */	mtlr r0
/* 80006A7C 000026DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80006A80 000026E0  4E 80 00 20 */	blr

lbl_80006A84:
/* 80006A84 000026E4  48 04 F3 10 */	b lbl_80055D94

lbl_80006A88:
/* 80006A88 000026E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006A8C 000026EC  7C 08 02 A6 */	mflr r0
/* 80006A90 000026F0  38 60 00 04 */	li r3, 4
/* 80006A94 000026F4  64 63 00 04 */	oris r3, r3, 4
/* 80006A98 000026F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006A9C 000026FC  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80006AA0 00002700  38 60 00 05 */	li r3, 5
/* 80006AA4 00002704  64 63 00 05 */	oris r3, r3, 5
/* 80006AA8 00002708  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80006AAC 0000270C  38 60 00 06 */	li r3, 6
/* 80006AB0 00002710  64 63 00 06 */	oris r3, r3, 6
/* 80006AB4 00002714  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80006AB8 00002718  38 60 00 07 */	li r3, 7
/* 80006ABC 0000271C  64 63 00 07 */	oris r3, r3, 7
/* 80006AC0 00002720  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80006AC4 00002724  3C 60 80 00 */	lis r3, func_80007090@ha
/* 80006AC8 00002728  3C 80 80 00 */	lis r4, lbl_80007164@ha
/* 80006ACC 0000272C  38 63 70 90 */	addi r3, r3, func_80007090@l
/* 80006AD0 00002730  38 84 71 64 */	addi r4, r4, lbl_80007164@l
/* 80006AD4 00002734  48 1D 62 E5 */	bl func_801DCDB8
/* 80006AD8 00002738  38 60 00 40 */	li r3, 0x40
/* 80006ADC 0000273C  38 80 00 00 */	li r4, 0
/* 80006AE0 00002740  38 A0 00 00 */	li r5, 0
/* 80006AE4 00002744  38 C0 00 00 */	li r6, 0
/* 80006AE8 00002748  48 24 2E C9 */	bl func_802499B0
/* 80006AEC 0000274C  3C 60 80 45 */	lis r3, lbl_8044E828@ha
/* 80006AF0 00002750  38 63 E8 28 */	addi r3, r3, lbl_8044E828@l
/* 80006AF4 00002754  48 24 22 99 */	bl func_80248D8C
/* 80006AF8 00002758  38 60 00 01 */	li r3, 1
/* 80006AFC 0000275C  48 05 27 61 */	bl func_8005925C
/* 80006B00 00002760  48 00 00 0C */	b lbl_80006B0C
lbl_80006B04:
/* 80006B04 00002764  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80006B08 00002768  48 21 DA 81 */	bl func_80224588
lbl_80006B0C:
/* 80006B0C 0000276C  48 05 27 41 */	bl func_8005924C
/* 80006B10 00002770  2C 03 00 00 */	cmpwi r3, 0
/* 80006B14 00002774  41 82 FF F0 */	beq lbl_80006B04
/* 80006B18 00002778  80 6D 96 34 */	lwz r3, lbl_8063E8F4-_SDA_BASE_(r13)
/* 80006B1C 0000277C  48 15 C4 2D */	bl func_80162F48
/* 80006B20 00002780  38 60 00 20 */	li r3, 0x20
/* 80006B24 00002784  48 21 57 51 */	bl func_8021C274
/* 80006B28 00002788  3C 60 80 40 */	lis r3, lbl_80405D60@ha
/* 80006B2C 0000278C  80 8D 96 30 */	lwz r4, lbl_8063E8F0-_SDA_BASE_(r13)
/* 80006B30 00002790  38 63 5D 60 */	addi r3, r3, lbl_80405D60@l
/* 80006B34 00002794  48 00 42 8D */	bl func_8000ADC0
/* 80006B38 00002798  38 60 00 00 */	li r3, 0
/* 80006B3C 0000279C  48 05 1F D5 */	bl func_80058B10
/* 80006B40 000027A0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80006B44 000027A4  48 00 43 6D */	bl func_8000AEB0
/* 80006B48 000027A8  48 00 5C A1 */	bl func_8000C7E8
/* 80006B4C 000027AC  48 00 5C 19 */	bl func_8000C764
/* 80006B50 000027B0  48 15 68 81 */	bl func_8015D3D0
/* 80006B54 000027B4  48 00 3B E9 */	bl func_8000A73C
/* 80006B58 000027B8  3C A0 80 01 */	lis r5, lbl_8000A77C@ha
/* 80006B5C 000027BC  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 80006B60 000027C0  38 A5 A7 7C */	addi r5, r5, lbl_8000A77C@l
/* 80006B64 000027C4  3C 80 80 01 */	lis r4, lbl_8000A790@ha
/* 80006B68 000027C8  90 A6 17 30 */	stw r5, 0x1730(r6)
/* 80006B6C 000027CC  38 84 A7 90 */	addi r4, r4, lbl_8000A790@l
/* 80006B70 000027D0  3C A0 80 06 */	lis r5, lbl_80058178@ha
/* 80006B74 000027D4  90 86 17 34 */	stw r4, 0x1734(r6)
/* 80006B78 000027D8  38 A5 81 78 */	addi r5, r5, lbl_80058178@l
/* 80006B7C 000027DC  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 80006B80 000027E0  90 A4 17 2C */	stw r5, 0x172c(r4)
/* 80006B84 000027E4  48 00 41 11 */	bl func_8000AC94
/* 80006B88 000027E8  48 00 09 05 */	bl func_8000748C
/* 80006B8C 000027EC  3C A0 80 00 */	lis r5, lbl_80006FD4@ha
/* 80006B90 000027F0  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80006B94 000027F4  38 A5 6F D4 */	addi r5, r5, lbl_80006FD4@l
/* 80006B98 000027F8  38 80 00 64 */	li r4, 0x64
/* 80006B9C 000027FC  38 C0 00 00 */	li r6, 0
/* 80006BA0 00002800  38 E0 40 00 */	li r7, 0x4000
/* 80006BA4 00002804  39 00 00 08 */	li r8, 8
/* 80006BA8 00002808  39 20 00 01 */	li r9, 1
/* 80006BAC 0000280C  48 21 D6 69 */	bl func_80224214
/* 80006BB0 00002810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006BB4 00002814  38 60 00 00 */	li r3, 0
/* 80006BB8 00002818  7C 08 03 A6 */	mtlr r0
/* 80006BBC 0000281C  38 21 00 10 */	addi r1, r1, 0x10
/* 80006BC0 00002820  4E 80 00 20 */	blr

.global func_80006BC4
func_80006BC4:
/* 80006BC4 00002824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80006BC8 00002828  7C 08 02 A6 */	mflr r0
/* 80006BCC 0000282C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80006BD0 00002830  38 00 00 00 */	li r0, 0
/* 80006BD4 00002834  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80006BD8 00002838  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80006BDC 0000283C  98 0D 96 3C */	stb r0, lbl_8063E8FC-_SDA_BASE_(r13)
/* 80006BE0 00002840  48 21 CF E9 */	bl func_80223BC8
/* 80006BE4 00002844  48 1D 3F 4D */	bl func_801DAB30
/* 80006BE8 00002848  48 23 DE 69 */	bl func_80244A50
/* 80006BEC 0000284C  48 23 EB 71 */	bl func_8024575C
/* 80006BF0 00002850  48 26 34 F5 */	bl OSGetMEM1ArenaLo
/* 80006BF4 00002854  7C 7E 1B 78 */	mr r30, r3
/* 80006BF8 00002858  48 26 34 D5 */	bl OSGetMEM1ArenaHi
/* 80006BFC 0000285C  7C 7E 18 50 */	subf r3, r30, r3
/* 80006C00 00002860  3C 00 01 50 */	lis r0, 0x150
/* 80006C04 00002864  3F E3 FF F0 */	addis r31, r3, 0xfff0
/* 80006C08 00002868  7C 1F 00 40 */	cmplw r31, r0
/* 80006C0C 0000286C  40 81 00 08 */	ble lbl_80006C14
/* 80006C10 00002870  3F E0 01 50 */	lis r31, 0x150
lbl_80006C14:
/* 80006C14 00002874  7F C3 F3 78 */	mr r3, r30
/* 80006C18 00002878  7F E4 FB 78 */	mr r4, r31
/* 80006C1C 0000287C  38 A0 00 04 */	li r5, 4
/* 80006C20 00002880  48 1D 3F 59 */	bl func_801DAB78
/* 80006C24 00002884  90 6D 96 28 */	stw r3, lbl_8063E8E8-_SDA_BASE_(r13)
/* 80006C28 00002888  7C 7E FA 14 */	add r3, r30, r31
/* 80006C2C 0000288C  48 26 34 E9 */	bl OSSetMEM1ArenaLo
/* 80006C30 00002890  48 26 34 B5 */	bl OSGetMEM1ArenaLo
/* 80006C34 00002894  7C 7E 1B 78 */	mr r30, r3
/* 80006C38 00002898  48 26 34 95 */	bl OSGetMEM1ArenaHi
/* 80006C3C 0000289C  7F FE 18 50 */	subf r31, r30, r3
/* 80006C40 000028A0  3C 00 00 10 */	lis r0, 0x10
/* 80006C44 000028A4  7C 1F 00 40 */	cmplw r31, r0
/* 80006C48 000028A8  40 81 00 08 */	ble lbl_80006C50
/* 80006C4C 000028AC  3F E0 00 10 */	lis r31, 0x10
lbl_80006C50:
/* 80006C50 000028B0  7F C3 F3 78 */	mr r3, r30
/* 80006C54 000028B4  7F E4 FB 78 */	mr r4, r31
/* 80006C58 000028B8  38 A0 00 04 */	li r5, 4
/* 80006C5C 000028BC  48 1D 3F 1D */	bl func_801DAB78
/* 80006C60 000028C0  90 6D 96 38 */	stw r3, lbl_8063E8F8-_SDA_BASE_(r13)
/* 80006C64 000028C4  7C 7E FA 14 */	add r3, r30, r31
/* 80006C68 000028C8  48 26 34 AD */	bl OSSetMEM1ArenaLo
/* 80006C6C 000028CC  48 26 34 81 */	bl OSGetMEM2ArenaLo
/* 80006C70 000028D0  7C 7E 1B 78 */	mr r30, r3
/* 80006C74 000028D4  48 26 34 61 */	bl OSGetMEM2ArenaHi
/* 80006C78 000028D8  7F FE 18 50 */	subf r31, r30, r3
/* 80006C7C 000028DC  3C 00 00 C0 */	lis r0, 0xc0
/* 80006C80 000028E0  7C 1F 00 40 */	cmplw r31, r0
/* 80006C84 000028E4  40 81 00 08 */	ble lbl_80006C8C
/* 80006C88 000028E8  3F E0 00 C0 */	lis r31, 0xc0
lbl_80006C8C:
/* 80006C8C 000028EC  7F C3 F3 78 */	mr r3, r30
/* 80006C90 000028F0  7F E4 FB 78 */	mr r4, r31
/* 80006C94 000028F4  38 A0 00 04 */	li r5, 4
/* 80006C98 000028F8  48 1D 3E E1 */	bl func_801DAB78
/* 80006C9C 000028FC  90 6D 96 30 */	stw r3, lbl_8063E8F0-_SDA_BASE_(r13)
/* 80006CA0 00002900  7C 7E FA 14 */	add r3, r30, r31
/* 80006CA4 00002904  48 26 34 79 */	bl OSSetMEM2ArenaLo
/* 80006CA8 00002908  48 26 34 45 */	bl OSGetMEM2ArenaLo
/* 80006CAC 0000290C  7C 7E 1B 78 */	mr r30, r3
/* 80006CB0 00002910  48 26 34 25 */	bl OSGetMEM2ArenaHi
/* 80006CB4 00002914  7F FE 18 50 */	subf r31, r30, r3
/* 80006CB8 00002918  3C 00 00 10 */	lis r0, 0x10
/* 80006CBC 0000291C  7C 1F 00 40 */	cmplw r31, r0
/* 80006CC0 00002920  40 81 00 08 */	ble lbl_80006CC8
/* 80006CC4 00002924  3F E0 00 10 */	lis r31, 0x10
lbl_80006CC8:
/* 80006CC8 00002928  7F C3 F3 78 */	mr r3, r30
/* 80006CCC 0000292C  7F E4 FB 78 */	mr r4, r31
/* 80006CD0 00002930  38 A0 00 04 */	li r5, 4
/* 80006CD4 00002934  48 1D 3E A5 */	bl func_801DAB78
/* 80006CD8 00002938  90 6D 96 34 */	stw r3, lbl_8063E8F4-_SDA_BASE_(r13)
/* 80006CDC 0000293C  7C 7E FA 14 */	add r3, r30, r31
/* 80006CE0 00002940  48 26 34 3D */	bl OSSetMEM2ArenaLo
/* 80006CE4 00002944  48 26 34 09 */	bl OSGetMEM2ArenaLo
/* 80006CE8 00002948  7C 7E 1B 78 */	mr r30, r3
/* 80006CEC 0000294C  48 26 33 E9 */	bl OSGetMEM2ArenaHi
/* 80006CF0 00002950  7F FE 18 50 */	subf r31, r30, r3
/* 80006CF4 00002954  7F C3 F3 78 */	mr r3, r30
/* 80006CF8 00002958  7F E4 FB 78 */	mr r4, r31
/* 80006CFC 0000295C  38 A0 00 04 */	li r5, 4
/* 80006D00 00002960  48 1D 3E 79 */	bl func_801DAB78
/* 80006D04 00002964  90 6D 96 2C */	stw r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 80006D08 00002968  7C 7E FA 14 */	add r3, r30, r31
/* 80006D0C 0000296C  48 26 34 11 */	bl OSSetMEM2ArenaLo
/* 80006D10 00002970  80 6D 96 28 */	lwz r3, lbl_8063E8E8-_SDA_BASE_(r13)
/* 80006D14 00002974  48 1D 3F 01 */	bl func_801DAC14
/* 80006D18 00002978  3F C0 00 01 */	lis r30, 0x0000C000@ha
/* 80006D1C 0000297C  38 7E C0 00 */	addi r3, r30, 0x0000C000@l
/* 80006D20 00002980  48 24 2E D1 */	bl func_80249BF0
/* 80006D24 00002984  38 7E 80 00 */	addi r3, r30, -32768
/* 80006D28 00002988  38 80 00 02 */	li r4, 2
/* 80006D2C 0000298C  48 24 2E 75 */	bl func_80249BA0
/* 80006D30 00002990  38 60 00 00 */	li r3, 0
/* 80006D34 00002994  48 1D 4C 45 */	bl func_801DB978
/* 80006D38 00002998  38 60 00 20 */	li r3, 0x20
/* 80006D3C 0000299C  38 80 00 04 */	li r4, 4
/* 80006D40 000029A0  48 21 D1 CD */	bl func_80223F0C
/* 80006D44 000029A4  38 60 01 90 */	li r3, 0x190
/* 80006D48 000029A8  48 1D 44 15 */	bl func_801DB15C
/* 80006D4C 000029AC  39 40 00 01 */	li r10, 1
/* 80006D50 000029B0  3D 20 00 10 */	lis r9, 0x10
/* 80006D54 000029B4  39 00 00 10 */	li r8, 0x10
/* 80006D58 000029B8  38 E0 00 20 */	li r7, 0x20
/* 80006D5C 000029BC  38 C0 00 00 */	li r6, 0
/* 80006D60 000029C0  38 A0 00 02 */	li r5, 2
/* 80006D64 000029C4  38 80 01 E0 */	li r4, 0x1e0
/* 80006D68 000029C8  38 00 00 80 */	li r0, 0x80
/* 80006D6C 000029CC  99 41 00 1E */	stb r10, 0x1e(r1)
/* 80006D70 000029D0  38 60 00 2C */	li r3, 0x2c
/* 80006D74 000029D4  99 41 00 1F */	stb r10, 0x1f(r1)
/* 80006D78 000029D8  91 21 00 10 */	stw r9, 0x10(r1)
/* 80006D7C 000029DC  91 01 00 14 */	stw r8, 0x14(r1)
/* 80006D80 000029E0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80006D84 000029E4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80006D88 000029E8  98 A1 00 08 */	stb r5, 8(r1)
/* 80006D8C 000029EC  B0 81 00 0A */	sth r4, 0xa(r1)
/* 80006D90 000029F0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80006D94 000029F4  48 1D 3C 9D */	bl __nw__FUl
/* 80006D98 000029F8  2C 03 00 00 */	cmpwi r3, 0
/* 80006D9C 000029FC  41 82 00 0C */	beq lbl_80006DA8
/* 80006DA0 00002A00  38 80 00 20 */	li r4, 0x20
/* 80006DA4 00002A04  48 1F 35 E9 */	bl func_801FA38C
lbl_80006DA8:
/* 80006DA8 00002A08  38 61 00 08 */	addi r3, r1, 8
/* 80006DAC 00002A0C  48 22 E6 4D */	bl func_802353F8
/* 80006DB0 00002A10  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80006DB4 00002A14  38 80 00 00 */	li r4, 0
/* 80006DB8 00002A18  48 23 09 DD */	bl func_80237794
/* 80006DBC 00002A1C  38 60 00 01 */	li r3, 1
/* 80006DC0 00002A20  48 27 2F 45 */	bl VIEnableDimming
/* 80006DC4 00002A24  38 60 00 01 */	li r3, 1
/* 80006DC8 00002A28  48 27 2F 91 */	bl VISetTimeToDimming
/* 80006DCC 00002A2C  38 60 00 02 */	li r3, 2
/* 80006DD0 00002A30  48 23 DA 6D */	bl func_8024483C
/* 80006DD4 00002A34  3C C0 80 00 */	lis r6, lbl_80006980@ha
/* 80006DD8 00002A38  38 60 00 01 */	li r3, 1
/* 80006DDC 00002A3C  38 C6 69 80 */	addi r6, r6, lbl_80006980@l
/* 80006DE0 00002A40  38 80 00 00 */	li r4, 0
/* 80006DE4 00002A44  38 A0 00 00 */	li r5, 0
/* 80006DE8 00002A48  48 21 D1 E9 */	bl func_80223FD0
/* 80006DEC 00002A4C  3C 80 80 40 */	lis r4, lbl_80405D78@ha
/* 80006DF0 00002A50  38 84 5D 78 */	addi r4, r4, lbl_80405D78@l
/* 80006DF4 00002A54  48 21 D2 99 */	bl func_8022408C
/* 80006DF8 00002A58  3C C0 80 00 */	lis r6, lbl_80006A00@ha
/* 80006DFC 00002A5C  38 60 00 01 */	li r3, 1
/* 80006E00 00002A60  38 C6 6A 00 */	addi r6, r6, lbl_80006A00@l
/* 80006E04 00002A64  38 80 00 01 */	li r4, 1
/* 80006E08 00002A68  38 A0 00 00 */	li r5, 0
/* 80006E0C 00002A6C  48 21 D1 C5 */	bl func_80223FD0
/* 80006E10 00002A70  38 8D 80 00 */	addi r4, r13, lbl_8063D2C0-_SDA_BASE_
/* 80006E14 00002A74  48 21 D2 79 */	bl func_8022408C
/* 80006E18 00002A78  3C C0 80 00 */	lis r6, lbl_80006A84@ha
/* 80006E1C 00002A7C  38 60 00 01 */	li r3, 1
/* 80006E20 00002A80  38 C6 6A 84 */	addi r6, r6, lbl_80006A84@l
/* 80006E24 00002A84  38 80 00 80 */	li r4, 0x80
/* 80006E28 00002A88  38 A0 00 00 */	li r5, 0
/* 80006E2C 00002A8C  48 21 D1 A5 */	bl func_80223FD0
/* 80006E30 00002A90  38 8D 80 08 */	addi r4, r13, lbl_8063D2C8-_SDA_BASE_
/* 80006E34 00002A94  48 21 D2 59 */	bl func_8022408C
/* 80006E38 00002A98  38 60 00 20 */	li r3, 0x20
/* 80006E3C 00002A9C  48 21 D2 D1 */	bl func_8022410C
/* 80006E40 00002AA0  38 60 00 20 */	li r3, 0x20
/* 80006E44 00002AA4  48 21 D9 85 */	bl func_802247C8
/* 80006E48 00002AA8  3C 60 80 00 */	lis r3, func_80007338@ha
/* 80006E4C 00002AAC  38 63 73 38 */	addi r3, r3, func_80007338@l
/* 80006E50 00002AB0  48 26 C3 39 */	bl OSSetPowerCallback
/* 80006E54 00002AB4  3F C0 80 00 */	lis r30, lbl_800072C4@ha
/* 80006E58 00002AB8  38 7E 72 C4 */	addi r3, r30, lbl_800072C4@l
/* 80006E5C 00002ABC  48 26 C2 71 */	bl OSSetResetCallback
/* 80006E60 00002AC0  38 60 00 00 */	li r3, 0
/* 80006E64 00002AC4  48 05 23 F9 */	bl func_8005925C
/* 80006E68 00002AC8  3C A0 80 00 */	lis r5, lbl_80006A88@ha
/* 80006E6C 00002ACC  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80006E70 00002AD0  38 A5 6A 88 */	addi r5, r5, lbl_80006A88@l
/* 80006E74 00002AD4  38 80 00 01 */	li r4, 1
/* 80006E78 00002AD8  38 C0 00 00 */	li r6, 0
/* 80006E7C 00002ADC  38 E0 40 00 */	li r7, 0x4000
/* 80006E80 00002AE0  39 00 00 00 */	li r8, 0
/* 80006E84 00002AE4  39 20 00 01 */	li r9, 1
/* 80006E88 00002AE8  48 21 D3 8D */	bl func_80224214
/* 80006E8C 00002AEC  48 05 23 7D */	bl func_80059208
/* 80006E90 00002AF0  3B E0 00 00 */	li r31, 0
lbl_80006E94:
/* 80006E94 00002AF4  88 0D 96 3F */	lbz r0, lbl_8063E8FF-_SDA_BASE_(r13)
/* 80006E98 00002AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80006E9C 00002AFC  41 82 00 10 */	beq lbl_80006EAC
/* 80006EA0 00002B00  9B ED 96 3F */	stb r31, lbl_8063E8FF-_SDA_BASE_(r13)
/* 80006EA4 00002B04  38 7E 72 C4 */	addi r3, r30, 0x72c4
/* 80006EA8 00002B08  48 26 C2 25 */	bl OSSetResetCallback
lbl_80006EAC:
/* 80006EAC 00002B0C  88 0D 96 3E */	lbz r0, lbl_8063E8FE-_SDA_BASE_(r13)
/* 80006EB0 00002B10  2C 00 00 00 */	cmpwi r0, 0
/* 80006EB4 00002B14  41 82 00 08 */	beq lbl_80006EBC
/* 80006EB8 00002B18  48 00 03 41 */	bl func_800071F8
lbl_80006EBC:
/* 80006EBC 00002B1C  88 0D 96 40 */	lbz r0, lbl_8063E900-_SDA_BASE_(r13)
/* 80006EC0 00002B20  2C 00 00 00 */	cmpwi r0, 0
/* 80006EC4 00002B24  41 82 00 08 */	beq lbl_80006ECC
/* 80006EC8 00002B28  48 00 03 99 */	bl func_80007260
lbl_80006ECC:
/* 80006ECC 00002B2C  48 21 D1 A1 */	bl func_8022406C
/* 80006ED0 00002B30  4B FF FF C4 */	b lbl_80006E94

.global func_80006ED4
func_80006ED4:
/* 80006ED4 00002B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006ED8 00002B38  7C 08 02 A6 */	mflr r0
/* 80006EDC 00002B3C  38 60 00 0A */	li r3, 0xa
/* 80006EE0 00002B40  3C 80 00 88 */	lis r4, 0x88
/* 80006EE4 00002B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006EE8 00002B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80006EEC 00002B4C  48 1D 45 D1 */	bl func_801DB4BC
/* 80006EF0 00002B50  7C 7F 1B 78 */	mr r31, r3
/* 80006EF4 00002B54  38 60 00 0A */	li r3, 0xa
/* 80006EF8 00002B58  3C 80 00 8B */	lis r4, 0x8b
/* 80006EFC 00002B5C  48 1D 45 C1 */	bl func_801DB4BC
/* 80006F00 00002B60  2C 1F 00 00 */	cmpwi r31, 0
/* 80006F04 00002B64  7C 64 1B 78 */	mr r4, r3
/* 80006F08 00002B68  41 82 00 38 */	beq lbl_80006F40
/* 80006F0C 00002B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80006F10 00002B70  41 82 00 30 */	beq lbl_80006F40
/* 80006F14 00002B74  3C A0 80 16 */	lis r5, func_8015C320@ha
/* 80006F18 00002B78  3C C0 80 16 */	lis r6, func_8015C308@ha
/* 80006F1C 00002B7C  3C E0 80 16 */	lis r7, func_8015C35C@ha
/* 80006F20 00002B80  3D 20 80 3E */	lis r9, lbl_803E22C0@ha
/* 80006F24 00002B84  7F E3 FB 78 */	mr r3, r31
/* 80006F28 00002B88  38 A5 C3 20 */	addi r5, r5, func_8015C320@l
/* 80006F2C 00002B8C  38 C6 C3 08 */	addi r6, r6, func_8015C308@l
/* 80006F30 00002B90  38 E7 C3 5C */	addi r7, r7, func_8015C35C@l
/* 80006F34 00002B94  39 29 22 C0 */	addi r9, r9, lbl_803E22C0@l
/* 80006F38 00002B98  39 00 00 00 */	li r8, 0
/* 80006F3C 00002B9C  48 24 90 89 */	bl func_8024FFC4
lbl_80006F40:
/* 80006F40 00002BA0  38 60 00 0A */	li r3, 0xa
/* 80006F44 00002BA4  3C 80 00 88 */	lis r4, 0x88
/* 80006F48 00002BA8  48 1D 46 FD */	bl func_801DB644
/* 80006F4C 00002BAC  38 60 00 0A */	li r3, 0xa
/* 80006F50 00002BB0  3C 80 00 8B */	lis r4, 0x8b
/* 80006F54 00002BB4  48 1D 46 F1 */	bl func_801DB644
/* 80006F58 00002BB8  3C 80 00 8A */	lis r4, 0x008A1600@ha
/* 80006F5C 00002BBC  38 60 00 0A */	li r3, 0xa
/* 80006F60 00002BC0  38 84 16 00 */	addi r4, r4, 0x008A1600@l
/* 80006F64 00002BC4  48 1D 45 59 */	bl func_801DB4BC
/* 80006F68 00002BC8  48 24 90 E5 */	bl func_8025004C
/* 80006F6C 00002BCC  38 60 00 0F */	li r3, 0xf
/* 80006F70 00002BD0  48 24 96 E5 */	bl func_80250654
/* 80006F74 00002BD4  80 6D 96 2C */	lwz r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 80006F78 00002BD8  3C 80 00 0B */	lis r4, 0xb
/* 80006F7C 00002BDC  48 1D 3D 19 */	bl func_801DAC94
/* 80006F80 00002BE0  90 6D 96 48 */	stw r3, lbl_8063E908-_SDA_BASE_(r13)
/* 80006F84 00002BE4  3C 80 00 0C */	lis r4, 0xc
/* 80006F88 00002BE8  80 6D 96 2C */	lwz r3, lbl_8063E8EC-_SDA_BASE_(r13)
/* 80006F8C 00002BEC  48 1D 3D 09 */	bl func_801DAC94
/* 80006F90 00002BF0  90 6D 96 4C */	stw r3, lbl_8063E90C-_SDA_BASE_(r13)
/* 80006F94 00002BF4  38 60 00 01 */	li r3, 1
/* 80006F98 00002BF8  48 05 17 E1 */	bl func_80058778
/* 80006F9C 00002BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006FA0 00002C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80006FA4 00002C04  7C 08 03 A6 */	mtlr r0
/* 80006FA8 00002C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80006FAC 00002C0C  4E 80 00 20 */	blr

.global func_80006FB0
func_80006FB0:
/* 80006FB0 00002C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006FB4 00002C14  7C 08 02 A6 */	mflr r0
/* 80006FB8 00002C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006FBC 00002C1C  48 04 EA 19 */	bl func_800559D4
/* 80006FC0 00002C20  48 15 08 95 */	bl func_80157854
/* 80006FC4 00002C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006FC8 00002C28  7C 08 03 A6 */	mtlr r0
/* 80006FCC 00002C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80006FD0 00002C30  4E 80 00 20 */	blr

lbl_80006FD4:
/* 80006FD4 00002C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006FD8 00002C38  7C 08 02 A6 */	mflr r0
/* 80006FDC 00002C3C  38 60 00 04 */	li r3, 4
/* 80006FE0 00002C40  64 63 00 04 */	oris r3, r3, 4
/* 80006FE4 00002C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006FE8 00002C48  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80006FEC 00002C4C  38 60 00 05 */	li r3, 5
/* 80006FF0 00002C50  64 63 00 05 */	oris r3, r3, 5
/* 80006FF4 00002C54  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80006FF8 00002C58  38 60 00 06 */	li r3, 6
/* 80006FFC 00002C5C  64 63 00 06 */	oris r3, r3, 6
/* 80007000 00002C60  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80007004 00002C64  38 60 00 07 */	li r3, 7
/* 80007008 00002C68  64 63 00 07 */	oris r3, r3, 7
/* 8000700C 00002C6C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80007010 00002C70  38 60 00 0A */	li r3, 0xa
/* 80007014 00002C74  48 24 25 C9 */	bl func_802495DC
/* 80007018 00002C78  48 16 27 95 */	bl func_801697AC
/* 8000701C 00002C7C  38 60 00 00 */	li r3, 0
/* 80007020 00002C80  48 21 D0 55 */	bl func_80224074
/* 80007024 00002C84  48 01 DE 31 */	bl func_80024E54
/* 80007028 00002C88  3C 80 00 8D */	lis r4, 0x008D1200@ha
/* 8000702C 00002C8C  38 60 00 0A */	li r3, 0xa
/* 80007030 00002C90  38 84 12 00 */	addi r4, r4, 0x008D1200@l
/* 80007034 00002C94  48 1D 44 89 */	bl func_801DB4BC
/* 80007038 00002C98  48 04 07 B1 */	bl func_800477E8
/* 8000703C 00002C9C  48 04 66 E9 */	bl func_8004D724
/* 80007040 00002CA0  4B FF FE 95 */	bl func_80006ED4
/* 80007044 00002CA4  4B FF FF 6D */	bl func_80006FB0
/* 80007048 00002CA8  38 00 00 01 */	li r0, 1
/* 8000704C 00002CAC  98 0D 96 3C */	stb r0, lbl_8063E8FC-_SDA_BASE_(r13)
lbl_80007050:
/* 80007050 00002CB0  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 80007054 00002CB4  48 21 D5 35 */	bl func_80224588
/* 80007058 00002CB8  4B FF FF F8 */	b lbl_80007050

.global func_8000705C
func_8000705C:
/* 8000705C 00002CBC  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007060 00002CC0  38 00 00 01 */	li r0, 1
/* 80007064 00002CC4  98 03 00 83 */	stb r0, 0x83(r3)
/* 80007068 00002CC8  98 0D 96 3D */	stb r0, lbl_8063E8FD-_SDA_BASE_(r13)
/* 8000706C 00002CCC  4E 80 00 20 */	blr

.global func_80007070
func_80007070:
/* 80007070 00002CD0  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007074 00002CD4  38 00 00 00 */	li r0, 0
/* 80007078 00002CD8  98 03 00 83 */	stb r0, 0x83(r3)
/* 8000707C 00002CDC  98 0D 96 3D */	stb r0, lbl_8063E8FD-_SDA_BASE_(r13)
/* 80007080 00002CE0  4E 80 00 20 */	blr

.global func_80007084
func_80007084:
/* 80007084 00002CE4  88 6D 96 3D */	lbz r3, lbl_8063E8FD-_SDA_BASE_(r13)
/* 80007088 00002CE8  4E 80 00 20 */	blr

.global func_8000708C
func_8000708C:
/* 8000708C 00002CEC  48 00 42 3C */	b lbl_8000B2C8

.global func_80007090
func_80007090:
/* 80007090 00002CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007094 00002CF4  7C 08 02 A6 */	mflr r0
/* 80007098 00002CF8  2C 03 00 03 */	cmpwi r3, 3
/* 8000709C 00002CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800070A0 00002D00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800070A4 00002D04  3B E0 00 00 */	li r31, 0
/* 800070A8 00002D08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800070AC 00002D0C  7C 7E 1B 78 */	mr r30, r3
/* 800070B0 00002D10  41 82 00 2C */	beq lbl_800070DC
/* 800070B4 00002D14  40 80 00 10 */	bge lbl_800070C4
/* 800070B8 00002D18  2C 03 00 02 */	cmpwi r3, 2
/* 800070BC 00002D1C  40 80 00 18 */	bge lbl_800070D4
/* 800070C0 00002D20  48 00 00 30 */	b lbl_800070F0
lbl_800070C4:
/* 800070C4 00002D24  2C 03 00 05 */	cmpwi r3, 5
/* 800070C8 00002D28  41 82 00 24 */	beq lbl_800070EC
/* 800070CC 00002D2C  40 80 00 24 */	bge lbl_800070F0
/* 800070D0 00002D30  48 00 00 14 */	b lbl_800070E4
lbl_800070D4:
/* 800070D4 00002D34  3B E0 46 F2 */	li r31, 0x46f2
/* 800070D8 00002D38  48 00 00 18 */	b lbl_800070F0
lbl_800070DC:
/* 800070DC 00002D3C  3B E0 46 F3 */	li r31, 0x46f3
/* 800070E0 00002D40  48 00 00 10 */	b lbl_800070F0
lbl_800070E4:
/* 800070E4 00002D44  3B E0 46 F4 */	li r31, 0x46f4
/* 800070E8 00002D48  48 00 00 08 */	b lbl_800070F0
lbl_800070EC:
/* 800070EC 00002D4C  3B E0 46 F5 */	li r31, 0x46f5
lbl_800070F0:
/* 800070F0 00002D50  88 0D 96 3C */	lbz r0, lbl_8063E8FC-_SDA_BASE_(r13)
/* 800070F4 00002D54  90 6D 96 44 */	stw r3, lbl_8063E904-_SDA_BASE_(r13)
/* 800070F8 00002D58  2C 00 00 00 */	cmpwi r0, 0
/* 800070FC 00002D5C  41 82 00 14 */	beq lbl_80007110
/* 80007100 00002D60  48 15 BE D5 */	bl glplatAbortFrame
/* 80007104 00002D64  38 60 00 00 */	li r3, 0
/* 80007108 00002D68  48 00 43 F9 */	bl func_8000B500
/* 8000710C 00002D6C  48 25 28 25 */	bl func_80259930
lbl_80007110:
/* 80007110 00002D70  38 E0 00 00 */	li r7, 0
/* 80007114 00002D74  38 00 00 E0 */	li r0, 0xe0
/* 80007118 00002D78  98 E1 00 08 */	stb r7, 8(r1)
/* 8000711C 00002D7C  7F C4 F3 78 */	mr r4, r30
/* 80007120 00002D80  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007124 00002D84  7F E5 FB 78 */	mr r5, r31
/* 80007128 00002D88  98 E1 00 09 */	stb r7, 9(r1)
/* 8000712C 00002D8C  38 C1 00 08 */	addi r6, r1, 8
/* 80007130 00002D90  98 E1 00 0A */	stb r7, 0xa(r1)
/* 80007134 00002D94  98 01 00 0B */	stb r0, 0xb(r1)
/* 80007138 00002D98  48 22 A6 45 */	bl func_8023177C
/* 8000713C 00002D9C  4B FF FF 21 */	bl func_8000705C
/* 80007140 00002DA0  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007144 00002DA4  38 00 00 01 */	li r0, 1
/* 80007148 00002DA8  98 03 00 83 */	stb r0, 0x83(r3)
/* 8000714C 00002DAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007150 00002DB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80007154 00002DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007158 00002DB8  7C 08 03 A6 */	mtlr r0
/* 8000715C 00002DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80007160 00002DC0  4E 80 00 20 */	blr

.global lbl_80007164
lbl_80007164:
/* 80007164 00002DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007168 00002DC8  7C 08 02 A6 */	mflr r0
/* 8000716C 00002DCC  38 80 00 00 */	li r4, 0
/* 80007170 00002DD0  38 A0 00 00 */	li r5, 0
/* 80007174 00002DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007178 00002DD8  38 00 00 00 */	li r0, 0
/* 8000717C 00002DDC  38 C1 00 08 */	addi r6, r1, 8
/* 80007180 00002DE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007184 00002DE4  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007188 00002DE8  98 01 00 08 */	stb r0, 8(r1)
/* 8000718C 00002DEC  98 01 00 09 */	stb r0, 9(r1)
/* 80007190 00002DF0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80007194 00002DF4  98 01 00 0B */	stb r0, 0xb(r1)
/* 80007198 00002DF8  48 22 A5 E5 */	bl func_8023177C
/* 8000719C 00002DFC  88 0D 96 3C */	lbz r0, lbl_8063E8FC-_SDA_BASE_(r13)
/* 800071A0 00002E00  2C 00 00 00 */	cmpwi r0, 0
/* 800071A4 00002E04  41 82 00 2C */	beq lbl_800071D0
/* 800071A8 00002E08  48 25 27 8D */	bl func_80259934
/* 800071AC 00002E0C  C0 42 80 14 */	lfs f2, lbl_80640614-_SDA2_BASE_(r2)
/* 800071B0 00002E10  C0 2D 86 C8 */	lfs f1, lbl_8063D988-_SDA_BASE_(r13)
/* 800071B4 00002E14  C0 02 80 10 */	lfs f0, lbl_80640610-_SDA2_BASE_(r2)
/* 800071B8 00002E18  EC 22 00 72 */	fmuls f1, f2, f1
/* 800071BC 00002E1C  EC 00 08 2A */	fadds f0, f0, f1
/* 800071C0 00002E20  FC 00 00 1E */	fctiwz f0, f0
/* 800071C4 00002E24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800071C8 00002E28  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800071CC 00002E2C  48 00 43 6D */	bl func_8000B538
lbl_800071D0:
/* 800071D0 00002E30  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 800071D4 00002E34  3B E0 00 00 */	li r31, 0
/* 800071D8 00002E38  9B E3 00 83 */	stb r31, 0x83(r3)
/* 800071DC 00002E3C  4B FF FE 95 */	bl func_80007070
/* 800071E0 00002E40  93 ED 96 44 */	stw r31, lbl_8063E904-_SDA_BASE_(r13)
/* 800071E4 00002E44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800071E8 00002E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800071EC 00002E4C  7C 08 03 A6 */	mtlr r0
/* 800071F0 00002E50  38 21 00 20 */	addi r1, r1, 0x20
/* 800071F4 00002E54  4E 80 00 20 */	blr

.global func_800071F8
func_800071F8:
/* 800071F8 00002E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071FC 00002E5C  7C 08 02 A6 */	mflr r0
/* 80007200 00002E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007204 00002E64  48 15 62 E9 */	bl func_8015D4EC
/* 80007208 00002E68  2C 03 00 00 */	cmpwi r3, 0
/* 8000720C 00002E6C  40 82 00 44 */	bne lbl_80007250
/* 80007210 00002E70  48 23 D6 AD */	bl func_802448BC
/* 80007214 00002E74  48 1D 5C 25 */	bl func_801DCE38
/* 80007218 00002E78  38 60 00 00 */	li r3, 0
/* 8000721C 00002E7C  38 80 00 00 */	li r4, 0
/* 80007220 00002E80  38 A0 00 00 */	li r5, 0
/* 80007224 00002E84  38 C0 00 00 */	li r6, 0
/* 80007228 00002E88  48 26 B4 21 */	bl OSSetIdleFunction
/* 8000722C 00002E8C  48 36 12 99 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80007230 00002E90  48 36 22 15 */	bl PrepareReset__Q44nw4r3snd6detail9AxManagerFv
/* 80007234 00002E94  48 37 51 61 */	bl WaitForResetReady__Q34nw4r3snd11SoundSystemFv
/* 80007238 00002E98  38 60 00 00 */	li r3, 0
/* 8000723C 00002E9C  48 28 78 C9 */	bl AIRegisterDMACallback
/* 80007240 00002EA0  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80007244 00002EA4  48 22 9E 7D */	bl func_802310C0
/* 80007248 00002EA8  38 60 00 00 */	li r3, 0
/* 8000724C 00002EAC  48 26 8F 79 */	bl OSRestart
lbl_80007250:
/* 80007250 00002EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007254 00002EB4  7C 08 03 A6 */	mtlr r0
/* 80007258 00002EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000725C 00002EBC  4E 80 00 20 */	blr

.global func_80007260
func_80007260:
/* 80007260 00002EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007264 00002EC4  7C 08 02 A6 */	mflr r0
/* 80007268 00002EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000726C 00002ECC  48 15 62 81 */	bl func_8015D4EC
/* 80007270 00002ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80007274 00002ED4  40 82 00 40 */	bne lbl_800072B4
/* 80007278 00002ED8  48 23 D6 45 */	bl func_802448BC
/* 8000727C 00002EDC  48 1D 5B BD */	bl func_801DCE38
/* 80007280 00002EE0  38 60 00 00 */	li r3, 0
/* 80007284 00002EE4  38 80 00 00 */	li r4, 0
/* 80007288 00002EE8  38 A0 00 00 */	li r5, 0
/* 8000728C 00002EEC  38 C0 00 00 */	li r6, 0
/* 80007290 00002EF0  48 26 B3 B9 */	bl OSSetIdleFunction
/* 80007294 00002EF4  48 36 12 31 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80007298 00002EF8  48 36 21 AD */	bl PrepareReset__Q44nw4r3snd6detail9AxManagerFv
/* 8000729C 00002EFC  48 37 50 F9 */	bl WaitForResetReady__Q34nw4r3snd11SoundSystemFv
/* 800072A0 00002F00  38 60 00 00 */	li r3, 0
/* 800072A4 00002F04  48 28 78 61 */	bl AIRegisterDMACallback
/* 800072A8 00002F08  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 800072AC 00002F0C  48 22 9E 15 */	bl func_802310C0
/* 800072B0 00002F10  48 26 8D 51 */	bl OSShutdownSystem
lbl_800072B4:
/* 800072B4 00002F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800072B8 00002F18  7C 08 03 A6 */	mtlr r0
/* 800072BC 00002F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 800072C0 00002F20  4E 80 00 20 */	blr

lbl_800072C4:
/* 800072C4 00002F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800072C8 00002F28  7C 08 02 A6 */	mflr r0
/* 800072CC 00002F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800072D0 00002F30  88 0D 96 40 */	lbz r0, lbl_8063E900-_SDA_BASE_(r13)
/* 800072D4 00002F34  2C 00 00 00 */	cmpwi r0, 0
/* 800072D8 00002F38  40 82 00 50 */	bne lbl_80007328
/* 800072DC 00002F3C  48 15 DC C5 */	bl func_80164FA0
/* 800072E0 00002F40  2C 03 00 00 */	cmpwi r3, 0
/* 800072E4 00002F44  41 82 00 10 */	beq lbl_800072F4
/* 800072E8 00002F48  38 00 00 01 */	li r0, 1
/* 800072EC 00002F4C  98 0D 96 3F */	stb r0, lbl_8063E8FF-_SDA_BASE_(r13)
/* 800072F0 00002F50  48 00 00 38 */	b lbl_80007328
lbl_800072F4:
/* 800072F4 00002F54  88 0D 96 3E */	lbz r0, lbl_8063E8FE-_SDA_BASE_(r13)
/* 800072F8 00002F58  2C 00 00 00 */	cmpwi r0, 0
/* 800072FC 00002F5C  40 82 00 0C */	bne lbl_80007308
/* 80007300 00002F60  38 00 00 00 */	li r0, 0
/* 80007304 00002F64  98 0D 96 3D */	stb r0, lbl_8063E8FD-_SDA_BASE_(r13)
lbl_80007308:
/* 80007308 00002F68  48 00 25 31 */	bl func_80009838
/* 8000730C 00002F6C  2C 03 00 00 */	cmpwi r3, 0
/* 80007310 00002F70  41 82 00 10 */	beq lbl_80007320
/* 80007314 00002F74  38 60 00 00 */	li r3, 0
/* 80007318 00002F78  48 00 25 E5 */	bl func_800098FC
/* 8000731C 00002F7C  48 00 00 0C */	b lbl_80007328
lbl_80007320:
/* 80007320 00002F80  38 00 00 01 */	li r0, 1
/* 80007324 00002F84  98 0D 96 3E */	stb r0, lbl_8063E8FE-_SDA_BASE_(r13)
lbl_80007328:
/* 80007328 00002F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000732C 00002F8C  7C 08 03 A6 */	mtlr r0
/* 80007330 00002F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80007334 00002F94  4E 80 00 20 */	blr

.global func_80007338
func_80007338:
/* 80007338 00002F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000733C 00002F9C  7C 08 02 A6 */	mflr r0
/* 80007340 00002FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007344 00002FA4  48 00 24 F5 */	bl func_80009838
/* 80007348 00002FA8  2C 03 00 00 */	cmpwi r3, 0
/* 8000734C 00002FAC  41 82 00 10 */	beq lbl_8000735C
/* 80007350 00002FB0  38 60 00 01 */	li r3, 1
/* 80007354 00002FB4  48 00 25 A9 */	bl func_800098FC
/* 80007358 00002FB8  48 00 00 34 */	b lbl_8000738C
lbl_8000735C:
/* 8000735C 00002FBC  88 0D 96 3E */	lbz r0, lbl_8063E8FE-_SDA_BASE_(r13)
/* 80007360 00002FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80007364 00002FC4  41 82 00 0C */	beq lbl_80007370
/* 80007368 00002FC8  38 00 00 00 */	li r0, 0
/* 8000736C 00002FCC  98 0D 96 3E */	stb r0, lbl_8063E8FE-_SDA_BASE_(r13)
lbl_80007370:
/* 80007370 00002FD0  88 0D 96 40 */	lbz r0, lbl_8063E900-_SDA_BASE_(r13)
/* 80007374 00002FD4  2C 00 00 00 */	cmpwi r0, 0
/* 80007378 00002FD8  40 82 00 0C */	bne lbl_80007384
/* 8000737C 00002FDC  38 00 00 00 */	li r0, 0
/* 80007380 00002FE0  98 0D 96 3D */	stb r0, lbl_8063E8FD-_SDA_BASE_(r13)
lbl_80007384:
/* 80007384 00002FE4  38 00 00 01 */	li r0, 1
/* 80007388 00002FE8  98 0D 96 40 */	stb r0, lbl_8063E900-_SDA_BASE_(r13)
lbl_8000738C:
/* 8000738C 00002FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007390 00002FF0  7C 08 03 A6 */	mtlr r0
/* 80007394 00002FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80007398 00002FF8  4E 80 00 20 */	blr

.global func_8000739C
func_8000739C:
/* 8000739C 00002FFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800073A0 00003000  7C 08 02 A6 */	mflr r0
/* 800073A4 00003004  90 01 00 34 */	stw r0, 0x34(r1)
/* 800073A8 00003008  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800073AC 0000300C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800073B0 00003010  3C A0 43 30 */	lis r5, 0x4330
/* 800073B4 00003014  C8 42 80 08 */	lfd f2, lbl_80640608-_SDA2_BASE_(r2)
/* 800073B8 00003018  38 80 00 00 */	li r4, 0
/* 800073BC 0000301C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800073C0 00003020  C0 02 80 18 */	lfs f0, lbl_80640618-_SDA2_BASE_(r2)
/* 800073C4 00003024  80 6D A4 C8 */	lwz r3, lbl_8063F788-_SDA_BASE_(r13)
/* 800073C8 00003028  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 800073CC 0000302C  8B E3 00 59 */	lbz r31, 0x59(r3)
/* 800073D0 00003030  88 06 00 82 */	lbz r0, 0x82(r6)
/* 800073D4 00003034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800073D8 00003038  2C 00 00 00 */	cmpwi r0, 0
/* 800073DC 0000303C  90 A1 00 08 */	stw r5, 8(r1)
/* 800073E0 00003040  C8 21 00 08 */	lfd f1, 8(r1)
/* 800073E4 00003044  EC 21 10 28 */	fsubs f1, f1, f2
/* 800073E8 00003048  EF E0 08 24 */	fdivs f31, f0, f1
/* 800073EC 0000304C  40 82 00 10 */	bne lbl_800073FC
/* 800073F0 00003050  88 06 00 83 */	lbz r0, 0x83(r6)
/* 800073F4 00003054  2C 00 00 00 */	cmpwi r0, 0
/* 800073F8 00003058  41 82 00 08 */	beq lbl_80007400
lbl_800073FC:
/* 800073FC 0000305C  38 80 00 01 */	li r4, 1
lbl_80007400:
/* 80007400 00003060  2C 04 00 00 */	cmpwi r4, 0
/* 80007404 00003064  41 82 00 0C */	beq lbl_80007410
/* 80007408 00003068  C0 22 80 00 */	lfs f1, lbl_80640600-_SDA2_BASE_(r2)
/* 8000740C 0000306C  48 00 00 44 */	b lbl_80007450
lbl_80007410:
/* 80007410 00003070  48 23 8B DD */	bl func_8023FFEC
/* 80007414 00003074  3C 00 43 30 */	lis r0, 0x4330
/* 80007418 00003078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000741C 0000307C  C8 62 80 08 */	lfd f3, lbl_80640608-_SDA2_BASE_(r2)
/* 80007420 00003080  90 01 00 08 */	stw r0, 8(r1)
/* 80007424 00003084  C0 02 80 00 */	lfs f0, lbl_80640600-_SDA2_BASE_(r2)
/* 80007428 00003088  C8 41 00 08 */	lfd f2, 8(r1)
/* 8000742C 0000308C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80007430 00003090  EC 21 10 24 */	fdivs f1, f1, f2
/* 80007434 00003094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007438 00003098  40 81 00 08 */	ble lbl_80007440
/* 8000743C 0000309C  48 00 00 08 */	b lbl_80007444
lbl_80007440:
/* 80007440 000030A0  FC 20 00 90 */	fmr f1, f0
lbl_80007444:
/* 80007444 000030A4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80007448 000030A8  40 81 00 08 */	ble lbl_80007450
/* 8000744C 000030AC  FC 20 F8 90 */	fmr f1, f31
lbl_80007450:
/* 80007450 000030B0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80007454 000030B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80007458 000030B8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8000745C 000030BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007460 000030C0  7C 08 03 A6 */	mtlr r0
/* 80007464 000030C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80007468 000030C8  4E 80 00 20 */	blr

.global func_8000746C
func_8000746C:
/* 8000746C 000030CC  38 A0 00 01 */	li r5, 1
/* 80007470 000030D0  38 6D 96 20 */	addi r3, r13, lbl_8063E8E0-_SDA_BASE_
/* 80007474 000030D4  38 80 00 04 */	li r4, 4
/* 80007478 000030D8  38 00 00 00 */	li r0, 0
/* 8000747C 000030DC  98 AD 96 20 */	stb r5, lbl_8063E8E0-_SDA_BASE_(r13)
/* 80007480 000030E0  B0 83 00 02 */	sth r4, 2(r3)
/* 80007484 000030E4  98 03 00 04 */	stb r0, 4(r3)
/* 80007488 000030E8  4E 80 00 20 */	blr
