.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global AddressToString
AddressToString:
/* 8035A44C 003560AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A450 003560B0  7C 08 02 A6 */	mflr r0
/* 8035A454 003560B4  2C 05 00 00 */	cmpwi r5, 0
/* 8035A458 003560B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A45C 003560BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035A460 003560C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035A464 003560C4  7C 9E 23 78 */	mr r30, r4
/* 8035A468 003560C8  41 82 00 0C */	beq lbl_8035A474
/* 8035A46C 003560CC  7C BF 2B 78 */	mr r31, r5
/* 8035A470 003560D0  48 00 00 20 */	b lbl_8035A490
lbl_8035A474:
/* 8035A474 003560D4  80 0D B1 30 */	lwz r0, lbl_806403F0-_SDA_BASE_(r13)
/* 8035A478 003560D8  3C A0 80 62 */	lis r5, lbl_806211E8@ha
/* 8035A47C 003560DC  38 A5 11 E8 */	addi r5, r5, lbl_806211E8@l
/* 8035A480 003560E0  68 06 00 01 */	xori r6, r0, 1
/* 8035A484 003560E4  1C 06 00 16 */	mulli r0, r6, 0x16
/* 8035A488 003560E8  90 CD B1 30 */	stw r6, lbl_806403F0-_SDA_BASE_(r13)
/* 8035A48C 003560EC  7F E5 02 14 */	add r31, r5, r0
lbl_8035A490:
/* 8035A490 003560F0  2C 03 00 00 */	cmpwi r3, 0
/* 8035A494 003560F4  41 82 00 58 */	beq lbl_8035A4EC
/* 8035A498 003560F8  2C 04 00 00 */	cmpwi r4, 0
/* 8035A49C 003560FC  41 82 00 2C */	beq lbl_8035A4C8
/* 8035A4A0 00356100  90 61 00 0C */	stw r3, 0xc(r1)
/* 8035A4A4 00356104  38 61 00 0C */	addi r3, r1, 0xc
/* 8035A4A8 00356108  4B F9 C8 71 */	bl SOInetNtoA
/* 8035A4AC 0035610C  7C 65 1B 78 */	mr r5, r3
/* 8035A4B0 00356110  7F E3 FB 78 */	mr r3, r31
/* 8035A4B4 00356114  7F C6 F3 78 */	mr r6, r30
/* 8035A4B8 00356118  38 8D 94 98 */	addi r4, r13, lbl_8063E758-_SDA_BASE_
/* 8035A4BC 0035611C  4C C6 31 82 */	crclr 6
/* 8035A4C0 00356120  4B E7 26 3D */	bl sprintf
/* 8035A4C4 00356124  48 00 00 50 */	b lbl_8035A514
lbl_8035A4C8:
/* 8035A4C8 00356128  90 61 00 08 */	stw r3, 8(r1)
/* 8035A4CC 0035612C  38 61 00 08 */	addi r3, r1, 8
/* 8035A4D0 00356130  4B F9 C8 49 */	bl SOInetNtoA
/* 8035A4D4 00356134  7C 65 1B 78 */	mr r5, r3
/* 8035A4D8 00356138  7F E3 FB 78 */	mr r3, r31
/* 8035A4DC 0035613C  38 8D 94 A0 */	addi r4, r13, lbl_8063E760-_SDA_BASE_
/* 8035A4E0 00356140  4C C6 31 82 */	crclr 6
/* 8035A4E4 00356144  4B E7 26 19 */	bl sprintf
/* 8035A4E8 00356148  48 00 00 2C */	b lbl_8035A514
lbl_8035A4EC:
/* 8035A4EC 0035614C  2C 04 00 00 */	cmpwi r4, 0
/* 8035A4F0 00356150  41 82 00 1C */	beq lbl_8035A50C
/* 8035A4F4 00356154  7F E3 FB 78 */	mr r3, r31
/* 8035A4F8 00356158  7F C5 F3 78 */	mr r5, r30
/* 8035A4FC 0035615C  38 8D 94 A4 */	addi r4, r13, lbl_8063E764-_SDA_BASE_
/* 8035A500 00356160  4C C6 31 82 */	crclr 6
/* 8035A504 00356164  4B E7 25 F9 */	bl sprintf
/* 8035A508 00356168  48 00 00 0C */	b lbl_8035A514
lbl_8035A50C:
/* 8035A50C 0035616C  38 00 00 00 */	li r0, 0
/* 8035A510 00356170  98 1F 00 00 */	stb r0, 0(r31)
lbl_8035A514:
/* 8035A514 00356174  7F E3 FB 78 */	mr r3, r31
/* 8035A518 00356178  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035A51C 0035617C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035A520 00356180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A524 00356184  7C 08 03 A6 */	mtlr r0
/* 8035A528 00356188  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A52C 0035618C  4E 80 00 20 */	blr

.global GetLocalIP
GetLocalIP:
/* 8035A530 00356190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A534 00356194  7C 08 02 A6 */	mflr r0
/* 8035A538 00356198  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035A53C 0035619C  39 61 00 20 */	addi r11, r1, 0x20
/* 8035A540 003561A0  4B E6 CB E5 */	bl _savegpr_26
/* 8035A544 003561A4  3B 40 00 00 */	li r26, 0
/* 8035A548 003561A8  4B FD E3 95 */	bl getlocalhost
/* 8035A54C 003561AC  2C 03 00 00 */	cmpwi r3, 0
/* 8035A550 003561B0  7C 7E 1B 78 */	mr r30, r3
/* 8035A554 003561B4  40 82 00 0C */	bne lbl_8035A560
/* 8035A558 003561B8  38 60 00 00 */	li r3, 0
/* 8035A55C 003561BC  48 00 00 58 */	b lbl_8035A5B4
lbl_8035A560:
/* 8035A560 003561C0  3B A0 00 00 */	li r29, 0
/* 8035A564 003561C4  3F E0 7F 00 */	lis r31, 0x7f00
lbl_8035A568:
/* 8035A568 003561C8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8035A56C 003561CC  7F 63 E8 2E */	lwzx r27, r3, r29
/* 8035A570 003561D0  2C 1B 00 00 */	cmpwi r27, 0
/* 8035A574 003561D4  41 82 00 3C */	beq lbl_8035A5B0
/* 8035A578 003561D8  83 9B 00 00 */	lwz r28, 0(r27)
/* 8035A57C 003561DC  38 7F 00 01 */	addi r3, r31, 1
/* 8035A580 003561E0  4B F9 C7 F9 */	bl SOHtoNl
/* 8035A584 003561E4  7C 1C 18 40 */	cmplw r28, r3
/* 8035A588 003561E8  41 82 00 20 */	beq lbl_8035A5A8
/* 8035A58C 003561EC  7F 9A E3 78 */	mr r26, r28
/* 8035A590 003561F0  7F 63 DB 78 */	mr r3, r27
/* 8035A594 003561F4  4B FD E4 FD */	bl IsPrivateIP
/* 8035A598 003561F8  2C 03 00 00 */	cmpwi r3, 0
/* 8035A59C 003561FC  41 82 00 0C */	beq lbl_8035A5A8
/* 8035A5A0 00356200  7F 83 E3 78 */	mr r3, r28
/* 8035A5A4 00356204  48 00 00 10 */	b lbl_8035A5B4
lbl_8035A5A8:
/* 8035A5A8 00356208  3B BD 00 04 */	addi r29, r29, 4
/* 8035A5AC 0035620C  4B FF FF BC */	b lbl_8035A568
lbl_8035A5B0:
/* 8035A5B0 00356210  7F 43 D3 78 */	mr r3, r26
lbl_8035A5B4:
/* 8035A5B4 00356214  39 61 00 20 */	addi r11, r1, 0x20
/* 8035A5B8 00356218  4B E6 CB B9 */	bl _restgpr_26
/* 8035A5BC 0035621C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A5C0 00356220  7C 08 03 A6 */	mtlr r0
/* 8035A5C4 00356224  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A5C8 00356228  4E 80 00 20 */	blr

.global Think
Think:
/* 8035A5CC 0035622C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8035A5D0 00356230  7C 08 02 A6 */	mflr r0
/* 8035A5D4 00356234  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8035A5D8 00356238  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8035A5DC 0035623C  4B E6 CB 3D */	bl _savegpr_23
/* 8035A5E0 00356240  80 0D B1 4C */	lwz r0, lbl_8064040C-_SDA_BASE_(r13)
/* 8035A5E4 00356244  38 A0 00 08 */	li r5, 8
/* 8035A5E8 00356248  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8035A5EC 0035624C  7C 78 1B 78 */	mr r24, r3
/* 8035A5F0 00356250  2C 00 00 00 */	cmpwi r0, 0
/* 8035A5F4 00356254  7C 99 23 78 */	mr r25, r4
/* 8035A5F8 00356258  41 82 00 54 */	beq lbl_8035A64C
/* 8035A5FC 0035625C  80 0D B1 48 */	lwz r0, lbl_80640408-_SDA_BASE_(r13)
/* 8035A600 00356260  2C 00 00 00 */	cmpwi r0, 0
/* 8035A604 00356264  41 82 00 48 */	beq lbl_8035A64C
/* 8035A608 00356268  80 0D B1 44 */	lwz r0, lbl_80640404-_SDA_BASE_(r13)
/* 8035A60C 0035626C  2C 00 00 00 */	cmpwi r0, 0
/* 8035A610 00356270  41 82 00 3C */	beq lbl_8035A64C
/* 8035A614 00356274  80 0D B1 40 */	lwz r0, lbl_80640400-_SDA_BASE_(r13)
/* 8035A618 00356278  2C 00 00 00 */	cmpwi r0, 0
/* 8035A61C 0035627C  41 82 00 30 */	beq lbl_8035A64C
/* 8035A620 00356280  80 0D B1 3C */	lwz r0, lbl_806403FC-_SDA_BASE_(r13)
/* 8035A624 00356284  2C 00 00 00 */	cmpwi r0, 0
/* 8035A628 00356288  41 82 00 24 */	beq lbl_8035A64C
/* 8035A62C 0035628C  80 0D B1 38 */	lwz r0, lbl_806403F8-_SDA_BASE_(r13)
/* 8035A630 00356290  2C 00 00 00 */	cmpwi r0, 0
/* 8035A634 00356294  41 82 00 18 */	beq lbl_8035A64C
/* 8035A638 00356298  80 0D B1 34 */	lwz r0, lbl_806403F4-_SDA_BASE_(r13)
/* 8035A63C 0035629C  2C 00 00 00 */	cmpwi r0, 0
/* 8035A640 003562A0  41 82 00 0C */	beq lbl_8035A64C
/* 8035A644 003562A4  38 60 00 00 */	li r3, 0
/* 8035A648 003562A8  48 00 02 90 */	b lbl_8035A8D8
lbl_8035A64C:
/* 8035A64C 003562AC  2C 03 FF FF */	cmpwi r3, -1
/* 8035A650 003562B0  41 82 02 84 */	beq lbl_8035A8D4
/* 8035A654 003562B4  3F 40 80 62 */	lis r26, lbl_80621218@ha
/* 8035A658 003562B8  3B A0 00 01 */	li r29, 1
/* 8035A65C 003562BC  3B 9A 12 18 */	addi r28, r26, lbl_80621218@l
/* 8035A660 003562C0  3B C0 00 00 */	li r30, 0
/* 8035A664 003562C4  3F 60 80 64 */	lis r27, 0x8064
/* 8035A668 003562C8  3B E0 00 08 */	li r31, 8
lbl_8035A66C:
/* 8035A66C 003562CC  7F 03 C3 78 */	mr r3, r24
/* 8035A670 003562D0  4B FD E1 DD */	bl CanReceiveOnSocket
/* 8035A674 003562D4  2C 03 00 00 */	cmpwi r3, 0
/* 8035A678 003562D8  41 82 02 5C */	beq lbl_8035A8D4
/* 8035A67C 003562DC  7F 03 C3 78 */	mr r3, r24
/* 8035A680 003562E0  38 9A 12 18 */	addi r4, r26, 0x1218
/* 8035A684 003562E4  38 E1 00 18 */	addi r7, r1, 0x18
/* 8035A688 003562E8  39 01 00 0C */	addi r8, r1, 0xc
/* 8035A68C 003562EC  38 A0 02 00 */	li r5, 0x200
/* 8035A690 003562F0  38 C0 00 00 */	li r6, 0
/* 8035A694 003562F4  4B FD D7 71 */	bl recvfrom
/* 8035A698 003562F8  2C 03 FF FF */	cmpwi r3, -1
/* 8035A69C 003562FC  7C 77 1B 78 */	mr r23, r3
/* 8035A6A0 00356300  40 82 00 10 */	bne lbl_8035A6B0
/* 8035A6A4 00356304  7F 03 C3 78 */	mr r3, r24
/* 8035A6A8 00356308  4B FD D9 01 */	bl GOAGetLastError
/* 8035A6AC 0035630C  48 00 02 28 */	b lbl_8035A8D4
lbl_8035A6B0:
/* 8035A6B0 00356310  38 7A 12 18 */	addi r3, r26, 0x1218
/* 8035A6B4 00356314  38 9B E7 68 */	addi r4, r27, -6296
/* 8035A6B8 00356318  38 A0 00 06 */	li r5, 6
/* 8035A6BC 0035631C  4B E6 FC DD */	bl memcmp
/* 8035A6C0 00356320  2C 03 00 00 */	cmpwi r3, 0
/* 8035A6C4 00356324  41 82 00 0C */	beq lbl_8035A6D0
/* 8035A6C8 00356328  38 60 00 01 */	li r3, 1
/* 8035A6CC 0035632C  48 00 02 0C */	b lbl_8035A8D8
lbl_8035A6D0:
/* 8035A6D0 00356330  2C 17 00 15 */	cmpwi r23, 0x15
/* 8035A6D4 00356334  88 1C 00 07 */	lbz r0, 7(r28)
/* 8035A6D8 00356338  40 80 00 0C */	bge lbl_8035A6E4
/* 8035A6DC 0035633C  38 60 00 01 */	li r3, 1
/* 8035A6E0 00356340  48 00 01 F8 */	b lbl_8035A8D8
lbl_8035A6E4:
/* 8035A6E4 00356344  28 00 00 02 */	cmplwi r0, 2
/* 8035A6E8 00356348  40 82 00 B0 */	bne lbl_8035A798
/* 8035A6EC 0035634C  7F 84 E3 78 */	mr r4, r28
/* 8035A6F0 00356350  38 61 00 20 */	addi r3, r1, 0x20
/* 8035A6F4 00356354  38 A0 00 15 */	li r5, 0x15
/* 8035A6F8 00356358  4B CA 99 09 */	bl memcpy
/* 8035A6FC 0035635C  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8035A700 00356360  2C 00 00 02 */	cmpwi r0, 2
/* 8035A704 00356364  41 82 00 44 */	beq lbl_8035A748
/* 8035A708 00356368  40 80 00 10 */	bge lbl_8035A718
/* 8035A70C 0035636C  2C 00 00 01 */	cmpwi r0, 1
/* 8035A710 00356370  40 80 00 14 */	bge lbl_8035A724
/* 8035A714 00356374  48 00 01 B8 */	b lbl_8035A8CC
lbl_8035A718:
/* 8035A718 00356378  2C 00 00 04 */	cmpwi r0, 4
/* 8035A71C 0035637C  40 80 01 B0 */	bge lbl_8035A8CC
/* 8035A720 00356380  48 00 00 50 */	b lbl_8035A770
lbl_8035A724:
/* 8035A724 00356384  93 AD B1 4C */	stw r29, lbl_8064040C-_SDA_BASE_(r13)
/* 8035A728 00356388  A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 8035A72C 0035638C  4B F9 C6 45 */	bl SONtoHs
/* 8035A730 00356390  7C 60 1B 78 */	mr r0, r3
/* 8035A734 00356394  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8035A738 00356398  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8035A73C 0035639C  38 A0 00 00 */	li r5, 0
/* 8035A740 003563A0  4B FF FD 0D */	bl AddressToString
/* 8035A744 003563A4  48 00 01 88 */	b lbl_8035A8CC
lbl_8035A748:
/* 8035A748 003563A8  93 D9 00 80 */	stw r30, 0x80(r25)
/* 8035A74C 003563AC  93 AD B1 48 */	stw r29, lbl_80640408-_SDA_BASE_(r13)
/* 8035A750 003563B0  A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 8035A754 003563B4  4B F9 C6 1D */	bl SONtoHs
/* 8035A758 003563B8  7C 60 1B 78 */	mr r0, r3
/* 8035A75C 003563BC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8035A760 003563C0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8035A764 003563C4  38 A0 00 00 */	li r5, 0
/* 8035A768 003563C8  4B FF FC E5 */	bl AddressToString
/* 8035A76C 003563CC  48 00 01 60 */	b lbl_8035A8CC
lbl_8035A770:
/* 8035A770 003563D0  93 D9 00 84 */	stw r30, 0x84(r25)
/* 8035A774 003563D4  93 AD B1 44 */	stw r29, lbl_80640404-_SDA_BASE_(r13)
/* 8035A778 003563D8  A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 8035A77C 003563DC  4B F9 C5 F5 */	bl SONtoHs
/* 8035A780 003563E0  7C 60 1B 78 */	mr r0, r3
/* 8035A784 003563E4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8035A788 003563E8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8035A78C 003563EC  38 A0 00 00 */	li r5, 0
/* 8035A790 003563F0  4B FF FC BD */	bl AddressToString
/* 8035A794 003563F4  48 00 01 38 */	b lbl_8035A8CC
lbl_8035A798:
/* 8035A798 003563F8  28 00 00 0B */	cmplwi r0, 0xb
/* 8035A79C 003563FC  40 82 01 30 */	bne lbl_8035A8CC
/* 8035A7A0 00356400  7F 84 E3 78 */	mr r4, r28
/* 8035A7A4 00356404  38 61 00 20 */	addi r3, r1, 0x20
/* 8035A7A8 00356408  38 A0 00 15 */	li r5, 0x15
/* 8035A7AC 0035640C  4B CA 98 55 */	bl memcpy
/* 8035A7B0 00356410  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8035A7B4 00356414  4B F9 C5 B9 */	bl SONtoHl
/* 8035A7B8 00356418  2C 03 00 02 */	cmpwi r3, 2
/* 8035A7BC 0035641C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8035A7C0 00356420  41 82 00 3C */	beq lbl_8035A7FC
/* 8035A7C4 00356424  40 80 00 14 */	bge lbl_8035A7D8
/* 8035A7C8 00356428  2C 03 00 00 */	cmpwi r3, 0
/* 8035A7CC 0035642C  41 82 00 18 */	beq lbl_8035A7E4
/* 8035A7D0 00356430  40 80 00 24 */	bge lbl_8035A7F4
/* 8035A7D4 00356434  48 00 00 2C */	b lbl_8035A800
lbl_8035A7D8:
/* 8035A7D8 00356438  2C 03 00 04 */	cmpwi r3, 4
/* 8035A7DC 0035643C  40 80 00 24 */	bge lbl_8035A800
/* 8035A7E0 00356440  48 00 00 0C */	b lbl_8035A7EC
lbl_8035A7E4:
/* 8035A7E4 00356444  93 AD B1 40 */	stw r29, lbl_80640400-_SDA_BASE_(r13)
/* 8035A7E8 00356448  48 00 00 18 */	b lbl_8035A800
lbl_8035A7EC:
/* 8035A7EC 0035644C  93 AD B1 3C */	stw r29, lbl_806403FC-_SDA_BASE_(r13)
/* 8035A7F0 00356450  48 00 00 10 */	b lbl_8035A800
lbl_8035A7F4:
/* 8035A7F4 00356454  93 AD B1 38 */	stw r29, lbl_806403F8-_SDA_BASE_(r13)
/* 8035A7F8 00356458  48 00 00 08 */	b lbl_8035A800
lbl_8035A7FC:
/* 8035A7FC 0035645C  93 AD B1 34 */	stw r29, lbl_806403F4-_SDA_BASE_(r13)
lbl_8035A800:
/* 8035A800 00356460  4B FF FD 31 */	bl GetLocalIP
/* 8035A804 00356464  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035A808 00356468  38 81 00 10 */	addi r4, r1, 0x10
/* 8035A80C 0035646C  38 A1 00 08 */	addi r5, r1, 8
/* 8035A810 00356470  54 00 20 36 */	slwi r0, r0, 4
/* 8035A814 00356474  7C D9 02 14 */	add r6, r25, r0
/* 8035A818 00356478  90 66 00 94 */	stw r3, 0x94(r6)
/* 8035A81C 0035647C  7F 03 C3 78 */	mr r3, r24
/* 8035A820 00356480  93 E1 00 08 */	stw r31, 8(r1)
/* 8035A824 00356484  4B FD D6 F1 */	bl getsockname
/* 8035A828 00356488  2C 03 FF FF */	cmpwi r3, -1
/* 8035A82C 0035648C  40 82 00 0C */	bne lbl_8035A838
/* 8035A830 00356490  38 60 00 00 */	li r3, 0
/* 8035A834 00356494  48 00 00 08 */	b lbl_8035A83C
lbl_8035A838:
/* 8035A838 00356498  A0 61 00 12 */	lhz r3, 0x12(r1)
lbl_8035A83C:
/* 8035A83C 0035649C  4B F9 C5 35 */	bl SONtoHs
/* 8035A840 003564A0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035A844 003564A4  54 00 20 36 */	slwi r0, r0, 4
/* 8035A848 003564A8  7C 99 02 14 */	add r4, r25, r0
/* 8035A84C 003564AC  B0 64 00 98 */	sth r3, 0x98(r4)
/* 8035A850 003564B0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035A854 003564B4  80 81 00 2F */	lwz r4, 0x2f(r1)
/* 8035A858 003564B8  54 00 20 36 */	slwi r0, r0, 4
/* 8035A85C 003564BC  7C 79 02 14 */	add r3, r25, r0
/* 8035A860 003564C0  90 83 00 9C */	stw r4, 0x9c(r3)
/* 8035A864 003564C4  A0 61 00 33 */	lhz r3, 0x33(r1)
/* 8035A868 003564C8  4B F9 C5 09 */	bl SONtoHs
/* 8035A86C 003564CC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035A870 003564D0  54 00 20 36 */	slwi r0, r0, 4
/* 8035A874 003564D4  7C 99 02 14 */	add r4, r25, r0
/* 8035A878 003564D8  B0 64 00 A0 */	sth r3, 0xa0(r4)
/* 8035A87C 003564DC  A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 8035A880 003564E0  4B F9 C4 F1 */	bl SONtoHs
/* 8035A884 003564E4  7C 60 1B 78 */	mr r0, r3
/* 8035A888 003564E8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8035A88C 003564EC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8035A890 003564F0  38 A0 00 00 */	li r5, 0
/* 8035A894 003564F4  4B FF FB B9 */	bl AddressToString
/* 8035A898 003564F8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8035A89C 003564FC  54 00 20 36 */	slwi r0, r0, 4
/* 8035A8A0 00356500  7C 19 02 14 */	add r0, r25, r0
/* 8035A8A4 00356504  36 E0 00 94 */	addic. r23, r0, 0x94
/* 8035A8A8 00356508  41 82 00 24 */	beq lbl_8035A8CC
/* 8035A8AC 0035650C  80 77 00 00 */	lwz r3, 0(r23)
/* 8035A8B0 00356510  38 A0 00 00 */	li r5, 0
/* 8035A8B4 00356514  A0 97 00 04 */	lhz r4, 4(r23)
/* 8035A8B8 00356518  4B FF FB 95 */	bl AddressToString
/* 8035A8BC 0035651C  80 77 00 08 */	lwz r3, 8(r23)
/* 8035A8C0 00356520  38 A0 00 00 */	li r5, 0
/* 8035A8C4 00356524  A0 97 00 0C */	lhz r4, 0xc(r23)
/* 8035A8C8 00356528  4B FF FB 85 */	bl AddressToString
lbl_8035A8CC:
/* 8035A8CC 0035652C  2C 18 FF FF */	cmpwi r24, -1
/* 8035A8D0 00356530  40 82 FD 9C */	bne lbl_8035A66C
lbl_8035A8D4:
/* 8035A8D4 00356534  38 60 00 01 */	li r3, 1
lbl_8035A8D8:
/* 8035A8D8 00356538  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8035A8DC 0035653C  4B E6 C8 89 */	bl _restgpr_23
/* 8035A8E0 00356540  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8035A8E4 00356544  7C 08 03 A6 */	mtlr r0
/* 8035A8E8 00356548  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8035A8EC 0035654C  4E 80 00 20 */	blr

.global NatifyThink
NatifyThink:
/* 8035A8F0 00356550  4B FF FC DC */	b Think

.global DetermineNatType
DetermineNatType:
/* 8035A8F4 00356554  80 C3 00 9C */	lwz r6, 0x9c(r3)
/* 8035A8F8 00356558  38 A0 00 06 */	li r5, 6
/* 8035A8FC 0035655C  38 80 00 04 */	li r4, 4
/* 8035A900 00356560  38 00 00 01 */	li r0, 1
/* 8035A904 00356564  2C 06 00 00 */	cmpwi r6, 0
/* 8035A908 00356568  90 A3 00 8C */	stw r5, 0x8c(r3)
/* 8035A90C 0035656C  90 83 00 88 */	stw r4, 0x88(r3)
/* 8035A910 00356570  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 8035A914 00356574  41 82 00 1C */	beq lbl_8035A930
/* 8035A918 00356578  80 03 00 AC */	lwz r0, 0xac(r3)
/* 8035A91C 0035657C  2C 00 00 00 */	cmpwi r0, 0
/* 8035A920 00356580  41 82 00 10 */	beq lbl_8035A930
/* 8035A924 00356584  80 03 00 BC */	lwz r0, 0xbc(r3)
/* 8035A928 00356588  2C 00 00 00 */	cmpwi r0, 0
/* 8035A92C 0035658C  40 82 00 0C */	bne lbl_8035A938
lbl_8035A930:
/* 8035A930 00356590  38 60 00 00 */	li r3, 0
/* 8035A934 00356594  4E 80 00 20 */	blr
lbl_8035A938:
/* 8035A938 00356598  80 A3 00 84 */	lwz r5, 0x84(r3)
/* 8035A93C 0035659C  2C 05 00 00 */	cmpwi r5, 0
/* 8035A940 003565A0  40 82 00 28 */	bne lbl_8035A968
/* 8035A944 003565A4  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8035A948 003565A8  2C 00 00 00 */	cmpwi r0, 0
/* 8035A94C 003565AC  40 82 00 1C */	bne lbl_8035A968
/* 8035A950 003565B0  80 03 00 94 */	lwz r0, 0x94(r3)
/* 8035A954 003565B4  7C 06 00 40 */	cmplw r6, r0
/* 8035A958 003565B8  40 82 00 10 */	bne lbl_8035A968
/* 8035A95C 003565BC  38 00 00 00 */	li r0, 0
/* 8035A960 003565C0  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8035A964 003565C4  48 00 01 80 */	b lbl_8035AAE4
lbl_8035A968:
/* 8035A968 003565C8  80 03 00 94 */	lwz r0, 0x94(r3)
/* 8035A96C 003565CC  7C 06 00 40 */	cmplw r6, r0
/* 8035A970 003565D0  40 82 00 10 */	bne lbl_8035A980
/* 8035A974 003565D4  38 00 00 01 */	li r0, 1
/* 8035A978 003565D8  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8035A97C 003565DC  48 00 01 68 */	b lbl_8035AAE4
lbl_8035A980:
/* 8035A980 003565E0  80 C3 00 80 */	lwz r6, 0x80(r3)
/* 8035A984 003565E4  2C 06 00 00 */	cmpwi r6, 0
/* 8035A988 003565E8  40 82 00 40 */	bne lbl_8035A9C8
/* 8035A98C 003565EC  2C 05 00 00 */	cmpwi r5, 0
/* 8035A990 003565F0  40 82 00 38 */	bne lbl_8035A9C8
/* 8035A994 003565F4  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035A998 003565F8  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035A99C 003565FC  7C 04 00 50 */	subf r0, r4, r0
/* 8035A9A0 00356600  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8035A9A4 00356604  7C 80 02 78 */	xor r0, r4, r0
/* 8035A9A8 00356608  7C 04 00 50 */	subf r0, r4, r0
/* 8035A9AC 0035660C  2C 00 00 01 */	cmpwi r0, 1
/* 8035A9B0 00356610  41 80 00 18 */	blt lbl_8035A9C8
/* 8035A9B4 00356614  38 80 00 05 */	li r4, 5
/* 8035A9B8 00356618  38 00 00 00 */	li r0, 0
/* 8035A9BC 0035661C  90 83 00 8C */	stw r4, 0x8c(r3)
/* 8035A9C0 00356620  90 03 00 88 */	stw r0, 0x88(r3)
/* 8035A9C4 00356624  48 00 01 20 */	b lbl_8035AAE4
lbl_8035A9C8:
/* 8035A9C8 00356628  2C 06 00 00 */	cmpwi r6, 0
/* 8035A9CC 0035662C  41 82 00 40 */	beq lbl_8035AA0C
/* 8035A9D0 00356630  2C 05 00 00 */	cmpwi r5, 0
/* 8035A9D4 00356634  40 82 00 38 */	bne lbl_8035AA0C
/* 8035A9D8 00356638  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035A9DC 0035663C  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035A9E0 00356640  7C 04 00 50 */	subf r0, r4, r0
/* 8035A9E4 00356644  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8035A9E8 00356648  7C 80 02 78 */	xor r0, r4, r0
/* 8035A9EC 0035664C  7C 04 00 50 */	subf r0, r4, r0
/* 8035A9F0 00356650  2C 00 00 01 */	cmpwi r0, 1
/* 8035A9F4 00356654  41 80 00 18 */	blt lbl_8035AA0C
/* 8035A9F8 00356658  38 80 00 05 */	li r4, 5
/* 8035A9FC 0035665C  38 00 00 02 */	li r0, 2
/* 8035AA00 00356660  90 83 00 8C */	stw r4, 0x8c(r3)
/* 8035AA04 00356664  90 03 00 88 */	stw r0, 0x88(r3)
/* 8035AA08 00356668  48 00 00 DC */	b lbl_8035AAE4
lbl_8035AA0C:
/* 8035AA0C 0035666C  2C 06 00 00 */	cmpwi r6, 0
/* 8035AA10 00356670  40 82 00 40 */	bne lbl_8035AA50
/* 8035AA14 00356674  2C 05 00 00 */	cmpwi r5, 0
/* 8035AA18 00356678  41 82 00 38 */	beq lbl_8035AA50
/* 8035AA1C 0035667C  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035AA20 00356680  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035AA24 00356684  7C 04 00 50 */	subf r0, r4, r0
/* 8035AA28 00356688  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8035AA2C 0035668C  7C 80 02 78 */	xor r0, r4, r0
/* 8035AA30 00356690  7C 04 00 50 */	subf r0, r4, r0
/* 8035AA34 00356694  2C 00 00 01 */	cmpwi r0, 1
/* 8035AA38 00356698  41 80 00 18 */	blt lbl_8035AA50
/* 8035AA3C 0035669C  38 80 00 05 */	li r4, 5
/* 8035AA40 003566A0  38 00 00 03 */	li r0, 3
/* 8035AA44 003566A4  90 83 00 8C */	stw r4, 0x8c(r3)
/* 8035AA48 003566A8  90 03 00 88 */	stw r0, 0x88(r3)
/* 8035AA4C 003566AC  48 00 00 98 */	b lbl_8035AAE4
lbl_8035AA50:
/* 8035AA50 003566B0  2C 06 00 00 */	cmpwi r6, 0
/* 8035AA54 003566B4  41 82 00 40 */	beq lbl_8035AA94
/* 8035AA58 003566B8  2C 05 00 00 */	cmpwi r5, 0
/* 8035AA5C 003566BC  41 82 00 38 */	beq lbl_8035AA94
/* 8035AA60 003566C0  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035AA64 003566C4  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035AA68 003566C8  7C 04 00 50 */	subf r0, r4, r0
/* 8035AA6C 003566CC  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8035AA70 003566D0  7C 80 02 78 */	xor r0, r4, r0
/* 8035AA74 003566D4  7C 04 00 50 */	subf r0, r4, r0
/* 8035AA78 003566D8  2C 00 00 01 */	cmpwi r0, 1
/* 8035AA7C 003566DC  41 80 00 18 */	blt lbl_8035AA94
/* 8035AA80 003566E0  38 80 00 05 */	li r4, 5
/* 8035AA84 003566E4  38 00 00 01 */	li r0, 1
/* 8035AA88 003566E8  90 83 00 8C */	stw r4, 0x8c(r3)
/* 8035AA8C 003566EC  90 03 00 88 */	stw r0, 0x88(r3)
/* 8035AA90 003566F0  48 00 00 54 */	b lbl_8035AAE4
lbl_8035AA94:
/* 8035AA94 003566F4  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 8035AA98 003566F8  41 86 00 10 */	beq cr1, lbl_8035AAA8
/* 8035AA9C 003566FC  38 00 00 04 */	li r0, 4
/* 8035AAA0 00356700  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8035AAA4 00356704  48 00 00 40 */	b lbl_8035AAE4
lbl_8035AAA8:
/* 8035AAA8 00356708  2C 06 00 00 */	cmpwi r6, 0
/* 8035AAAC 0035670C  41 82 00 14 */	beq lbl_8035AAC0
/* 8035AAB0 00356710  40 86 00 10 */	bne cr1, lbl_8035AAC0
/* 8035AAB4 00356714  38 00 00 03 */	li r0, 3
/* 8035AAB8 00356718  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8035AABC 0035671C  48 00 00 28 */	b lbl_8035AAE4
lbl_8035AAC0:
/* 8035AAC0 00356720  2C 06 00 00 */	cmpwi r6, 0
/* 8035AAC4 00356724  40 82 00 18 */	bne lbl_8035AADC
/* 8035AAC8 00356728  2C 05 00 00 */	cmpwi r5, 0
/* 8035AACC 0035672C  40 82 00 10 */	bne lbl_8035AADC
/* 8035AAD0 00356730  38 00 00 02 */	li r0, 2
/* 8035AAD4 00356734  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8035AAD8 00356738  48 00 00 0C */	b lbl_8035AAE4
lbl_8035AADC:
/* 8035AADC 0035673C  38 00 00 06 */	li r0, 6
/* 8035AAE0 00356740  90 03 00 8C */	stw r0, 0x8c(r3)
lbl_8035AAE4:
/* 8035AAE4 00356744  A0 C3 00 98 */	lhz r6, 0x98(r3)
/* 8035AAE8 00356748  A0 A3 00 A0 */	lhz r5, 0xa0(r3)
/* 8035AAEC 0035674C  7C 05 30 40 */	cmplw r5, r6
/* 8035AAF0 00356750  40 82 00 30 */	bne lbl_8035AB20
/* 8035AAF4 00356754  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035AAF8 00356758  A0 03 00 A8 */	lhz r0, 0xa8(r3)
/* 8035AAFC 0035675C  7C 04 00 40 */	cmplw r4, r0
/* 8035AB00 00356760  40 82 00 20 */	bne lbl_8035AB20
/* 8035AB04 00356764  A0 83 00 C0 */	lhz r4, 0xc0(r3)
/* 8035AB08 00356768  A0 03 00 B8 */	lhz r0, 0xb8(r3)
/* 8035AB0C 0035676C  7C 04 00 40 */	cmplw r4, r0
/* 8035AB10 00356770  40 82 00 10 */	bne lbl_8035AB20
/* 8035AB14 00356774  38 00 00 01 */	li r0, 1
/* 8035AB18 00356778  90 03 00 90 */	stw r0, 0x90(r3)
/* 8035AB1C 0035677C  48 00 00 70 */	b lbl_8035AB8C
lbl_8035AB20:
/* 8035AB20 00356780  A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 8035AB24 00356784  7C 05 20 40 */	cmplw r5, r4
/* 8035AB28 00356788  40 82 00 1C */	bne lbl_8035AB44
/* 8035AB2C 0035678C  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035AB30 00356790  7C 04 00 40 */	cmplw r4, r0
/* 8035AB34 00356794  40 82 00 10 */	bne lbl_8035AB44
/* 8035AB38 00356798  38 00 00 02 */	li r0, 2
/* 8035AB3C 0035679C  90 03 00 90 */	stw r0, 0x90(r3)
/* 8035AB40 003567A0  48 00 00 4C */	b lbl_8035AB8C
lbl_8035AB44:
/* 8035AB44 003567A4  7C 05 30 40 */	cmplw r5, r6
/* 8035AB48 003567A8  40 82 00 20 */	bne lbl_8035AB68
/* 8035AB4C 003567AC  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035AB50 003567B0  7C 04 00 50 */	subf r0, r4, r0
/* 8035AB54 003567B4  2C 00 00 01 */	cmpwi r0, 1
/* 8035AB58 003567B8  40 82 00 10 */	bne lbl_8035AB68
/* 8035AB5C 003567BC  38 00 00 04 */	li r0, 4
/* 8035AB60 003567C0  90 03 00 90 */	stw r0, 0x90(r3)
/* 8035AB64 003567C4  48 00 00 28 */	b lbl_8035AB8C
lbl_8035AB68:
/* 8035AB68 003567C8  A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 8035AB6C 003567CC  7C 04 00 50 */	subf r0, r4, r0
/* 8035AB70 003567D0  2C 00 00 01 */	cmpwi r0, 1
/* 8035AB74 003567D4  40 82 00 10 */	bne lbl_8035AB84
/* 8035AB78 003567D8  38 00 00 03 */	li r0, 3
/* 8035AB7C 003567DC  90 03 00 90 */	stw r0, 0x90(r3)
/* 8035AB80 003567E0  48 00 00 0C */	b lbl_8035AB8C
lbl_8035AB84:
/* 8035AB84 003567E4  38 00 00 00 */	li r0, 0
/* 8035AB88 003567E8  90 03 00 90 */	stw r0, 0x90(r3)
lbl_8035AB8C:
/* 8035AB8C 003567EC  A0 83 00 D0 */	lhz r4, 0xd0(r3)
/* 8035AB90 003567F0  2C 04 00 00 */	cmpwi r4, 0
/* 8035AB94 003567F4  41 82 00 18 */	beq lbl_8035ABAC
/* 8035AB98 003567F8  A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 8035AB9C 003567FC  7C 00 20 40 */	cmplw r0, r4
/* 8035ABA0 00356800  41 82 00 0C */	beq lbl_8035ABAC
/* 8035ABA4 00356804  38 00 00 00 */	li r0, 0
/* 8035ABA8 00356808  90 03 00 D4 */	stw r0, 0xd4(r3)
lbl_8035ABAC:
/* 8035ABAC 0035680C  38 60 00 01 */	li r3, 1
/* 8035ABB0 00356810  4E 80 00 20 */	blr
