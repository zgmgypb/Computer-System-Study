//typedef int src_t;
//typedef int dest_t;
//typedef char src_t;
//typedef int dest_t;
//typedef char src_t;
//typedef unsigned int dest_t;
//typedef unsigned char src_t;
//typedef long dest_t;
typedef int src_t;
typedef char dest_t;

int main(void)
{
    src_t *sp;
    dest_t *dp;

    *dp = (dest_t)*sp;
}
