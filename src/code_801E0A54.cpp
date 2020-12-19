// #include "ctorStruct.h"




typedef struct ctorStruct
{
    u8 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    ctorStruct(u8 p1, u16 p2, u8 p3) 
        : unk0(p1), unk2(p2), unk4(p3) { }
} ctorStruct;



extern ctorStruct lbl_8063F378;

// size == 0xC
typedef struct gUnkClass24
{
    u8 unk0[0x8]; // pad
    float unk8;
} gUnkClass24;

typedef struct gUnkClass23
{
    u32 unk0;
    u32 unk4;
    u8 unk8[0x4]; //pad
    float unkC;
    gUnkClass24* unk10;
    u16 unk14;
} gUnkClass23;

// TODO: same as gUnkClass9 and gUnkClass12?
typedef struct gUnkClass22
{
    u8 unk0;
    u8 unk1;
    
    u8 unk2[0x4]; //pad
    
    u8 unk6;
    
    u8 unk7[0x1]; //pad?
    
    gUnkClass23* unk8;
    void (*unkC)(void*, void*, u32, float);
    
} gUnkClass22;


extern "C" {

void func_801E0A60(gUnkClass22*, ctorStruct*, u32);

void func_801E0A54(gUnkClass22* p1, u32 p2)
{
    func_801E0A60(p1, &lbl_8063F378, p2);
}


// TODO: Are these pointers to members? static functions? 

// NOTE: from GSnull
void lbl_801F3D44(void*, void*, u32, float);

// NOTE: from GScamera
void lbl_801DEEF8__8GScameraFP11gUnkClass12Ulf(void*, void*, u32, float);

// NOTE: from code_801EE044
void lbl_801F1554(void*, void*, u32, float);

// NOTE: from GSlight
void lbl_801E6BB0(void*, void*, u32, float);

// NOTE: from GSmaterial
void lbl_801EC9AC(void*, void*, u32, float);

static inline void InlineFunc1(gUnkClass23* r4, u32 p3, 
    gUnkClass24** r6, u16* r7, float** r8)
{
    if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
        r4->unk0 += p3;
    if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
        r4->unk4 += p3;
    if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
        r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
    *r7 = r4->unk14; // u16
    *r8 = &r4->unkC;
    *r6 = r4->unk10;
}

// private
#define NONMATCHING
#ifdef NONMATCHING

// r6/r8 regswap

void func_801E0A60(gUnkClass22* p1, ctorStruct*, u32 p3)
{
    // TODO: p2 unused
    
    if (p3 && p1->unk8 && (u32)p1->unk8 < 0x80000000)
        p1->unk8 = (gUnkClass23*)((u32)p1->unk8 + p3);
    
    if (!p1->unk8)
        return;
    
    
    float* r8;
    u16 r7;
    gUnkClass24* r6;
    
    
   
    
    r8 = NULL;
    r7 = 0;
    r6 = NULL;
    
    
    
    
    switch (p1->unk1) {
        case 0: case 1:
        case 2: case 3:
            p1->unk0 = 0;
            p1->unkC = &lbl_801F3D44;
            break;
        case 5: case 6: 
        case 7: case 8: case 9: 
        case 10: case 11: case 12:
            p1->unkC = &lbl_801DEEF8__8GScameraFP11gUnkClass12Ulf;
            p1->unk0 = 0;
            break;
        case 17: case 18:
            p1->unk0 = 0;
            p1->unkC = &lbl_801F1554;
            break;
        case 19:
            p1->unk0 = 0;
            p1->unkC = &lbl_801E6BB0;
            break;
        case 20: case 21: case 22:
        case 23: case 24: case 25:
        case 26: case 27: case 28:
            p1->unk0 = 1;
            p1->unkC = &lbl_801EC9AC;
            break;
        default:
            break;
    }
    // 0b5c
    gUnkClass23* r4;
    switch (p1->unk6) {
        case 0:
        // TODO: inline?
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 1:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 2:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 3:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 4:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 5:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 6:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 7:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC;
            r7 = r4->unk14; // u16
            r6 = r4->unk10;
            break;
        case 8:
            r4 = p1->unk8;
            if (p3 && r4->unk0 && r4->unk0 < 0x80000000)
                r4->unk0 += p3;
            if (p3 && r4->unk4 && r4->unk4 < 0x80000000)
                r4->unk4 += p3;
            if (p3 && r4->unk10 && (u32)r4->unk10 < 0x80000000)
                r4->unk10 = (gUnkClass24*)((u32)r4->unk10 + p3);
            r8 = &r4->unkC; // float*
            r7 = r4->unk14; // u16
            r6 = r4->unk10; // ptr to size 0xC struct
            break;
        default:
            break;
    }
    if (!r8)
        return;
    if (!r6)
        return;
    if (!r7)
        return;
    
    // load maximum value into *r8
    *r8 = 0.0f;
    for (u16 i = 0; i < r7; i++, r6++)
        if (*r8 < r6->unk8)
            *r8 = r6->unk8;
}
#else
extern float lbl_80641C80;
extern u32 lbl_80423458;
asm void func_801E0A60(gUnkClass22* p1, ctorStruct*, u32 p3)
{
nofralloc
/* 801E0A60 001DC6C0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0A64 001DC6C4  41 82 00 24 */	beq lbl_801E0A88
/* 801E0A68 001DC6C8  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0A6C 001DC6CC  2C 04 00 00 */	cmpwi r4, 0
/* 801E0A70 001DC6D0  41 82 00 18 */	beq lbl_801E0A88
/* 801E0A74 001DC6D4  3C 00 80 00 */	lis r0, 0x8000
/* 801E0A78 001DC6D8  7C 04 00 40 */	cmplw r4, r0
/* 801E0A7C 001DC6DC  40 80 00 0C */	bge lbl_801E0A88
/* 801E0A80 001DC6E0  7C 04 2A 14 */	add r0, r4, r5
/* 801E0A84 001DC6E4  90 03 00 08 */	stw r0, 8(r3)
lbl_801E0A88:
/* 801E0A88 001DC6E8  80 03 00 08 */	lwz r0, 8(r3)
/* 801E0A8C 001DC6EC  2C 00 00 00 */	cmpwi r0, 0
/* 801E0A90 001DC6F0  4D 82 00 20 */	beqlr
/* 801E0A94 001DC6F4  88 03 00 01 */	lbz r0, 1(r3)
/* 801E0A98 001DC6F8  38 C0 00 00 */	li r6, 0
/* 801E0A9C 001DC6FC  38 E0 00 00 */	li r7, 0
/* 801E0AA0 001DC700  39 00 00 00 */	li r8, 0
/* 801E0AA4 001DC704  2C 00 00 11 */	cmpwi r0, 0x11
/* 801E0AA8 001DC708  40 80 00 28 */	bge lbl_801E0AD0
/* 801E0AAC 001DC70C  2C 00 00 04 */	cmpwi r0, 4
/* 801E0AB0 001DC710  41 82 00 AC */	beq lbl_801E0B5C
/* 801E0AB4 001DC714  40 80 00 10 */	bge lbl_801E0AC4
/* 801E0AB8 001DC718  2C 00 00 00 */	cmpwi r0, 0
/* 801E0ABC 001DC71C  40 80 00 2C */	bge lbl_801E0AE8
/* 801E0AC0 001DC720  48 00 00 9C */	b lbl_801E0B5C
lbl_801E0AC4:
/* 801E0AC4 001DC724  2C 00 00 0D */	cmpwi r0, 0xd
/* 801E0AC8 001DC728  40 80 00 94 */	bge lbl_801E0B5C
/* 801E0ACC 001DC72C  48 00 00 34 */	b lbl_801E0B00
lbl_801E0AD0:
/* 801E0AD0 001DC730  2C 00 00 13 */	cmpwi r0, 0x13
/* 801E0AD4 001DC734  41 82 00 5C */	beq lbl_801E0B30
/* 801E0AD8 001DC738  41 80 00 40 */	blt lbl_801E0B18
/* 801E0ADC 001DC73C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 801E0AE0 001DC740  40 80 00 7C */	bge lbl_801E0B5C
/* 801E0AE4 001DC744  48 00 00 64 */	b lbl_801E0B48
lbl_801E0AE8:
/* 801E0AE8 001DC748  3C 80 80 1F */	lis r4, lbl_801F3D44@ha
/* 801E0AEC 001DC74C  38 00 00 00 */	li r0, 0
/* 801E0AF0 001DC750  38 84 3D 44 */	addi r4, r4, lbl_801F3D44@l
/* 801E0AF4 001DC754  98 03 00 00 */	stb r0, 0(r3)
/* 801E0AF8 001DC758  90 83 00 0C */	stw r4, 0xc(r3)
/* 801E0AFC 001DC75C  48 00 00 60 */	b lbl_801E0B5C
lbl_801E0B00:
/* 801E0B00 001DC760  3C 80 80 1E */	lis r4, lbl_801DEEF8__8GScameraFP11gUnkClass12Ulf@ha
/* 801E0B04 001DC764  38 00 00 00 */	li r0, 0
/* 801E0B08 001DC768  38 84 EE F8 */	addi r4, r4, lbl_801DEEF8__8GScameraFP11gUnkClass12Ulf@l
/* 801E0B0C 001DC76C  98 03 00 00 */	stb r0, 0(r3)
/* 801E0B10 001DC770  90 83 00 0C */	stw r4, 0xc(r3)
/* 801E0B14 001DC774  48 00 00 48 */	b lbl_801E0B5C
lbl_801E0B18:
/* 801E0B18 001DC778  3C 80 80 1F */	lis r4, lbl_801F1554@ha
/* 801E0B1C 001DC77C  38 00 00 00 */	li r0, 0
/* 801E0B20 001DC780  38 84 15 54 */	addi r4, r4, lbl_801F1554@l
/* 801E0B24 001DC784  98 03 00 00 */	stb r0, 0(r3)
/* 801E0B28 001DC788  90 83 00 0C */	stw r4, 0xc(r3)
/* 801E0B2C 001DC78C  48 00 00 30 */	b lbl_801E0B5C
lbl_801E0B30:
/* 801E0B30 001DC790  3C 80 80 1E */	lis r4, lbl_801E6BB0@ha
/* 801E0B34 001DC794  38 00 00 00 */	li r0, 0
/* 801E0B38 001DC798  38 84 6B B0 */	addi r4, r4, lbl_801E6BB0@l
/* 801E0B3C 001DC79C  98 03 00 00 */	stb r0, 0(r3)
/* 801E0B40 001DC7A0  90 83 00 0C */	stw r4, 0xc(r3)
/* 801E0B44 001DC7A4  48 00 00 18 */	b lbl_801E0B5C
lbl_801E0B48:
/* 801E0B48 001DC7A8  3C 80 80 1F */	lis r4, lbl_801EC9AC@ha
/* 801E0B4C 001DC7AC  38 00 00 01 */	li r0, 1
/* 801E0B50 001DC7B0  38 84 C9 AC */	addi r4, r4, lbl_801EC9AC@l
/* 801E0B54 001DC7B4  98 03 00 00 */	stb r0, 0(r3)
/* 801E0B58 001DC7B8  90 83 00 0C */	stw r4, 0xc(r3)
lbl_801E0B5C:
/* 801E0B5C 001DC7BC  88 03 00 06 */	lbz r0, 6(r3)
/* 801E0B60 001DC7C0  28 00 00 08 */	cmplwi r0, 8
/* 801E0B64 001DC7C4  41 81 05 04 */	bgt lbl_801E1068
/* 801E0B68 001DC7C8  3C 80 80 42 */	lis r4, lbl_80423458@ha
/* 801E0B6C 001DC7CC  54 00 10 3A */	slwi r0, r0, 2
/* 801E0B70 001DC7D0  38 84 34 58 */	addi r4, r4, lbl_80423458@l
/* 801E0B74 001DC7D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 801E0B78 001DC7D8  7C 89 03 A6 */	mtctr r4
/* 801E0B7C 001DC7DC  4E 80 04 20 */	bctr
/* 801E0B80 001DC7E0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0B84 001DC7E4  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0B88 001DC7E8  41 82 00 24 */	beq lbl_801E0BAC
/* 801E0B8C 001DC7EC  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0B90 001DC7F0  2C 03 00 00 */	cmpwi r3, 0
/* 801E0B94 001DC7F4  41 82 00 18 */	beq lbl_801E0BAC
/* 801E0B98 001DC7F8  3C 00 80 00 */	lis r0, 0x8000
/* 801E0B9C 001DC7FC  7C 03 00 40 */	cmplw r3, r0
/* 801E0BA0 001DC800  40 80 00 0C */	bge lbl_801E0BAC
/* 801E0BA4 001DC804  7C 03 2A 14 */	add r0, r3, r5
/* 801E0BA8 001DC808  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0BAC:
/* 801E0BAC 001DC80C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0BB0 001DC810  41 82 00 24 */	beq lbl_801E0BD4
/* 801E0BB4 001DC814  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0BB8 001DC818  2C 03 00 00 */	cmpwi r3, 0
/* 801E0BBC 001DC81C  41 82 00 18 */	beq lbl_801E0BD4
/* 801E0BC0 001DC820  3C 00 80 00 */	lis r0, 0x8000
/* 801E0BC4 001DC824  7C 03 00 40 */	cmplw r3, r0
/* 801E0BC8 001DC828  40 80 00 0C */	bge lbl_801E0BD4
/* 801E0BCC 001DC82C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0BD0 001DC830  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0BD4:
/* 801E0BD4 001DC834  2C 05 00 00 */	cmpwi r5, 0
/* 801E0BD8 001DC838  41 82 00 24 */	beq lbl_801E0BFC
/* 801E0BDC 001DC83C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0BE0 001DC840  2C 03 00 00 */	cmpwi r3, 0
/* 801E0BE4 001DC844  41 82 00 18 */	beq lbl_801E0BFC
/* 801E0BE8 001DC848  3C 00 80 00 */	lis r0, 0x8000
/* 801E0BEC 001DC84C  7C 03 00 40 */	cmplw r3, r0
/* 801E0BF0 001DC850  40 80 00 0C */	bge lbl_801E0BFC
/* 801E0BF4 001DC854  7C 03 2A 14 */	add r0, r3, r5
/* 801E0BF8 001DC858  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0BFC:
/* 801E0BFC 001DC85C  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0C00 001DC860  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0C04 001DC864  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0C08 001DC868  48 00 04 60 */	b lbl_801E1068
/* 801E0C0C 001DC86C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0C10 001DC870  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0C14 001DC874  41 82 00 24 */	beq lbl_801E0C38
/* 801E0C18 001DC878  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0C1C 001DC87C  2C 03 00 00 */	cmpwi r3, 0
/* 801E0C20 001DC880  41 82 00 18 */	beq lbl_801E0C38
/* 801E0C24 001DC884  3C 00 80 00 */	lis r0, 0x8000
/* 801E0C28 001DC888  7C 03 00 40 */	cmplw r3, r0
/* 801E0C2C 001DC88C  40 80 00 0C */	bge lbl_801E0C38
/* 801E0C30 001DC890  7C 03 2A 14 */	add r0, r3, r5
/* 801E0C34 001DC894  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0C38:
/* 801E0C38 001DC898  2C 05 00 00 */	cmpwi r5, 0
/* 801E0C3C 001DC89C  41 82 00 24 */	beq lbl_801E0C60
/* 801E0C40 001DC8A0  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0C44 001DC8A4  2C 03 00 00 */	cmpwi r3, 0
/* 801E0C48 001DC8A8  41 82 00 18 */	beq lbl_801E0C60
/* 801E0C4C 001DC8AC  3C 00 80 00 */	lis r0, 0x8000
/* 801E0C50 001DC8B0  7C 03 00 40 */	cmplw r3, r0
/* 801E0C54 001DC8B4  40 80 00 0C */	bge lbl_801E0C60
/* 801E0C58 001DC8B8  7C 03 2A 14 */	add r0, r3, r5
/* 801E0C5C 001DC8BC  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0C60:
/* 801E0C60 001DC8C0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0C64 001DC8C4  41 82 00 24 */	beq lbl_801E0C88
/* 801E0C68 001DC8C8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0C6C 001DC8CC  2C 03 00 00 */	cmpwi r3, 0
/* 801E0C70 001DC8D0  41 82 00 18 */	beq lbl_801E0C88
/* 801E0C74 001DC8D4  3C 00 80 00 */	lis r0, 0x8000
/* 801E0C78 001DC8D8  7C 03 00 40 */	cmplw r3, r0
/* 801E0C7C 001DC8DC  40 80 00 0C */	bge lbl_801E0C88
/* 801E0C80 001DC8E0  7C 03 2A 14 */	add r0, r3, r5
/* 801E0C84 001DC8E4  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0C88:
/* 801E0C88 001DC8E8  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0C8C 001DC8EC  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0C90 001DC8F0  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0C94 001DC8F4  48 00 03 D4 */	b lbl_801E1068
/* 801E0C98 001DC8F8  2C 05 00 00 */	cmpwi r5, 0
/* 801E0C9C 001DC8FC  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0CA0 001DC900  41 82 00 24 */	beq lbl_801E0CC4
/* 801E0CA4 001DC904  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0CA8 001DC908  2C 03 00 00 */	cmpwi r3, 0
/* 801E0CAC 001DC90C  41 82 00 18 */	beq lbl_801E0CC4
/* 801E0CB0 001DC910  3C 00 80 00 */	lis r0, 0x8000
/* 801E0CB4 001DC914  7C 03 00 40 */	cmplw r3, r0
/* 801E0CB8 001DC918  40 80 00 0C */	bge lbl_801E0CC4
/* 801E0CBC 001DC91C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0CC0 001DC920  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0CC4:
/* 801E0CC4 001DC924  2C 05 00 00 */	cmpwi r5, 0
/* 801E0CC8 001DC928  41 82 00 24 */	beq lbl_801E0CEC
/* 801E0CCC 001DC92C  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0CD0 001DC930  2C 03 00 00 */	cmpwi r3, 0
/* 801E0CD4 001DC934  41 82 00 18 */	beq lbl_801E0CEC
/* 801E0CD8 001DC938  3C 00 80 00 */	lis r0, 0x8000
/* 801E0CDC 001DC93C  7C 03 00 40 */	cmplw r3, r0
/* 801E0CE0 001DC940  40 80 00 0C */	bge lbl_801E0CEC
/* 801E0CE4 001DC944  7C 03 2A 14 */	add r0, r3, r5
/* 801E0CE8 001DC948  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0CEC:
/* 801E0CEC 001DC94C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0CF0 001DC950  41 82 00 24 */	beq lbl_801E0D14
/* 801E0CF4 001DC954  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0CF8 001DC958  2C 03 00 00 */	cmpwi r3, 0
/* 801E0CFC 001DC95C  41 82 00 18 */	beq lbl_801E0D14
/* 801E0D00 001DC960  3C 00 80 00 */	lis r0, 0x8000
/* 801E0D04 001DC964  7C 03 00 40 */	cmplw r3, r0
/* 801E0D08 001DC968  40 80 00 0C */	bge lbl_801E0D14
/* 801E0D0C 001DC96C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0D10 001DC970  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0D14:
/* 801E0D14 001DC974  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0D18 001DC978  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0D1C 001DC97C  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0D20 001DC980  48 00 03 48 */	b lbl_801E1068
/* 801E0D24 001DC984  2C 05 00 00 */	cmpwi r5, 0
/* 801E0D28 001DC988  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0D2C 001DC98C  41 82 00 24 */	beq lbl_801E0D50
/* 801E0D30 001DC990  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0D34 001DC994  2C 03 00 00 */	cmpwi r3, 0
/* 801E0D38 001DC998  41 82 00 18 */	beq lbl_801E0D50
/* 801E0D3C 001DC99C  3C 00 80 00 */	lis r0, 0x8000
/* 801E0D40 001DC9A0  7C 03 00 40 */	cmplw r3, r0
/* 801E0D44 001DC9A4  40 80 00 0C */	bge lbl_801E0D50
/* 801E0D48 001DC9A8  7C 03 2A 14 */	add r0, r3, r5
/* 801E0D4C 001DC9AC  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0D50:
/* 801E0D50 001DC9B0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0D54 001DC9B4  41 82 00 24 */	beq lbl_801E0D78
/* 801E0D58 001DC9B8  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0D5C 001DC9BC  2C 03 00 00 */	cmpwi r3, 0
/* 801E0D60 001DC9C0  41 82 00 18 */	beq lbl_801E0D78
/* 801E0D64 001DC9C4  3C 00 80 00 */	lis r0, 0x8000
/* 801E0D68 001DC9C8  7C 03 00 40 */	cmplw r3, r0
/* 801E0D6C 001DC9CC  40 80 00 0C */	bge lbl_801E0D78
/* 801E0D70 001DC9D0  7C 03 2A 14 */	add r0, r3, r5
/* 801E0D74 001DC9D4  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0D78:
/* 801E0D78 001DC9D8  2C 05 00 00 */	cmpwi r5, 0
/* 801E0D7C 001DC9DC  41 82 00 24 */	beq lbl_801E0DA0
/* 801E0D80 001DC9E0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0D84 001DC9E4  2C 03 00 00 */	cmpwi r3, 0
/* 801E0D88 001DC9E8  41 82 00 18 */	beq lbl_801E0DA0
/* 801E0D8C 001DC9EC  3C 00 80 00 */	lis r0, 0x8000
/* 801E0D90 001DC9F0  7C 03 00 40 */	cmplw r3, r0
/* 801E0D94 001DC9F4  40 80 00 0C */	bge lbl_801E0DA0
/* 801E0D98 001DC9F8  7C 03 2A 14 */	add r0, r3, r5
/* 801E0D9C 001DC9FC  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0DA0:
/* 801E0DA0 001DCA00  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0DA4 001DCA04  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0DA8 001DCA08  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0DAC 001DCA0C  48 00 02 BC */	b lbl_801E1068
/* 801E0DB0 001DCA10  2C 05 00 00 */	cmpwi r5, 0
/* 801E0DB4 001DCA14  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0DB8 001DCA18  41 82 00 24 */	beq lbl_801E0DDC
/* 801E0DBC 001DCA1C  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0DC0 001DCA20  2C 03 00 00 */	cmpwi r3, 0
/* 801E0DC4 001DCA24  41 82 00 18 */	beq lbl_801E0DDC
/* 801E0DC8 001DCA28  3C 00 80 00 */	lis r0, 0x8000
/* 801E0DCC 001DCA2C  7C 03 00 40 */	cmplw r3, r0
/* 801E0DD0 001DCA30  40 80 00 0C */	bge lbl_801E0DDC
/* 801E0DD4 001DCA34  7C 03 2A 14 */	add r0, r3, r5
/* 801E0DD8 001DCA38  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0DDC:
/* 801E0DDC 001DCA3C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0DE0 001DCA40  41 82 00 24 */	beq lbl_801E0E04
/* 801E0DE4 001DCA44  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0DE8 001DCA48  2C 03 00 00 */	cmpwi r3, 0
/* 801E0DEC 001DCA4C  41 82 00 18 */	beq lbl_801E0E04
/* 801E0DF0 001DCA50  3C 00 80 00 */	lis r0, 0x8000
/* 801E0DF4 001DCA54  7C 03 00 40 */	cmplw r3, r0
/* 801E0DF8 001DCA58  40 80 00 0C */	bge lbl_801E0E04
/* 801E0DFC 001DCA5C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0E00 001DCA60  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0E04:
/* 801E0E04 001DCA64  2C 05 00 00 */	cmpwi r5, 0
/* 801E0E08 001DCA68  41 82 00 24 */	beq lbl_801E0E2C
/* 801E0E0C 001DCA6C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0E10 001DCA70  2C 03 00 00 */	cmpwi r3, 0
/* 801E0E14 001DCA74  41 82 00 18 */	beq lbl_801E0E2C
/* 801E0E18 001DCA78  3C 00 80 00 */	lis r0, 0x8000
/* 801E0E1C 001DCA7C  7C 03 00 40 */	cmplw r3, r0
/* 801E0E20 001DCA80  40 80 00 0C */	bge lbl_801E0E2C
/* 801E0E24 001DCA84  7C 03 2A 14 */	add r0, r3, r5
/* 801E0E28 001DCA88  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0E2C:
/* 801E0E2C 001DCA8C  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0E30 001DCA90  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0E34 001DCA94  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0E38 001DCA98  48 00 02 30 */	b lbl_801E1068
/* 801E0E3C 001DCA9C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0E40 001DCAA0  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0E44 001DCAA4  41 82 00 24 */	beq lbl_801E0E68
/* 801E0E48 001DCAA8  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0E4C 001DCAAC  2C 03 00 00 */	cmpwi r3, 0
/* 801E0E50 001DCAB0  41 82 00 18 */	beq lbl_801E0E68
/* 801E0E54 001DCAB4  3C 00 80 00 */	lis r0, 0x8000
/* 801E0E58 001DCAB8  7C 03 00 40 */	cmplw r3, r0
/* 801E0E5C 001DCABC  40 80 00 0C */	bge lbl_801E0E68
/* 801E0E60 001DCAC0  7C 03 2A 14 */	add r0, r3, r5
/* 801E0E64 001DCAC4  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0E68:
/* 801E0E68 001DCAC8  2C 05 00 00 */	cmpwi r5, 0
/* 801E0E6C 001DCACC  41 82 00 24 */	beq lbl_801E0E90
/* 801E0E70 001DCAD0  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0E74 001DCAD4  2C 03 00 00 */	cmpwi r3, 0
/* 801E0E78 001DCAD8  41 82 00 18 */	beq lbl_801E0E90
/* 801E0E7C 001DCADC  3C 00 80 00 */	lis r0, 0x8000
/* 801E0E80 001DCAE0  7C 03 00 40 */	cmplw r3, r0
/* 801E0E84 001DCAE4  40 80 00 0C */	bge lbl_801E0E90
/* 801E0E88 001DCAE8  7C 03 2A 14 */	add r0, r3, r5
/* 801E0E8C 001DCAEC  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0E90:
/* 801E0E90 001DCAF0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0E94 001DCAF4  41 82 00 24 */	beq lbl_801E0EB8
/* 801E0E98 001DCAF8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0E9C 001DCAFC  2C 03 00 00 */	cmpwi r3, 0
/* 801E0EA0 001DCB00  41 82 00 18 */	beq lbl_801E0EB8
/* 801E0EA4 001DCB04  3C 00 80 00 */	lis r0, 0x8000
/* 801E0EA8 001DCB08  7C 03 00 40 */	cmplw r3, r0
/* 801E0EAC 001DCB0C  40 80 00 0C */	bge lbl_801E0EB8
/* 801E0EB0 001DCB10  7C 03 2A 14 */	add r0, r3, r5
/* 801E0EB4 001DCB14  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0EB8:
/* 801E0EB8 001DCB18  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0EBC 001DCB1C  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0EC0 001DCB20  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0EC4 001DCB24  48 00 01 A4 */	b lbl_801E1068
/* 801E0EC8 001DCB28  2C 05 00 00 */	cmpwi r5, 0
/* 801E0ECC 001DCB2C  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0ED0 001DCB30  41 82 00 24 */	beq lbl_801E0EF4
/* 801E0ED4 001DCB34  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0ED8 001DCB38  2C 03 00 00 */	cmpwi r3, 0
/* 801E0EDC 001DCB3C  41 82 00 18 */	beq lbl_801E0EF4
/* 801E0EE0 001DCB40  3C 00 80 00 */	lis r0, 0x8000
/* 801E0EE4 001DCB44  7C 03 00 40 */	cmplw r3, r0
/* 801E0EE8 001DCB48  40 80 00 0C */	bge lbl_801E0EF4
/* 801E0EEC 001DCB4C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0EF0 001DCB50  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0EF4:
/* 801E0EF4 001DCB54  2C 05 00 00 */	cmpwi r5, 0
/* 801E0EF8 001DCB58  41 82 00 24 */	beq lbl_801E0F1C
/* 801E0EFC 001DCB5C  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0F00 001DCB60  2C 03 00 00 */	cmpwi r3, 0
/* 801E0F04 001DCB64  41 82 00 18 */	beq lbl_801E0F1C
/* 801E0F08 001DCB68  3C 00 80 00 */	lis r0, 0x8000
/* 801E0F0C 001DCB6C  7C 03 00 40 */	cmplw r3, r0
/* 801E0F10 001DCB70  40 80 00 0C */	bge lbl_801E0F1C
/* 801E0F14 001DCB74  7C 03 2A 14 */	add r0, r3, r5
/* 801E0F18 001DCB78  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0F1C:
/* 801E0F1C 001DCB7C  2C 05 00 00 */	cmpwi r5, 0
/* 801E0F20 001DCB80  41 82 00 24 */	beq lbl_801E0F44
/* 801E0F24 001DCB84  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0F28 001DCB88  2C 03 00 00 */	cmpwi r3, 0
/* 801E0F2C 001DCB8C  41 82 00 18 */	beq lbl_801E0F44
/* 801E0F30 001DCB90  3C 00 80 00 */	lis r0, 0x8000
/* 801E0F34 001DCB94  7C 03 00 40 */	cmplw r3, r0
/* 801E0F38 001DCB98  40 80 00 0C */	bge lbl_801E0F44
/* 801E0F3C 001DCB9C  7C 03 2A 14 */	add r0, r3, r5
/* 801E0F40 001DCBA0  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0F44:
/* 801E0F44 001DCBA4  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0F48 001DCBA8  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0F4C 001DCBAC  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0F50 001DCBB0  48 00 01 18 */	b lbl_801E1068
/* 801E0F54 001DCBB4  2C 05 00 00 */	cmpwi r5, 0
/* 801E0F58 001DCBB8  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0F5C 001DCBBC  41 82 00 24 */	beq lbl_801E0F80
/* 801E0F60 001DCBC0  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0F64 001DCBC4  2C 03 00 00 */	cmpwi r3, 0
/* 801E0F68 001DCBC8  41 82 00 18 */	beq lbl_801E0F80
/* 801E0F6C 001DCBCC  3C 00 80 00 */	lis r0, 0x8000
/* 801E0F70 001DCBD0  7C 03 00 40 */	cmplw r3, r0
/* 801E0F74 001DCBD4  40 80 00 0C */	bge lbl_801E0F80
/* 801E0F78 001DCBD8  7C 03 2A 14 */	add r0, r3, r5
/* 801E0F7C 001DCBDC  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0F80:
/* 801E0F80 001DCBE0  2C 05 00 00 */	cmpwi r5, 0
/* 801E0F84 001DCBE4  41 82 00 24 */	beq lbl_801E0FA8
/* 801E0F88 001DCBE8  80 64 00 04 */	lwz r3, 4(r4)
/* 801E0F8C 001DCBEC  2C 03 00 00 */	cmpwi r3, 0
/* 801E0F90 001DCBF0  41 82 00 18 */	beq lbl_801E0FA8
/* 801E0F94 001DCBF4  3C 00 80 00 */	lis r0, 0x8000
/* 801E0F98 001DCBF8  7C 03 00 40 */	cmplw r3, r0
/* 801E0F9C 001DCBFC  40 80 00 0C */	bge lbl_801E0FA8
/* 801E0FA0 001DCC00  7C 03 2A 14 */	add r0, r3, r5
/* 801E0FA4 001DCC04  90 04 00 04 */	stw r0, 4(r4)
lbl_801E0FA8:
/* 801E0FA8 001DCC08  2C 05 00 00 */	cmpwi r5, 0
/* 801E0FAC 001DCC0C  41 82 00 24 */	beq lbl_801E0FD0
/* 801E0FB0 001DCC10  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E0FB4 001DCC14  2C 03 00 00 */	cmpwi r3, 0
/* 801E0FB8 001DCC18  41 82 00 18 */	beq lbl_801E0FD0
/* 801E0FBC 001DCC1C  3C 00 80 00 */	lis r0, 0x8000
/* 801E0FC0 001DCC20  7C 03 00 40 */	cmplw r3, r0
/* 801E0FC4 001DCC24  40 80 00 0C */	bge lbl_801E0FD0
/* 801E0FC8 001DCC28  7C 03 2A 14 */	add r0, r3, r5
/* 801E0FCC 001DCC2C  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E0FD0:
/* 801E0FD0 001DCC30  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E0FD4 001DCC34  39 04 00 0C */	addi r8, r4, 0xc
/* 801E0FD8 001DCC38  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801E0FDC 001DCC3C  48 00 00 8C */	b lbl_801E1068
/* 801E0FE0 001DCC40  2C 05 00 00 */	cmpwi r5, 0
/* 801E0FE4 001DCC44  80 83 00 08 */	lwz r4, 8(r3)
/* 801E0FE8 001DCC48  41 82 00 24 */	beq lbl_801E100C
/* 801E0FEC 001DCC4C  80 64 00 00 */	lwz r3, 0(r4)
/* 801E0FF0 001DCC50  2C 03 00 00 */	cmpwi r3, 0
/* 801E0FF4 001DCC54  41 82 00 18 */	beq lbl_801E100C
/* 801E0FF8 001DCC58  3C 00 80 00 */	lis r0, 0x8000
/* 801E0FFC 001DCC5C  7C 03 00 40 */	cmplw r3, r0
/* 801E1000 001DCC60  40 80 00 0C */	bge lbl_801E100C
/* 801E1004 001DCC64  7C 03 2A 14 */	add r0, r3, r5
/* 801E1008 001DCC68  90 04 00 00 */	stw r0, 0(r4)
lbl_801E100C:
/* 801E100C 001DCC6C  2C 05 00 00 */	cmpwi r5, 0
/* 801E1010 001DCC70  41 82 00 24 */	beq lbl_801E1034
/* 801E1014 001DCC74  80 64 00 04 */	lwz r3, 4(r4)
/* 801E1018 001DCC78  2C 03 00 00 */	cmpwi r3, 0
/* 801E101C 001DCC7C  41 82 00 18 */	beq lbl_801E1034
/* 801E1020 001DCC80  3C 00 80 00 */	lis r0, 0x8000
/* 801E1024 001DCC84  7C 03 00 40 */	cmplw r3, r0
/* 801E1028 001DCC88  40 80 00 0C */	bge lbl_801E1034
/* 801E102C 001DCC8C  7C 03 2A 14 */	add r0, r3, r5
/* 801E1030 001DCC90  90 04 00 04 */	stw r0, 4(r4)
lbl_801E1034:
/* 801E1034 001DCC94  2C 05 00 00 */	cmpwi r5, 0
/* 801E1038 001DCC98  41 82 00 24 */	beq lbl_801E105C
/* 801E103C 001DCC9C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 801E1040 001DCCA0  2C 03 00 00 */	cmpwi r3, 0
/* 801E1044 001DCCA4  41 82 00 18 */	beq lbl_801E105C
/* 801E1048 001DCCA8  3C 00 80 00 */	lis r0, 0x8000
/* 801E104C 001DCCAC  7C 03 00 40 */	cmplw r3, r0
/* 801E1050 001DCCB0  40 80 00 0C */	bge lbl_801E105C
/* 801E1054 001DCCB4  7C 03 2A 14 */	add r0, r3, r5
/* 801E1058 001DCCB8  90 04 00 10 */	stw r0, 0x10(r4)
lbl_801E105C:
/* 801E105C 001DCCBC  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 801E1060 001DCCC0  39 04 00 0C */	addi r8, r4, 0xc
/* 801E1064 001DCCC4  80 C4 00 10 */	lwz r6, 0x10(r4)
lbl_801E1068:
/* 801E1068 001DCCC8  2C 08 00 00 */	cmpwi r8, 0
/* 801E106C 001DCCCC  4D 82 00 20 */	beqlr
/* 801E1070 001DCCD0  2C 06 00 00 */	cmpwi r6, 0
/* 801E1074 001DCCD4  4D 82 00 20 */	beqlr
/* 801E1078 001DCCD8  2C 07 00 00 */	cmpwi r7, 0
/* 801E107C 001DCCDC  4D 82 00 20 */	beqlr
/* 801E1080 001DCCE0  C0 02 96 80 */	lfs f0, lbl_80641C80
/* 801E1084 001DCCE4  38 60 00 00 */	li r3, 0
/* 801E1088 001DCCE8  D0 08 00 00 */	stfs f0, 0(r8)
/* 801E108C 001DCCEC  48 00 00 20 */	b lbl_801E10AC
lbl_801E1090:
/* 801E1090 001DCCF0  C0 28 00 00 */	lfs f1, 0(r8)
/* 801E1094 001DCCF4  C0 06 00 08 */	lfs f0, 8(r6)
/* 801E1098 001DCCF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E109C 001DCCFC  40 80 00 08 */	bge lbl_801E10A4
/* 801E10A0 001DCD00  D0 08 00 00 */	stfs f0, 0(r8)
lbl_801E10A4:
/* 801E10A4 001DCD04  38 63 00 01 */	addi r3, r3, 1
/* 801E10A8 001DCD08  38 C6 00 0C */	addi r6, r6, 0xc
lbl_801E10AC:
/* 801E10AC 001DCD0C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801E10B0 001DCD10  7C 00 38 40 */	cmplw r0, r7
/* 801E10B4 001DCD14  41 80 FF DC */	blt lbl_801E1090
/* 801E10B8 001DCD18  4E 80 00 20 */	blr
}
#pragma peephole on
#endif










} //extern "C"




