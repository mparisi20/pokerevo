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
}

// size == 0xC
struct gUnkClass14
{
    u8 unk0[0xC]; // pad
    
    gUnkClass14();
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
    float unk108;
    float unk10C;
    float unk110;
    float unk114;
    float unk118;
    float unk11C;

    float unk120;
    float unk124;
    float unk128;
    float unk12C;
    float unk130;
    float unk134;
    
    Mtx* unk138;
    
    gUnkClass14* unk13C;
    gUnkClass14* unk140;
    gUnkClass10_2* unk144;
    
    
public:
    GSvolume(void* p1, gUnkClass10_2* p2); // 801DF040
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
    unk120 = 1.0e38f;
    unk124 = 1.0e38f;
    unk128 = 1.0e38f;
    unk12C = -1.0e38f;
    unk130 = -1.0e38f;
    unk134 = -1.0e38f;
    
    unk13C = NULL;
    unk140 = NULL;
    unk144 = p2;
    
    unk108 = 0.0f;
    unk10C = 0.0f;
    unk110 = 0.0f;
    unk114 = 0.0f;
    unk118 = 0.0f;
    unk11C = 0.0f;
    
    unk138 = &unkD0;
    
    if (p2->unk30 & 0x2) {
        // TODO: need to call __construct_new_array
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
    
    unk120 = r4->unk0;
    unk124 = r4->unk4;
    unk128 = r4->unk8;
    unk12C = r4->unkC;
    unk130 = r4->unk10;
    unk134 = r4->unk14;
    
    func_801FA4A0(this);
    PPCSync();
}

}


