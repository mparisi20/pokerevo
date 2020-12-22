#include "ctorStruct.h"
#include <SDK/mtx.h>
#include <string.h>

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
// size == 0x10
struct gUnkClass12
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    
    u8 unk3[0x3]; //pad
    
    u8 unk6;
    u8 unk7; // scaling factor? related to quantization?
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
void func_801E10BC(gUnkClass12*)
{
    
}

// TODO: move
typedef struct
{
    float x;
    float y;
} Vec2;

// NOTE: this is a guess by symmetry with other functions
typedef struct
{
    u8 x;
    u8 y;
    u8 z;
    u8 a;
} Vec4U8;


// TODO: methods of gUnkClass23?
// TODO: template instantiations?
float func_80221B2C(gUnkClass23* p1, u8 p2, float p3);
u8 func_80222B80(gUnkClass23* p1, u8 p2, float p3);
s8 func_80222994(gUnkClass23* p1, u8 p2, float p3);
u16 func_80222F68(gUnkClass23* p1, u8 p2, float p3);
s16 func_80222D6C(gUnkClass23* p1, u8 p2, float p3);
Vec func_802223DC(gUnkClass23* p1, u8 p2, float p3);
Quaternion func_80222694(gUnkClass23* p1, u8 p2, float p3);
Vec2 func_80221F8C(gUnkClass23* p1, u8 p2, float p3);
Vec4U8 func_80223164(gUnkClass23* p1, u8 p2, float p3);


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

// TODO: determine type of p2: Vec2* or float[2]?
// move
void func_801E13B8(gUnkClass12* p1, Vec2* p2, float p3);


void func_801E1278(gUnkClass12* p1, Vec* p2, float p3)
{
    Vec2 sp18;
    Vec2 sp10;
    Vec2 sp8;
    
    switch (p1->unk2) {
        case 0:
            *p2 = func_802223DC(p1->unk8, 0, p3);
            break;
        case 1:
            func_801E10C0(p1, &p2->x, p3);
            break;
        case 2:
            func_801E10C0(p1, &p2->y, p3);
            break;
        case 3:
            func_801E10C0(p1, &p2->z, p3);
            break;
        case 4:
            func_801E13B8(p1, &sp18, p3);
            p2->x = sp18.x;
            p2->y = sp18.y;
            break;
        case 5:
            func_801E13B8(p1, &sp10, p3);
            p2->x = sp10.x;
            p2->z = sp10.y;
            break;
        case 6:
            func_801E13B8(p1, &sp8, p3);
            p2->y = sp8.x;
            p2->z = sp8.y;
            break;
        default:
            break;
    }
}

void func_801E1360(gUnkClass12* p1, Quaternion* p2, float p3)
{
    *p2 = func_80222694(p1->unk8, 0, p3);
}

void func_801E13B8(gUnkClass12* p1, Vec2* p2, float p3)
{
    switch (p1->unk2) {
        case 0:
            *p2 = func_80221F8C(p1->unk8, 0, p3);
            break;
        case 1:
            func_801E10C0(p1, &p2->x, p3);
            break;
        case 2:
            func_801E10C0(p1, &p2->y, p3);
            break;
        default:
            break;
    }
}

void func_801E1504(gUnkClass12* p1, u8* p2, float p3);

void func_801E1440(gUnkClass12* p1, Vec4U8* p2, float p3)
{
    switch (p1->unk2) {
        case 0:
            *p2 = func_80223164(p1->unk8, 0, p3);
            break;
        case 1:
            func_801E1504(p1, &p2->x, p3);
            break;
        case 2:
            func_801E1504(p1, &p2->y, p3);
            break;
        case 3:
            func_801E1504(p1, &p2->z, p3);
            break;
        case 4:
            func_801E1504(p1, &p2->a, p3);
            break;
        default:
            break;
    }
}
void func_801E1504(gUnkClass12* p1, u8* p2, float p3)
{
    *p2 = func_80222B80(p1->unk8, p1->unk7, p3);
}

// TODO: relationship with gUnkClass23
struct gUnkClass25
{
    u8 pad0[2];
    u16 unk2; // array element count
    gUnkClass12* unk4; // ptr to array
    u8 pad8[4];
    gUnkClass25* unkC; // ptr to next node in linked list
};


// private? unless file splits further
void func_801E1540(gUnkClass25* p1, ctorStruct* p2, u32 p3) 
{
    if (p3 && p1->unk4 && (u32)p1->unk4 < 0x80000000)
        p1->unk4 = (gUnkClass12*)((u32)p1->unk4 + p3);
    
    gUnkClass12* r31;
    u16 i;
    for (r31 = p1->unk4, i = 0; i < p1->unk2; i++, r31++)
        func_801E0A60(r31, p2, p3);
    
    if (p3 && p1->unkC && (u32)p1->unkC < 0x80000000)
        p1->unkC = (gUnkClass25*)((u32)p1->unkC + p3);
    
    if (p1->unkC)
        func_801E1540(p1->unkC, p2, p3);
}

// private?
// performs no-ops for each array element of each linked list node
void func_801E1614(gUnkClass25* p1)
{
    if (p1->unkC)
        func_801E1614(p1->unkC);
    
    gUnkClass12* r31;
    u16 i;
    for (r31 = p1->unk4, i = 0; i < p1->unk2; i++, r31++)
        func_801E10BC(r31);
}

// size == 0x1C
struct gUnkClass26
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 padC[3];
    u8 unkF;
    u8 pad10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u32 unk14;
    char* unk18; // TODO: determine type. linked list next ptr, as in gUnkClass25?
};

// constructor for gUnkClass26
void func_801E168C(gUnkClass26* p1, BOOL p2)
{
    p1->unk4 = 1;
    p1->unk5 = 1;
    p1->unk6 = 1;
    p1->unk7 = 1;
    p1->unk8 = 3;
    p1->unk9 = 0;
    p1->unkA = 7;
    p1->unkB = 0;
    p1->unkF = 2;
    p1->unk11 = 0;
    p1->unk12 = 0xFF;
    p1->unk13 = 0;
    p1->unk14 = 0;
    p1->unk18 = 0;
    if (p2) {
        p1->unk0 = 1;
        p1->unk1 = 4;
        p1->unk2 = 5;
    } else {
        p1->unk0 = 0;
        p1->unk1 = 1;
        p1->unk2 = 0;
    }
    p1->unk3 = 5;
}

// private?
void func_801E1714(gUnkClass26* p1, void*, u32 p3)
{
    if (p3 && p1->unk18 && (u32)p1->unk18 < 0x80000000)
        p1->unk18 = (char*)((u32)p1->unk18 + p3);
}

// private?
void func_801E1740(gUnkClass26*)
{
    
}

// NOTE: hypothetical class
struct unkClass
{
    u32 unk0;
    u32 unk4[4];
};


// TODO: condense?
struct gUnkClass27
{
    u32 unk0; // ptr?
    
    u8 unk4[8];
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    
    u32 unk18[5];
    u32 unk2C[5];

    // NOTE: assuming type of array members
    
    gUnkClass26* unk40[4];
    
    u32 unk50;

    u8 unk54;
    u8 pad55[3];
    u8 unk58;
    u8 unk59;
    u8 unk5A;
    u8 unk5B;
    u8 unk5C;
    u8 unk5D;
    u8 unk5E;
    u8 unk5F;
    u8 unk60;
    u8 unk61;
    u8 unk62;
    u8 unk63;
    u8 unk64;
    u8 unk65;
    u8 unk66;
    u8 unk67;
    float unk68;
    s8 unk6C;
    u8 unk6D;
    s8 unk6E;
    u8 unk6F;
    u8 unk70;
    u8 unk71;
    u8 unk72;
    u8 unk73;
    s8 unk74;
    u8 unk75;
    s8 unk76;
    s8 unk77;
    u8 unk78;
    u8 unk79;
    u8 unk7A;
    u8 unk7B;
    float unk7C;
    u8 unk80;
    u8 unk81;
    u8 unk82;
    u8 unk83;
    gUnkClass25* unk84;
    u32 unk88;
};

// constructor for gUnkClass27
gUnkClass27* func_801E1744(gUnkClass27* p1)
{
    p1->unk0 = 0;
    
    p1->unk18[0] = 0;
    p1->unk18[1] = 0;
    p1->unk18[2] = 0;
    p1->unk18[3] = 0;
    p1->unk18[4] = 0;
    
    p1->unk2C[0] = 0;
    p1->unk2C[1] = 0;
    p1->unk2C[2] = 0;
    p1->unk2C[3] = 0;
    p1->unk2C[4] = 0;
    
    p1->unk40[0] = 0;
    p1->unk40[1] = 0;
    p1->unk40[2] = 0;
    p1->unk40[3] = 0;

    p1->unk50 = 0;
    p1->unk54 = 0;
    p1->unk58 = 0;
    p1->unk59 = 0;
    p1->unk5A = 0;
    p1->unk5B = 0;
    p1->unk5C = 0;
    p1->unk5D = 1;
    p1->unk5E = 0;
    p1->unk5F = 0;
    p1->unk60 = 0;
    p1->unk61 = 0;
    p1->unk62 = 0;
    p1->unk63 = 0;
    p1->unk64 = 0x80;
    p1->unk65 = 0x80;
    p1->unk66 = 0x80;
    p1->unk67 = 0xFF;
    p1->unk68 = 0.0f;
    p1->unk6C = -1;
    p1->unk6D = 0;
    p1->unk6E = -1;
    p1->unk6F = 0;
    p1->unk70 = 0;
    p1->unk71 = 0;
    p1->unk72 = 0;
    p1->unk73 = 0;
    p1->unk74 = -1;
    p1->unk75 = 0;
    p1->unk76 = -1;
    p1->unk77 = -1;
    p1->unk78 = 0;
    p1->unk79 = 0;
    p1->unk7A = 0;
    p1->unk7B = 0;
    p1->unk7C = 50.0f;
    p1->unk80 = 0xFF;
    p1->unk81 = 0xFF;
    p1->unk82 = 0xFF;
    p1->unk83 = 0xFF;
    p1->unk84 = 0;
    p1->unk88 = 0;
    memset(&p1->unk4, 0, 8);
    p1->unkC = 0;
    p1->unkD = 1;
    p1->unkE = 2;
    p1->unkF = 3;
    p1->unk10 = 0;
    p1->unk11 = 1;
    p1->unk12 = 2;
    p1->unk13 = 3;
    p1->unk14 = 0;
    p1->unk15 = 1;
    p1->unk16 = 2;
    p1->unk17 = 3;
    memset(p1->unk18, 0, 0x14);
    memset(p1->unk2C, 0, 0x14);
    memset(&p1->unk40, 0, 0x10);
    return p1;
}

// TODO: last 4 elements don't match
static inline void inline_func1(u32 p[5], u32 p3)
{
    for (u32 i = 0; i < 5; i++)
        if (p3 && p[i] && p[i] < 0x80000000)
            p[i] += p3;
}


// TODO: NONMATCHING
// private?
void func_801E18F8(gUnkClass27* p1, ctorStruct* p2, u32 p3)
{
    if ((p2->unk0 << 24 | p2->unk2 << 8 | p2->unk4) < 0x01000300)
        p1->unk54 = 0;
    if ((p2->unk0 << 24 | p2->unk2 << 8 | p2->unk4) < 0x01000400)
        p1->unk50 = 0;
    
    if (p3 && p1->unk0 && p1->unk0 < 0x80000000)
        p1->unk0 += p3;
    if (p3 && p1->unk50 && p1->unk50 < 0x80000000)
        p1->unk50 += p3;
    
    // inline this set of 5
    inline_func1(p1->unk18, p3);
    inline_func1(p1->unk2C, p3);
    
    u32 i; // r8
    gUnkClass26** r9;    
    for (r9 = p1->unk40, i = 0; i < 4; i++, r9++) {
        if (p3 && *r9 && (u32)*r9 < 0x80000000) {
            u32 temp = (u32)*r9;
            *r9 = (gUnkClass26*)(temp + p3);
        }
        if (i == 0 && *r9 && !p1->unk50) {
            switch ((*r9)->unk0) { // u8
                case 0: case 2:
                    // TODO: understand this line. u8 array index into p1 member?
                    p1->unk50 = (&p1->unk0 + (*r9)->unk4)[6];
                    break;
                default:
                    break;
            }
        }
    }
    if (p3 && p1->unk84 && (u32)p1->unk84 < 0x80000000)
        p1->unk84 = (gUnkClass25*)((u32)p1->unk84 + p3);
    if (p1->unk84)
        func_801E1540(p1->unk84, p2, p3);
}

// private?
void func_801E1C78(gUnkClass27* p1)
{
    if (p1->unk84)
        func_801E1614(p1->unk84);
}

struct gUnkClass29
{
    Vec unk0;
    Vec unkC;
    Vec unk18;
    union { 
        Vec v; 
        struct { u32 x, y, z; } w;
    } unk24;
    
};

// size == 0x30
struct gUnkClass28
{
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    gUnkClass29* unk18;
    float unk1C;
    gUnkClass25* unk20;
    gUnkClass28* unk24; // linked list
    gUnkClass28* unk28; // linked list
    u32 unk2C;
};

// gUnkClass28 constructor
void func_801E1C8C(gUnkClass28* p1)
{
    p1->unk0 = 0;
    p1->unk4 = 0;
    p1->unk8 = 0;
    p1->unkA = 0x18;
    p1->unkC = 0;
    p1->unk10 = 0;
    p1->unk14 = 0;
    p1->unk18 = 0;
    p1->unk1C = 0.0f;
    p1->unk20 = 0;
    p1->unk24 = 0;
    p1->unk28 = 0;
    p1->unk2C = 0;
}

// TODO: template?
void func_801E2A90(gUnkClass28* p1, ctorStruct* p2, u32 p3);
void func_801E2878(gUnkClass28* p1, ctorStruct* p2, u32 p3);
void func_801E2AE8(gUnkClass28* p1, ctorStruct* p2, u32 p3);
void func_801E2A60(gUnkClass28* p1, ctorStruct* p2, u32 p3);
void func_801E2D88(gUnkClass28* p1, ctorStruct* p2, u32 p3);
void func_801E2B40(gUnkClass28* p1, ctorStruct* p2, u32 p3);

// NOTE: recursive
// private?
void func_801E1CD0(gUnkClass28* p1, ctorStruct* p2, u32 p3)
{
    Vec sp8;
    Vec sp14;
    Vec sp20;
    Vec sp2C;
    
    switch (p1->unk0) {
        case 2:
            func_801E2A90(p1, p2, p3);
            break;
        case 3:
            func_801E2878(p1, p2, p3);
            break;
        case 4:
            func_801E2AE8(p1, p2, p3);
            break;
        case 5:
            func_801E2A60(p1, p2, p3);
            break;
        case 7:
            func_801E2D88(p1, p2, p3);
            break;
        case 6:
            func_801E2B40(p1, p2, p3);
            break;
        default:
            break;
    }
    
    // TODO: condense somehow. inline?
    if (p3 && p1->unk4 && p1->unk4 < 0x80000000)
        p1->unk4 += p3;
    if (p3 && p1->unkC && p1->unkC < 0x80000000)
        p1->unkC += p3;
    if (p3 && p1->unk10 && p1->unk10 < 0x80000000)
        p1->unk10 += p3;
    if (p3 && p1->unk14 && p1->unk14 < 0x80000000)
        p1->unk14 += p3;
    if (p3 && p1->unk18 && (u32)p1->unk18 < 0x80000000)
        p1->unk18 = (gUnkClass29*)((u32)p1->unk18 + p3);
    if (p3 && p1->unk20 && (u32)p1->unk20 < 0x80000000)
        p1->unk20 = (gUnkClass25*)((u32)p1->unk20 + p3);
    if (p3 && p1->unk28 && (u32)p1->unk28 < 0x80000000)
        p1->unk28 = (gUnkClass28*)((u32)p1->unk28 + p3);
    if (p3 && p1->unk24 && (u32)p1->unk24 < 0x80000000)
        p1->unk24 = (gUnkClass28*)((u32)p1->unk24 + p3);
    if (p3 && p1->unk2C && p1->unk2C < 0x80000000)
        p1->unk2C += p3;
    
    gUnkClass29* r31 = p1->unk18;
    if (r31 && 
        ((p2->unk0 << 24 | p2->unk2 << 8 | p2->unk4) < 0x01000300) &&
        (r31->unk24.w.x != 0xFEFEFEFE || r31->unk24.w.y != 0xFEFEFEFE || r31->unk24.w.z != 0xFEFEFEFE))
    {
        
        sp20 = r31->unk0;
        
        sp8.x = -r31->unk0.x;
        sp8.y = -r31->unk0.y;
        sp8.z = -r31->unk0.z;
        
        sp2C = sp8;
        
        VECAdd(&sp20, &r31->unkC, &sp20);
        VECSubtract(&sp20, &r31->unk18, &sp20);
        sp14 = r31->unk18;
        VECAdd(&sp14, &r31->unk24.v, &sp14);
        p1->unk18->unk0 = sp2C;
        p1->unk18->unkC = sp20;
        p1->unk18->unk18 = sp14;
        
        r31->unk24.w.x = 0xFEFEFEFE;
        r31->unk24.w.y = 0xFEFEFEFE;
        r31->unk24.w.z = 0xFEFEFEFE;
        
        
        
        
    }
    
    if (p1->unk20)
        func_801E1540(p1->unk20, p2, p3);
    if (p1->unk24)
        func_801E1CD0(p1->unk24, p2, p3);
    if (p1->unk28)
        func_801E1CD0(p1->unk28, p2, p3);
}



} //extern "C"




