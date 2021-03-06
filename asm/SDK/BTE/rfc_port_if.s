.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global RFCOMM_StartRsp
RFCOMM_StartRsp:
/* 802DFA94 002DB6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFA98 002DB6F8  7C 08 02 A6 */	mflr r0
/* 802DFA9C 002DB6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFAA0 002DB700  38 A1 00 08 */	addi r5, r1, 8
/* 802DFAA4 002DB704  B0 81 00 08 */	sth r4, 8(r1)
/* 802DFAA8 002DB708  38 80 00 07 */	li r4, 7
/* 802DFAAC 002DB70C  4B FF E2 05 */	bl rfc_mx_sm_execute
/* 802DFAB0 002DB710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFAB4 002DB714  7C 08 03 A6 */	mtlr r0
/* 802DFAB8 002DB718  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFABC 002DB71C  4E 80 00 20 */	blr

.global RFCOMM_DlcEstablishReq
RFCOMM_DlcEstablishReq:
/* 802DFAC0 002DB720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFAC4 002DB724  7C 08 02 A6 */	mflr r0
/* 802DFAC8 002DB728  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFACC 002DB72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DFAD0 002DB730  7C 9F 23 78 */	mr r31, r4
/* 802DFAD4 002DB734  93 C1 00 08 */	stw r30, 8(r1)
/* 802DFAD8 002DB738  7C 7E 1B 78 */	mr r30, r3
/* 802DFADC 002DB73C  4B FF D5 21 */	bl port_find_mcb_dlci_port
/* 802DFAE0 002DB740  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 802DFAE4 002DB744  28 00 00 05 */	cmplwi r0, 5
/* 802DFAE8 002DB748  41 82 00 1C */	beq lbl_802DFB04
/* 802DFAEC 002DB74C  7F C3 F3 78 */	mr r3, r30
/* 802DFAF0 002DB750  7F E4 FB 78 */	mr r4, r31
/* 802DFAF4 002DB754  38 A0 00 00 */	li r5, 0
/* 802DFAF8 002DB758  38 C0 00 01 */	li r6, 1
/* 802DFAFC 002DB75C  4B FF C4 9D */	bl PORT_DlcEstablishCnf
/* 802DFB00 002DB760  48 00 00 10 */	b lbl_802DFB10
lbl_802DFB04:
/* 802DFB04 002DB764  38 80 00 09 */	li r4, 9
/* 802DFB08 002DB768  38 A0 00 00 */	li r5, 0
/* 802DFB0C 002DB76C  4B FF ED E9 */	bl rfc_port_sm_execute
lbl_802DFB10:
/* 802DFB10 002DB770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFB14 002DB774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DFB18 002DB778  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DFB1C 002DB77C  7C 08 03 A6 */	mtlr r0
/* 802DFB20 002DB780  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFB24 002DB784  4E 80 00 20 */	blr

.global RFCOMM_DlcEstablishRsp
RFCOMM_DlcEstablishRsp:
/* 802DFB28 002DB788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFB2C 002DB78C  7C 08 02 A6 */	mflr r0
/* 802DFB30 002DB790  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFB34 002DB794  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFB38 002DB798  7C 9F 23 78 */	mr r31, r4
/* 802DFB3C 002DB79C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFB40 002DB7A0  7C 7E 1B 78 */	mr r30, r3
/* 802DFB44 002DB7A4  B0 C1 00 08 */	sth r6, 8(r1)
/* 802DFB48 002DB7A8  4B FF D4 B5 */	bl port_find_mcb_dlci_port
/* 802DFB4C 002DB7AC  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 802DFB50 002DB7B0  28 00 00 05 */	cmplwi r0, 5
/* 802DFB54 002DB7B4  41 82 00 20 */	beq lbl_802DFB74
/* 802DFB58 002DB7B8  A0 01 00 08 */	lhz r0, 8(r1)
/* 802DFB5C 002DB7BC  2C 00 00 00 */	cmpwi r0, 0
/* 802DFB60 002DB7C0  40 82 00 14 */	bne lbl_802DFB74
/* 802DFB64 002DB7C4  7F C3 F3 78 */	mr r3, r30
/* 802DFB68 002DB7C8  7F E4 FB 78 */	mr r4, r31
/* 802DFB6C 002DB7CC  4B FF CA DD */	bl PORT_DlcReleaseInd
/* 802DFB70 002DB7D0  48 00 00 10 */	b lbl_802DFB80
lbl_802DFB74:
/* 802DFB74 002DB7D4  38 A1 00 08 */	addi r5, r1, 8
/* 802DFB78 002DB7D8  38 80 00 0B */	li r4, 0xb
/* 802DFB7C 002DB7DC  4B FF ED 79 */	bl rfc_port_sm_execute
lbl_802DFB80:
/* 802DFB80 002DB7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFB84 002DB7E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFB88 002DB7E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFB8C 002DB7EC  7C 08 03 A6 */	mtlr r0
/* 802DFB90 002DB7F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFB94 002DB7F4  4E 80 00 20 */	blr

.global RFCOMM_ParNegReq
RFCOMM_ParNegReq:
/* 802DFB98 002DB7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFB9C 002DB7FC  7C 08 02 A6 */	mflr r0
/* 802DFBA0 002DB800  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFBA4 002DB804  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFBA8 002DB808  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFBAC 002DB80C  7C BE 2B 78 */	mr r30, r5
/* 802DFBB0 002DB810  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DFBB4 002DB814  7C 9D 23 78 */	mr r29, r4
/* 802DFBB8 002DB818  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DFBBC 002DB81C  7C 7C 1B 78 */	mr r28, r3
/* 802DFBC0 002DB820  4B FF D4 3D */	bl port_find_mcb_dlci_port
/* 802DFBC4 002DB824  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 802DFBC8 002DB828  7C 7F 1B 78 */	mr r31, r3
/* 802DFBCC 002DB82C  28 00 00 05 */	cmplwi r0, 5
/* 802DFBD0 002DB830  41 82 00 10 */	beq lbl_802DFBE0
/* 802DFBD4 002DB834  38 00 00 0D */	li r0, 0xd
/* 802DFBD8 002DB838  98 03 00 0E */	stb r0, 0xe(r3)
/* 802DFBDC 002DB83C  48 00 00 7C */	b lbl_802DFC58
lbl_802DFBE0:
/* 802DFBE0 002DB840  88 9C 00 72 */	lbz r4, 0x72(r28)
/* 802DFBE4 002DB844  38 00 00 02 */	li r0, 2
/* 802DFBE8 002DB848  2C 04 00 00 */	cmpwi r4, 0
/* 802DFBEC 002DB84C  41 82 00 08 */	beq lbl_802DFBF4
/* 802DFBF0 002DB850  7C 80 23 78 */	mr r0, r4
lbl_802DFBF4:
/* 802DFBF4 002DB854  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802DFBF8 002DB858  28 00 00 02 */	cmplwi r0, 2
/* 802DFBFC 002DB85C  40 82 00 28 */	bne lbl_802DFC24
/* 802DFC00 002DB860  A0 83 00 9C */	lhz r4, 0x9c(r3)
/* 802DFC04 002DB864  38 E0 00 F0 */	li r7, 0xf0
/* 802DFC08 002DB868  38 00 00 07 */	li r0, 7
/* 802DFC0C 002DB86C  28 04 00 07 */	cmplwi r4, 7
/* 802DFC10 002DB870  40 80 00 08 */	bge lbl_802DFC18
/* 802DFC14 002DB874  7C 80 23 78 */	mr r0, r4
lbl_802DFC18:
/* 802DFC18 002DB878  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 802DFC1C 002DB87C  B1 03 00 9A */	sth r8, 0x9a(r3)
/* 802DFC20 002DB880  48 00 00 0C */	b lbl_802DFC2C
lbl_802DFC24:
/* 802DFC24 002DB884  38 E0 00 00 */	li r7, 0
/* 802DFC28 002DB888  39 00 00 00 */	li r8, 0
lbl_802DFC2C:
/* 802DFC2C 002DB88C  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFC30 002DB890  7F A4 EB 78 */	mr r4, r29
/* 802DFC34 002DB894  7F C6 F3 78 */	mr r6, r30
/* 802DFC38 002DB898  38 A0 00 01 */	li r5, 1
/* 802DFC3C 002DB89C  60 00 00 01 */	ori r0, r0, 1
/* 802DFC40 002DB8A0  98 03 00 69 */	stb r0, 0x69(r3)
/* 802DFC44 002DB8A4  7F 83 E3 78 */	mr r3, r28
/* 802DFC48 002DB8A8  48 00 07 E5 */	bl rfc_send_pn
/* 802DFC4C 002DB8AC  7F E3 FB 78 */	mr r3, r31
/* 802DFC50 002DB8B0  38 80 00 3C */	li r4, 0x3c
/* 802DFC54 002DB8B4  48 00 1C E5 */	bl rfc_port_timer_start
lbl_802DFC58:
/* 802DFC58 002DB8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFC5C 002DB8BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFC60 002DB8C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFC64 002DB8C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DFC68 002DB8C8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DFC6C 002DB8CC  7C 08 03 A6 */	mtlr r0
/* 802DFC70 002DB8D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFC74 002DB8D4  4E 80 00 20 */	blr

.global RFCOMM_ParNegRsp
RFCOMM_ParNegRsp:
/* 802DFC78 002DB8D8  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 802DFC7C 002DB8DC  7C C9 33 78 */	mr r9, r6
/* 802DFC80 002DB8E0  7C E8 3B 78 */	mr r8, r7
/* 802DFC84 002DB8E4  28 00 00 05 */	cmplwi r0, 5
/* 802DFC88 002DB8E8  4C 82 00 20 */	bnelr
/* 802DFC8C 002DB8EC  7C A6 2B 78 */	mr r6, r5
/* 802DFC90 002DB8F0  7D 27 4B 78 */	mr r7, r9
/* 802DFC94 002DB8F4  38 A0 00 00 */	li r5, 0
/* 802DFC98 002DB8F8  48 00 07 94 */	b rfc_send_pn
/* 802DFC9C 002DB8FC  4E 80 00 20 */	blr

.global RFCOMM_PortNegReq
RFCOMM_PortNegReq:
/* 802DFCA0 002DB900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFCA4 002DB904  7C 08 02 A6 */	mflr r0
/* 802DFCA8 002DB908  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFCAC 002DB90C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFCB0 002DB910  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFCB4 002DB914  7C BE 2B 78 */	mr r30, r5
/* 802DFCB8 002DB918  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DFCBC 002DB91C  7C 9D 23 78 */	mr r29, r4
/* 802DFCC0 002DB920  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DFCC4 002DB924  7C 7C 1B 78 */	mr r28, r3
/* 802DFCC8 002DB928  4B FF D3 35 */	bl port_find_mcb_dlci_port
/* 802DFCCC 002DB92C  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 802DFCD0 002DB930  7C 7F 1B 78 */	mr r31, r3
/* 802DFCD4 002DB934  28 00 00 05 */	cmplwi r0, 5
/* 802DFCD8 002DB938  41 82 00 1C */	beq lbl_802DFCF4
/* 802DFCDC 002DB93C  7F 83 E3 78 */	mr r3, r28
/* 802DFCE0 002DB940  7F A4 EB 78 */	mr r4, r29
/* 802DFCE4 002DB944  38 A0 00 00 */	li r5, 0
/* 802DFCE8 002DB948  38 C0 00 01 */	li r6, 1
/* 802DFCEC 002DB94C  4B FF C5 41 */	bl PORT_PortNegCnf
/* 802DFCF0 002DB950  48 00 00 4C */	b lbl_802DFD3C
lbl_802DFCF4:
/* 802DFCF4 002DB954  2C 1E 00 00 */	cmpwi r30, 0
/* 802DFCF8 002DB958  40 82 00 14 */	bne lbl_802DFD0C
/* 802DFCFC 002DB95C  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFD00 002DB960  60 00 00 02 */	ori r0, r0, 2
/* 802DFD04 002DB964  98 03 00 69 */	stb r0, 0x69(r3)
/* 802DFD08 002DB968  48 00 00 10 */	b lbl_802DFD18
lbl_802DFD0C:
/* 802DFD0C 002DB96C  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFD10 002DB970  60 00 00 04 */	ori r0, r0, 4
/* 802DFD14 002DB974  98 03 00 69 */	stb r0, 0x69(r3)
lbl_802DFD18:
/* 802DFD18 002DB978  7F 83 E3 78 */	mr r3, r28
/* 802DFD1C 002DB97C  7F A4 EB 78 */	mr r4, r29
/* 802DFD20 002DB980  7F C6 F3 78 */	mr r6, r30
/* 802DFD24 002DB984  38 A0 00 01 */	li r5, 1
/* 802DFD28 002DB988  38 E0 3F 7F */	li r7, 0x3f7f
/* 802DFD2C 002DB98C  48 00 0A C1 */	bl rfc_send_rpn
/* 802DFD30 002DB990  7F E3 FB 78 */	mr r3, r31
/* 802DFD34 002DB994  38 80 00 3C */	li r4, 0x3c
/* 802DFD38 002DB998  48 00 1C 01 */	bl rfc_port_timer_start
lbl_802DFD3C:
/* 802DFD3C 002DB99C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFD40 002DB9A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFD44 002DB9A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFD48 002DB9A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DFD4C 002DB9AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DFD50 002DB9B0  7C 08 03 A6 */	mtlr r0
/* 802DFD54 002DB9B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFD58 002DB9B8  4E 80 00 20 */	blr

.global RFCOMM_PortNegRsp
RFCOMM_PortNegRsp:
/* 802DFD5C 002DB9BC  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 802DFD60 002DB9C0  7C C7 33 78 */	mr r7, r6
/* 802DFD64 002DB9C4  28 00 00 05 */	cmplwi r0, 5
/* 802DFD68 002DB9C8  4C 82 00 20 */	bnelr
/* 802DFD6C 002DB9CC  7C A6 2B 78 */	mr r6, r5
/* 802DFD70 002DB9D0  38 A0 00 00 */	li r5, 0
/* 802DFD74 002DB9D4  48 00 0A 78 */	b rfc_send_rpn
/* 802DFD78 002DB9D8  4E 80 00 20 */	blr

.global RFCOMM_ControlReq
RFCOMM_ControlReq:
/* 802DFD7C 002DB9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFD80 002DB9E0  7C 08 02 A6 */	mflr r0
/* 802DFD84 002DB9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFD88 002DB9E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFD8C 002DB9EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFD90 002DB9F0  7C BE 2B 78 */	mr r30, r5
/* 802DFD94 002DB9F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DFD98 002DB9F8  7C 9D 23 78 */	mr r29, r4
/* 802DFD9C 002DB9FC  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DFDA0 002DBA00  7C 7C 1B 78 */	mr r28, r3
/* 802DFDA4 002DBA04  4B FF D2 59 */	bl port_find_mcb_dlci_port
/* 802DFDA8 002DBA08  88 03 00 02 */	lbz r0, 2(r3)
/* 802DFDAC 002DBA0C  7C 7F 1B 78 */	mr r31, r3
/* 802DFDB0 002DBA10  28 00 00 02 */	cmplwi r0, 2
/* 802DFDB4 002DBA14  40 82 00 4C */	bne lbl_802DFE00
/* 802DFDB8 002DBA18  88 03 00 68 */	lbz r0, 0x68(r3)
/* 802DFDBC 002DBA1C  28 00 00 04 */	cmplwi r0, 4
/* 802DFDC0 002DBA20  41 82 00 08 */	beq lbl_802DFDC8
/* 802DFDC4 002DBA24  48 00 00 3C */	b lbl_802DFE00
lbl_802DFDC8:
/* 802DFDC8 002DBA28  88 03 00 64 */	lbz r0, 0x64(r3)
/* 802DFDCC 002DBA2C  7F A4 EB 78 */	mr r4, r29
/* 802DFDD0 002DBA30  7F C6 F3 78 */	mr r6, r30
/* 802DFDD4 002DBA34  38 A0 00 01 */	li r5, 1
/* 802DFDD8 002DBA38  60 00 00 01 */	ori r0, r0, 1
/* 802DFDDC 002DBA3C  98 03 00 64 */	stb r0, 0x64(r3)
/* 802DFDE0 002DBA40  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFDE4 002DBA44  60 00 00 08 */	ori r0, r0, 8
/* 802DFDE8 002DBA48  98 03 00 69 */	stb r0, 0x69(r3)
/* 802DFDEC 002DBA4C  7F 83 E3 78 */	mr r3, r28
/* 802DFDF0 002DBA50  48 00 08 2D */	bl rfc_send_msc
/* 802DFDF4 002DBA54  7F E3 FB 78 */	mr r3, r31
/* 802DFDF8 002DBA58  38 80 00 3C */	li r4, 0x3c
/* 802DFDFC 002DBA5C  48 00 1B 3D */	bl rfc_port_timer_start
lbl_802DFE00:
/* 802DFE00 002DBA60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFE04 002DBA64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFE08 002DBA68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFE0C 002DBA6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DFE10 002DBA70  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DFE14 002DBA74  7C 08 03 A6 */	mtlr r0
/* 802DFE18 002DBA78  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFE1C 002DBA7C  4E 80 00 20 */	blr

.global RFCOMM_FlowReq
RFCOMM_FlowReq:
/* 802DFE20 002DBA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFE24 002DBA84  7C 08 02 A6 */	mflr r0
/* 802DFE28 002DBA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFE2C 002DBA8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFE30 002DBA90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFE34 002DBA94  7C BE 2B 78 */	mr r30, r5
/* 802DFE38 002DBA98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DFE3C 002DBA9C  7C 9D 23 78 */	mr r29, r4
/* 802DFE40 002DBAA0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DFE44 002DBAA4  7C 7C 1B 78 */	mr r28, r3
/* 802DFE48 002DBAA8  4B FF D1 B5 */	bl port_find_mcb_dlci_port
/* 802DFE4C 002DBAAC  88 03 00 02 */	lbz r0, 2(r3)
/* 802DFE50 002DBAB0  7C 7F 1B 78 */	mr r31, r3
/* 802DFE54 002DBAB4  28 00 00 02 */	cmplwi r0, 2
/* 802DFE58 002DBAB8  40 82 00 4C */	bne lbl_802DFEA4
/* 802DFE5C 002DBABC  88 03 00 68 */	lbz r0, 0x68(r3)
/* 802DFE60 002DBAC0  28 00 00 04 */	cmplwi r0, 4
/* 802DFE64 002DBAC4  41 82 00 08 */	beq lbl_802DFE6C
/* 802DFE68 002DBAC8  48 00 00 3C */	b lbl_802DFEA4
lbl_802DFE6C:
/* 802DFE6C 002DBACC  7F C0 00 34 */	cntlzw r0, r30
/* 802DFE70 002DBAD0  7F A4 EB 78 */	mr r4, r29
/* 802DFE74 002DBAD4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 802DFE78 002DBAD8  38 DF 00 5A */	addi r6, r31, 0x5a
/* 802DFE7C 002DBADC  98 03 00 5E */	stb r0, 0x5e(r3)
/* 802DFE80 002DBAE0  38 A0 00 01 */	li r5, 1
/* 802DFE84 002DBAE4  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFE88 002DBAE8  60 00 00 08 */	ori r0, r0, 8
/* 802DFE8C 002DBAEC  98 03 00 69 */	stb r0, 0x69(r3)
/* 802DFE90 002DBAF0  7F 83 E3 78 */	mr r3, r28
/* 802DFE94 002DBAF4  48 00 07 89 */	bl rfc_send_msc
/* 802DFE98 002DBAF8  7F E3 FB 78 */	mr r3, r31
/* 802DFE9C 002DBAFC  38 80 00 3C */	li r4, 0x3c
/* 802DFEA0 002DBB00  48 00 1A 99 */	bl rfc_port_timer_start
lbl_802DFEA4:
/* 802DFEA4 002DBB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFEA8 002DBB08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFEAC 002DBB0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFEB0 002DBB10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DFEB4 002DBB14  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DFEB8 002DBB18  7C 08 03 A6 */	mtlr r0
/* 802DFEBC 002DBB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFEC0 002DBB20  4E 80 00 20 */	blr

.global RFCOMM_LineStatusReq
RFCOMM_LineStatusReq:
/* 802DFEC4 002DBB24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFEC8 002DBB28  7C 08 02 A6 */	mflr r0
/* 802DFECC 002DBB2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFED0 002DBB30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFED4 002DBB34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFED8 002DBB38  7C BE 2B 78 */	mr r30, r5
/* 802DFEDC 002DBB3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DFEE0 002DBB40  7C 9D 23 78 */	mr r29, r4
/* 802DFEE4 002DBB44  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DFEE8 002DBB48  7C 7C 1B 78 */	mr r28, r3
/* 802DFEEC 002DBB4C  4B FF D1 11 */	bl port_find_mcb_dlci_port
/* 802DFEF0 002DBB50  88 03 00 02 */	lbz r0, 2(r3)
/* 802DFEF4 002DBB54  7C 7F 1B 78 */	mr r31, r3
/* 802DFEF8 002DBB58  28 00 00 02 */	cmplwi r0, 2
/* 802DFEFC 002DBB5C  40 82 00 40 */	bne lbl_802DFF3C
/* 802DFF00 002DBB60  88 03 00 68 */	lbz r0, 0x68(r3)
/* 802DFF04 002DBB64  28 00 00 04 */	cmplwi r0, 4
/* 802DFF08 002DBB68  41 82 00 08 */	beq lbl_802DFF10
/* 802DFF0C 002DBB6C  48 00 00 30 */	b lbl_802DFF3C
lbl_802DFF10:
/* 802DFF10 002DBB70  88 03 00 69 */	lbz r0, 0x69(r3)
/* 802DFF14 002DBB74  7F A4 EB 78 */	mr r4, r29
/* 802DFF18 002DBB78  7F C6 F3 78 */	mr r6, r30
/* 802DFF1C 002DBB7C  38 A0 00 01 */	li r5, 1
/* 802DFF20 002DBB80  60 00 00 10 */	ori r0, r0, 0x10
/* 802DFF24 002DBB84  98 03 00 69 */	stb r0, 0x69(r3)
/* 802DFF28 002DBB88  7F 83 E3 78 */	mr r3, r28
/* 802DFF2C 002DBB8C  48 00 08 11 */	bl rfc_send_rls
/* 802DFF30 002DBB90  7F E3 FB 78 */	mr r3, r31
/* 802DFF34 002DBB94  38 80 00 3C */	li r4, 0x3c
/* 802DFF38 002DBB98  48 00 1A 01 */	bl rfc_port_timer_start
lbl_802DFF3C:
/* 802DFF3C 002DBB9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFF40 002DBBA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFF44 002DBBA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFF48 002DBBA8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DFF4C 002DBBAC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DFF50 002DBBB0  7C 08 03 A6 */	mtlr r0
/* 802DFF54 002DBBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFF58 002DBBB8  4E 80 00 20 */	blr

.global RFCOMM_DlcReleaseReq
RFCOMM_DlcReleaseReq:
/* 802DFF5C 002DBBBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFF60 002DBBC0  7C 08 02 A6 */	mflr r0
/* 802DFF64 002DBBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFF68 002DBBC8  4B FF D0 95 */	bl port_find_mcb_dlci_port
/* 802DFF6C 002DBBCC  38 80 00 0C */	li r4, 0xc
/* 802DFF70 002DBBD0  38 A0 00 00 */	li r5, 0
/* 802DFF74 002DBBD4  4B FF E9 81 */	bl rfc_port_sm_execute
/* 802DFF78 002DBBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFF7C 002DBBDC  7C 08 03 A6 */	mtlr r0
/* 802DFF80 002DBBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFF84 002DBBE4  4E 80 00 20 */	blr

.global RFCOMM_DataReq
RFCOMM_DataReq:
/* 802DFF88 002DBBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFF8C 002DBBEC  7C 08 02 A6 */	mflr r0
/* 802DFF90 002DBBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFF94 002DBBF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DFF98 002DBBF8  7C BF 2B 78 */	mr r31, r5
/* 802DFF9C 002DBBFC  4B FF D0 61 */	bl port_find_mcb_dlci_port
/* 802DFFA0 002DBC00  7F E5 FB 78 */	mr r5, r31
/* 802DFFA4 002DBC04  38 80 00 0E */	li r4, 0xe
/* 802DFFA8 002DBC08  4B FF E9 4D */	bl rfc_port_sm_execute
/* 802DFFAC 002DBC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFFB0 002DBC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DFFB4 002DBC14  7C 08 03 A6 */	mtlr r0
/* 802DFFB8 002DBC18  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFFBC 002DBC1C  4E 80 00 20 */	blr
