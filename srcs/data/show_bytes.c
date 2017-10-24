#include <stdio.h>
#include <limits.h>
#include <string.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len)
{
	int i;

	for (i = 0; i < len; i++) {
		printf(" %.2x", start[i]);
	}
	printf("\n");
}

void show_int(int x)
{
	show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x)
{
	show_bytes((byte_pointer) &x, sizeof(int));
}

void show_pointer(void *x)
{
	show_bytes((byte_pointer) &x, sizeof(int));
}

int main()
{
	int val = 0x87654321;
	byte_pointer valp = (byte_pointer)&val;
	const char *s = "abcdef";
	short sx = -12345;
	unsigned short usx = sx;
	int x = sx;
	unsigned int ux = usx;
	unsigned uy = sx;

	printf("sx = %d:\t", sx);
	show_bytes((byte_pointer)&sx, sizeof(sx));
	printf("usx = %d:\t", usx);
	show_bytes((byte_pointer)&usx, sizeof(usx));
	printf("x = %d:\t", x);
	show_bytes((byte_pointer)&x, sizeof(x));
	printf("ux = %d:\t", ux);
	show_bytes((byte_pointer)&ux, sizeof(ux));
	printf("uy = %d:\t", uy);
	show_bytes((byte_pointer)&uy, sizeof(uy));
	show_int(12345);
	show_float(12345.0);
	show_pointer((void *)0x123456);
	show_bytes(valp, 1);
	show_bytes(valp, 2);
	show_bytes(valp, 3);
	show_bytes((byte_pointer)s, strlen(s));
}
