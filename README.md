JavaScript/TypeScript to C transpiler
=====================================

Produces readable C89 code from JS/TS code.

For example, this JavaScript:

```javascript
console.log("Hello world!");
```

transpiles to the following C code:

```c
#include <stdio.h>

int main() {
    printf("Hello world!\n");
    return 0;
}
```

No excessive code that is not actually needed is ever generated.

The output is as readable as possible and mostly maps well to the original code.

Another example:

```javascript
var obj = { key: "hello" };
obj["newKey"] = "test";
console.log(obj);
```

transpiles to the following C code:

```c
#include <stdlib.h>
#include <assert.h>
#include <stdio.h>

struct obj_t {
    const char * key;
    const char * newKey;
};

static struct obj_t * obj;
int main(void) {

    obj = malloc(sizeof(*obj));
    assert(obj != NULL);
    obj->key = "hello";
    obj->newKey = "test";

    printf("{ ");
    printf("key: \"%s\"", obj->key);
    printf(", ");
    printf("newKey: \"%s\"", obj->newKey);
    printf(" }\n");

    free(obj);

    return 0;
}
```


Project status
--------------

__**Work in progress:**__ it works, but only a small fraction of JS/TS syntax is currently supported.

Overview of currently supported language features:

 - literals: numbers, strings, booleans, array literals, object literals
 - variables of fixed types: number, string, boolean, array, object
 - statements: `if`-`then`-`else`, `while`, `for`, `for`-`of`, `return`
 - function declarations in global scope
 - operations: `||`, `&&`, `!`, `>`, `<`, `<=`, `>=`, `==`, `!=`, `-`, `+`, `*`, `/`, `++`, `--`

Note: some of these features supported only partially.
Detailed information about supported and planned features can be found in [COVERAGE.md](https://github.com/andrei-markeev/ts2c/blob/master/COVERAGE.md). 

Memory management is done via [escape analysis](https://en.wikipedia.org/wiki/Escape_analysis).
Recursion or indirect recursion aren't supported yet, but otherwise this works relatively well.

Live demo
---------

You can try it out yourself online:

 - https://andrei-markeev.github.io/ts2c/

Rationale
---------

The main motivation behind this project was to solve problem that IoT and wearables cannot be currently efficiently
programmed with JavaScript.

The thing is, for sustainable IoT devices that can work for a *long time* on single battery, things like
Raspberry Pi won't do. You'll have to use low-power microcontrollers, which usually have very little memory available.

RAM ranges literally **from 512 bytes** to 120KB, and ROM/Flash **from 1KB** to 4MB. In such conditions, even
optimized JS interpreters like [JerryScript](https://github.com/Samsung/jerryscript), 
[Espruino](https://github.com/espruino/Espruino) or [V7](https://github.com/cesanta/v7) are sometimes too 
much of an overhead and usually lead to the increased battery drain and/or don't leave a lot of system 
resources to your program.

Of course, transpiler cannot map 100% of the JavaScript language and some things are have to be left out,
for example `eval` and `try`-`catch`. Still, current conclusion is, that it is possible to transpile most of the
language. 

These are some examples of planned target platforms for using with TS2C:
 - [ESP8266](https://en.wikipedia.org/wiki/ESP8266)
 - [Pebble watch](https://en.wikipedia.org/wiki/Pebble_(watch))
 - [Atmel AVR](https://en.wikipedia.org/wiki/Atmel_AVR#Basic_families) family (used in Arduino boards)   
 - [TI MSP430](https://en.wikipedia.org/wiki/TI_MSP430) family


Usage
-----

Syntax:
```sh
node ts2c.js <files to transpile>
```

In browser (also see **index.html** file):
```html
<script src="https://npmcdn.com/typescript"></script>
<script src="ts2c.bundle.js"></script>
<script>
    var cCode = ts2c.transpile("console.log('Hello world!')");
    alert(cCode);
</script>
```
