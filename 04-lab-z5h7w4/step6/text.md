Respuesta a las preguntas anteriores:

1. Sí. `almacenamiento.txt` indica que `clientes-pvc` seguía disponible a
   las 10:22 y que su vida no dependía de un Pod concreto.

2. No. `registros.txt` indica que los registros exportados se conservan en
   un sistema centralizado independiente de los Pods.

3. No. Una etiqueta de región del proveedor no permite, con la información
   disponible en este expediente, deducir la localización física exacta de
   todas las copias. Habría que acudir a documentación y datos adicionales
   del proveedor y de la configuración contratada.

4. No. `account=cuenta-17` identifica una cuenta registrada en el evento,
   pero ese dato aislado no demuestra qué persona física estaba utilizando
   la cuenta en ese momento.

5. Sería razonable preservar y solicitar, según estén disponibles, los
   registros centralizados de la aplicación y de la plataforma, la
   información del almacenamiento persistente, las copias o instantáneas
   pertinentes, los datos de configuración del servicio y la documentación
   del proveedor necesaria para interpretar ubicación, retención y
   arquitectura.

<br><br>

## 6. Misión 5: dictamen técnico preliminar

Ha recibido ahora cinco afirmaciones que podrían aparecer en un informe.

Examine:

```text
/opt/caso04/expediente/afirmaciones.txt
```

Debe decidir si, **con la información disponible en el expediente**, cada
afirmación puede aceptarse como correcta.

No se pide una valoración jurídica definitiva. Se pide determinar si la
afirmación técnica está respaldada por los datos del caso.

Existe una plantilla:

```text
/opt/caso04/expediente/plantilla_dictamen.txt
```

Cree una copia de esa plantilla en:

```text
/opt/caso04/trabajo/dictamen.txt
```

y complétela utilizando únicamente:

```text
SI
```

o:

```text
NO
```

El resultado debe tener esta forma:

```text
A=SI
B=NO
C=SI
D=NO
E=SI
```

El ejemplo anterior muestra solamente el **formato** y no contiene las
respuestas correctas.

### Pistas sobre las herramientas

Para copiar un archivo puede recordar la forma:

```text
cp origen destino
```

Para editar el archivo puede utilizar:

```text
vi archivo
```

No necesita ninguna herramienta nueva.

Pulse **CHECK** cuando haya completado el dictamen.
