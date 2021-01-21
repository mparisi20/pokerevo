#include "ctorStruct.h"
#include <string.h>
#include <SDK/mtx.h>
#include "GSnull.h"

namespace
{
    // TODO: might all be u16 arrays
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
    ////////////////////////////////////////

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
    u16 unk104; // init to -1
    u16 unk106; // flags: init to 0x16, 
                // only exec func_801DFFFC (via func_801E0404) if 0x10 set, which clears the bit.
                // Virtual func1 sets bit 0x10
    Vec bottomAABB_; // axis-aligned bounding box's back bottom left vertex
    Vec topAABB_; // AABB forward top right point
    unkClass3 unk120;
    gUnkClass14* unk13C;
    gUnkClass14* unk140;
    gUnkClass10_2* unk144;
    
    void func_801DF2CC();
    void func_801DF3F8(const Mtx p2, const Mtx p3, u32 p4, u32 p5, Vec* p6, const Vec* p7) const;
    void func_801DF528();
    void func_801DF85C();
    void func_801DF9D4(u32 p1, BOOL p2, float p3);
    BOOL func_801E0058(unkClass8* p1, Vec* p2);
public:
    GSvolume(void* p1, gUnkClass10_2* p2); // 801DF040
    void func_801DFFFC();
    BOOL func_801E0404(const Vec* p1, const Vec* p2, Vec* p3, Vec* p4, float* p5, BOOL p6);
    virtual ~GSvolume(); // 801DF204
    virtual void func1(float p1); // 801DFD90
};

static ctorStruct gUnk8063F360(1, 4, 0);

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

    bottomAABB_.x = 0.0f;
    bottomAABB_.y = 0.0f;
    bottomAABB_.z = 0.0f;
    topAABB_.x = 0.0f;
    topAABB_.y = 0.0f;
    topAABB_.z = 0.0f;    

    
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

// TODO: seems to return array of 8 Vec/Point3d
Vec* func_80220AF0(unkClass3*);
void func_80220C78(unkClass3*, unkClass3*);


// determine the axis-aligned bounding box for the array of 8 points retrieved from func_80220AF0,
// with bottomAABB_ as the most negative point and topAABB_ as the most positive point

// private
void GSvolume::func_801DF2CC()
{
    const Vec* arr = func_80220AF0(&unk120);
    const Vec* r4 = arr + 1;
    bottomAABB_ = arr[0]; // back lower left corner
    topAABB_ = arr[0]; // front upper right corner
    float f1;
    for (size_t i = 0; i < 7; r4++, i++) {
        f1 = r4->x;
        if (bottomAABB_.x > f1)
            bottomAABB_.x = f1;
        if (topAABB_.x < f1)
            topAABB_.x = f1;

        f1 = r4->y;
        if (bottomAABB_.y > f1)
            bottomAABB_.y = f1;
        if (topAABB_.y < f1)
            topAABB_.y = f1;
        
        f1 = r4->z;
        if (bottomAABB_.z > f1)
            bottomAABB_.z = f1;
        if (topAABB_.z < f1)
            topAABB_.z = f1;
    }
    bottomAABB_.x -= 5.0e-6f;
    bottomAABB_.y -= 5.0e-6f;
    bottomAABB_.z -= 5.0e-6f;
    topAABB_.x += 5.0e-6f;
    topAABB_.y += 5.0e-6f;
    topAABB_.z += 5.0e-6f;
}

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

// paired single asm
// Mtx and Vec parameters?
void func_8021CAA0(const Mtx p1, const gUnkClass14* p2, gUnkClass14* p3, u16 count);
void func_8021CC54(Mtx, Mtx, u16*, gUnkClass14*, gUnkClass14*, u16);

// NONMATCHING: lots of regswaps
#if 0
r25 -> r28
r29 -> r31
r28 -> r30
r26 -> r27
r30 -> r29
r27 -> r26
r31 -> r26
r5 -> r4
r4 -> r5
#endif

// private
#define NONMATCHING_1
#ifdef NONMATCHING_1
void GSvolume::func_801DF528()
{
    Vec sp14;
    Vec sp8;
    
    gUnkClass10_2* r4 = unk144;
    gUnkClass14* r29 = unk13C; //r31?
    gUnkClass14* r28 = unk144->unk38; //r30
    if (r29 != r28) {
        OSSetGQR3(OS_GQR_U16, OS_GQR_SCALE_65536);
        u16 r26 = r4->unk48; //r27 ?
        if (r26) {
            unkClass* r30 = r4->unk4C; // r29?
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
#else
void _restgpr_25();    
void _savegpr_25();    
extern float lbl_80641C60;
extern float lbl_80641C58;
extern float lbl_80641C5C;
asm void GSvolume::func_801DF528()
{
nofralloc
/* 801DF528 001DB188  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801DF52C 001DB18C  7C 08 02 A6 */	mflr r0
/* 801DF530 001DB190  90 01 00 94 */	stw r0, 0x94(r1)
/* 801DF534 001DB194  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801DF538 001DB198  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0
/* 801DF53C 001DB19C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801DF540 001DB1A0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0
/* 801DF544 001DB1A4  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801DF548 001DB1A8  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0
/* 801DF54C 001DB1AC  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801DF550 001DB1B0  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0
/* 801DF554 001DB1B4  39 61 00 50 */	addi r11, r1, 0x50
/* 801DF558 001DB1B8  4B FE 7B C9 */	bl _savegpr_25
/* 801DF55C 001DB1BC  80 83 01 44 */	lwz r4, 0x144(r3)
/* 801DF560 001DB1C0  7C 79 1B 78 */	mr r25, r3
/* 801DF564 001DB1C4  83 A3 01 3C */	lwz r29, 0x13c(r3)
/* 801DF568 001DB1C8  83 84 00 38 */	lwz r28, 0x38(r4)
/* 801DF56C 001DB1CC  7C 1D E0 40 */	cmplw r29, r28
/* 801DF570 001DB1D0  41 82 02 B4 */	beq lbl_801DF824
/* 801DF574 001DB1D4  3C 60 10 05 */	lis r3, 0x10051005@ha
/* 801DF578 001DB1D8  38 03 10 05 */	addi r0, r3, 0x10051005@l
/* 801DF57C 001DB1DC  7C 13 E3 A6 */	mtspr 0x393, r0
/* 801DF580 001DB1E0  A3 44 00 48 */	lhz r26, 0x48(r4)
/* 801DF584 001DB1E4  2C 1A 00 00 */	cmpwi r26, 0
/* 801DF588 001DB1E8  41 82 00 78 */	beq lbl_801DF600
/* 801DF58C 001DB1EC  83 C4 00 4C */	lwz r30, 0x4c(r4)
/* 801DF590 001DB1F0  48 00 00 64 */	b lbl_801DF5F4
lbl_801DF594:
/* 801DF594 001DB1F4  80 79 00 B8 */	lwz r3, 0xb8(r25)
/* 801DF598 001DB1F8  A3 7E 00 00 */	lhz r27, 0(r30)
/* 801DF59C 001DB1FC  80 A3 00 08 */	lwz r5, 8(r3)
/* 801DF5A0 001DB200  A0 9E 00 02 */	lhz r4, 2(r30)
/* 801DF5A4 001DB204  2C 05 00 00 */	cmpwi r5, 0
/* 801DF5A8 001DB208  40 82 00 0C */	bne lbl_801DF5B4
/* 801DF5AC 001DB20C  38 60 00 00 */	li r3, 0
/* 801DF5B0 001DB210  48 00 00 20 */	b lbl_801DF5D0
lbl_801DF5B4:
/* 801DF5B4 001DB214  A0 03 00 DE */	lhz r0, 0xde(r3)
/* 801DF5B8 001DB218  7C 04 00 40 */	cmplw r4, r0
/* 801DF5BC 001DB21C  41 80 00 0C */	blt lbl_801DF5C8
/* 801DF5C0 001DB220  38 60 00 00 */	li r3, 0
/* 801DF5C4 001DB224  48 00 00 0C */	b lbl_801DF5D0
lbl_801DF5C8:
/* 801DF5C8 001DB228  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 801DF5CC 001DB22C  7C 65 00 2E */	lwzx r3, r5, r0
lbl_801DF5D0:
/* 801DF5D0 001DB230  7F 84 E3 78 */	mr r4, r28
/* 801DF5D4 001DB234  7F A5 EB 78 */	mr r5, r29
/* 801DF5D8 001DB238  7F 66 DB 78 */	mr r6, r27
/* 801DF5DC 001DB23C  38 63 01 3C */	addi r3, r3, 0x13c
/* 801DF5E0 001DB240  48 03 D4 C1 */	bl func_8021CAA0
/* 801DF5E4 001DB244  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 801DF5E8 001DB248  3B DE 00 04 */	addi r30, r30, 4
/* 801DF5EC 001DB24C  7F BD 02 14 */	add r29, r29, r0
/* 801DF5F0 001DB250  7F 9C 02 14 */	add r28, r28, r0
lbl_801DF5F4:
/* 801DF5F4 001DB254  57 40 04 3F */	clrlwi. r0, r26, 0x10
/* 801DF5F8 001DB258  3B 5A FF FF */	addi r26, r26, -1
/* 801DF5FC 001DB25C  40 82 FF 98 */	bne lbl_801DF594
lbl_801DF600:
/* 801DF600 001DB260  80 79 01 44 */	lwz r3, 0x144(r25)
/* 801DF604 001DB264  A3 E3 00 50 */	lhz r31, 0x50(r3)
/* 801DF608 001DB268  2C 1F 00 00 */	cmpwi r31, 0
/* 801DF60C 001DB26C  41 82 00 BC */	beq lbl_801DF6C8
/* 801DF610 001DB270  83 63 00 54 */	lwz r27, 0x54(r3)
/* 801DF614 001DB274  83 43 00 58 */	lwz r26, 0x58(r3)
/* 801DF618 001DB278  48 00 00 A4 */	b lbl_801DF6BC
lbl_801DF61C:
/* 801DF61C 001DB27C  80 B9 00 B8 */	lwz r5, 0xb8(r25)
/* 801DF620 001DB280  A3 DB 00 00 */	lhz r30, 0(r27)
/* 801DF624 001DB284  80 C5 00 08 */	lwz r6, 8(r5)
/* 801DF628 001DB288  A0 7B 00 02 */	lhz r3, 2(r27)
/* 801DF62C 001DB28C  2C 06 00 00 */	cmpwi r6, 0
/* 801DF630 001DB290  40 82 00 0C */	bne lbl_801DF63C
/* 801DF634 001DB294  38 60 00 00 */	li r3, 0
/* 801DF638 001DB298  48 00 00 20 */	b lbl_801DF658
lbl_801DF63C:
/* 801DF63C 001DB29C  A0 05 00 DE */	lhz r0, 0xde(r5)
/* 801DF640 001DB2A0  7C 03 00 40 */	cmplw r3, r0
/* 801DF644 001DB2A4  41 80 00 0C */	blt lbl_801DF650
/* 801DF648 001DB2A8  38 60 00 00 */	li r3, 0
/* 801DF64C 001DB2AC  48 00 00 0C */	b lbl_801DF658
lbl_801DF650:
/* 801DF650 001DB2B0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 801DF654 001DB2B4  7C 66 00 2E */	lwzx r3, r6, r0
lbl_801DF658:
/* 801DF658 001DB2B8  2C 06 00 00 */	cmpwi r6, 0
/* 801DF65C 001DB2BC  A0 9B 00 04 */	lhz r4, 4(r27)
/* 801DF660 001DB2C0  40 82 00 0C */	bne lbl_801DF66C
/* 801DF664 001DB2C4  38 80 00 00 */	li r4, 0
/* 801DF668 001DB2C8  48 00 00 20 */	b lbl_801DF688
lbl_801DF66C:
/* 801DF66C 001DB2CC  A0 05 00 DE */	lhz r0, 0xde(r5)
/* 801DF670 001DB2D0  7C 04 00 40 */	cmplw r4, r0
/* 801DF674 001DB2D4  41 80 00 0C */	blt lbl_801DF680
/* 801DF678 001DB2D8  38 80 00 00 */	li r4, 0
/* 801DF67C 001DB2DC  48 00 00 0C */	b lbl_801DF688
lbl_801DF680:
/* 801DF680 001DB2E0  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 801DF684 001DB2E4  7C 86 00 2E */	lwzx r4, r6, r0
lbl_801DF688:
/* 801DF688 001DB2E8  7F 45 D3 78 */	mr r5, r26
/* 801DF68C 001DB2EC  7F 86 E3 78 */	mr r6, r28
/* 801DF690 001DB2F0  7F A7 EB 78 */	mr r7, r29
/* 801DF694 001DB2F4  7F C8 F3 78 */	mr r8, r30
/* 801DF698 001DB2F8  38 63 01 3C */	addi r3, r3, 0x13c
/* 801DF69C 001DB2FC  38 84 01 3C */	addi r4, r4, 0x13c
/* 801DF6A0 001DB300  48 03 D5 B5 */	bl func_8021CC54
/* 801DF6A4 001DB304  1C 7E 00 0C */	mulli r3, r30, 0xc
/* 801DF6A8 001DB308  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 801DF6AC 001DB30C  3B 7B 00 06 */	addi r27, r27, 6
/* 801DF6B0 001DB310  7F 5A 02 14 */	add r26, r26, r0
/* 801DF6B4 001DB314  7F BD 1A 14 */	add r29, r29, r3
/* 801DF6B8 001DB318  7F 9C 1A 14 */	add r28, r28, r3
lbl_801DF6BC:
/* 801DF6BC 001DB31C  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 801DF6C0 001DB320  3B FF FF FF */	addi r31, r31, -1
/* 801DF6C4 001DB324  40 82 FF 58 */	bne lbl_801DF61C
lbl_801DF6C8:
/* 801DF6C8 001DB328  3C 60 00 05 */	lis r3, 0x00050005@ha
/* 801DF6CC 001DB32C  38 03 00 05 */	addi r0, r3, 0x00050005@l
/* 801DF6D0 001DB330  7C 13 E3 A6 */	mtspr 0x393, r0
/* 801DF6D4 001DB334  80 79 01 44 */	lwz r3, 0x144(r25)
/* 801DF6D8 001DB338  A3 E3 00 5C */	lhz r31, 0x5c(r3)
/* 801DF6DC 001DB33C  2C 1F 00 00 */	cmpwi r31, 0
/* 801DF6E0 001DB340  41 82 01 44 */	beq lbl_801DF824
/* 801DF6E4 001DB344  83 43 00 60 */	lwz r26, 0x60(r3)
/* 801DF6E8 001DB348  3F 60 43 30 */	lis r27, 0x4330
/* 801DF6EC 001DB34C  CB A2 96 60 */	lfd f29, 0x9660(r2)
/* 801DF6F0 001DB350  C3 C2 96 58 */	lfs f30, 0x9658(r2)
/* 801DF6F4 001DB354  C3 E2 96 5C */	lfs f31, 0x965C(r2)
/* 801DF6F8 001DB358  48 00 01 20 */	b lbl_801DF818
lbl_801DF6FC:
/* 801DF6FC 001DB35C  80 99 00 B8 */	lwz r4, 0xb8(r25)
/* 801DF700 001DB360  A0 DA 00 00 */	lhz r6, 0(r26)
/* 801DF704 001DB364  80 A4 00 08 */	lwz r5, 8(r4)
/* 801DF708 001DB368  A0 7A 00 02 */	lhz r3, 2(r26)
/* 801DF70C 001DB36C  2C 05 00 00 */	cmpwi r5, 0
/* 801DF710 001DB370  40 82 00 0C */	bne lbl_801DF71C
/* 801DF714 001DB374  3B 80 00 00 */	li r28, 0
/* 801DF718 001DB378  48 00 00 20 */	b lbl_801DF738
lbl_801DF71C:
/* 801DF71C 001DB37C  A0 04 00 DE */	lhz r0, 0xde(r4)
/* 801DF720 001DB380  7C 03 00 40 */	cmplw r3, r0
/* 801DF724 001DB384  41 80 00 0C */	blt lbl_801DF730
/* 801DF728 001DB388  3B 80 00 00 */	li r28, 0
/* 801DF72C 001DB38C  48 00 00 0C */	b lbl_801DF738
lbl_801DF730:
/* 801DF730 001DB390  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 801DF734 001DB394  7F 85 00 2E */	lwzx r28, r5, r0
lbl_801DF738:
/* 801DF738 001DB398  A0 FA 00 08 */	lhz r7, 8(r26)
/* 801DF73C 001DB39C  2C 07 00 00 */	cmpwi r7, 0
/* 801DF740 001DB3A0  41 82 00 64 */	beq lbl_801DF7A4
/* 801DF744 001DB3A4  2C 05 00 00 */	cmpwi r5, 0
/* 801DF748 001DB3A8  A0 7A 00 04 */	lhz r3, 4(r26)
/* 801DF74C 001DB3AC  40 82 00 0C */	bne lbl_801DF758
/* 801DF750 001DB3B0  38 A0 00 00 */	li r5, 0
/* 801DF754 001DB3B4  48 00 00 20 */	b lbl_801DF774
lbl_801DF758:
/* 801DF758 001DB3B8  A0 04 00 DE */	lhz r0, 0xde(r4)
/* 801DF75C 001DB3BC  7C 03 00 40 */	cmplw r3, r0
/* 801DF760 001DB3C0  41 80 00 0C */	blt lbl_801DF76C
/* 801DF764 001DB3C4  38 A0 00 00 */	li r5, 0
/* 801DF768 001DB3C8  48 00 00 0C */	b lbl_801DF774
lbl_801DF76C:
/* 801DF76C 001DB3CC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 801DF770 001DB3D0  7C A5 00 2E */	lwzx r5, r5, r0
lbl_801DF774:
/* 801DF774 001DB3D4  80 99 01 44 */	lwz r4, 0x144(r25)
/* 801DF778 001DB3D8  1D 26 00 0C */	mulli r9, r6, 0xc
/* 801DF77C 001DB3DC  81 19 01 3C */	lwz r8, 0x13c(r25)
/* 801DF780 001DB3E0  7F 23 CB 78 */	mr r3, r25
/* 801DF784 001DB3E4  80 04 00 38 */	lwz r0, 0x38(r4)
/* 801DF788 001DB3E8  38 9C 01 0C */	addi r4, r28, 0x10c
/* 801DF78C 001DB3EC  A0 DA 00 06 */	lhz r6, 6(r26)
/* 801DF790 001DB3F0  7D 08 4A 14 */	add r8, r8, r9
/* 801DF794 001DB3F4  38 A5 01 0C */	addi r5, r5, 0x10c
/* 801DF798 001DB3F8  7D 20 4A 14 */	add r9, r0, r9
/* 801DF79C 001DB3FC  4B FF FC 5D */	bl func_801DF3F8
/* 801DF7A0 001DB400  48 00 00 74 */	b lbl_801DF814
lbl_801DF7A4:
/* 801DF7A4 001DB404  A0 1A 00 06 */	lhz r0, 6(r26)
/* 801DF7A8 001DB408  1C A6 00 0C */	mulli r5, r6, 0xc
/* 801DF7AC 001DB40C  93 61 00 20 */	stw r27, 0x20(r1)
/* 801DF7B0 001DB410  80 79 01 44 */	lwz r3, 0x144(r25)
/* 801DF7B4 001DB414  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF7B8 001DB418  80 19 01 3C */	lwz r0, 0x13c(r25)
/* 801DF7BC 001DB41C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801DF7C0 001DB420  7F A0 2A 14 */	add r29, r0, r5
/* 801DF7C4 001DB424  80 03 00 38 */	lwz r0, 0x38(r3)
/* 801DF7C8 001DB428  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801DF7CC 001DB42C  7F A3 EB 78 */	mr r3, r29
/* 801DF7D0 001DB430  7F A4 EB 78 */	mr r4, r29
/* 801DF7D4 001DB434  7F C0 2A 14 */	add r30, r0, r5
/* 801DF7D8 001DB438  EF 80 F0 24 */	fdivs f28, f0, f30
/* 801DF7DC 001DB43C  EC 3F E0 28 */	fsubs f1, f31, f28
/* 801DF7E0 001DB440  48 09 D5 2D */	bl PSVECScale
/* 801DF7E4 001DB444  7F C4 F3 78 */	mr r4, r30
/* 801DF7E8 001DB448  38 7C 01 0C */	addi r3, r28, 0x10c
/* 801DF7EC 001DB44C  38 A1 00 08 */	addi r5, r1, 8
/* 801DF7F0 001DB450  48 09 D2 0D */	bl PSMTXMultVec
/* 801DF7F4 001DB454  FC 20 E0 90 */	fmr f1, f28
/* 801DF7F8 001DB458  38 61 00 08 */	addi r3, r1, 8
/* 801DF7FC 001DB45C  38 81 00 14 */	addi r4, r1, 0x14
/* 801DF800 001DB460  48 09 D5 0D */	bl PSVECScale
/* 801DF804 001DB464  7F A3 EB 78 */	mr r3, r29
/* 801DF808 001DB468  7F A5 EB 78 */	mr r5, r29
/* 801DF80C 001DB46C  38 81 00 14 */	addi r4, r1, 0x14
/* 801DF810 001DB470  48 09 D4 B5 */	bl PSVECAdd
lbl_801DF814:
/* 801DF814 001DB474  3B 5A 00 0A */	addi r26, r26, 0xa
lbl_801DF818:
/* 801DF818 001DB478  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 801DF81C 001DB47C  3B FF FF FF */	addi r31, r31, -1
/* 801DF820 001DB480  40 82 FE DC */	bne lbl_801DF6FC
lbl_801DF824:
/* 801DF824 001DB484  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0
/* 801DF828 001DB488  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801DF82C 001DB48C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0
/* 801DF830 001DB490  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801DF834 001DB494  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0
/* 801DF838 001DB498  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801DF83C 001DB49C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0
/* 801DF840 001DB4A0  39 61 00 50 */	addi r11, r1, 0x50
/* 801DF844 001DB4A4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801DF848 001DB4A8  4B FE 79 25 */	bl _restgpr_25
/* 801DF84C 001DB4AC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801DF850 001DB4B0  7C 08 03 A6 */	mtlr r0
/* 801DF854 001DB4B4  38 21 00 90 */	addi r1, r1, 0x90
/* 801DF858 001DB4B8  4E 80 00 20 */	blr
}
#pragma peephole on
#endif // NONMATCHING


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
// #define NONMATCHING_2

//#pragma regswap 801E0144 801E0164 r0 r3 801DF040
//#pragma regswap 801E0234 801E0254 r0 r3 801DF040
//#pragma regswap 801E031C 801E033C r0 r3 801DF040


#ifdef NONMATCHING_2
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
    
    u16* r4 = &r31[r30-1]; // end ptr
    gUnkClass14* r3 = &unk13C[*r4];
    BOOL r5;
    if (st == Ymax) {
        r5 = (p2->x >= r3->x);
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
        r5 = (p2->y >= r3->y);
        do {
            BOOL r26, r0;
            gUnkClass14* r25 = &unk13C[*r31];
            r3 = &unk13C[*r4]; 
            r26 = (p2->y >= r25->y);
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
        r5 = (p2->z >= r3->z);
        do {
            BOOL r26, r0;
            gUnkClass14* r25 = &unk13C[*r31];
            r3 = &unk13C[*r4]; 
            r26 = (p2->z >= r25->z);
            if (r5 != r26) {
                VECSubtract(r3, r25, &sp14);
                sp5C = sp14;
                VECSubtract(r25, p2, &sp8);
                sp50 = sp8;
                r0 = (sp50.z * sp5C.y >= sp50.y * sp5C.z);
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
#else
void _restgpr_25();
void _savegpr_25();
extern float lbl_80641C50;
asm BOOL GSvolume::func_801E0058(unkClass8* p1, Vec* p2)
{
nofralloc
/* 801E0058 001DBCB8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801E005C 001DBCBC  7C 08 02 A6 */	mflr r0
/* 801E0060 001DBCC0  90 01 00 94 */	stw r0, 0x94(r1)
/* 801E0064 001DBCC4  39 61 00 90 */	addi r11, r1, 0x90
/* 801E0068 001DBCC8  4B FE 70 B9 */	bl _savegpr_25
/* 801E006C 001DBCCC  A0 04 00 00 */	lhz r0, 0(r4)
/* 801E0070 001DBCD0  7C 7B 1B 78 */	mr r27, r3
/* 801E0074 001DBCD4  80 C3 01 40 */	lwz r6, 0x140(r3)
/* 801E0078 001DBCD8  7C BC 2B 78 */	mr r28, r5
/* 801E007C 001DBCDC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E0080 001DBCE0  C0 02 96 50 */	lfs f0, 0x9650(r2)
/* 801E0084 001DBCE4  3B A0 00 00 */	li r29, 0
/* 801E0088 001DBCE8  7C 26 04 6E */	lfsux f1, r6, r0
/* 801E008C 001DBCEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0090 001DBCF0  40 81 00 08 */	ble lbl_801E0098
/* 801E0094 001DBCF4  48 00 00 08 */	b lbl_801E009C
lbl_801E0098:
/* 801E0098 001DBCF8  FC 20 08 50 */	fneg f1, f1
lbl_801E009C:
/* 801E009C 001DBCFC  C0 46 00 04 */	lfs f2, 4(r6)
/* 801E00A0 001DBD00  C0 02 96 50 */	lfs f0, 0x9650(r2)
/* 801E00A4 001DBD04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801E00A8 001DBD08  40 81 00 08 */	ble lbl_801E00B0
/* 801E00AC 001DBD0C  48 00 00 08 */	b lbl_801E00B4
lbl_801E00B0:
/* 801E00B0 001DBD10  FC 40 10 50 */	fneg f2, f2
lbl_801E00B4:
/* 801E00B4 001DBD14  C0 66 00 08 */	lfs f3, 8(r6)
/* 801E00B8 001DBD18  C0 02 96 50 */	lfs f0, 0x9650(r2)
/* 801E00BC 001DBD1C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801E00C0 001DBD20  40 81 00 08 */	ble lbl_801E00C8
/* 801E00C4 001DBD24  48 00 00 08 */	b lbl_801E00CC
lbl_801E00C8:
/* 801E00C8 001DBD28  FC 60 18 50 */	fneg f3, f3
lbl_801E00CC:
/* 801E00CC 001DBD2C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801E00D0 001DBD30  40 81 00 1C */	ble lbl_801E00EC
/* 801E00D4 001DBD34  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801E00D8 001DBD38  40 81 00 0C */	ble lbl_801E00E4
/* 801E00DC 001DBD3C  38 C0 00 00 */	li r6, 0
/* 801E00E0 001DBD40  48 00 00 20 */	b lbl_801E0100
lbl_801E00E4:
/* 801E00E4 001DBD44  38 C0 00 02 */	li r6, 2
/* 801E00E8 001DBD48  48 00 00 18 */	b lbl_801E0100
lbl_801E00EC:
/* 801E00EC 001DBD4C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801E00F0 001DBD50  40 81 00 0C */	ble lbl_801E00FC
/* 801E00F4 001DBD54  38 C0 00 01 */	li r6, 1
/* 801E00F8 001DBD58  48 00 00 08 */	b lbl_801E0100
lbl_801E00FC:
/* 801E00FC 001DBD5C  38 C0 00 02 */	li r6, 2
lbl_801E0100:
/* 801E0100 001DBD60  8B C4 00 03 */	lbz r30, 3(r4)
/* 801E0104 001DBD64  2C 06 00 01 */	cmpwi r6, 1
/* 801E0108 001DBD68  83 E4 00 04 */	lwz r31, 4(r4)
/* 801E010C 001DBD6C  38 1E FF FF */	addi r0, r30, -1
/* 801E0110 001DBD70  80 63 01 3C */	lwz r3, 0x13c(r3)
/* 801E0114 001DBD74  54 00 08 3C */	slwi r0, r0, 1
/* 801E0118 001DBD78  7C 9F 02 14 */	add r4, r31, r0
/* 801E011C 001DBD7C  7C 1F 02 2E */	lhzx r0, r31, r0
/* 801E0120 001DBD80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E0124 001DBD84  7C 63 02 14 */	add r3, r3, r0
/* 801E0128 001DBD88  40 82 00 EC */	bne lbl_801E0214
/* 801E012C 001DBD8C  C0 25 00 00 */	lfs f1, 0(r5)
/* 801E0130 001DBD90  C0 03 00 00 */	lfs f0, 0(r3)
/* 801E0134 001DBD94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0138 001DBD98  4C 41 13 82 */	cror 2, 1, 2
/* 801E013C 001DBD9C  7C A0 00 26 */	mfcr r5
/* 801E0140 001DBDA0  54 A5 1F FE */	rlwinm r5, r5, 3, 0x1f, 0x1f
lbl_801E0144:
/* 801E0144 001DBDA4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801E0148 001DBDA8  A0 64 00 00 */	lhz r3, 0(r4)
/* 801E014C 001DBDAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E0150 001DBDB0  80 9B 01 3C */	lwz r4, 0x13c(r27)
/* 801E0154 001DBDB4  C0 3C 00 00 */	lfs f1, 0(r28)
/* 801E0158 001DBDB8  7C 04 04 2E */	lfsx f0, r4, r0
/* 801E015C 001DBDBC  7F 24 02 14 */	add r25, r4, r0
/* 801E0160 001DBDC0  1C 03 00 0C */	mulli r0, r3, 0xc
/* 801E0164 001DBDC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0168 001DBDC8  7C 64 02 14 */	add r3, r4, r0
/* 801E016C 001DBDCC  4C 41 13 82 */	cror 2, 1, 2
/* 801E0170 001DBDD0  7F 40 00 26 */	mfcr r26
/* 801E0174 001DBDD4  57 5A 1F FE */	rlwinm r26, r26, 3, 0x1f, 0x1f
/* 801E0178 001DBDD8  7C 05 D0 00 */	cmpw r5, r26
/* 801E017C 001DBDDC  41 82 00 80 */	beq lbl_801E01FC
/* 801E0180 001DBDE0  7F 24 CB 78 */	mr r4, r25
/* 801E0184 001DBDE4  38 A1 00 44 */	addi r5, r1, 0x44
/* 801E0188 001DBDE8  48 09 CB 61 */	bl PSVECSubtract
/* 801E018C 001DBDEC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 801E0190 001DBDF0  7F 23 CB 78 */	mr r3, r25
/* 801E0194 001DBDF4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801E0198 001DBDF8  7F 84 E3 78 */	mr r4, r28
/* 801E019C 001DBDFC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801E01A0 001DBE00  38 A1 00 38 */	addi r5, r1, 0x38
/* 801E01A4 001DBE04  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801E01A8 001DBE08  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801E01AC 001DBE0C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801E01B0 001DBE10  48 09 CB 39 */	bl PSVECSubtract
/* 801E01B4 001DBE14  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 801E01B8 001DBE18  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 801E01BC 001DBE1C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801E01C0 001DBE20  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801E01C4 001DBE24  EC 24 00 72 */	fmuls f1, f4, f1
/* 801E01C8 001DBE28  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801E01CC 001DBE2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801E01D0 001DBE30  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801E01D4 001DBE34  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801E01D8 001DBE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E01DC 001DBE3C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801E01E0 001DBE40  4C 41 13 82 */	cror 2, 1, 2
/* 801E01E4 001DBE44  7C 00 00 26 */	mfcr r0
/* 801E01E8 001DBE48  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 801E01EC 001DBE4C  7C 1A 00 00 */	cmpw r26, r0
/* 801E01F0 001DBE50  40 82 00 0C */	bne lbl_801E01FC
/* 801E01F4 001DBE54  7F A0 00 34 */	cntlzw r0, r29
/* 801E01F8 001DBE58  54 1D D9 7E */	srwi r29, r0, 5
lbl_801E01FC:
/* 801E01FC 001DBE5C  37 DE FF FF */	addic. r30, r30, -1
/* 801E0200 001DBE60  7F E4 FB 78 */	mr r4, r31
/* 801E0204 001DBE64  7F 45 D3 78 */	mr r5, r26
/* 801E0208 001DBE68  3B FF 00 02 */	addi r31, r31, 2
/* 801E020C 001DBE6C  40 82 FF 38 */	bne lbl_801E0144
/* 801E0210 001DBE70  48 00 01 D8 */	b lbl_801E03E8
lbl_801E0214:
/* 801E0214 001DBE74  2C 06 00 02 */	cmpwi r6, 2
/* 801E0218 001DBE78  40 82 00 EC */	bne lbl_801E0304
/* 801E021C 001DBE7C  C0 25 00 04 */	lfs f1, 4(r5)
/* 801E0220 001DBE80  C0 03 00 04 */	lfs f0, 4(r3)
/* 801E0224 001DBE84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0228 001DBE88  4C 41 13 82 */	cror 2, 1, 2
/* 801E022C 001DBE8C  7C A0 00 26 */	mfcr r5
/* 801E0230 001DBE90  54 A5 1F FE */	rlwinm r5, r5, 3, 0x1f, 0x1f
lbl_801E0234:
/* 801E0234 001DBE94  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801E0238 001DBE98  A0 64 00 00 */	lhz r3, 0(r4)
/* 801E023C 001DBE9C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E0240 001DBEA0  80 9B 01 3C */	lwz r4, 0x13c(r27)
/* 801E0244 001DBEA4  C0 3C 00 04 */	lfs f1, 4(r28)
/* 801E0248 001DBEA8  7F 44 02 14 */	add r26, r4, r0
/* 801E024C 001DBEAC  C0 1A 00 04 */	lfs f0, 4(r26)
/* 801E0250 001DBEB0  1C 03 00 0C */	mulli r0, r3, 0xc
/* 801E0254 001DBEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0258 001DBEB8  7C 64 02 14 */	add r3, r4, r0
/* 801E025C 001DBEBC  4C 41 13 82 */	cror 2, 1, 2
/* 801E0260 001DBEC0  7F 20 00 26 */	mfcr r25
/* 801E0264 001DBEC4  57 39 1F FE */	rlwinm r25, r25, 3, 0x1f, 0x1f
/* 801E0268 001DBEC8  7C 05 C8 00 */	cmpw r5, r25
/* 801E026C 001DBECC  41 82 00 80 */	beq lbl_801E02EC
/* 801E0270 001DBED0  7F 44 D3 78 */	mr r4, r26
/* 801E0274 001DBED4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801E0278 001DBED8  48 09 CA 71 */	bl PSVECSubtract
/* 801E027C 001DBEDC  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801E0280 001DBEE0  7F 43 D3 78 */	mr r3, r26
/* 801E0284 001DBEE4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801E0288 001DBEE8  7F 84 E3 78 */	mr r4, r28
/* 801E028C 001DBEEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801E0290 001DBEF0  38 A1 00 20 */	addi r5, r1, 0x20
/* 801E0294 001DBEF4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801E0298 001DBEF8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801E029C 001DBEFC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801E02A0 001DBF00  48 09 CA 49 */	bl PSVECSubtract
/* 801E02A4 001DBF04  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801E02A8 001DBF08  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 801E02AC 001DBF0C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801E02B0 001DBF10  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801E02B4 001DBF14  EC 23 00 72 */	fmuls f1, f3, f1
/* 801E02B8 001DBF18  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801E02BC 001DBF1C  EC 04 00 32 */	fmuls f0, f4, f0
/* 801E02C0 001DBF20  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801E02C4 001DBF24  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801E02C8 001DBF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E02CC 001DBF2C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801E02D0 001DBF30  4C 41 13 82 */	cror 2, 1, 2
/* 801E02D4 001DBF34  7C 00 00 26 */	mfcr r0
/* 801E02D8 001DBF38  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 801E02DC 001DBF3C  7C 19 00 00 */	cmpw r25, r0
/* 801E02E0 001DBF40  40 82 00 0C */	bne lbl_801E02EC
/* 801E02E4 001DBF44  7F A0 00 34 */	cntlzw r0, r29
/* 801E02E8 001DBF48  54 1D D9 7E */	srwi r29, r0, 5
lbl_801E02EC:
/* 801E02EC 001DBF4C  37 DE FF FF */	addic. r30, r30, -1
/* 801E02F0 001DBF50  7F E4 FB 78 */	mr r4, r31
/* 801E02F4 001DBF54  7F 25 CB 78 */	mr r5, r25
/* 801E02F8 001DBF58  3B FF 00 02 */	addi r31, r31, 2
/* 801E02FC 001DBF5C  40 82 FF 38 */	bne lbl_801E0234
/* 801E0300 001DBF60  48 00 00 E8 */	b lbl_801E03E8
lbl_801E0304:
/* 801E0304 001DBF64  C0 25 00 08 */	lfs f1, 8(r5)
/* 801E0308 001DBF68  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E030C 001DBF6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0310 001DBF70  4C 41 13 82 */	cror 2, 1, 2
/* 801E0314 001DBF74  7C A0 00 26 */	mfcr r5
/* 801E0318 001DBF78  54 A5 1F FE */	rlwinm r5, r5, 3, 0x1f, 0x1f
lbl_801E031C:
/* 801E031C 001DBF7C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801E0320 001DBF80  A0 64 00 00 */	lhz r3, 0(r4)
/* 801E0324 001DBF84  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E0328 001DBF88  80 9B 01 3C */	lwz r4, 0x13c(r27)
/* 801E032C 001DBF8C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 801E0330 001DBF90  7F 44 02 14 */	add r26, r4, r0
/* 801E0334 001DBF94  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801E0338 001DBF98  1C 03 00 0C */	mulli r0, r3, 0xc
/* 801E033C 001DBF9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0340 001DBFA0  7C 64 02 14 */	add r3, r4, r0
/* 801E0344 001DBFA4  4C 41 13 82 */	cror 2, 1, 2
/* 801E0348 001DBFA8  7F 20 00 26 */	mfcr r25
/* 801E034C 001DBFAC  57 39 1F FE */	rlwinm r25, r25, 3, 0x1f, 0x1f
/* 801E0350 001DBFB0  7C 05 C8 00 */	cmpw r5, r25
/* 801E0354 001DBFB4  41 82 00 80 */	beq lbl_801E03D4
/* 801E0358 001DBFB8  7F 44 D3 78 */	mr r4, r26
/* 801E035C 001DBFBC  38 A1 00 14 */	addi r5, r1, 0x14
/* 801E0360 001DBFC0  48 09 C9 89 */	bl PSVECSubtract
/* 801E0364 001DBFC4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801E0368 001DBFC8  7F 43 D3 78 */	mr r3, r26
/* 801E036C 001DBFCC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801E0370 001DBFD0  7F 84 E3 78 */	mr r4, r28
/* 801E0374 001DBFD4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801E0378 001DBFD8  38 A1 00 08 */	addi r5, r1, 8
/* 801E037C 001DBFDC  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801E0380 001DBFE0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801E0384 001DBFE4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801E0388 001DBFE8  48 09 C9 61 */	bl PSVECSubtract
/* 801E038C 001DBFEC  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 801E0390 001DBFF0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801E0394 001DBFF4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 801E0398 001DBFF8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801E039C 001DBFFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 801E03A0 001DC000  C0 81 00 08 */	lfs f4, 8(r1)
/* 801E03A4 001DC004  EC 03 00 32 */	fmuls f0, f3, f0
/* 801E03A8 001DC008  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801E03AC 001DC00C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801E03B0 001DC010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E03B4 001DC014  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801E03B8 001DC018  4C 41 13 82 */	cror 2, 1, 2
/* 801E03BC 001DC01C  7C 00 00 26 */	mfcr r0
/* 801E03C0 001DC020  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 801E03C4 001DC024  7C 19 00 00 */	cmpw r25, r0
/* 801E03C8 001DC028  40 82 00 0C */	bne lbl_801E03D4
/* 801E03CC 001DC02C  7F A0 00 34 */	cntlzw r0, r29
/* 801E03D0 001DC030  54 1D D9 7E */	srwi r29, r0, 5
lbl_801E03D4:
/* 801E03D4 001DC034  37 DE FF FF */	addic. r30, r30, -1
/* 801E03D8 001DC038  7F E4 FB 78 */	mr r4, r31
/* 801E03DC 001DC03C  7F 25 CB 78 */	mr r5, r25
/* 801E03E0 001DC040  3B FF 00 02 */	addi r31, r31, 2
/* 801E03E4 001DC044  40 82 FF 38 */	bne lbl_801E031C
lbl_801E03E8:
/* 801E03E8 001DC048  39 61 00 90 */	addi r11, r1, 0x90
/* 801E03EC 001DC04C  7F A3 EB 78 */	mr r3, r29
/* 801E03F0 001DC050  4B FE 6D 7D */	bl _restgpr_25
/* 801E03F4 001DC054  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801E03F8 001DC058  7C 08 03 A6 */	mtlr r0
/* 801E03FC 001DC05C  38 21 00 90 */	addi r1, r1, 0x90
/* 801E0400 001DC060  4E 80 00 20 */	blr
}
#pragma peephole on
#endif

BOOL GSvolume::func_801E0404(const Vec* p1, const Vec* p2, Vec* p3, Vec* p4, float* p5, BOOL p6)
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
    u16 r29 = unk144->unk34; // count    
    for (u16 r28 = 0; r28 < r29; r28++, r30++) {
        gUnkClass14* r20 = &unk13C[r30->unk4[0]];
        sp68 = unk140[r30->unk0];
        float f30 = VECDotProduct(&sp74, &sp68);
        if (f30 >= 0.0f) {
            if (!r30->unk2)
                continue;
            f30 = -f30;
            sp68.x = -sp68.x;
            sp68.y = -sp68.y;
            sp68.z = -sp68.z;
        }
        VECSubtract(r20, &sp8C, &sp50);
        float f1 = VECDotProduct(&sp50, &sp68);
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
