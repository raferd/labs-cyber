Respuesta a las preguntas anteriores:

1. El recurso se denomina `clientes-pvc`.

2. No. `/datos/clientes` es la ruta desde la que la aplicación ve los datos
   dentro de su entorno de ejecución. La arquitectura indica que ese
   directorio utiliza almacenamiento persistente independiente del Pod.

3. No. Precisamente la finalidad del almacenamiento persistente es que los
   datos no dependan de la vida de un Pod concreto.

Esto muestra una distinción esencial:

```text
lugar desde el que una aplicación VE un dato
              !=
recurso en el que el dato PERSISTE
```

<br><br>

## 4. Misión 3: el elemento que desapareció

Ahora debe reconstruir lo sucedido entre las 10:15 y las 10:22.

El archivo:

```text
/opt/caso04/expediente/cronologia.log
```

contiene una pequeña cronología del incidente.

Primero puede examinarlo completo.

Después localice únicamente las líneas relacionadas con:

```text
portal-7bd96
```

y guárdelas en:

```text
/opt/caso04/trabajo/pod_afectado.txt
```

### Pista

Puede utilizar de nuevo la forma básica:

```text
grep "texto_a_buscar" archivo
```

y redirigir el resultado con `>`.

No se proporciona la orden completa.

### Preguntas

1. ¿En qué nodo estaba ejecutándose `portal-7bd96` a las 10:15?

2. ¿Qué le ocurre a ese Pod a partir de las 10:18?

3. ¿Qué nuevo Pod aparece y en qué nodo?

4. Cuando comienza la revisión a las 10:22, ¿podemos suponer que el entorno
   de ejecución original continúa siendo el mismo?

Pulse **CHECK** cuando haya guardado correctamente las líneas del Pod
afectado.
