## 5. De un programa a un proceso

Hasta ahora hemos trabajado con archivos.

Pero durante un incidente también puede ser importante saber qué programas están ejecutándose.

Vamos a crear un programa muy pequeño para observar la diferencia entre un programa almacenado en un archivo y un proceso que se está ejecutando.

### Crear el programa

```bash
cd /opt/caso02/procesos
vi proceso.c
```

Introduzca exactamente este programa:

```c
#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Proceso de prueba iniciado. PID=%d\n", (int)getpid());
    fflush(stdout);

    sleep(300);

    return 0;
}
```

Guarde el archivo y salga de `vi`.

El programa muestra su propio PID y permanece ejecutándose durante unos minutos gracias a `sleep(300)`.

### Compilar

```bash
gcc proceso.c -o proceso
ls -l
```

`proceso.c` contiene el código fuente. `proceso` es el programa ejecutable obtenido mediante la compilación.

### Ejecutarlo en segundo plano

```bash
./proceso &
```

El símbolo `&` hace que el programa se ejecute en segundo plano y permite recuperar el terminal.

Guarde el PID del último proceso iniciado en segundo plano:

```bash
echo $! > proceso.pid
cat proceso.pid
```

`$!` contiene el PID del último proceso iniciado en segundo plano desde este terminal.

### Idea importante

Un **programa** es un archivo que contiene instrucciones ejecutables.

Cuando ese programa está ejecutándose, existe un **proceso**.

El sistema asigna a cada proceso un identificador denominado `PID`.

Pulse **CHECK** para comprobar que el programa se ha creado, se ha compilado y continúa ejecutándose.
