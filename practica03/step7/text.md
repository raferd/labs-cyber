## 7. Finalizar el servicio

Ya no necesitamos mantener el servidor ejecutándose.

El PID se encuentra guardado en:

```text
/opt/caso03/servidor.pid
```

Compruébelo:

```bash
cat /opt/caso03/servidor.pid
```

Como vimos en la práctica anterior, podemos solicitar la terminación
del proceso utilizando su PID:

```bash
kill "$(cat /opt/caso03/servidor.pid)"
```

También podemos esperar a que la shell confirme que el proceso
ha terminado por completo:

```bash
wait "$(cat /opt/caso03/servidor.pid)" 2>/dev/null
```

Compruebe ahora:

```bash
ss -ltnp | grep ':8080'
```

No debería aparecer nuestro servidor.

### Pregunta

Durante la práctica hemos podido demostrar que:

- existió un servicio en `127.0.0.1:8080`;
- realizamos una petición;
- recibimos un documento;
- y el servidor registró esa petición.

Suponga ahora que, en un expediente real, sólo dispusiéramos de una línea:

```text
203.0.113.25:443
```

¿sería suficiente para afirmar:

1. quién era la persona que estaba utilizando el equipo;
2. qué página concreta visitó;
3. qué información transmitió;
4. o qué intención tenía?

Piense la respuesta antes de pulsar **CHECK**.

Pulse **CHECK** para verificar que el servidor ha terminado.
