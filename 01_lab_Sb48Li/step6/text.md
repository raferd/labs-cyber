## 6. Mover y renombrar archivos

Antes de continuar, compruebe la respuesta de la actividad anterior.

Si hubiese utilizado:

```bash
echo "Se ha localizado el informe del incidente." > observaciones.txt
```

el contenido anterior de `observaciones.txt` habría sido sustituido.

El archivo habría quedado únicamente con:

```text
Se ha localizado el informe del incidente.
```

Por eso es importante distinguir entre `>` y `>>`.

---

### Incorporar un borrador al área de trabajo

Durante la revisión observa que existe un archivo provisional en:

```text
~/caso/temporal/borrador.txt
```

Compruebe primero su contenido:

```bash
cat ~/caso/temporal/borrador.txt
```

El equipo decide trasladarlo al directorio `evidencias`.

Sitúese en el directorio principal del caso:

```bash
cd ~/caso
```

Mueva el archivo:

```bash
mv temporal/borrador.txt evidencias/
```

Compruebe el resultado:

```bash
ls temporal
```

```bash
ls evidencias
```

Observe que `borrador.txt` ya no se encuentra en `temporal` y aparece ahora
en `evidencias`.

A diferencia de `cp`, el comando `mv` no deja una copia en la ubicación
original.

### Renombrar el archivo

El nombre `borrador.txt` resulta poco descriptivo.

Renómbrelo como:

```text
borrador_original.txt
```

mediante:

```bash
mv evidencias/borrador.txt evidencias/borrador_original.txt
```

Compruebe el resultado:

```bash
ls evidencias
```

### Idea importante

El comando:

```text
mv
```

puede utilizarse tanto para **mover** un archivo a otro directorio como para
**cambiar su nombre**.

En ambos casos cambia la ubicación con la que el sistema identifica el archivo.

Pulse **CHECK** para comprobar el resultado.
