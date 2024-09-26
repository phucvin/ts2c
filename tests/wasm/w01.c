
#define WASM_EXPORT __attribute__((used, visibility("default")))

typedef short int16_t;

WASM_EXPORT int16_t fib(int16_t n)
{
    if (n < 2)
        return 1;
    else
        return fib(n - 2) + fib(n - 1);

}

int main(void) {

    return 0;
}
