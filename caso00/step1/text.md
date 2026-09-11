## Crear un programa sencillo

Primero comprueba dónde estás:

`pwd`{{exec}}

Ahora crea un archivo llamado `programa.c`:

`vi programa.c`

Dentro de `vi`:

1. pulsa `i` para entrar en modo inserción;
2. escribe el siguiente programa;
3. pulsa `Esc`;
4. escribe `:wq` y pulsa Enter.

```c
#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Hola. Mi PID es %d\n", getpid());
    return 0;
}
