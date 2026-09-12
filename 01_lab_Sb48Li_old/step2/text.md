## 2. Compruebe su respuesta

No. El nombre `resumen.txt` no identifica por sí solo un archivo de forma
inequívoca.

En el sistema existen, por ejemplo:

```text
~/caso/documentos/resumen.txt
```

y:

```text
~/caso/temporal/resumen.txt
```

Ambos se llaman `resumen.txt`, pero son archivos diferentes.

Por tanto, para identificar correctamente un archivo es necesario indicar
también su **ubicación**, es decir, su **ruta**.

Una ruta relativa puede ser suficiente si se conoce con precisión el
directorio de trabajo desde el que se interpreta. Por ejemplo, estando en
`~/caso`:

```text
documentos/resumen.txt
```

Sin embargo, si queremos identificar el archivo sin depender del directorio
actual, es preferible utilizar su **ruta absoluta**.

### Idea que debe recordar

> El nombre de un archivo no tiene por qué identificarlo de forma única.
> Su ruta permite determinar dónde se encuentra dentro del árbol de
> directorios.
