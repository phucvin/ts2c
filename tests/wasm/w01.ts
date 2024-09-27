function fib(n : number) : number {
    if (n < 2) return 1;
    else return fib(n - 2) + fib(n - 1);
}

console.log(fib(20))