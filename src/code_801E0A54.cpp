#include "ctorStruct.h"


// TODO: class member functions

extern ctorStruct lbl_8063F378;

// size == 0xC
struct gUnkClass24
{
    u8 unk0[0x8]; // pad
    float unk8;
};

struct gUnkClass23
{
    u32 unk0;
    u32 unk4;
    u8 unk8[0x4]; //pad
    float unkC;
    gUnkClass24* unk10;
    u16 unk14;
};

// TODO: same as gUnkClass9?
// "gUnkClass22"
struct gUnkClass12
{
    u8 unk0;
    u8 unk1;
    
    u8 unk2[0x4]; //pad
    
    u8 unk6;
    u8 unk7;
    gUnkClass23* unk8;
    void (*unkC)(void*, void*, u32, float);
    
};


extern "C" {

void func_801E0A60(gUnkClass12*, ctorStruct*, u32);

void func_801E0A54(gUnkClass12* p1, u32 p2)
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
#ifndef NONMATCHING
#pragma regswap 801E0C00 801E10AC r6 r8 801E0A54
#endif
void func_801E0A60(gUnkClass12* p1, ctorStruct*, u32 p3)
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

// private
void func_801E10BC(void)
{
    
}


// TODO: method of gUnkClass23?
// TODO: template instantiations?
float func_80221B2C(gUnkClass23* p1, u8 p2, float p3);
u8 func_80222B80(gUnkClass23* p1, u8 p2, float p3);
s8 func_80222994(gUnkClass23* p1, u8 p2, float p3);
u16 func_80222F68(gUnkClass23* p1, u8 p2, float p3);
s16 func_80222D6C(gUnkClass23* p1, u8 p2, float p3);

void func_801E10C0(gUnkClass12* p1, float* p2, float p3)
{
    switch (p1->unk6) {
        case 0:
            *p2 = func_80221B2C(p1->unk8, 0, p3);
            break;
        case 5:
            *p2 = float(func_80222B80(p1->unk8, p1->unk7, p3)) / (1 << p1->unk7);
            break;
        case 6:
            *p2 = float(func_80222994(p1->unk8, p1->unk7, p3)) / (1 << p1->unk7);
            break;
        case 7:
            *p2 = float(func_80222F68(p1->unk8, p1->unk7, p3)) / (1 << p1->unk7);
            break;
        case 8:
            *p2 = float(func_80222D6C(p1->unk8, p1->unk7, p3)) / (1 << p1->unk7);
            break;
        default:
            break;
    }
}










} //extern "C"




