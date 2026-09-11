## 1. Identificar el equipo y sus direcciones

Antes de interpretar comunicaciones externas necesitamos saber cómo
se identifica el propio equipo.

Ejecute:

```bash
hostname
```

`hostname` muestra el nombre asignado al sistema.

Ahora ejecute:

```bash
ip -brief address
```

La orden `ip` permite consultar y configurar diferentes aspectos
de la red.

En este caso:

```text
address
```

solicita información sobre las direcciones asociadas a las interfaces
de red.

La opción:

```text
-brief
```

muestra esa información de forma resumida.

La salida tendrá un aspecto similar a:

```text
lo      UNKNOWN     127.0.0.1/8 ::1/128
eth0    UP          172.x.x.x/...
```

Los nombres concretos y las direcciones pueden ser diferentes.

La salida puede contener además direcciones IPv6 y longitudes de prefijo
como `/8` o `/128`.

No necesitaremos interpretar esos datos en esta práctica. Nos interesa
únicamente identificar las interfaces y las direcciones asociadas a ellas.

### La interfaz `lo`

`lo` significa:

```text
loopback
```

y representa una interfaz especial que permite al sistema comunicarse
consigo mismo.

La dirección IPv4:

```text
127.0.0.1
```

está reservada para ese propósito.

Compruébelo:

```bash
ping -c 2 127.0.0.1
```

`ping` envía mensajes de prueba para comprobar si existe comunicación
IP con el destino.

La opción:

```text
-c 2
```

hace que se envíen únicamente dos intentos.

### Idea importante

Un equipo puede disponer simultáneamente de varias interfaces
y varias direcciones IP.

Por tanto, hablar simplemente de:

```text
"la IP del ordenador"
```

puede resultar demasiado impreciso.

Pulse **NEXT**.
