## 2. Interpretar un registro de comunicaciones

El equipo técnico proporciona un pequeño extracto del registro relacionado
con el incidente.

Muéstrelo:

```bash
cat /opt/caso03/registros/conexiones.log
```

Las direcciones IP que aparecen en este registro son datos simulados
preparados para la práctica.

Encontrará líneas como:

```text
2026-09-11T09:14:02Z TCP 10.10.0.24:52318 -> 203.0.113.25:443
```

En cada línea aparecen varios datos relacionados con una comunicación.

### Marca temporal

El primer dato:

```text
2026-09-11T09:14:02Z
```

indica el momento en que se registra el evento.

Podemos interpretarlo como:

```text
2026-09-11     fecha

09:14:02       hora

Z              hora expresada en UTC
```

La letra `Z` indica que la hora está expresada en **UTC**
(*Coordinated Universal Time*).

En un análisis real es importante conocer la referencia temporal utilizada
por los registros antes de comparar acontecimientos procedentes de
distintos sistemas.

### Origen y destino

En este registro, la flecha:

```text
->
```

indica que la comunicación se representa desde el **origen** hacia el
**destino**.

Por ejemplo:

```text
TCP 10.10.0.24:52318 -> 203.0.113.25:443
```

puede separarse en:

```text
TCP

10.10.0.24
52318

203.0.113.25
443
```

### Dirección IP y puerto

En:

```text
10.10.0.24:52318
```

tenemos:

```text
10.10.0.24     dirección IP

52318          número de puerto
```

Lo mismo ocurre con:

```text
203.0.113.25:443
```

Una dirección IP identifica una interfaz o punto de comunicación
dentro del contexto de una red IP.

El número de puerto permite identificar un extremo de comunicación
asociado normalmente a una aplicación o servicio.

### Puertos conocidos

Algunos números de puerto se utilizan habitualmente para determinados
servicios.

Por ejemplo:

```text
22      SSH

53      DNS

80      HTTP

443     HTTPS
```

Observe ahora las tres comunicaciones del registro y utilice toda la
información disponible para responder a las preguntas.

### Preguntas

1. ¿A qué hora se registra la comunicación dirigida al puerto `22`,
   habitualmente asociado a SSH, y cuál es la dirección IP de destino?

2. ¿Qué comunicación puede relacionarse con DNS por su puerto de destino?
   Indique la hora, el protocolo de transporte utilizado y la dirección IP
   de destino.

3. Entre la comunicación dirigida al puerto `443` y la dirigida al puerto
   `53`, ¿cuál se registra primero y cuántos segundos transcurren entre ambas?

4. Si observamos una comunicación dirigida al puerto `443`,
   ¿podemos afirmar únicamente con ese dato que se utilizó HTTPS y conocer
   qué contenido se transmitió?

Piense las respuestas antes de pulsar **NEXT**.
