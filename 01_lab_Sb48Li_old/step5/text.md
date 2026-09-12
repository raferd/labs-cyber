## 5. Crear y modificar un archivo de trabajo

El equipo jurídico quiere dejar constancia de las primeras actuaciones
realizadas durante la revisión del sistema.

Para ello va a crear un archivo de trabajo denominado:

```text
observaciones.txt
```

### Crear un archivo vacío

Sitúese en el directorio principal del caso:

```bash
cd ~/caso
```

Cree el archivo:

```bash
touch observaciones.txt
```

El comando `touch` permite crear un archivo vacío si éste no existe.

Compruebe que aparece en el directorio:

```bash
ls
```

### Escribir la primera observación

Utilice:

```bash
echo "Revisión inicial del expediente" > observaciones.txt
```

Compruebe su contenido:

```bash
cat observaciones.txt
```

Debería aparecer:

```text
Revisión inicial del expediente
```

El símbolo:

```text
>
```

redirige la salida del comando hacia un archivo.

Si el archivo ya contiene información, `>` sustituye su contenido.

### Añadir una segunda observación

Ahora queremos añadir información sin eliminar la anterior.

Ejecute:

```bash
echo "Se ha localizado el informe del incidente." >> observaciones.txt
```

Compruebe de nuevo:

```bash
cat observaciones.txt
```

Ahora debería ver:

```text
Revisión inicial del expediente
Se ha localizado el informe del incidente.
```

El operador:

```text
>>
```

añade la nueva información al final del archivo sin eliminar
el contenido que ya existía.

### Diferencia importante

```text
>    escribe y sustituye el contenido anterior

>>   añade información al final
```

### Pregunta

¿Qué habría ocurrido si en la segunda orden hubiese utilizado `>`
en lugar de `>>`?

Piense la respuesta antes de continuar.

Pulse **CHECK** para comprobar que ha creado correctamente
`observaciones.txt` y que contiene las dos anotaciones.
