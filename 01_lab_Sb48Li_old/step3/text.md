## 3. Localizar y examinar documentos

Ya sabe orientarse dentro del árbol de directorios.

El responsable jurídico le pide ahora que localice la documentación
relacionada con el incidente antes de realizar ninguna copia o modificación.

Sitúese en el directorio principal del caso:

```bash
cd ~/caso
```

Examine su contenido:

```bash
ls
```

### Examinar el directorio de documentos

Entre en:

```bash
cd documentos
```

y compruebe qué archivos contiene:

```bash
ls
```

Localice el archivo:

```text
informe_incidente.txt
```

Para mostrar su contenido utilice:

```bash
cat informe_incidente.txt
```

El comando `cat` permite mostrar en el terminal el contenido de un
archivo de texto.

### Examinar los mensajes de correo

Desde `documentos`, acceda directamente al directorio `correo`
mediante una ruta relativa:

```bash
cd ../correo
```

Compruebe qué mensajes contiene:

```bash
ls
```

Lea los dos:

```bash
cat mensaje_01.txt
```

```bash
cat mensaje_02.txt
```

### Preguntas

Después de leer la documentación:

1. ¿Qué mensaje hace referencia al informe del incidente?
2. ¿Qué mensaje indica que se ha descargado un documento?
3. ¿En qué directorio debería buscar ese documento descargado?

Piense las respuestas antes de pulsar **NEXT**.
