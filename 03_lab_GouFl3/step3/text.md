Antes de continuar, compruebe sus respuestas.

Respuesta a las preguntas anteriores:

**1. Comunicación dirigida al puerto 22**

En el registro aparece:

```text
2026-09-11T09:15:11Z TCP 10.10.0.24:52344 -> 198.51.100.42:22
```

Por tanto:

```text
hora             09:15:11Z
IP de destino    198.51.100.42
puerto destino   22
protocolo        TCP
```

El puerto `22` está habitualmente asociado a SSH, aunque el número de
puerto por sí solo no demuestra que el tráfico corresponda realmente a SSH.

---

**2. Comunicación relacionada con DNS**

La línea correspondiente es:

```text
2026-09-11T09:14:05Z UDP 10.10.0.24:53120 -> 192.0.2.53:53
```

Por tanto:

```text
hora             09:14:05Z
protocolo        UDP
IP de destino    192.0.2.53
puerto destino   53
```

El puerto `53` se utiliza habitualmente para DNS.

---

**3. Orden temporal**

La comunicación dirigida al puerto `443` se registra a:

```text
09:14:02Z
```

y la dirigida al puerto `53` a:

```text
09:14:05Z
```

Por tanto, la comunicación hacia el puerto `443` aparece primero y entre
ambas transcurren:

```text
3 segundos
```
---

**4. ¿El puerto 443 demuestra que se utilizó HTTPS?**

No.

El puerto `443` está asociado habitualmente a HTTPS, por lo que constituye
un indicio útil para interpretar la comunicación.

Sin embargo, el número de puerto por sí solo no demuestra qué protocolo de
aplicación se utilizó realmente ni permite conocer el contenido transmitido.

Es necesario interpretar ese dato junto con otras evidencias.

<br><br>
---

## 3. De los nombres a las direcciones IP

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
