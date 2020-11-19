#ifndef POKEREVO_GSNULL_H
#define POKEREVO_GSNULL_H

#ifdef __cplusplus
extern "C" {
#endif

#include "GSblendObject.h"

struct gUnkClass11
{
    Vec unk0;
    Vec unkC;
    Vec unk18;
};

// TODO: inferred base class. Unknown size
struct gUnkClass10
{
    u8 unk0[0x4]; // pad
};

struct gUnkClass10_1 : public gUnkClass10
{
    u8 unk4[0x1C]; // pad
    gUnkClass8* unk20;
    
    u8 unk24[0xC]; // pad    
    u32 unk30; // NOTE: accessed as word in 801DED3C, but as halfword in 801DF040
    float unk34;
    float unk38;
    Vec unk3C;
    gUnkClass11* unk48;
};

struct gUnkClass16
{
    u8 unk0[0x10C]; // pad
    Mtx unk10C;
    Mtx unk13C;
};

struct gUnkClass15
{
    u8 unk0[0x8]; //pad
    gUnkClass16** unk8;
    u8 unkC[0xD2]; //pad
    u16 unkDE;
    u8 unkE0[0x10]; //pad
    u16 unkF0;
    u8 unkF2[0x12]; //pad
    u16 unk104;
};

class GSnull : public GSblendObject
{
protected:
    u16 unk10;
    u8 unk12[0xA6]; // pad
    
    gUnkClass15* unkB8;
    
    u8 unkBC[0x14]; // pad
    
    Mtx unkD0;
public:
    GSnull(u8 p1); // 801F1AE8
    GSnull(void* p1, gUnkClass10* p2); // 801F1BC8 // TODO: p1 type
    void func_801F3904(float);
    BOOL func_801F3C7C();
    BOOL func_801F3CE0();
    virtual ~GSnull();    // 801F1F24
    virtual void func1(float p1); // 801F3960
    virtual void func2(BOOL p1); // 801F39E8
    virtual void func3(); // 801F3790
};

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_GSNULL_H
