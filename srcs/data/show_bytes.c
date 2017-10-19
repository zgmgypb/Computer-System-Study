#include <stdio.h>
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

	show_int(12345);
	show_float(12345.0);
	show_pointer((void *)0x123456);
	show_bytes(valp, 1);
	show_bytes(valp, 2);
	show_bytes(valp, 3);
	show_bytes((byte_pointer)s, strlen(s));
}
