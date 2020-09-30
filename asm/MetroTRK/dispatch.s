.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global TRKDispatchMessage
TRKDispatchMessage:
/* 801D577C 001D13DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D5780 001D13E0  7C 08 02 A6 */	mflr r0
/* 801D5784 001D13E4  38 80 00 00 */	li r4, 0
/* 801D5788 001D13E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D578C 001D13EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D5790 001D13F0  3B E0 05 00 */	li r31, 0x500
/* 801D5794 001D13F4  93 C1 00 08 */	stw r30, 8(r1)
/* 801D5798 001D13F8  7C 7E 1B 78 */	mr r30, r3
/* 801D579C 001D13FC  4B FF FB 6D */	bl TRKSetBufferPosition
/* 801D57A0 001D1400  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 801D57A4 001D1404  28 00 00 1A */	cmplwi r0, 0x1a
/* 801D57A8 001D1408  41 81 00 F8 */	bgt lbl_801D58A0
/* 801D57AC 001D140C  3C 60 80 42 */	lis r3, lbl_80423188@ha
/* 801D57B0 001D1410  54 00 10 3A */	slwi r0, r0, 2
/* 801D57B4 001D1414  38 63 31 88 */	addi r3, r3, lbl_80423188@l
/* 801D57B8 001D1418  7C 03 00 2E */	lwzx r0, r3, r0
/* 801D57BC 001D141C  7C 09 03 A6 */	mtctr r0
/* 801D57C0 001D1420  4E 80 04 20 */	bctr
/* 801D57C4 001D1424  7F C3 F3 78 */	mr r3, r30
/* 801D57C8 001D1428  48 00 11 35 */	bl TRKDoConnect
/* 801D57CC 001D142C  7C 7F 1B 78 */	mr r31, r3
/* 801D57D0 001D1430  48 00 00 D0 */	b lbl_801D58A0
/* 801D57D4 001D1434  7F C3 F3 78 */	mr r3, r30
/* 801D57D8 001D1438  48 00 10 89 */	bl TRKDoDisconnect
/* 801D57DC 001D143C  7C 7F 1B 78 */	mr r31, r3
/* 801D57E0 001D1440  48 00 00 C0 */	b lbl_801D58A0
/* 801D57E4 001D1444  7F C3 F3 78 */	mr r3, r30
/* 801D57E8 001D1448  48 00 0F FD */	bl TRKDoReset
/* 801D57EC 001D144C  7C 7F 1B 78 */	mr r31, r3
/* 801D57F0 001D1450  48 00 00 B0 */	b lbl_801D58A0
/* 801D57F4 001D1454  7F C3 F3 78 */	mr r3, r30
/* 801D57F8 001D1458  48 00 0F 71 */	bl TRKDoOverride
/* 801D57FC 001D145C  7C 7F 1B 78 */	mr r31, r3
/* 801D5800 001D1460  48 00 00 A0 */	b lbl_801D58A0
/* 801D5804 001D1464  7F C3 F3 78 */	mr r3, r30
/* 801D5808 001D1468  48 00 0F 59 */	bl TRKDoVersions
/* 801D580C 001D146C  7C 7F 1B 78 */	mr r31, r3
/* 801D5810 001D1470  48 00 00 90 */	b lbl_801D58A0
/* 801D5814 001D1474  7F C3 F3 78 */	mr r3, r30
/* 801D5818 001D1478  48 00 0F 41 */	bl TRKDoSupportMask
/* 801D581C 001D147C  7C 7F 1B 78 */	mr r31, r3
/* 801D5820 001D1480  48 00 00 80 */	b lbl_801D58A0
/* 801D5824 001D1484  7F C3 F3 78 */	mr r3, r30
/* 801D5828 001D1488  48 00 0C E9 */	bl TRKDoReadMemory
/* 801D582C 001D148C  7C 7F 1B 78 */	mr r31, r3
/* 801D5830 001D1490  48 00 00 70 */	b lbl_801D58A0
/* 801D5834 001D1494  7F C3 F3 78 */	mr r3, r30
/* 801D5838 001D1498  48 00 0A BD */	bl TRKDoWriteMemory
/* 801D583C 001D149C  7C 7F 1B 78 */	mr r31, r3
/* 801D5840 001D14A0  48 00 00 60 */	b lbl_801D58A0
/* 801D5844 001D14A4  7F C3 F3 78 */	mr r3, r30
/* 801D5848 001D14A8  48 00 08 89 */	bl TRKDoReadRegisters
/* 801D584C 001D14AC  7C 7F 1B 78 */	mr r31, r3
/* 801D5850 001D14B0  48 00 00 50 */	b lbl_801D58A0
/* 801D5854 001D14B4  7F C3 F3 78 */	mr r3, r30
/* 801D5858 001D14B8  48 00 05 BD */	bl TRKDoWriteRegisters
/* 801D585C 001D14BC  7C 7F 1B 78 */	mr r31, r3
/* 801D5860 001D14C0  48 00 00 40 */	b lbl_801D58A0
/* 801D5864 001D14C4  7F C3 F3 78 */	mr r3, r30
/* 801D5868 001D14C8  48 00 04 C9 */	bl TRKDoContinue
/* 801D586C 001D14CC  7C 7F 1B 78 */	mr r31, r3
/* 801D5870 001D14D0  48 00 00 30 */	b lbl_801D58A0
/* 801D5874 001D14D4  7F C3 F3 78 */	mr r3, r30
/* 801D5878 001D14D8  48 00 01 E5 */	bl TRKDoStep
/* 801D587C 001D14DC  7C 7F 1B 78 */	mr r31, r3
/* 801D5880 001D14E0  48 00 00 20 */	b lbl_801D58A0
/* 801D5884 001D14E4  7F C3 F3 78 */	mr r3, r30
/* 801D5888 001D14E8  48 00 01 09 */	bl TRKDoStop
/* 801D588C 001D14EC  7C 7F 1B 78 */	mr r31, r3
/* 801D5890 001D14F0  48 00 00 10 */	b lbl_801D58A0
/* 801D5894 001D14F4  7F C3 F3 78 */	mr r3, r30
/* 801D5898 001D14F8  48 00 00 2D */	bl TRKDoSetOption
/* 801D589C 001D14FC  7C 7F 1B 78 */	mr r31, r3
lbl_801D58A0:
/* 801D58A0 001D1500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D58A4 001D1504  7F E3 FB 78 */	mr r3, r31
/* 801D58A8 001D1508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D58AC 001D150C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D58B0 001D1510  7C 08 03 A6 */	mtlr r0
/* 801D58B4 001D1514  38 21 00 10 */	addi r1, r1, 0x10
/* 801D58B8 001D1518  4E 80 00 20 */	blr

.global TRKInitializeDispatcher
TRKInitializeDispatcher:
/* 801D58BC 001D151C  38 60 00 00 */	li r3, 0
/* 801D58C0 001D1520  4E 80 00 20 */	blr