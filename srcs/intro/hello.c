#include <stdio.h>

#define MAX(a, b) ((a) > (b) ? (a) : (b))
int main()
{
	printf("Hello, world!\n");
	printf("max(5, 3): %d\n", MAX(5, 3));
}
