## 3. Corregir un permiso excesivo

El problema del paso anterior está en los últimos tres caracteres:

```text
-rw-r--r--
       ^^^
```

El último `r--` indica que **cualquier otro usuario del sistema puede leer el archivo**.

Por eso `diego` podía acceder a `contrato_cliente.txt`, aunque no perteneciese al grupo `juridico`.

El equipo decide que el contrato debe poder ser leído únicamente por su propietario y los miembros del grupo `juridico`.

### Cambiar los permisos

```bash
chmod 640 /opt/caso02/documentos/contrato_cliente.txt
```

En esta notación:

```text
6 = lectura + escritura
4 = lectura
0 = ningún permiso
```

Por tanto, `640` significa:

```text
propietario     lectura y escritura
grupo           lectura
otros           ningún permiso
```

Compruebe el resultado:

```bash
ls -l /opt/caso02/documentos/contrato_cliente.txt
```

Pruebe de nuevo:

```bash
su -c "cat /opt/caso02/documentos/contrato_cliente.txt" marta
```

```bash
su -c "cat /opt/caso02/documentos/contrato_cliente.txt" diego
```

Ahora `diego` debería recibir `Permission denied`.

### Pregunta

¿Permite este dato afirmar que `diego` nunca llegó a leer el contrato antes de que corrigiéramos los permisos?

Piense la respuesta.

Pulse **CHECK** para comprobar que los permisos han quedado correctamente configurados.
