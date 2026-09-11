## 1. Orientarse en el sistema de archivos

El técnico le indica que la información relacionada con el incidente
se encuentra organizada en varios directorios.

Antes de examinar o copiar ningún documento, es necesario comprender
cómo está organizada esa información y ser capaz de indicar con precisión
dónde se encuentra cada elemento.

### El árbol de directorios

En Linux, los archivos y directorios se organizan de forma jerárquica,
formando un **árbol**.

El punto superior del árbol es el directorio raíz:

```text
/
```

De él dependen todos los demás directorios y archivos del sistema.

En esta práctica, parte del árbol tiene una estructura semejante a:

```text
/
└── ...
    └── caso
        ├── documentos
        │   ├── contrato.txt
        │   ├── informe_incidente.txt
        │   └── notas.txt
        ├── correo
        │   ├── mensaje_01.txt
        │   └── mensaje_02.txt
        ├── descargas
        │   └── documento_recibido.txt
        └── temporal
            └── borrador.txt
```

Un directorio puede contener otros directorios o archivos.

La posición en la que se encuentra en cada momento se denomina
**directorio de trabajo actual**.

### ¿Dónde estoy?

Ejecute:

```bash
pwd
```

`pwd` significa *print working directory* y muestra la ruta del
directorio de trabajo actual.

Ahora acceda al directorio del caso:

```bash
cd ~/caso
```

Compruebe nuevamente dónde se encuentra:

```bash
pwd
```

### ¿Qué hay en este directorio?

Ejecute:

```bash
ls
```

Deberían aparecer:

```text
documentos
correo
descargas
temporal
```

### Rutas absolutas y relativas

Una **ruta** indica dónde se encuentra un archivo o directorio
dentro del árbol.

Una **ruta absoluta** comienza siempre en la raíz `/`.

Por ejemplo, la ruta absoluta del directorio `caso` puede obtenerse
con:

```bash
pwd
```

Si el resultado fuera:

```text
/root/caso
```

la ruta absoluta de `informe_incidente.txt` sería:

```text
/root/caso/documentos/informe_incidente.txt
```

Una **ruta relativa** indica cómo llegar a un archivo o directorio
desde el directorio en el que estamos actualmente.

Si está situado en `caso`, puede referirse al mismo archivo mediante:

```text
documentos/informe_incidente.txt
```

La ruta relativa depende, por tanto, de la posición actual.

### Recorrer el árbol

Para desplazarse entre directorios se utiliza:

```bash
cd
```

Entre en `documentos`:

```bash
cd documentos
```

Compruebe dónde se encuentra:

```bash
pwd
```

Ahora vuelva al directorio anterior:

```bash
cd ..
```

El símbolo:

```text
..
```

representa el **directorio padre**.

Linux utiliza también estas notaciones:

```text
.    directorio actual
..   directorio padre
~    directorio personal del usuario
/    directorio raíz
```

Desde `caso`, entre otra vez en `documentos`:

```bash
cd documentos
```

Desde allí, acceda directamente a `correo` utilizando una
ruta relativa:

```bash
cd ../correo
```

Compruebe dónde se encuentra:

```bash
pwd
```

La expresión:

```text
../correo
```

significa:

```text
..       subir al directorio padre
correo   entrar en el directorio correo
```

### Compruebe que entiende las rutas

Sin ejecutar ningún comando todavía, responda:

1. Si está situado en el directorio `caso`, ¿cuál es la ruta relativa
   de `mensaje_01.txt`?

2. Si está situado en `documentos`, ¿cuál es la ruta relativa de
   `mensaje_01.txt`?

3. Utilice `pwd` para determinar la ruta absoluta real de su directorio
   `caso`.

4. A partir de ella, escriba la ruta absoluta de
   `informe_incidente.txt`.

### Idea importante

Si dos personas ejecutan:

```bash
cat informe.txt
```

no tienen por qué estar leyendo el mismo archivo.

El resultado depende del directorio en el que se encuentre cada una
y de la ruta utilizada.

Por eso, en un análisis técnico es importante identificar
**con precisión la ubicación de un archivo**.
