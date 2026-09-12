## 4. Crear un espacio de trabajo y copiar documentos

Antes de continuar, compruebe las respuestas de la actividad anterior:

- `mensaje_01.txt` hace referencia al informe del incidente.
- `mensaje_02.txt` indica que se ha descargado un documento.
- Ese documento debe buscarse en el directorio `descargas`.

### Trabajar sobre copias

El responsable jurídico le indica que no quiere trabajar directamente
sobre los documentos originales.

Cree un directorio llamado:

```text
evidencias
```

dentro del directorio principal del caso.

Sitúese primero en:

```bash
cd ~/caso
```

y cree el directorio:

```bash
mkdir evidencias
```

Compruebe que aparece:

```bash
ls
```

### Copiar el informe del incidente

Copie el informe al nuevo directorio:

```bash
cp documentos/informe_incidente.txt evidencias/
```

La orden `cp` crea una **copia** del archivo.

Compruebe el contenido de ambos directorios:

```bash
ls documentos
```

```bash
ls evidencias
```

Observe que `informe_incidente.txt` aparece ahora en los dos lugares.

### Copiar el documento descargado

Examine primero el contenido del directorio de descargas:

```bash
ls descargas
```

Lea el documento:

```bash
cat descargas/documento_recibido.txt
```

Cópielo también al directorio de evidencias:

```bash
cp descargas/documento_recibido.txt evidencias/
```

Compruebe finalmente:

```bash
ls evidencias
```

Deberían aparecer:

```text
informe_incidente.txt
documento_recibido.txt
```

### Idea importante

`cp` crea una copia.

Por tanto, después de copiar un archivo, el original debe seguir
existiendo en su ubicación inicial.

Pulse **CHECK** para comprobar que ha creado correctamente el directorio
de evidencias y que los archivos se han copiado sin eliminar los originales.
