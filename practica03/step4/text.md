## 4. Crear un servicio de red controlado

La respuesta a las preguntas anteriores es **no**.

Una resolución realizada ahora informa sobre la situación actual del
sistema de nombres.

No demuestra por sí sola qué respuesta se obtuvo en otro momento ni que
posteriormente se produjera una conexión.

Ahora vamos a crear una comunicación cuya existencia conocemos con certeza,
porque nosotros mismos la controlaremos.

---

### Un pequeño servidor web

En el escenario existe el directorio:

```text
/opt/caso03/web
```

que contiene:

```text
aviso.txt
```

Compruébelo:

```bash
cat /opt/caso03/web/aviso.txt
```

Vamos a utilizar Python para crear temporalmente un pequeño servidor HTTP.

Sitúese en:

```bash
cd /opt/caso03/web
```

Ejecute:

```bash
python3 -m http.server 8080 --bind 127.0.0.1 > /opt/caso03/servidor.log 2>&1 &
```

No necesitamos estudiar Python para realizar esta actividad.

En esta orden:

```text
python3 -m http.server     inicia un pequeño servidor HTTP

8080                       indica el puerto utilizado

--bind 127.0.0.1           hace que el servidor atienda únicamente
                           a través de la interfaz local

> servidor.log             guarda la salida normal en un archivo

2>&1                       hace que también los mensajes de error
                           se guarden en ese mismo archivo

&                          deja el servidor ejecutándose en segundo plano
```

Lo importante para nosotros es que estamos iniciando un servidor HTTP
que escucha únicamente en:

```text
127.0.0.1
```

y utiliza el puerto:

```text
8080
```

Como vimos en la práctica anterior, la shell conserva en:

```text
$!
```

el PID del último proceso iniciado en segundo plano.

Guárdelo:

```bash
echo $! > /opt/caso03/servidor.pid
```

Compruebe el número:

```bash
cat /opt/caso03/servidor.pid
```

Pulse **CHECK** para comprobar que el servidor está realmente ejecutándose
y escuchando en el puerto 8080.
