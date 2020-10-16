.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv:
/* 8036F258 0036AEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036F25C 0036AEBC  7C 08 02 A6 */	mflr r0
/* 8036F260 0036AEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036F264 0036AEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036F268 0036AEC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8036F26C 0036AECC  4B EF F4 F1 */	bl OSDisableInterrupts
/* 8036F270 0036AED0  88 0D B2 00 */	lbz r0, lbl_806404C0-_SDA_BASE_(r13)
/* 8036F274 0036AED4  7C 7F 1B 78 */	mr r31, r3
/* 8036F278 0036AED8  7C 00 07 75 */	extsb. r0, r0
/* 8036F27C 0036AEDC  40 82 00 50 */	bne lbl_8036F2CC
/* 8036F280 0036AEE0  3F C0 80 62 */	lis r30, lbl_806219CC@ha
/* 8036F284 0036AEE4  38 00 00 00 */	li r0, 0
/* 8036F288 0036AEE8  3B DE 19 CC */	addi r30, r30, lbl_806219CC@l
/* 8036F28C 0036AEEC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8036F290 0036AEF0  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8036F294 0036AEF4  7F C3 F3 78 */	mr r3, r30
/* 8036F298 0036AEF8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8036F29C 0036AEFC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8036F2A0 0036AF00  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8036F2A4 0036AF04  90 9E 00 20 */	stw r4, 0x20(r30)
/* 8036F2A8 0036AF08  4B F0 06 69 */	bl OSInitMutex
/* 8036F2AC 0036AF0C  3C 80 80 37 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 8036F2B0 0036AF10  3C A0 80 62 */	lis r5, lbl_806219C0@ha
/* 8036F2B4 0036AF14  7F C3 F3 78 */	mr r3, r30
/* 8036F2B8 0036AF18  38 84 F2 F4 */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 8036F2BC 0036AF1C  38 A5 19 C0 */	addi r5, r5, lbl_806219C0@l
/* 8036F2C0 0036AF20  4B E5 79 89 */	bl __register_global_object_tmp
/* 8036F2C4 0036AF24  38 00 00 01 */	li r0, 1
/* 8036F2C8 0036AF28  98 0D B2 00 */	stb r0, lbl_806404C0-_SDA_BASE_(r13)
lbl_8036F2CC:
/* 8036F2CC 0036AF2C  7F E3 FB 78 */	mr r3, r31
/* 8036F2D0 0036AF30  4B EF F4 B5 */	bl OSRestoreInterrupts
/* 8036F2D4 0036AF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036F2D8 0036AF38  3C 60 80 62 */	lis r3, lbl_806219CC@ha
/* 8036F2DC 0036AF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036F2E0 0036AF40  38 63 19 CC */	addi r3, r3, lbl_806219CC@l
/* 8036F2E4 0036AF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036F2E8 0036AF48  7C 08 03 A6 */	mtlr r0
/* 8036F2EC 0036AF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036F2F0 0036AF50  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv
__dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv:
/* 8036F2F4 0036AF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036F2F8 0036AF58  7C 08 02 A6 */	mflr r0
/* 8036F2FC 0036AF5C  2C 03 00 00 */	cmpwi r3, 0
/* 8036F300 0036AF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036F304 0036AF64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036F308 0036AF68  7C 9F 23 78 */	mr r31, r4
/* 8036F30C 0036AF6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8036F310 0036AF70  7C 7E 1B 78 */	mr r30, r3
/* 8036F314 0036AF74  41 82 00 24 */	beq lbl_8036F338
/* 8036F318 0036AF78  34 63 00 18 */	addic. r3, r3, 0x18
/* 8036F31C 0036AF7C  41 82 00 0C */	beq lbl_8036F328
/* 8036F320 0036AF80  38 80 00 00 */	li r4, 0
/* 8036F324 0036AF84  4B FF 38 15 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_8036F328:
/* 8036F328 0036AF88  2C 1F 00 00 */	cmpwi r31, 0
/* 8036F32C 0036AF8C  40 81 00 0C */	ble lbl_8036F338
/* 8036F330 0036AF90  7F C3 F3 78 */	mr r3, r30
/* 8036F334 0036AF94  4B E6 B7 85 */	bl __dl__FPv
lbl_8036F338:
/* 8036F338 0036AF98  7F C3 F3 78 */	mr r3, r30
/* 8036F33C 0036AF9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036F340 0036AFA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036F344 0036AFA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036F348 0036AFA8  7C 08 03 A6 */	mtlr r0
/* 8036F34C 0036AFAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8036F350 0036AFB0  4E 80 00 20 */	blr

.global __dt__Q34nw4r2ut47LinkList$0Q44nw4r3snd6detail15DisposeCallback$40$1Fv
__dt__Q34nw4r2ut47LinkList$0Q44nw4r3snd6detail15DisposeCallback$40$1Fv:
/* 8036F354 0036AFB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036F358 0036AFB8  7C 08 02 A6 */	mflr r0
/* 8036F35C 0036AFBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036F360 0036AFC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036F364 0036AFC4  7C 9F 23 78 */	mr r31, r4
/* 8036F368 0036AFC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036F36C 0036AFCC  7C 7E 1B 78 */	mr r30, r3
/* 8036F370 0036AFD0  4B F0 05 D9 */	bl OSLockMutex
/* 8036F374 0036AFD4  38 1E 00 1C */	addi r0, r30, 0x1c
/* 8036F378 0036AFD8  7F E5 FB 78 */	mr r5, r31
/* 8036F37C 0036AFDC  90 01 00 08 */	stw r0, 8(r1)
/* 8036F380 0036AFE0  38 7E 00 18 */	addi r3, r30, 0x18
/* 8036F384 0036AFE4  38 81 00 08 */	addi r4, r1, 8
/* 8036F388 0036AFE8  4B FF 38 C1 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8036F38C 0036AFEC  7F C3 F3 78 */	mr r3, r30
/* 8036F390 0036AFF0  4B F0 06 95 */	bl OSUnlockMutex
/* 8036F394 0036AFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036F398 0036AFF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036F39C 0036AFFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036F3A0 0036B000  7C 08 03 A6 */	mtlr r0
/* 8036F3A4 0036B004  38 21 00 20 */	addi r1, r1, 0x20
/* 8036F3A8 0036B008  4E 80 00 20 */	blr

.global __ct__Q44nw4r3snd6detail22DisposeCallbackManagerFv
__ct__Q44nw4r3snd6detail22DisposeCallbackManagerFv:
/* 8036F3AC 0036B00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036F3B0 0036B010  7C 08 02 A6 */	mflr r0
/* 8036F3B4 0036B014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036F3B8 0036B018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036F3BC 0036B01C  7C 9F 23 78 */	mr r31, r4
/* 8036F3C0 0036B020  93 C1 00 08 */	stw r30, 8(r1)
/* 8036F3C4 0036B024  7C 7E 1B 78 */	mr r30, r3
/* 8036F3C8 0036B028  4B F0 05 81 */	bl OSLockMutex
/* 8036F3CC 0036B02C  7F E4 FB 78 */	mr r4, r31
/* 8036F3D0 0036B030  38 7E 00 18 */	addi r3, r30, 0x18
/* 8036F3D4 0036B034  4B FF 38 A1 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8036F3D8 0036B038  7F C3 F3 78 */	mr r3, r30
/* 8036F3DC 0036B03C  4B F0 06 49 */	bl OSUnlockMutex
/* 8036F3E0 0036B040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036F3E4 0036B044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036F3E8 0036B048  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036F3EC 0036B04C  7C 08 03 A6 */	mtlr r0
/* 8036F3F0 0036B050  38 21 00 10 */	addi r1, r1, 0x10
/* 8036F3F4 0036B054  4E 80 00 20 */	blr

.global Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv:
/* 8036F3F8 0036B058  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036F3FC 0036B05C  7C 08 02 A6 */	mflr r0
/* 8036F400 0036B060  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036F404 0036B064  39 61 00 40 */	addi r11, r1, 0x40
/* 8036F408 0036B068  4B E5 7D 09 */	bl _savegpr_21
/* 8036F40C 0036B06C  7C 9F 23 78 */	mr r31, r4
/* 8036F410 0036B070  7C 7D 1B 78 */	mr r29, r3
/* 8036F414 0036B074  7F C4 2A 14 */	add r30, r4, r5
/* 8036F418 0036B078  4B F0 05 31 */	bl OSLockMutex
/* 8036F41C 0036B07C  4B EF F3 41 */	bl OSDisableInterrupts
/* 8036F420 0036B080  88 0D B2 00 */	lbz r0, lbl_806404C0-_SDA_BASE_(r13)
/* 8036F424 0036B084  7C 7C 1B 78 */	mr r28, r3
/* 8036F428 0036B088  7C 00 07 75 */	extsb. r0, r0
/* 8036F42C 0036B08C  40 82 00 50 */	bne lbl_8036F47C
/* 8036F430 0036B090  3E A0 80 62 */	lis r21, lbl_806219CC@ha
/* 8036F434 0036B094  38 00 00 00 */	li r0, 0
/* 8036F438 0036B098  3A B5 19 CC */	addi r21, r21, lbl_806219CC@l
/* 8036F43C 0036B09C  90 15 00 1C */	stw r0, 0x1c(r21)
/* 8036F440 0036B0A0  38 95 00 1C */	addi r4, r21, 0x1c
/* 8036F444 0036B0A4  7E A3 AB 78 */	mr r3, r21
/* 8036F448 0036B0A8  90 15 00 20 */	stw r0, 0x20(r21)
/* 8036F44C 0036B0AC  90 15 00 18 */	stw r0, 0x18(r21)
/* 8036F450 0036B0B0  90 95 00 1C */	stw r4, 0x1c(r21)
/* 8036F454 0036B0B4  90 95 00 20 */	stw r4, 0x20(r21)
/* 8036F458 0036B0B8  4B F0 04 B9 */	bl OSInitMutex
/* 8036F45C 0036B0BC  3C 80 80 37 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 8036F460 0036B0C0  3C A0 80 62 */	lis r5, lbl_806219C0@ha
/* 8036F464 0036B0C4  7E A3 AB 78 */	mr r3, r21
/* 8036F468 0036B0C8  38 84 F2 F4 */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 8036F46C 0036B0CC  38 A5 19 C0 */	addi r5, r5, lbl_806219C0@l
/* 8036F470 0036B0D0  4B E5 77 D9 */	bl __register_global_object_tmp
/* 8036F474 0036B0D4  38 00 00 01 */	li r0, 1
/* 8036F478 0036B0D8  98 0D B2 00 */	stb r0, lbl_806404C0-_SDA_BASE_(r13)
lbl_8036F47C:
/* 8036F47C 0036B0DC  7F 83 E3 78 */	mr r3, r28
/* 8036F480 0036B0E0  4B EF F3 05 */	bl OSRestoreInterrupts
/* 8036F484 0036B0E4  3E A0 80 62 */	lis r21, lbl_806219CC@ha
/* 8036F488 0036B0E8  3A C0 00 00 */	li r22, 0
/* 8036F48C 0036B0EC  3A B5 19 CC */	addi r21, r21, lbl_806219CC@l
/* 8036F490 0036B0F0  3E E0 80 37 */	lis r23, 0x8037
/* 8036F494 0036B0F4  83 95 00 1C */	lwz r28, 0x1c(r21)
/* 8036F498 0036B0F8  3B 55 00 1C */	addi r26, r21, 0x1c
/* 8036F49C 0036B0FC  3F 00 80 62 */	lis r24, 0x8062
/* 8036F4A0 0036B100  3B 20 00 01 */	li r25, 1
/* 8036F4A4 0036B104  48 00 00 24 */	b lbl_8036F4C8
lbl_8036F4A8:
/* 8036F4A8 0036B108  81 9C 00 08 */	lwz r12, 8(r28)
/* 8036F4AC 0036B10C  7F 83 E3 78 */	mr r3, r28
/* 8036F4B0 0036B110  7F E4 FB 78 */	mr r4, r31
/* 8036F4B4 0036B114  7F C5 F3 78 */	mr r5, r30
/* 8036F4B8 0036B118  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8036F4BC 0036B11C  83 9C 00 00 */	lwz r28, 0(r28)
/* 8036F4C0 0036B120  7D 89 03 A6 */	mtctr r12
/* 8036F4C4 0036B124  4E 80 04 21 */	bctrl
lbl_8036F4C8:
/* 8036F4C8 0036B128  4B EF F2 95 */	bl OSDisableInterrupts
/* 8036F4CC 0036B12C  88 0D B2 00 */	lbz r0, lbl_806404C0-_SDA_BASE_(r13)
/* 8036F4D0 0036B130  7C 7B 1B 78 */	mr r27, r3
/* 8036F4D4 0036B134  7C 00 07 75 */	extsb. r0, r0
/* 8036F4D8 0036B138  40 82 00 38 */	bne lbl_8036F510
/* 8036F4DC 0036B13C  92 D5 00 1C */	stw r22, 0x1c(r21)
/* 8036F4E0 0036B140  38 95 00 1C */	addi r4, r21, 0x1c
/* 8036F4E4 0036B144  7E A3 AB 78 */	mr r3, r21
/* 8036F4E8 0036B148  92 D5 00 20 */	stw r22, 0x20(r21)
/* 8036F4EC 0036B14C  92 D5 00 18 */	stw r22, 0x18(r21)
/* 8036F4F0 0036B150  90 95 00 1C */	stw r4, 0x1c(r21)
/* 8036F4F4 0036B154  90 95 00 20 */	stw r4, 0x20(r21)
/* 8036F4F8 0036B158  4B F0 04 19 */	bl OSInitMutex
/* 8036F4FC 0036B15C  7E A3 AB 78 */	mr r3, r21
/* 8036F500 0036B160  38 97 F2 F4 */	addi r4, r23, -3340
/* 8036F504 0036B164  38 B8 19 C0 */	addi r5, r24, 0x19c0
/* 8036F508 0036B168  4B E5 77 41 */	bl __register_global_object_tmp
/* 8036F50C 0036B16C  9B 2D B2 00 */	stb r25, lbl_806404C0-_SDA_BASE_(r13)
lbl_8036F510:
/* 8036F510 0036B170  7F 63 DB 78 */	mr r3, r27
/* 8036F514 0036B174  4B EF F2 71 */	bl OSRestoreInterrupts
/* 8036F518 0036B178  7C 1C D0 40 */	cmplw r28, r26
/* 8036F51C 0036B17C  40 82 FF 8C */	bne lbl_8036F4A8
/* 8036F520 0036B180  7F A3 EB 78 */	mr r3, r29
/* 8036F524 0036B184  4B F0 05 01 */	bl OSUnlockMutex
/* 8036F528 0036B188  39 61 00 40 */	addi r11, r1, 0x40
/* 8036F52C 0036B18C  4B E5 7C 31 */	bl _restgpr_21
/* 8036F530 0036B190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036F534 0036B194  7C 08 03 A6 */	mtlr r0
/* 8036F538 0036B198  38 21 00 40 */	addi r1, r1, 0x40
/* 8036F53C 0036B19C  4E 80 00 20 */	blr

.global DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv:
/* 8036F540 0036B1A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036F544 0036B1A4  7C 08 02 A6 */	mflr r0
/* 8036F548 0036B1A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036F54C 0036B1AC  39 61 00 40 */	addi r11, r1, 0x40
/* 8036F550 0036B1B0  4B E5 7B C1 */	bl _savegpr_21
/* 8036F554 0036B1B4  7C 9F 23 78 */	mr r31, r4
/* 8036F558 0036B1B8  7C 7D 1B 78 */	mr r29, r3
/* 8036F55C 0036B1BC  7F C4 2A 14 */	add r30, r4, r5
/* 8036F560 0036B1C0  4B F0 03 E9 */	bl OSLockMutex
/* 8036F564 0036B1C4  4B EF F1 F9 */	bl OSDisableInterrupts
/* 8036F568 0036B1C8  88 0D B2 00 */	lbz r0, lbl_806404C0-_SDA_BASE_(r13)
/* 8036F56C 0036B1CC  7C 7C 1B 78 */	mr r28, r3
/* 8036F570 0036B1D0  7C 00 07 75 */	extsb. r0, r0
/* 8036F574 0036B1D4  40 82 00 50 */	bne lbl_8036F5C4
/* 8036F578 0036B1D8  3E A0 80 62 */	lis r21, lbl_806219CC@ha
/* 8036F57C 0036B1DC  38 00 00 00 */	li r0, 0
/* 8036F580 0036B1E0  3A B5 19 CC */	addi r21, r21, lbl_806219CC@l
/* 8036F584 0036B1E4  90 15 00 1C */	stw r0, 0x1c(r21)
/* 8036F588 0036B1E8  38 95 00 1C */	addi r4, r21, 0x1c
/* 8036F58C 0036B1EC  7E A3 AB 78 */	mr r3, r21
/* 8036F590 0036B1F0  90 15 00 20 */	stw r0, 0x20(r21)
/* 8036F594 0036B1F4  90 15 00 18 */	stw r0, 0x18(r21)
/* 8036F598 0036B1F8  90 95 00 1C */	stw r4, 0x1c(r21)
/* 8036F59C 0036B1FC  90 95 00 20 */	stw r4, 0x20(r21)
/* 8036F5A0 0036B200  4B F0 03 71 */	bl OSInitMutex
/* 8036F5A4 0036B204  3C 80 80 37 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 8036F5A8 0036B208  3C A0 80 62 */	lis r5, lbl_806219C0@ha
/* 8036F5AC 0036B20C  7E A3 AB 78 */	mr r3, r21
/* 8036F5B0 0036B210  38 84 F2 F4 */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 8036F5B4 0036B214  38 A5 19 C0 */	addi r5, r5, lbl_806219C0@l
/* 8036F5B8 0036B218  4B E5 76 91 */	bl __register_global_object_tmp
/* 8036F5BC 0036B21C  38 00 00 01 */	li r0, 1
/* 8036F5C0 0036B220  98 0D B2 00 */	stb r0, lbl_806404C0-_SDA_BASE_(r13)
lbl_8036F5C4:
/* 8036F5C4 0036B224  7F 83 E3 78 */	mr r3, r28
/* 8036F5C8 0036B228  4B EF F1 BD */	bl OSRestoreInterrupts
/* 8036F5CC 0036B22C  3E A0 80 62 */	lis r21, lbl_806219CC@ha
/* 8036F5D0 0036B230  3A C0 00 00 */	li r22, 0
/* 8036F5D4 0036B234  3A B5 19 CC */	addi r21, r21, lbl_806219CC@l
/* 8036F5D8 0036B238  3E E0 80 37 */	lis r23, 0x8037
/* 8036F5DC 0036B23C  83 95 00 1C */	lwz r28, 0x1c(r21)
/* 8036F5E0 0036B240  3B 55 00 1C */	addi r26, r21, 0x1c
/* 8036F5E4 0036B244  3F 00 80 62 */	lis r24, 0x8062
/* 8036F5E8 0036B248  3B 20 00 01 */	li r25, 1
/* 8036F5EC 0036B24C  48 00 00 24 */	b lbl_8036F610
lbl_8036F5F0:
/* 8036F5F0 0036B250  81 9C 00 08 */	lwz r12, 8(r28)
/* 8036F5F4 0036B254  7F 83 E3 78 */	mr r3, r28
/* 8036F5F8 0036B258  7F E4 FB 78 */	mr r4, r31
/* 8036F5FC 0036B25C  7F C5 F3 78 */	mr r5, r30
/* 8036F600 0036B260  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8036F604 0036B264  83 9C 00 00 */	lwz r28, 0(r28)
/* 8036F608 0036B268  7D 89 03 A6 */	mtctr r12
/* 8036F60C 0036B26C  4E 80 04 21 */	bctrl
lbl_8036F610:
/* 8036F610 0036B270  4B EF F1 4D */	bl OSDisableInterrupts
/* 8036F614 0036B274  88 0D B2 00 */	lbz r0, lbl_806404C0-_SDA_BASE_(r13)
/* 8036F618 0036B278  7C 7B 1B 78 */	mr r27, r3
/* 8036F61C 0036B27C  7C 00 07 75 */	extsb. r0, r0
/* 8036F620 0036B280  40 82 00 38 */	bne lbl_8036F658
/* 8036F624 0036B284  92 D5 00 1C */	stw r22, 0x1c(r21)
/* 8036F628 0036B288  38 95 00 1C */	addi r4, r21, 0x1c
/* 8036F62C 0036B28C  7E A3 AB 78 */	mr r3, r21
/* 8036F630 0036B290  92 D5 00 20 */	stw r22, 0x20(r21)
/* 8036F634 0036B294  92 D5 00 18 */	stw r22, 0x18(r21)
/* 8036F638 0036B298  90 95 00 1C */	stw r4, 0x1c(r21)
/* 8036F63C 0036B29C  90 95 00 20 */	stw r4, 0x20(r21)
/* 8036F640 0036B2A0  4B F0 02 D1 */	bl OSInitMutex
/* 8036F644 0036B2A4  7E A3 AB 78 */	mr r3, r21
/* 8036F648 0036B2A8  38 97 F2 F4 */	addi r4, r23, -3340
/* 8036F64C 0036B2AC  38 B8 19 C0 */	addi r5, r24, 0x19c0
/* 8036F650 0036B2B0  4B E5 75 F9 */	bl __register_global_object_tmp
/* 8036F654 0036B2B4  9B 2D B2 00 */	stb r25, lbl_806404C0-_SDA_BASE_(r13)
lbl_8036F658:
/* 8036F658 0036B2B8  7F 63 DB 78 */	mr r3, r27
/* 8036F65C 0036B2BC  4B EF F1 29 */	bl OSRestoreInterrupts
/* 8036F660 0036B2C0  7C 1C D0 40 */	cmplw r28, r26
/* 8036F664 0036B2C4  40 82 FF 8C */	bne lbl_8036F5F0
/* 8036F668 0036B2C8  7F A3 EB 78 */	mr r3, r29
/* 8036F66C 0036B2CC  4B F0 03 B9 */	bl OSUnlockMutex
/* 8036F670 0036B2D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8036F674 0036B2D4  4B E5 7A E9 */	bl _restgpr_21
/* 8036F678 0036B2D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036F67C 0036B2DC  7C 08 03 A6 */	mtlr r0
/* 8036F680 0036B2E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8036F684 0036B2E4  4E 80 00 20 */	blr
