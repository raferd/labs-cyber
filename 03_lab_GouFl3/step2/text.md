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
TCP 10.10.0.24:52318 -> 203.0.113.25:443
```

En este registro, la flecha:

```text
->
```

indica que la comunicación se representa desde el **origen** hacia el
**destino**.

Podemos separar varios elementos:

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

Observe las tres comunicaciones del registro.

### Preguntas

1. ¿Qué comunicación tiene como destino el puerto `443`?
2. ¿Qué comunicación tiene como destino el puerto `53`?
3. ¿Qué comunicación tiene como destino el puerto `22`?
4. ¿Permite observar el puerto `443` afirmar con absoluta certeza qué
   contenido se transmitió?

Piense las respuestas antes de pulsar **NEXT**.
