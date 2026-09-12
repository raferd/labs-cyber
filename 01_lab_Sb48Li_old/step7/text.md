## 7. Eliminar un archivo

Durante el trabajo con el expediente pueden generarse archivos temporales
que ya no sean necesarios.

La eliminación de archivos es una operación que debe realizarse con cuidado:
a diferencia de copiar o mover, puede provocar la pérdida de información.

Por ello, vamos a practicar únicamente con un archivo creado expresamente
para este ejercicio.

### Crear un archivo de prueba

Sitúese en el directorio principal del caso:

```bash
cd ~/caso
```

Cree un archivo vacío denominado:

```text
prueba_eliminar.txt
```

mediante:

```bash
touch prueba_eliminar.txt
```

Compruebe que existe:

```bash
ls
```

### Eliminar el archivo

Ahora elimínelo:

```bash
rm prueba_eliminar.txt
```

Compruebe nuevamente el contenido del directorio:

```bash
ls
```

El archivo ya no debería aparecer.

### Idea importante

El comando:

```text
rm
```

elimina archivos.

A diferencia de `cp` o `mv`, esta operación no crea automáticamente
otra copia del archivo en otra ubicación.

Por ello, antes de eliminar información relevante debe comprobarse
cuidadosamente qué archivo se está eliminando y cuál es su ruta.

Pulse **CHECK** para comprobar que el archivo de prueba ha sido eliminado.
