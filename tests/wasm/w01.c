#include <stdio.h>
typedef short int16_t;
int16_t fib(int16_t n)
{
    if (n < 2)
        return 1;
    else
        return fib(n - 2) + fib(n - 1);

}

int main(void) {
    printf("%d\n", fib(20));

    return 0;
}
