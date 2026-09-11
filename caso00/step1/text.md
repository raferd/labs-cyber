## Crear un programa sencillo en lenguaje C

Primero comprueba dónde estás:

`pwd`{{exec}}

Ahora crea un archivo llamado `programa.c` y edítalo con vi:

`vi programa.c`

Dentro de `vi`:

1. Pulsa `i` para entrar en modo inserción.
2. Escribe el siguiente programa:
 ```c
#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Hola. Mi PID es %d\n", getpid());
    return 0;
}
```
4. Pulsa la tecla `Esc`.
5. Escribe `:wq` y pulsa Enter.

