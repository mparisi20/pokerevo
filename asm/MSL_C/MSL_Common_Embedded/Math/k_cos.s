.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __kernel_cos
__kernel_cos:
/* 801D22D8 001CDF38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D22DC 001CDF3C  3C 00 3E 40 */	lis r0, 0x3e40
/* 801D22E0 001CDF40  D8 21 00 08 */	stfd f1, 8(r1)
/* 801D22E4 001CDF44  80 61 00 08 */	lwz r3, 8(r1)
/* 801D22E8 001CDF48  54 64 00 7E */	clrlwi r4, r3, 1
/* 801D22EC 001CDF4C  7C 04 00 00 */	cmpw r4, r0
/* 801D22F0 001CDF50  40 80 00 20 */	bge lbl_801D2310
/* 801D22F4 001CDF54  FC 00 08 1E */	fctiwz f0, f1
/* 801D22F8 001CDF58  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801D22FC 001CDF5C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801D2300 001CDF60  2C 00 00 00 */	cmpwi r0, 0
/* 801D2304 001CDF64  40 82 00 0C */	bne lbl_801D2310
/* 801D2308 001CDF68  C8 22 94 60 */	lfd f1, lbl_80641A60-_SDA2_BASE_(r2)
/* 801D230C 001CDF6C  48 00 00 D4 */	b lbl_801D23E0
lbl_801D2310:
/* 801D2310 001CDF70  FD 01 00 72 */	fmul f8, f1, f1
/* 801D2314 001CDF74  C8 02 94 90 */	lfd f0, lbl_80641A90-_SDA2_BASE_(r2)
/* 801D2318 001CDF78  3C 60 3F D3 */	lis r3, 0x3FD33333@ha
/* 801D231C 001CDF7C  C8 C2 94 88 */	lfd f6, lbl_80641A88-_SDA2_BASE_(r2)
/* 801D2320 001CDF80  38 03 33 33 */	addi r0, r3, 0x3FD33333@l
/* 801D2324 001CDF84  C8 A2 94 80 */	lfd f5, lbl_80641A80-_SDA2_BASE_(r2)
/* 801D2328 001CDF88  FC E0 02 32 */	fmul f7, f0, f8
/* 801D232C 001CDF8C  C8 82 94 78 */	lfd f4, lbl_80641A78-_SDA2_BASE_(r2)
/* 801D2330 001CDF90  C8 62 94 70 */	lfd f3, lbl_80641A70-_SDA2_BASE_(r2)
/* 801D2334 001CDF94  7C 04 00 00 */	cmpw r4, r0
/* 801D2338 001CDF98  C8 02 94 68 */	lfd f0, lbl_80641A68-_SDA2_BASE_(r2)
/* 801D233C 001CDF9C  FC C6 38 2A */	fadd f6, f6, f7
/* 801D2340 001CDFA0  FC C8 01 B2 */	fmul f6, f8, f6
/* 801D2344 001CDFA4  FC A5 30 2A */	fadd f5, f5, f6
/* 801D2348 001CDFA8  FC A8 01 72 */	fmul f5, f8, f5
/* 801D234C 001CDFAC  FC 84 28 2A */	fadd f4, f4, f5
/* 801D2350 001CDFB0  FC 88 01 32 */	fmul f4, f8, f4
/* 801D2354 001CDFB4  FC 63 20 2A */	fadd f3, f3, f4
/* 801D2358 001CDFB8  FC 68 00 F2 */	fmul f3, f8, f3
/* 801D235C 001CDFBC  FC 00 18 2A */	fadd f0, f0, f3
/* 801D2360 001CDFC0  FC 68 00 32 */	fmul f3, f8, f0
/* 801D2364 001CDFC4  40 80 00 28 */	bge lbl_801D238C
/* 801D2368 001CDFC8  FC 68 00 F2 */	fmul f3, f8, f3
/* 801D236C 001CDFCC  C8 82 94 98 */	lfd f4, lbl_80641A98-_SDA2_BASE_(r2)
/* 801D2370 001CDFD0  C8 02 94 60 */	lfd f0, lbl_80641A60-_SDA2_BASE_(r2)
/* 801D2374 001CDFD4  FC 21 00 B2 */	fmul f1, f1, f2
/* 801D2378 001CDFD8  FC 44 02 32 */	fmul f2, f4, f8
/* 801D237C 001CDFDC  FC 23 08 28 */	fsub f1, f3, f1
/* 801D2380 001CDFE0  FC 22 08 28 */	fsub f1, f2, f1
/* 801D2384 001CDFE4  FC 20 08 28 */	fsub f1, f0, f1
/* 801D2388 001CDFE8  48 00 00 58 */	b lbl_801D23E0
lbl_801D238C:
/* 801D238C 001CDFEC  3C 00 3F E9 */	lis r0, 0x3fe9
/* 801D2390 001CDFF0  7C 04 00 00 */	cmpw r4, r0
/* 801D2394 001CDFF4  40 81 00 10 */	ble lbl_801D23A4
/* 801D2398 001CDFF8  C8 02 94 A0 */	lfd f0, lbl_80641AA0-_SDA2_BASE_(r2)
/* 801D239C 001CDFFC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801D23A0 001CE000  48 00 00 14 */	b lbl_801D23B4
lbl_801D23A4:
/* 801D23A4 001CE004  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 801D23A8 001CE008  38 00 00 00 */	li r0, 0
/* 801D23AC 001CE00C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801D23B0 001CE010  90 01 00 14 */	stw r0, 0x14(r1)
lbl_801D23B4:
/* 801D23B4 001CE014  C8 02 94 98 */	lfd f0, lbl_80641A98-_SDA2_BASE_(r2)
/* 801D23B8 001CE018  FC 68 00 F2 */	fmul f3, f8, f3
/* 801D23BC 001CE01C  C8 A1 00 10 */	lfd f5, 0x10(r1)
/* 801D23C0 001CE020  FC C0 02 32 */	fmul f6, f0, f8
/* 801D23C4 001CE024  C8 82 94 60 */	lfd f4, lbl_80641A60-_SDA2_BASE_(r2)
/* 801D23C8 001CE028  FC 01 00 B2 */	fmul f0, f1, f2
/* 801D23CC 001CE02C  FC 46 28 28 */	fsub f2, f6, f5
/* 801D23D0 001CE030  FC 24 28 28 */	fsub f1, f4, f5
/* 801D23D4 001CE034  FC 03 00 28 */	fsub f0, f3, f0
/* 801D23D8 001CE038  FC 02 00 28 */	fsub f0, f2, f0
/* 801D23DC 001CE03C  FC 21 00 28 */	fsub f1, f1, f0
lbl_801D23E0:
/* 801D23E0 001CE040  38 21 00 20 */	addi r1, r1, 0x20
/* 801D23E4 001CE044  4E 80 00 20 */	blr
