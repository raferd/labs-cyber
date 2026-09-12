Respuesta a las preguntas anteriores:

La respuesta de referencia es:

```text
NO PUEDE DETERMINARSE CON LA INFORMACIÓN DISPONIBLE
```

El estado final permite observar que existe:

```text
~/caso/evidencias/borrador_original.txt
```

y que no existe actualmente:

```text
~/caso/temporal/borrador.txt
```

Pero esas dos observaciones no demuestran por sí solas qué secuencia de
órdenes produjo ese resultado.

Durante la práctica utilizamos `mv` para trasladar el archivo y después para
renombrarlo. Sin embargo, si sólo dispusiéramos del estado final, podrían
existir otras secuencias capaces de producir un resultado semejante; por
ejemplo, copiar el archivo, eliminar después el original y cambiar finalmente
el nombre de la copia.

Por tanto, debemos distinguir entre:

```text
estado actual observado
        !=
historia demostrada de las operaciones realizadas
```

Para reconstruir esa historia serían necesarias otras evidencias, como
registros de auditoría, trazas del sistema u otras fuentes que hubieran
registrado las operaciones realizadas.

<br><br>

## Conclusión de esta fase

La primera pregunta del caso era:

> **¿Dónde está la información?**

La práctica ha mostrado que es necesario identificar correctamente archivos,
rutas y operaciones, pero también que **observar el estado actual de un
sistema no permite reconstruir automáticamente toda su historia**.

La siguiente práctica añadirá una nueva cuestión:

> **¿Quién podía hacer qué?**
