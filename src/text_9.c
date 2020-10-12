#if 0
func_80300C10 258
func_80300E68 17C
#endif

#include "types.h"

void func_80300E68(unkStruct *p1, unsigned char *dest, const unsigned char *src, u32 n)
{
	if (n == 0)
		return;
	unsigned char r11 = p1->unk0;
	unsigned char r12 = p1->unk1;
	unsigned char *r31 = &p1->unk4; // some kind of base pointer
	// unrolled loops: one loop for each group of 4, 2nd loop for the remainder
	if (n) {
		// swap two bytes in the r31 array, and write
		// a byte into the dest array
		for (u32 i = n; i != 0; i--) {
			r7 = *src++;
			r9 = r31[++r11];
			r12 += r9;
			r10 = r31[r12];
			r31[r12] = r9;
			r31[r11] = r10;
			*dest++ = r31[r9 + r10] ^ r7;
		}
	}
	p1->unk0 = r11;
	p1->unk1 = r12;
}