#include <string.h>
#include <SDK/mtx.h>
#include "GSnull.h"

namespace
{
    // NOTE: could just be an array of float
    struct unkClass2
    {
        float unk0;
        float unk4;
        float unk8;
        float unkC;
        float unk10;
        float unk14;
    };
    
    // TODO: same as unkClass2?
    // TODO: struct size >= 0x1C
    struct unkClass3
    {
        Vec unk0;
        Vec unkC;
        Mtx* unk14;
    };
    ///////////////
}

// size == 0xC
struct gUnkClass14
{
    u8 unk0[0xC]; // pad
    
    gUnkClass14(); // 8002A294
};
    

struct gUnkClass10_2 : public gUnkClass10
{
    u8 unk4[0x2C]; // pad
    u16 unk30;
    u16 unk32;
    u16 unk34;
    gUnkClass14* unk38;
    gUnkClass14* unk3C;
    
    u8 unk40[0x28]; // pad
    
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
    void func_801DF3F8(Mtx p2, Mtx p3, u32 p4, u32 p5, Vec* p6, Vec* p7);
    virtual ~GSvolume(); // 801DF204
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

    
    unk120.unk14 = &unkD0;
    
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

// TODO: seems to return array of Vec
Vec* func_80220AF0(unkClass3*);

extern float lbl_80641C54;


#ifdef NONMATCHING_801DF2CC
// static
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


// static
void GSvolume::func_801DF3F8(Mtx p2, Mtx p3, u32 p4, u32 p5, Vec* p6, Vec* p7)
{
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    Vec sp8;
    
    float f31 = p4 / 65536.0f;
    float f30 = p5 / 65536.0f;

    VECScale(p6, p6, 1.0f - (f31 + f30));
    MTXMultVec(p2, p7, &sp2C);
    VECScale(&sp2C, &sp20, f31);
    VECAdd(p6, &sp20, p6);
    MTXMultVec(p3, p7, &sp14);
    sp2C = sp14;
    VECScale(&sp2C, &sp8, f30);
    VECAdd(p6, &sp8, p6);
}



}











































