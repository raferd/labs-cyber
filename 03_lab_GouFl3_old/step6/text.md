## 6. Realizar una comunicación real

Hasta ahora sólo sabemos que existe un servidor esperando conexiones.

Vamos a actuar ahora como cliente.

Ejecute:

```bash
curl http://127.0.0.1:8080/aviso.txt
```

`curl` permite realizar comunicaciones con diferentes tipos de servicios.

En este caso estamos realizando una petición HTTP.

Podemos descomponer la dirección utilizada así:

```text
http://127.0.0.1:8080/aviso.txt
 \__/  \_______/ \__/ \________/
  |        |       |       |
 HTTP      IP    puerto   recurso
```

Estamos solicitando mediante HTTP el recurso:

```text
aviso.txt
```

al servidor situado en:

```text
127.0.0.1
```

y puerto:

```text
8080
```

Debería aparecer en el terminal el contenido del documento.

---

### Guardar el resultado

Repita la petición, pero guarde la respuesta:

```bash
curl -s http://127.0.0.1:8080/aviso.txt -o /opt/caso03/trabajo/respuesta.txt
```

Las opciones utilizadas son:

```text
-s     evita información auxiliar de progreso

-o     guarda la respuesta en el archivo indicado
```

Compruebe:

```bash
cat /opt/caso03/trabajo/respuesta.txt
```

---

### ¿Ha quedado alguna huella?

El pequeño servidor web que hemos creado registra las peticiones recibidas.

Examine:

```bash
cat /opt/caso03/servidor.log
```

Debería encontrar una petición relacionada con:

```text
GET /aviso.txt
```

La palabra:

```text
GET
```

es el método HTTP utilizado por el cliente para solicitar el recurso.

Por eso:

```text
GET /aviso.txt
```

indica que el servidor recibió una petición para obtener ese recurso.

En este caso sabemos con certeza por qué existe esa entrada:

```text
hemos iniciado el servidor

hemos realizado la petición

hemos obtenido la respuesta

el servidor ha registrado la solicitud
```

Pulse **CHECK** para comprobar que la comunicación se realizó y que
se obtuvo correctamente el documento.
