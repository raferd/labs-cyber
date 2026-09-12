## 9. Cierre del caso

Durante esta primera parte de la investigación ha trabajado con uno de los
elementos más básicos de cualquier sistema informático: los archivos.

Pero incluso una operación aparentemente sencilla, como localizar un
documento, exige distinguir correctamente:

```text
nombre del archivo

ruta en la que se encuentra

contenido

y operaciones realizadas sobre él
```

En el expediente existían, por ejemplo, archivos con el mismo nombre en
directorios diferentes.

Por tanto:

```text
nombre de archivo
        !=
identificación inequívoca del archivo
```

### Qué debe conservar de esta práctica

**Directorio**

Es una estructura que permite organizar archivos y otros directorios.

**Ruta**

Indica la localización de un archivo o directorio dentro del sistema de
archivos.

Una ruta puede ser absoluta o relativa al directorio en el que se encuentra
el usuario.

**Nombre de archivo**

Permite identificar un archivo dentro de un determinado directorio, pero el
mismo nombre puede existir en lugares diferentes.

**Copiar**

Crea otro archivo conservando el original.

**Mover**

Cambia la localización de un archivo y también puede utilizarse para
renombrarlo.

**Eliminar**

Hace desaparecer una entrada del sistema de archivos mediante las
herramientas utilizadas en esta práctica. Esto no debe confundirse, en un
análisis forense real, con demostrar que los datos sean necesariamente
irrecuperables del soporte físico.

### Fortalezas y límites de lo observado

Con herramientas como `pwd`, `ls`, `cd` y `cat` podemos conocer la
organización actual del sistema de archivos y examinar documentos.

Podemos copiar, mover o crear archivos y comprobar posteriormente el
resultado de esas operaciones.

Pero observar hoy un archivo no permite conocer automáticamente toda su
historia.

Por ejemplo:

```text
archivo encontrado
        !=
autor identificado

nombre conocido
        !=
ruta conocida

archivo presente ahora
        !=
prueba de que siempre estuvo allí
```

Para responder a preguntas históricas serían necesarias otras evidencias.

### Una regla útil para futuras situaciones

Ante una afirmación como:

> «Hemos encontrado `resumen.txt`.»

conviene preguntar:

```text
¿En qué ruta?

¿Existen otros archivos con el mismo nombre?

¿Qué contiene?

¿De dónde procede?

¿Se trata del original o de una copia?

¿Qué evidencia permite relacionarlo con el expediente?
```

Encontrar información es sólo el primer paso.

Antes de atribuirle significado debemos asegurarnos de que sabemos
**qué objeto digital estamos observando realmente**.

Pulse **NEXT** para responder a la pregunta final de esta parte del caso.
