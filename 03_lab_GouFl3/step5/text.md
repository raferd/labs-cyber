## 5. ¿Qué significa que un puerto esté escuchando?

Sabemos que hemos iniciado un servidor en el puerto:

```text
8080
```

Ahora vamos a comprobar cómo lo representa el sistema operativo.

Ejecute:

```bash
ss -ltnp
```

`ss` permite consultar información sobre sockets y comunicaciones
de red existentes en el sistema.

Las opciones utilizadas significan:

```text
-l     mostrar sockets que están escuchando

-t     mostrar TCP

-n     mostrar direcciones y puertos numéricamente

-p     mostrar información del proceso asociado
```

Busque una línea que contenga:

```text
127.0.0.1:8080
```

Puede simplificar la búsqueda mediante:

```bash
ss -ltnp | grep ':8080'
```

Esta orden introduce dos elementos nuevos.

`grep` permite seleccionar las líneas que contienen un determinado texto.

Por ejemplo:

```bash
grep ':8080'
```

selecciona las líneas que contienen `:8080`.

El símbolo:

```text
|
```

se denomina **tubería** (*pipe*).

Hace que la salida de la orden situada a su izquierda se utilice como
entrada de la orden situada a su derecha.

Por tanto:

```bash
ss -ltnp | grep ':8080'
```

significa:

1. obtener la información de los sockets TCP en escucha;
2. conservar únicamente las líneas relacionadas con el puerto 8080.

Debería observar información similar a:

```text
LISTEN ... 127.0.0.1:8080 ...
```

### ¿Qué significa `LISTEN`?

Significa que existe un proceso esperando posibles conexiones TCP
en ese puerto.

Eso no significa que exista necesariamente una conexión activa
con un cliente en ese instante.

Es la diferencia entre:

```text
un servicio disponible para recibir conexiones
```

y:

```text
una conexión efectivamente establecida
```

### Guardar la observación

En un análisis puede resultar útil conservar la salida obtenida.

Ejecute:

```bash
ss -ltnp | grep ':8080' > /opt/caso03/trabajo/puerto_8080.txt
```

Compruébela:

```bash
cat /opt/caso03/trabajo/puerto_8080.txt
```

Pulse **CHECK**.
