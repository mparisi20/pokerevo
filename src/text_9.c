#if 0
func_80300C10 258
func_80300E68 17C
#endif

#include "types.h"

typedef struct unkStruct
{
    u8 unk0;
    u8 unk1;
    u8 padding[2];
    u8 unk4[1000]; // TODO: deduce size from func_80300C10 code
} unkStruct;

void func_80300C10(unkStruct *p1, const u8 *p2, u32 p3);
void func_80300E68(unkStruct *p1, u8 *dest, const u8 *src, u32 n);

void func_80300C10(unkStruct *p1, const u8 *p2, u32 p3)
{
    u8 *r3;
    u8 r7, r0, r6, r10, r8, r9;
    u8 *r12;
    
    if (p3 > 0x10)
        p3 = 0x10;
    
    p1->unk0 = 0;
    r12 = p1->unk4;
    p1->unk1 = 0;
    for (u32 i = 0; i != 256; i++) {// TODO: change 8 to ...
        r12[i] = (u8)i;
    }
    
    r3 = r12;
    r9 = 0;
    r8 = 0;
    r7 = 0;
    for (u32 i = 0; i < 256; i++) {
        r6 = r8++;
        r0 = r8;
        r10 = r3[i];
        r6 = p2[r6];
        r9 = (u8)(r10 + r9 + r6);
        if (r0 == (u8)p3)
            r8 = 0; // reset
        r3[i] = r12[r9];
        r12[r9] = r10;
    }    
}

void func_80300E68(unkStruct *p1, u8 *dest, const u8 *src, u32 n)
{
    u8 r7, r9, r10, r11, r12;
    u8 *r31;

    if (n == 0)
        return;
    r11 = p1->unk0;
    r31 = p1->unk4;
    r12 = p1->unk1;
    for (u32 i = n; i != 0; i--) {
        r11 = (u8)(r11 + 1);
        r7 = *src++;
        r9 = r31[r11];
        r12 = (u8)(r12 + r9);
        r10 = r31[r12];
        r31[r12] = r9;
        r31[r11] = r10;
        *dest++ = (u8)(r31[(u8)(r9 + r10)] ^ r7);
    }
    p1->unk0 = r11;
    p1->unk1 = r12;
}
