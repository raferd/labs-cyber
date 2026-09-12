## 2. ¿Quién puede leer cada documento?

En el paso anterior ha podido comprobar que:

- `marta` pertenece al grupo `juridico`;
- `responsable` pertenece al grupo `juridico`;
- `diego` no pertenece al grupo `juridico`.

Examinemos ahora los documentos del caso.

```bash
ls -l /opt/caso02/documentos
```

Debería observar permisos similares a:

```text
-rw-r----- ... responsable juridico ... informe_interno.txt
-rw-r--r-- ... responsable juridico ... contrato_cliente.txt
```

### Cómo leer los permisos

Tomemos:

```text
-rw-r-----
```

El primer carácter indica el tipo de objeto:

```text
-    archivo ordinario
```

Los nueve caracteres siguientes se dividen en tres grupos:

```text
rw-   r--   ---
 |     |     |
 |     |     +-- otros usuarios
 |     +-------- grupo
 +-------------- propietario
```

Las letras significan:

```text
r    lectura
w    escritura
x    ejecución
-    permiso no concedido
```

Por tanto, `-rw-r-----` indica que el propietario puede leer y escribir,
los miembros del grupo pueden leer y el resto de usuarios no tienen acceso
al contenido.

### Comprobar el acceso en la práctica

Como estamos dentro de un laboratorio y disponemos de privilegios
administrativos, podemos ejecutar un comando como si lo realizara otro
usuario.

```bash
su -c "cat /opt/caso02/documentos/informe_interno.txt" marta
```

El contenido debería mostrarse.

```bash
su -c "cat /opt/caso02/documentos/informe_interno.txt" diego
```

Debería obtener un mensaje similar a `Permission denied`.

Ahora pruebe:

```bash
su -c "cat /opt/caso02/documentos/contrato_cliente.txt" diego
```

### Pregunta

`diego` no pertenece al grupo `juridico`.

¿Por qué puede, sin embargo, leer `contrato_cliente.txt`?

¿Qué diferencia observa entre `-rw-r-----` y `-rw-r--r--`?

Piense la respuesta antes de pulsar **NEXT**.
