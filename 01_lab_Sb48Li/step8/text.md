## 8. Cierre del caso

Durante esta práctica ha examinado una pequeña parte del sistema de archivos
relacionada con un incidente.

Ha utilizado el terminal para:

```text
pwd       saber en qué directorio se encuentra
ls        examinar el contenido de un directorio
cd        desplazarse por el árbol de directorios
cat       mostrar el contenido de un archivo

mkdir     crear un directorio
cp        copiar archivos

touch     crear un archivo vacío
echo      generar texto
>         escribir sustituyendo el contenido anterior
>>        añadir información al final de un archivo

mv        mover o renombrar archivos
rm        eliminar archivos
```

### Conceptos que debe conservar

Un archivo no queda identificado únicamente por su nombre.

Su **ruta** indica dónde se encuentra dentro del sistema de archivos.

Además, operaciones aparentemente sencillas pueden tener consecuencias
muy diferentes:

```text
cp    conserva el archivo original y crea una copia

mv    cambia la ubicación o el nombre del archivo

rm    elimina el archivo
```

En un contexto relacionado con un incidente de ciberseguridad es importante
saber exactamente:

- qué archivo se está examinando;
- dónde se encuentra;
- y qué operación se está realizando sobre él.

En las siguientes prácticas utilizaremos estas ideas para estudiar
**usuarios, permisos, integridad y procesos**.
