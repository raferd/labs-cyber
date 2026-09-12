## 5. De un programa a un proceso

Hasta ahora hemos trabajado fundamentalmente con archivos.

Pero durante el análisis de un sistema también puede ser importante saber
qué programas se están ejecutando.

Vamos a crear un programa muy pequeño para observar la diferencia entre:

```text
un programa almacenado en un archivo
```

y:

```text
un proceso que se está ejecutando
```

### Crear el programa

Sitúese en:

```bash
cd /opt/caso02/procesos
```

Abra un archivo utilizando `vi`:

```bash
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

### ¿Qué hace este programa?

La función:

```c
getpid()
```

obtiene el **PID** del proceso que está ejecutando el programa.

PID significa:

```text
Process Identifier
```

es decir, **identificador de proceso**.

El sistema operativo asigna un PID a cada proceso para poder distinguirlo
de los demás.

La instrucción:

```c
sleep(300);
```

hace que el proceso permanezca esperando durante 300 segundos.

La utilizamos únicamente para disponer de tiempo suficiente para observar
el proceso antes de que termine.

---

### Compilar el programa

Ejecute:

```bash
gcc proceso.c -o proceso
```

Compruebe el resultado:

```bash
ls -l
```

Debería encontrar dos archivos:

```text
proceso.c
proceso
```

No son lo mismo.

```text
proceso.c    código fuente escrito en C

proceso      programa ejecutable obtenido después de compilar
```

---

### Ejecutar el programa

Si ejecutásemos:

```bash
./proceso
```

el programa ocuparía el terminal durante 300 segundos.

Queremos poder seguir utilizando el terminal mientras el programa continúa
ejecutándose.

Por ello añadiremos:

```text
&
```

al final de la orden:

```bash
./proceso &
```

El símbolo `&` indica a la shell que ejecute el programa **en segundo plano**.

Así recuperamos inmediatamente el terminal mientras el proceso continúa
ejecutándose.

El programa mostrará una línea parecida a:

```text
Proceso de prueba iniciado. PID=1234
```

El número será diferente en cada ejecución.

Por ejemplo, si aparece:

```text
PID=1234
```

significa que el sistema ha asignado a ese proceso el identificador:

```text
1234
```

---

### Guardar el PID

Vamos a guardar ese número porque lo necesitaremos en el siguiente paso.

Si el PID mostrado fuese, por ejemplo:

```text
1234
```

ejecutaríamos:

```bash
echo 1234 > proceso.pid
```

**Sustituya `1234` por el PID que haya aparecido en su terminal.**

Por ejemplo, si su programa muestra:

```text
Proceso de prueba iniciado. PID=2876
```

deberá escribir:

```bash
echo 2876 > proceso.pid
```

Compruebe el contenido:

```bash
cat proceso.pid
```

El archivo debe contener únicamente el número del proceso.

### ¿Qué hemos hecho?

La orden:

```bash
echo 2876
```

mostraría simplemente:

```text
2876
```

en el terminal.

Al añadir:

```text
> proceso.pid
```

redirigimos ese texto hacia el archivo.

Es el mismo mecanismo de redirección que utilizamos en la práctica anterior.

---

### Una comodidad de la shell

La shell dispone además de una variable especial:

```text
$!
```

que contiene el PID del último proceso que hemos iniciado en segundo plano.

Por tanto, también podríamos haber escrito:

```bash
echo $! > proceso.pid
```

Pero no necesitamos utilizar esa abreviatura en esta práctica.

Lo importante es comprender que `proceso.pid` contiene simplemente
**un número que identifica al proceso que acabamos de iniciar**.

---

### Idea importante

Distinga los tres elementos:

```text
proceso.c       código fuente

proceso         programa ejecutable

PID 2876        identifica una ejecución concreta de ese programa
```

Un mismo programa podría ejecutarse varias veces simultáneamente.

Cada ejecución sería un proceso diferente y tendría su propio PID.

Pulse **CHECK** para comprobar que:

- ha creado el código fuente;
- lo ha compilado;
- ha iniciado el programa;
- ha guardado correctamente su PID;
- y el proceso continúa ejecutándose.
