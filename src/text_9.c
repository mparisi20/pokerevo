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
    u8 unk4[1000]; // not sure what size is
} unkStruct;

void func_80300E68(unkStruct *p1, u8 *dest, const u8 *src, u32 n);

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
