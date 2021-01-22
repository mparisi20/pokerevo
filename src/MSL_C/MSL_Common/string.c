#include <string.h>

char *strcpy(char *dest, const char *src) // r7, r4
{
    const char *srcp = src;
    char *destp = dest;
    u32 dest_rm = (u32)destp & 3;
    u32 src_rm = (u32)srcp & 3; // r5
    
    if (dest_rm == src_rm) {
        if (src_rm) {
            if ((*destp = *srcp) == 0) return dest;
            for (u32 i = (3-src_rm); i; i--) {
                if ((*++destp = *++srcp) == 0) return dest;
            }
            destp++;
            srcp++;
        }
        // 328
        u32 word;
        word = *(u32*)srcp;
        if ((word + 0xfefefeff & ~word & 0x80808080) == 0) {
            srcp -= 4;
            do {
                *(++((u32*)destp)) = word;
                word = *++((u32*)srcp);
            } while ((word + 0xfefefeff & ~word & 0x80808080) == 0);
            srcp += 4;
        }
    }
    // 36c
    
    if ((*destp = *srcp) == 0) return dest;
    do {
        *++destp = *++srcp;
    } while (*srcp);
    return dest;
}
