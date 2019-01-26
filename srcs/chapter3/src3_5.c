#include <stdio.h>

long func_q(long x)
{
    return 0;
}

long func(long x, long y)
{
    long u = func_q(y);
    long v = func_q(x);

    return u + v;
}

