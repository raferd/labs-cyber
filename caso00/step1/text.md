## Crear, compilar y ejecutar un programa en un entorno Linux

En esta actividad comprobaremos que puedes utilizar el terminal,
editar un archivo, compilar un programa y ejecutarlo.

### 1. Comprobar el entorno

Ejecuta:

```bash
pwd
```

Comprueba que el compilador de C está disponible:

```bash
gcc --version
```

### 2. Crear el programa

Vamos a crear un programa muy sencillo escrito en lenguaje C.

Ejecuta:

```bash
vi programa.c
```

Dentro de `vi`:

1. Pulsa `i` para entrar en modo inserción.
2. Escribe el siguiente programa:

```c
#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Hola. Mi PID es %d\n", (int)getpid());
    return 0;
}
```

3. Pulsa `Esc`.
4. Escribe:

```text
:wq
```

5. Pulsa `Enter`.

Has creado un archivo llamado `programa.c` que contiene el
**código fuente** del programa.

### 3. Compilar el programa

El archivo `programa.c` todavía no es un programa ejecutable.

Utiliza el compilador `gcc`:

```bash
gcc programa.c -o programa
```

Si no aparece ningún mensaje de error, la compilación ha terminado
correctamente.

Comprueba los archivos existentes haciendo un listado (ls) del contenido del subdirectorio:

```bash
ls -l
```

Ahora deberían aparecer, entre otros:

```text
programa.c
programa
```

- `programa.c` contiene el código fuente.
- `programa` es el archivo ejecutable generado por el compilador.

### 4. Ejecutar el programa

Ejecuta:

```bash
./programa
```

Deberías obtener un resultado parecido a:

```text
Hola. Mi PID es 1234
```

El número será diferente en cada ejecución.

El **PID** (*Process Identifier*) es el número que utiliza el sistema
operativo para identificar un proceso.

### 5. Finalizar la comprobación

Cuando hayas conseguido crear, compilar y ejecutar el programa,
pulsa **CHECK**.
