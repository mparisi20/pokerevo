#include <string.h>
#include <SDK/mtx.h>
#include "GSnull.h"

namespace
{
    struct unkClass
    {
        u16 unk0;
        u16 unk2;
    };
    
    struct unkClass4
    {
        u16 unk0; // index into unk13C
        u16 unk2;
        u16 unk4;
    };
    
    struct unkClass5
    {
        u16 unk0; // index into an array of Vec
        u16 unk2;
        u16 unk4;
        u16 unk6;
        u16 unk8;
    };

    // configure quantization of float -> s16
    struct unkClass7
    {
        u16 unk0; // array size
        u8 unk2; // array index that gets scaled by a float, then rounded down
        u8 unk3; // upper 4 bits related to quantization coefficient, lower 4 determines s16/float
        
        // TODO: arrays or structs?
        union
        {
            float (*unk4f)[6];
            s16 (*unk4s16)[6];
        };
    };
    
    struct unkClass8
    {
        u16 unk0; // index into unk140 of GSvolume
        u8 unk2; // used in GSvolume::func_801E0404
        u8 unk3; // loop counter in GSvolume::func_801E0058
        u16* unk4; // points into an array of indices into unk13C of GSvolume
    };

    struct unkClass2
    {
        float unk0;
        float unk4;
        float unk8;
        float unkC;
        float unk10;
        float unk14;
        u16 unk18;
        unkClass7* unk1C;
    };

    struct unkClass3
    {
        Vec unk0; // upper bound?
        Vec unkC; // lower bound?
        MtxPtr unk18;
    };
}

// TODO: is this Vec? GSvec?
struct gUnkClass14 : public Vec
{
    gUnkClass14(); // 8002A294
    gUnkClass14& operator=(const Vec& o)
    {
        x = o.x;
        y = o.y;
        z = o.z;
        return *this;
    }
};
    

struct gUnkClass10_2 : public gUnkClass10
{
    u8 unk4[0x2C]; // pad
    u16 unk30;
    u16 unk32;
    u16 unk34; // array size
    gUnkClass14* unk38;
    gUnkClass14* unk3C;
    unkClass8* unk40;
    u8 unk44[0x4]; // pad
    
    u16 unk48;
    unkClass* unk4C;
    u16 unk50;
    unkClass4* unk54;
    u16* unk58;
    u16 unk5C;
    unkClass5* unk60;
    
    MtxPtr unk64;
    
    unkClass2* unk68;
    
};

class GSvolume : public GSnull
{
    u16 unk104;
    u16 unk106;
    Vec unk108;
    Vec unk114;
    unkClass3 unk120;
    gUnkClass14* unk13C;
    gUnkClass14* unk140;
    gUnkClass10_2* unk144;
public:
    GSvolume(void* p1, gUnkClass10_2* p2); // 801DF040
    void func_801DF2CC();
    void func_801DF3F8(const Mtx p2, const Mtx p3, u32 p4, u32 p5, Vec* p6, const Vec* p7) const;
    void func_801DF528();
    void func_801DF85C();
    void func_801DF9D4(u32 p1, BOOL p2, float p3);
    void func_801DFFFC();
    BOOL func_801E0404(Vec* p1, Vec* p2, Vec* p3, Vec* p4, float* p5, BOOL p6);
    BOOL func_801E0058(unkClass8* p1, Vec* p2);
    virtual ~GSvolume(); // 801DF204
    virtual void func1(float p1); // 801DFD90
};

extern "C" {


void DCFlushRange(void* startAddr, u32 nBytes);
void func_801FA4A0(GSvolume*);
void PPCSync(void);

GSvolume::GSvolume(void* p1, gUnkClass10_2* p2) : GSnull(p1, p2)
{
    unk104 = -1;
    unk106 = 0x16;
    
    unk120.unk0.x = 1.0e38f;
    unk120.unk0.y = 1.0e38f;
    unk120.unk0.z = 1.0e38f;
    unk120.unkC.x = -1.0e38f;
    unk120.unkC.y = -1.0e38f;
    unk120.unkC.z = -1.0e38f;
    

    
    unk13C = NULL;
    unk140 = NULL;
    unk144 = p2;

    unk108.x = 0.0f;
    unk108.y = 0.0f;
    unk108.z = 0.0f;
    unk114.x = 0.0f;
    unk114.y = 0.0f;
    unk114.z = 0.0f;    

    
    unk120.unk18 = (MtxPtr)unkD0;
    
    if (p2->unk30 & 0x2) {
        if (p2->unk32 != 0) {
            unk13C = new gUnkClass14[p2->unk32];
            memcpy(unk13C, p2->unk38, p2->unk32 * sizeof(gUnkClass14));
            DCFlushRange(unk13C, p2->unk32 * sizeof(gUnkClass14));
        }
        if (p2->unk34 != 0) {
            unk140 = new gUnkClass14[p2->unk34];
            memcpy(unk140, p2->unk3C, p2->unk34 * sizeof(gUnkClass14));
            DCFlushRange(unk140, p2->unk34 * sizeof(gUnkClass14));
        }
    } else {
        unk13C = p2->unk38;
        unk140 = p2->unk3C;
    }
    
    unkClass2* r4 = unk144->unk68;
    
    unk120.unk0.x = r4->unk0;
    unk120.unk0.y = r4->unk4;
    unk120.unk0.z = r4->unk8;
    unk120.unkC.x = r4->unkC;
    unk120.unkC.y = r4->unk10;
    unk120.unkC.z = r4->unk14;
    
    func_801FA4A0(this);
    PPCSync();
}

void func_801FA5DC(GSvolume*);


// TODO: label GSnull's virtual methods with mangled names
GSvolume::~GSvolume()
{
    func_801FA5DC(this);
    if (unk144) {
        if (unk140 && unk140 != unk144->unk3C)
            delete[] unk140;
        if (unk13C && unk13C != unk144->unk38)
            delete[] unk13C;
    }
}

// TODO: member functions?

// TODO: seems to return array of Vec
Vec* func_80220AF0(unkClass3*);
void func_80220C78(unkClass3*, unkClass3*);




extern float lbl_80641C54;


#ifdef NONMATCHING_801DF2CC
// private
void GSvolume::func_801DF2CC()
{
    Vec* arr = func_80220AF0(&unk120);
    Vec* r4 = arr + 1;
    unk108 = arr[0];
    unk114 = arr[0];
    for (size_t i = 0; i < 7; r4++, i++) {
        if (unk108.x > r4[i].x)
            unk108.x = r4[i].x;
        if (unk114.x < r4[i].x)
            unk114.x = r4[i].x;
        
        if (unk108.y > r4[i].y)
            unk108.y = r4[i].y;
        if (unk114.y < r4[i].y)
            unk114.y = r4[i].y;
        
        if (unk108.z > r4[i].z)
            unk108.z = r4[i].z;
        if (unk114.z < r4[i].z)
            unk114.z = r4[i].z;
    }
    
}
#else
asm void GSvolume::func_801DF2CC()
{
    nofralloc
/* 801DF2CC 001DAF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF2D0 001DAF30  7C 08 02 A6 */	mflr r0
/* 801DF2D4 001DAF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF2D8 001DAF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DF2DC 001DAF3C  7C 7F 1B 78 */	mr r31, r3
/* 801DF2E0 001DAF40  38 63 01 20 */	addi r3, r3, 0x120
/* 801DF2E4 001DAF44  48 04 18 0D */	bl func_80220AF0
/* 801DF2E8 001DAF48  C0 03 00 00 */	lfs f0, 0(r3)
/* 801DF2EC 001DAF4C  38 00 00 07 */	li r0, 7
/* 801DF2F0 001DAF50  38 83 00 0C */	addi r4, r3, 0xc
/* 801DF2F4 001DAF54  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 801DF2F8 001DAF58  C0 03 00 04 */	lfs f0, 4(r3)
/* 801DF2FC 001DAF5C  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 801DF300 001DAF60  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DF304 001DAF64  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 801DF308 001DAF68  C0 03 00 00 */	lfs f0, 0(r3)
/* 801DF30C 001DAF6C  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 801DF310 001DAF70  C0 03 00 04 */	lfs f0, 4(r3)
/* 801DF314 001DAF74  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801DF318 001DAF78  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DF31C 001DAF7C  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801DF320 001DAF80  7C 09 03 A6 */	mtctr r0
lbl_801DF324:
/* 801DF324 001DAF84  C0 24 00 00 */	lfs f1, 0(r4)
/* 801DF328 001DAF88  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 801DF32C 001DAF8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF330 001DAF90  40 81 00 08 */	ble lbl_801DF338
/* 801DF334 001DAF94  D0 3F 01 08 */	stfs f1, 0x108(r31)
lbl_801DF338:
/* 801DF338 001DAF98  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 801DF33C 001DAF9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF340 001DAFA0  40 80 00 08 */	bge lbl_801DF348
/* 801DF344 001DAFA4  D0 3F 01 14 */	stfs f1, 0x114(r31)
lbl_801DF348:
/* 801DF348 001DAFA8  C0 24 00 04 */	lfs f1, 4(r4)
/* 801DF34C 001DAFAC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 801DF350 001DAFB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF354 001DAFB4  40 81 00 08 */	ble lbl_801DF35C
/* 801DF358 001DAFB8  D0 3F 01 0C */	stfs f1, 0x10c(r31)
lbl_801DF35C:
/* 801DF35C 001DAFBC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 801DF360 001DAFC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF364 001DAFC4  40 80 00 08 */	bge lbl_801DF36C
/* 801DF368 001DAFC8  D0 3F 01 18 */	stfs f1, 0x118(r31)
lbl_801DF36C:
/* 801DF36C 001DAFCC  C0 24 00 08 */	lfs f1, 8(r4)
/* 801DF370 001DAFD0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 801DF374 001DAFD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF378 001DAFD8  40 81 00 08 */	ble lbl_801DF380
/* 801DF37C 001DAFDC  D0 3F 01 10 */	stfs f1, 0x110(r31)
lbl_801DF380:
/* 801DF380 001DAFE0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 801DF384 001DAFE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DF388 001DAFE8  40 80 00 08 */	bge lbl_801DF390
/* 801DF38C 001DAFEC  D0 3F 01 1C */	stfs f1, 0x11c(r31)
lbl_801DF390:
/* 801DF390 001DAFF0  38 84 00 0C */	addi r4, r4, 0xc
/* 801DF394 001DAFF4  42 00 FF 90 */	bdnz lbl_801DF324
/* 801DF398 001DAFF8  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 801DF39C 001DAFFC  C0 C2 96 54 */	lfs f6, lbl_80641C54
/* 801DF3A0 001DB000  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 801DF3A4 001DB004  EC A2 30 28 */	fsubs f5, f2, f6
/* 801DF3A8 001DB008  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 801DF3AC 001DB00C  EC 81 30 28 */	fsubs f4, f1, f6
/* 801DF3B0 001DB010  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 801DF3B4 001DB014  EC 60 30 28 */	fsubs f3, f0, f6
/* 801DF3B8 001DB018  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 801DF3BC 001DB01C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 801DF3C0 001DB020  EC 42 30 2A */	fadds f2, f2, f6
/* 801DF3C4 001DB024  EC 21 30 2A */	fadds f1, f1, f6
/* 801DF3C8 001DB028  D0 BF 01 08 */	stfs f5, 0x108(r31)
/* 801DF3CC 001DB02C  EC 00 30 2A */	fadds f0, f0, f6
/* 801DF3D0 001DB030  D0 9F 01 0C */	stfs f4, 0x10c(r31)
/* 801DF3D4 001DB034  D0 7F 01 10 */	stfs f3, 0x110(r31)
/* 801DF3D8 001DB038  D0 5F 01 14 */	stfs f2, 0x114(r31)
/* 801DF3DC 001DB03C  D0 3F 01 18 */	stfs f1, 0x118(r31)
/* 801DF3E0 001DB040  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801DF3E4 001DB044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DF3E8 001DB048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF3EC 001DB04C  7C 08 03 A6 */	mtlr r0
/* 801DF3F0 001DB050  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF3F4 001DB054  4E 80 00 20 */	blr
}
#pragma peephole on 
#endif // NONMATCHING_801DF2CC

void PSVECScale(const Vec* src, Vec* dst, float scale);
#define VECScale PSVECScale

// private
void GSvolume::func_801DF3F8(const Mtx mtxA, const Mtx mtxB, u32 p4, u32 p5, Vec* v, const Vec* w) const
{
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    float f31 = p4 / 65536.0f;
    float f30 = p5 / 65536.0f;

    VECScale(v, v, 1.0f - (f31 + f30));
    MTXMultVec(mtxA, w, &sp2C);
    VECScale(&sp2C, &sp20, f31);
    VECAdd(v, &sp20, v);
    MTXMultVec(mtxB, w, &sp14);
    sp2C = sp14;
    VECScale(&sp2C, &sp8, f30);
    VECAdd(v, &sp8, v);
}

// TODO: implement the rest of OSSetGQR[n], and move to OS header

#define OS_GQR_SCALE_NONE 0
#define OS_GQR_SCALE_65536 0x10


#define OS_GQR_U16 5

inline void OSSetGQR3(u32 type, u32 scale)
{
    register u32 val = ((scale << 8 | type) << 16) | (scale << 8 | type);
    asm { mtspr GQR3, val }
}

// paired single
// Mtx and Vec parameters?
void func_8021CAA0(const Mtx p1, const gUnkClass14* p2, gUnkClass14* p3, u16 count);
#if 0
{
    for (size_t i = 0; i < count; i++) {
        // ...
    }
}
#endif

void func_8021CC54(Mtx, Mtx, u16*, gUnkClass14*, gUnkClass14*, u16);
#if 0
{
    
    
}
#endif

// NONMATCHING: lots of regswaps
// private
void GSvolume::func_801DF528()
{
    Vec sp14;
    Vec sp8;
    
    gUnkClass10_2* r4 = unk144;
    gUnkClass14* r29 = unk13C;
    gUnkClass14* r28 = unk144->unk38;
    if (r29 != r28) {
        OSSetGQR3(OS_GQR_U16, OS_GQR_SCALE_65536);
        u16 r26 = r4->unk48;
        if (r26) {
            unkClass* r30 = r4->unk4C;
            while (r26--) {
                u16 r27 = r30->unk0; // u16, r27, counter
                gUnkClass16* r3; // 0x30 byte struct... 12 floats
                u16 r4 = r30->unk2;
                if (!unkB8->unk8)
                    r3 = 0;
                else if (r4 >= unkB8->unkDE) // u16
                    r3 = 0;
                else
                    r3 = unkB8->unk8[r4]; // sizeof element == 4
                func_8021CAA0(r3->unk13C, r28, r29, r27);
                r30++;
                r29 += r27; // sizeof element == 12
                r28 += r27;
            }
        }
        u16 r31 = unk144->unk50;
        if (r31) {
            unkClass4* r27 = unk144->unk54;
            u16* r26_3 = unk144->unk58; // u16* ?
            while (r31--) {
                u16 temp1 = r27->unk0;
                u16 temp2 = r27->unk2;
                gUnkClass16* r3;
                gUnkClass16* r4;
                if (!unkB8->unk8)
                    r3 = 0;
                else if (temp2 >= unkB8->unkDE)
                    r3 = 0;
                else
                    r3 = unkB8->unk8[temp2];
                
                u16 temp3 = r27->unk4;
                if (!unkB8->unk8)
                    r4 = 0;
                else if (temp3 >= unkB8->unkDE)
                    r4 = 0;
                else
                    r4 = unkB8->unk8[temp3]; // sizeof element == 4
                
                func_8021CC54(r3->unk13C, r4->unk13C, r26_3, r28, r29, temp1);
                r27++; // sizeof element == 6
                r26_3 += temp1; // sizeof element == 2
                r29 += temp1;
                r28 += temp1;
            }
        }
        OSSetGQR3(OS_GQR_U16, OS_GQR_SCALE_NONE);
        r31 = unk144->unk5C;
        if (r31) {
            unkClass5* r26_2 = unk144->unk60;
            while (r31--) {
                u16 temp0 = r26_2->unk0;
                u16 temp2 = r26_2->unk2;
                
                gUnkClass16* r28_2;
                gUnkClass16* r5;
                
                // try to get array element
                if (!unkB8->unk8) // ptr to array
                    r28_2 = 0;
                else if (temp2 >= unkB8->unkDE) // array size
                    r28_2 = 0;
                else
                    r28_2 = unkB8->unk8[temp2]; // sizeof el == 4
                
                if (r26_2->unk8) {
                    u16 temp4 = r26_2->unk4;
                    if (!unkB8->unk8)
                        r5 = 0;
                    else if (temp4 >= unkB8->unkDE)
                        r5 = 0;
                    else
                        r5 = unkB8->unk8[temp4]; // sizeof el = 4
                    
                    func_801DF3F8(r28_2->unk10C, r5->unk10C, r26_2->unk6, 
                    r26_2->unk8, 
                    &unk13C[temp0], 
                    &unk144->unk38[temp0]);
                } else {
                    Vec* r29 = &unk13C[temp0];
                    Vec* r30 = &unk144->unk38[temp0];
                    float f28 = r26_2->unk6 / 65536.0f;
                    VECScale(r29, r29, 1.0f - f28);
                    MTXMultVec(r28_2->unk10C, r30, &sp8);
                    VECScale(&sp8, &sp14, f28);
                    VECAdd(r29, &sp14, r29);
                }
                r26_2++;
            }
        }
    }
}

float PSVECMag(const Vec* v);
#define VECMag PSVECMag

// modifies the Vec at unk140[unk144->unk40->unk0] to the scaled 
// cross product of two difference vectors

// private
void GSvolume::func_801DF85C()
{
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    gUnkClass10_2* r4 = unk144;
    if (unk140 != r4->unk3C) {
        u16 r30 = r4->unk34;
        unkClass8* r29 = r4->unk40;
        for (u16 r28 = 0; r28 < r30; r28++, r29++) {
            u16* r7 = r29->unk4;
            gUnkClass14* r27 = &unk140[r29->unk0];
            gUnkClass14* r26 = &unk13C[r7[0]];
            gUnkClass14* r25 = &unk13C[r7[2]];
            VECSubtract(&unk13C[r7[1]], r26, &sp20);
            VECSubtract(r25, r26, &sp14);
            VECCrossProduct(&sp20, &sp14, &sp8);
            *r27 = sp8;
            float f1 = VECMag(r27);
            if (f1 > 1.0e-5f) {
                if (f1 < 1.0e-5f && f1 > -1.0e-5f) {
                    if (f1 < 0.0f)
                        f1 = -1.0e-5f;
                    else
                        f1 = 1.0e-5f;
                }
                VECScale(r27, r27, 1.0f / f1); // make a unit vector by dividing out the norm
            }
        }
    }
}

// private
void GSvolume::func_801DF9D4(u32 p1, BOOL p2, float p3)
{
    unkClass3 sp8;
        
    unkClass2* r6 = unk144->unk68;
    u32 r0 = r6->unk18;
    if (r0) {
        if ((s32)p1 >= (s32)r0)
            p1 = 0;
        
        unkClass7* r8 = &r6->unk1C[p1];
        if (r8->unk0) {
            s32 r9 = r8->unk2 * p3;
            // Array range check
            if (r9 < 0) // min index?
                r9 = 0;
            else if (r9 >= (s32)r8->unk0) // array length?
                r9 = r8->unk0 - 1;
            
            sp8.unk0.x = 1.0e38f;
            sp8.unk0.y = 1.0e38f;
            sp8.unk0.z = 1.0e38f;
            
            sp8.unkC.x = -1.0e38f;
            sp8.unkC.y = -1.0e38f;
            sp8.unkC.z = -1.0e38f;
            
            sp8.unk18 = 0;
            
            u8 r6 = r8->unk3;
            switch (r6 & 0xf) {
                case 0:
                    float (*r5)[6] = &r8->unk4f[r9];
                    if (p2) {
                        sp8.unk0.x = (*r5)[0];
                        sp8.unk0.y = (*r5)[1];
                        sp8.unk0.z = (*r5)[2];
                        sp8.unkC.x = (*r5)[3];
                        sp8.unkC.y = (*r5)[4];
                        sp8.unkC.z = (*r5)[5];
                        
                        unk120.unk18 = 0;
                        func_80220C78(&unk120, &sp8);
                        unk120.unk18 = (MtxPtr)unkD0;
                    } else {
                        unk120.unk0.x = (*r5)[0];
                        unk120.unk0.y = (*r5)[1];
                        unk120.unk0.z = (*r5)[2];
                        unk120.unkC.x = (*r5)[3];
                        unk120.unkC.y = (*r5)[4];
                        unk120.unkC.z = (*r5)[5];
                    }
                    break;
                case 8:
                    s16 (*r5_2)[6] = &r8->unk4s16[r9]; // size == 12... 6 s16s
                    r6 >>= 4;
                    if (p2) {
                        sp8.unk0.x = static_cast<float>((*r5_2)[0]) / (1 << r6); // f3
                        sp8.unk0.y = static_cast<float>((*r5_2)[1]) / (1 << r6); // f4
                        sp8.unk0.z = static_cast<float>((*r5_2)[2]) / (1 << r6); // f3
                        sp8.unkC.x = static_cast<float>((*r5_2)[3]) / (1 << r6); // f2
                        sp8.unkC.y = static_cast<float>((*r5_2)[4]) / (1 << r6); // f1
                        sp8.unkC.z = static_cast<float>((*r5_2)[5]) / (1 << r6); // f0
                        
                        unk120.unk18 = 0;
                        func_80220C78(&unk120, &sp8);
                        unk120.unk18 = (MtxPtr)unkD0;
                    } else {
                        unk120.unk0.x = static_cast<float>((*r5_2)[0]) / (1 << r6);
                        unk120.unk0.y = static_cast<float>((*r5_2)[1]) / (1 << r6);
                        unk120.unk0.z = static_cast<float>((*r5_2)[2]) / (1 << r6);
                        unk120.unkC.x = static_cast<float>((*r5_2)[3]) / (1 << r6);
                        unk120.unkC.y = static_cast<float>((*r5_2)[4]) / (1 << r6);
                        unk120.unkC.z = static_cast<float>((*r5_2)[5]) / (1 << r6);
                    }
                    break;
                default:
                    break;
            }
        }
    }
}

// TODO: move to header... member functions of gUnkClass15 ?
float func_801F5B44(gUnkClass15*);
float func_801F5C60(gUnkClass15*);
BOOL func_801F5EBC(gUnkClass15*);

void GSvolume::func1(float p1)
{
    Mtx sp8;
    if (func_801F3C7C())
        p1 = 0.0f;
    
    BOOL r30 = unk10 & 0x1;
    GSnull::func1(p1);
    if (unkB8) {
        gUnkClass7* r5 = unk4;
        // get gUnkClass8 node id
        u16 r0 = (r5) ? ((r5->unk0) ? r5->unk0->unk0 : 0xFFFF) : 0xFFFF;
        float f1;
        if ((s32)r0 != 0xFFFF) {
            if (r5) {
                gUnkClass8* head = r5->unk0;
                if (!head) {
                    f1 = 0.0f;
                } else if (r5->unk8 < 0.0f) {
                    f1 = head->unk8 - r5->unkC;
                } else {
                    f1 = r5->unkC;
                }
            } else {
                f1 = 0.0f;
            }
        } else {
            r0 = unkB8->unkF0;
            f1 = func_801F5B44(unkB8);
        }
        
        func_801DF9D4(r0, FALSE, f1);
        BOOL flag;
        gUnkClass7* r4 = unk8;
        if (r4) {
            flag = FALSE;
            if (r4->unk0 && (r4->unk6 & 0x1)) {
                flag = TRUE;
            } 
        } else {
            flag = FALSE;
        }
        
        if (flag || func_801F5EBC(unkB8)) {
            gUnkClass7* r4 = unk8;
            // get gUnkClass8 node id
            u16 r0 = (r4) ? ((r4->unk0) ? r4->unk0->unk0 : 0xFFFF) : 0xFFFF;
            if ((s32)r0 != 0xFFFF) {
                if (r4) {
                    gUnkClass8* head = r4->unk0;
                    if (!head) {
                        f1 = 0.0f;
                    } else if (r4->unk8 < 0.0f) {
                        f1 = head->unk8 - r4->unkC;
                    } else {
                        f1 = r4->unkC;
                    }
                } else {
                    f1 = 0.0f;
                }
            } else {
                r0 = unkB8->unk104;
                f1 = func_801F5C60(unkB8);
            }
            if ((s32)r0 != 0xFFFF) {
                func_801DF9D4(r0, TRUE, f1);
            }
        }
    }
    func_801DF2CC();
    if (r30 && unk144->unk64) {
        MTXConcat(unkD0, unk144->unk64, sp8);
        MTXCopy(sp8, unkD0);
    }
    unk106 |= 0x10;
}

void GSvolume::func_801DFFFC()
{
    if (!unkB8 || !(unk106 & 0x10))
        return;
    func_801DF528();
    func_801DF85C();
    unk106 &= ~0x10;
}

// NONMATCHING: r3/r0 regswap at the beginning of each do loop, and instruction misordering only
// at the beginning of the first loop
// private
BOOL GSvolume::func_801E0058(unkClass8* p1, Vec* p2)
{
    Vec sp5C;
    Vec sp50;
    Vec sp44;
    Vec sp38;
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    u16* r31;
    u32 r30;
    BOOL r29;
    
    gUnkClass14* r6 = &unk140[p1->unk0]; // u16 index
    r29 = FALSE;
    
    // Determine component with the largest absolute value

    float absX = (r6->x > 0.0f) ? r6->x : -r6->x;
    float absY = (r6->y > 0.0f) ? r6->y : -r6->y;
    float absZ = (r6->z > 0.0f) ? r6->z : -r6->z;
    
    enum { Xmax, Ymax, Zmax };
    s32 st; // r6
    if (absX > absY) {
        if (absX > absZ) {
            st = Xmax;
        } else {
            st = Zmax;
        }
    } else if (absY > absZ) {
        st = Ymax;
    } else {
        st = Zmax;
    }
    
    r30 = p1->unk3; // loop counter... must be > 0
    r31 = p1->unk4; // start ptr
    u16* r4 = &r31[r30 - 1]; // end ptr
    gUnkClass14* r3 = &unk13C[*r4];
    if (st == Ymax) {
        BOOL r5 = (p2->x >= r3->x);
        // TODO: inline function?
        do {
            BOOL r26, r0;
            gUnkClass14* r25 = &unk13C[*r31];
            r3 = &unk13C[*r4];
            r26 = (p2->x >= r25->x);
            if (r5 != r26) {
                VECSubtract(r3, r25, &sp44);
                sp5C = sp44;
                VECSubtract(r25, p2, &sp38);
                sp50 = sp38;
                r0 = (sp50.x * sp5C.z >= sp50.z * sp5C.x);
                if (r26 == r0)
                    r29 = !r29; // toggle
            }
            r4 = r31;
            r5 = r26;
            r31++;
        } while (--r30);
    } else if (st == Zmax) {
        BOOL r5 = (p2->y >= r3->y);
        do {
            BOOL r26, r0;
            gUnkClass14* r25 = &unk13C[*r31]; // r26
            r3 = &unk13C[*r4]; 
            r26 = (p2->y >= r25->y); // r25
            if (r5 != r26) {
                VECSubtract(r3, r25, &sp2C);
                sp5C = sp2C;
                VECSubtract(r25, p2, &sp20);
                sp50 = sp20;
                r0 = (sp50.y * sp5C.x >= sp50.x * sp5C.y);
                if (r26 == r0)
                    r29 = !r29; // toggle
            }
            r4 = r31;
            r5 = r26;
            r31++;
        } while (--r30);
    } else { // st == Xmax
        BOOL r5 = (p2->z >= r3->z);
        do {
            BOOL r26;
            gUnkClass14* r25 = &unk13C[*r31]; // r26
            r3 = &unk13C[*r4]; 
            r26 = (p2->z >= r25->z); // r25
            if (r5 != r26) {
                VECSubtract(r3, r25, &sp14);
                sp5C = sp14;
                VECSubtract(r25, p2, &sp8);
                sp50 = sp8;
                BOOL r0 = (sp50.z * sp5C.y >= sp50.y * sp5C.z);
                if (r26 == r0)
                    r29 = !r29; // toggle
            }
            r4 = r31;
            r5 = r26;
            r31++;
        } while (--r30);
    }
    return r29;
}

BOOL GSvolume::func_801E0404(Vec* p1, Vec* p2, Vec* p3, Vec* p4, float* p5, BOOL p6)
{
    Mtx sp98;
    Vec sp8C;
    Vec sp80;
    Vec sp74;
    Vec sp68;
    Vec sp5C;
    Vec sp50;
    Vec sp44;
    Vec sp38;
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    if (!func_801F3CE0())
        return FALSE;
    if (!unk13C || !unk140)
        return FALSE;
    MTXInverse(unkD0, sp98);
    MTXMultVec(sp98, p1, &sp8C);
    MTXMultVec(sp98, p2, &sp80);
    
    // Some kind of bounds check
    if (sp80.x < unk120.unk0.x && sp8C.x < unk120.unk0.x)
        return FALSE;
    if (sp80.y < unk120.unk0.y && sp8C.y < unk120.unk0.y)
        return FALSE;
    if (sp80.z < unk120.unk0.z && sp8C.z < unk120.unk0.z)
        return FALSE;
    if (sp80.x > unk120.unkC.x && sp8C.x > unk120.unkC.x)
        return FALSE;
    if (sp80.y > unk120.unkC.y && sp8C.y > unk120.unkC.y)
        return FALSE;
    if (sp80.z > unk120.unkC.z && sp8C.z > unk120.unkC.z)
        return FALSE;
    
    if (unk106 & 0x10)
        func_801DFFFC();
    
    VECSubtract(&sp80, &sp8C, &sp74);
    
    BOOL r31 = FALSE;
    *p5 = 1.0f;
    unkClass8* r30 = unk144->unk40;
    u16 r29 = unk144->unk34; // count, u16
    u16 r28 = 0; // same as r30?
    gUnkClass14* r20;
    for ( ; r28 < r29; r28++, r30++) {
        r20 = &unk13C[r30->unk4[0]];
        sp68 = unk140[r30->unk0];
        // TODO: How can a Vec* be cast to a Quaternion* if they have 
        // different sizes?
        float f30 = QUATDotProduct((Quaternion*)&sp74, (Quaternion*)&sp68);
        if (f30 >= 0.0f) {
            if (!r30->unk2)
                continue;
            f30 = -f30;
            sp68.x = -sp68.x;
            sp68.y = -sp68.y;
            sp68.z = -sp68.z;
        }
        VECSubtract(r20, &sp8C, &sp50);
        float f1 = QUATDotProduct((Quaternion*)&sp50, (Quaternion*)&sp68);
        if (f1 > 0.0f || f1 <= f30)
            continue;
        f30 = f1 / f30;
        VECScale(&sp74, &sp38, f30);
        VECAdd(&sp8C, &sp38, &sp44);
        sp5C = sp44;
        if (func_801E0058(r30, &sp5C) && *p5 > f30) {
            VECSubtract(p2, p1, &sp14);
            VECScale(&sp14, &sp20, f30);
            VECAdd(p1, &sp20, &sp2C);
            *p4 = sp2C;
            *p3 = sp68;
            MTXMultVecSR(unkD0, p3, p3);
            VECNormalize(p3, p3);
            VECScale(p3, &sp8, 0.001f);
            VECAdd(p4, &sp8, p4);
            *p5 = f30;
            r31 = TRUE;
            if (!p6)
                break;
        }
    }
    return r31;
}





}

























