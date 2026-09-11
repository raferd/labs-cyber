## 3. De los nombres a las direcciones IP

Las respuestas del paso anterior son:

```text
443     asociado habitualmente a HTTPS

53      asociado habitualmente a DNS

22      asociado habitualmente a SSH
```

Sin embargo, el número de puerto por sí solo no demuestra qué aplicación
se utilizó realmente ni qué contenido se transmitió.

Es un dato técnico que debe interpretarse junto con otras evidencias.

---

### ¿Por qué utilizamos nombres?

Normalmente no escribimos una dirección IP para acceder a un servicio.

Utilizamos nombres como:

```text
example.com
```

El sistema necesita resolver ese nombre a una o varias direcciones IP.

Pruebe:

```bash
getent hosts example.com
```

El comando anterior pregunta al propio sistema operativo qué direcciones
tiene asociadas al nombre `example.com`, utilizando los mecanismos de
resolución que tenga configurados.

En un equipo normal conectado a Internet, DNS suele intervenir en esa
resolución.

No utilizamos aquí `getent` para estudiar el funcionamiento interno de DNS,
sino para observar el resultado que recibe una aplicación del sistema.

La salida puede contener una o varias direcciones IPv4 o IPv6.

Los resultados concretos pueden cambiar con el tiempo.

### Pregunta importante

Suponga que hoy:

```bash
getent hosts example.com
```

devuelve una determinada dirección IP.

¿Permite eso afirmar que el mismo nombre resolvía necesariamente a esa
misma dirección hace seis meses?

¿Permite además afirmar que este equipo llegó realmente a conectarse
con ella?

Piense las respuestas antes de pulsar **NEXT**.
