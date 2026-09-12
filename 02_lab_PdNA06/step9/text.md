Respuesta a las preguntas anteriores:

La respuesta de referencia es:

```text
NO PUEDE DETERMINARSE CON LA INFORMACIÓN DISPONIBLE
```

Los permisos actuales muestran qué operaciones permite el sistema **ahora**.
No indican por sí solos si Diego accedió al contrato antes de que se
corrigieran esos permisos.

El hash actual puede comprobarse frente al valor de referencia que guardamos.
Si coincide, proporciona una comprobación muy fuerte de que el contenido
actual coincide con el contenido del momento en que se calculó esa referencia.
Pero no reconstruye automáticamente toda la historia anterior del documento,
ni identifica quién pudo utilizarlo o modificarlo.

Del mismo modo, `ps` muestra los procesos existentes cuando realizamos la
consulta. Que un proceso no aparezca ahora no demuestra que no se ejecutara
en otro momento.

Por tanto, debemos distinguir:

```text
capacidad actual
        !=
acción histórica demostrada

estado actual del contenido
        !=
historia completa del archivo

procesos observados ahora
        !=
historial de ejecución
```

Para reconstruir acciones anteriores serían necesarias otras evidencias,
como registros de auditoría, registros de acceso, telemetría del sistema u
otras fuentes que hubieran conservado información sobre lo sucedido.

<br><br>

## Conclusión de esta fase

La segunda pregunta del caso era:

> **¿Quién podía hacer qué?**

La práctica ha mostrado que una capacidad técnica, un estado actual o una
comprobación de integridad no deben confundirse con una reconstrucción
completa de las acciones realizadas en el pasado.

La siguiente práctica añadirá una nueva cuestión:

> **¿Con quién se comunicaba el equipo?**
