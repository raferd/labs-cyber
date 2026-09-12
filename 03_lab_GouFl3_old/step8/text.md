## 8. Cierre del caso

La respuesta a las preguntas anteriores es **No**.

Una dirección IP y un puerto aportan información técnica importante,
pero normalmente no bastan por sí solos para determinar:

- qué persona utilizaba físicamente el equipo;
- qué contenido concreto se transmitió;
- qué acción realizó el usuario;
- ni cuál era su intención.

Serían necesarias otras fuentes de información y una adecuada
correlación temporal y técnica.

---
<br><br>
### Resumen de comandos utilizados

```text
hostname          nombre del equipo

ip                interfaces y direcciones IP

ping              comprobar comunicación IP

getent hosts      resolver nombres

ss                examinar sockets y puertos

grep              seleccionar líneas de texto

curl              realizar una petición a un servicio

kill              terminar el proceso servidor
```

### Resumen de conceptos

#### Dirección IP

Identifica un punto o interfaz de comunicación dentro del contexto
de una red IP.

No identifica automáticamente a una persona.

#### Puerto

Identifica un extremo de comunicación asociado normalmente a una
aplicación o servicio.

El número de puerto puede sugerir qué servicio se está utilizando,
pero no constituye por sí solo prueba suficiente de su contenido.

#### DNS

Permite resolver nombres y obtener información asociada a ellos,
como direcciones IP.

La resolución observada hoy no demuestra necesariamente cuál era
la respuesta en un momento anterior.

#### Servicio y conexión

Que un servicio esté:

```text
LISTEN
```

significa que espera conexiones.

No significa necesariamente que exista en ese instante una conexión
activa con un cliente.

---

En las prácticas realizadas hasta ahora hemos seguido esta cadena:

```text
archivo
   ↓
usuario y permisos
   ↓
programa
   ↓
proceso
   ↓
red
   ↓
IP y puerto
   ↓
servicio
```

