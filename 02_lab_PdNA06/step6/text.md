## 6. Examinar y finalizar un proceso

En el paso anterior hemos dejado un programa ejecutándose en segundo plano.

Sabemos además cuál es su PID porque lo hemos guardado en:

```text
proceso.pid
```

Sitúese en:

```bash
cd /opt/caso02/procesos
```

Compruebe nuevamente el PID:

```bash
cat proceso.pid
```

---

### Ver los procesos del sistema

Linux proporciona el comando:

```bash
ps
```

Su nombre procede de:

```text
process status
```

y permite obtener información sobre los **procesos que existen en el sistema
en el momento en que ejecutamos la orden**.

Pruebe primero:

```bash
ps
```

Verá varios procesos asociados al terminal actual.

La información mostrada puede incluir columnas como:

```text
PID       identificador del proceso

TTY       terminal asociado

TIME      tiempo de CPU utilizado

CMD       comando o programa
```

Pero nosotros queremos examinar específicamente el proceso que hemos creado.

---

### Buscar nuestro proceso mediante su PID

Podríamos escribir directamente un número, por ejemplo:

```bash
ps -p 2876
```

si `2876` fuese nuestro PID.

Como hemos guardado el número en `proceso.pid`, podemos hacer que la shell
lea automáticamente ese archivo:

```bash
cat proceso.pid
```

y utilizar su contenido dentro del comando:

```bash
ps -p "$(cat proceso.pid)"
```

La expresión:

```text
$(cat proceso.pid)
```

significa:

> ejecute `cat proceso.pid` y utilice su resultado en este lugar de la orden.

Por ejemplo, si el archivo contiene:

```text
2876
```

la shell terminará ejecutando algo equivalente a:

```bash
ps -p 2876
```

---

### Elegir la información que queremos ver

Vamos a pedir a `ps` tres datos concretos:

```bash
ps -p "$(cat proceso.pid)" -o pid,user,cmd
```

La opción:

```text
-p
```

indica qué PID queremos consultar.

La opción:

```text
-o
```

permite especificar qué columnas queremos mostrar.

En este caso:

```text
pid     identificador del proceso

user    usuario bajo cuya identidad se está ejecutando

cmd     orden o programa asociado al proceso
```

La salida será parecida a:

```text
PID     USER     CMD
2876    root     ./proceso
```

El número concreto de PID será diferente.

### ¿Qué podemos afirmar?

En este momento podemos afirmar que existe un proceso con ese PID
ejecutando nuestro programa.

Pero `ps` proporciona una **fotografía del estado actual**.

No constituye por sí solo un historial de lo que ocurrió anteriormente.

---

### Finalizar el proceso

El proceso sigue esperando debido a:

```c
sleep(300);
```

No necesitamos esperar cinco minutos.

Podemos solicitar su finalización mediante:

```bash
kill "$(cat proceso.pid)"
```

El comando:

```text
kill
```

envía una señal al proceso indicado por su PID.

Sin indicar ninguna otra opción, `kill` envía normalmente la señal
`SIGTERM`, que solicita al proceso que termine.

En nuestro sencillo programa, eso provoca su finalización.

---

### ¿Para qué utilizamos `wait`?

Ejecutamos el programa anteriormente con:

```bash
./proceso &
```

por lo que quedó ejecutándose en segundo plano como un proceso iniciado
desde nuestra shell.

Después de enviarle `kill`, utilizaremos:

```bash
wait "$(cat proceso.pid)" 2>/dev/null
```

El comando:

```text
wait
```

hace que la shell espere hasta que ese proceso haya terminado por completo.

En esta práctica lo utilizamos para asegurarnos de que la finalización se ha
completado antes de realizar la siguiente comprobación.

No es `wait` quien termina el proceso.

La secuencia es:

```text
kill
  |
  +-- solicita al proceso que termine

wait
  |
  +-- espera a que esa terminación se haya completado
```

La parte:

```text
2>/dev/null
```

evita mostrar un posible mensaje auxiliar de la shell que no resulta
relevante para esta práctica.

---

### Comprobar que ya no está ejecutándose

Ejecute:

```bash
ps -p "$(cat proceso.pid)" -o pid,user,cmd
```

Ahora el proceso ya no debería aparecer.

Esto significa que ese PID ya no identifica a nuestro proceso en ejecución.

---

### ¿Ha desaparecido también el programa?

Compruebe:

```bash
ls -l
```

El archivo:

```text
proceso
```

sigue existiendo.

Por tanto, debemos distinguir:

```text
programa
    archivo ejecutable almacenado en el sistema

proceso
    ejecución concreta de ese programa
```

Finalizar un proceso no significa eliminar el programa.

---

### Pregunta

Si hoy ejecutamos:

```bash
ps
```

y observamos los procesos presentes en ese momento,

¿podemos afirmar únicamente con esa información qué procesos estaban
ejecutándose ayer a las 10:00?

Piense la respuesta antes de pulsar **CHECK**.

Pulse **CHECK** para comprobar que el proceso de prueba ha terminado.
