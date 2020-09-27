#if 0
SinFIdx__Q24nw4r4mathFf 80384CDC 6c
CosFIdx__Q24nw4r4mathFf 80384D48 5c
Atan2FIdx__Q24nw4r4mathFff  80384da4 1a8  80162540
#endif

#include "nw4r/math/math_triangular.h"

float nw4r::math::SinFIdx(float x)
{
    float f3 = __fabs(x);
    // get in range [0, 2^16)
    float f0 = 65536.0f;
    while (f3 >= f0) {
        f3 -= f0;
    }
    
    
    float res = r4[r0] + f4*f3;
    
    
    if (x < 0.0f)
        return -res;
    return res;
}

float nw4r::math::CosFIdx(float x)
{
    
}

float nw4r::math::Atan2FIdx(float y, float x) // TODO: ? params
{
    
}
