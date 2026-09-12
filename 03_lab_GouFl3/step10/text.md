Respuesta a las preguntas anteriores:

La respuesta de referencia es:

```text
NO PUEDE DETERMINARSE CON LA INFORMACIÓN DISPONIBLE
```

El registro histórico permite observar una comunicación TCP desde un extremo
hacia la dirección IP `203.0.113.25` y el puerto `443`.

El puerto `443` está habitualmente asociado a HTTPS, por lo que constituye un
indicio útil. Pero el número de puerto, por sí solo, no demuestra qué
protocolo de aplicación se utilizó realmente.

La consulta DNS realizada meses después tampoco demuestra que ese nombre
resolviera a la misma dirección IP en el momento del incidente. Las
asociaciones entre nombres y direcciones pueden cambiar con el tiempo.

Además, ninguna de esas dos evidencias identifica por sí sola a la persona
física que utilizaba el equipo ni permite conocer el contenido concreto de
la comunicación.

Por tanto:

```text
puerto habitual
        !=
protocolo históricamente demostrado

resolución DNS actual
        !=
resolución DNS histórica demostrada

IP de un equipo
        !=
persona física identificada
```

Para llegar más lejos serían necesarias otras fuentes adecuadas al caso,
como registros históricos de DNS cuando existan, registros de servidor,
proxy o aplicación, información del cliente y una correcta correlación
temporal entre las distintas evidencias.

<br><br>

## Conclusión de esta fase

La tercera pregunta del caso era:

> **¿Con quién se comunicaba el equipo?**

La práctica ha mostrado que una comunicación puede quedar técnicamente
registrada sin que ese único dato permita reconstruir automáticamente el
servicio utilizado, el contenido intercambiado o la identidad de la persona
que estaba detrás del equipo.

La última fase del caso planteará una pregunta diferente:

> **¿Dónde están realmente la aplicación y los datos?**
