Respuesta a las preguntas anteriores:

1. `worker-03` era un **nodo** del clúster y, según el inventario, ese nodo
   era una **máquina virtual**.

2. No. Son elementos distintos:

```text
worker-03       nodo / máquina virtual

portal-7bd96    Pod de Kubernetes

app             contenedor situado dentro del Pod
```

3. No. El inventario menciona `clientes-pvc` como almacenamiento, pero todavía
   necesitamos conocer cómo se relaciona ese almacenamiento con el
   contenedor.

4. No. El propio inventario indica que la documentación recibida no identifica
   el centro de datos físico.

<br><br>

## 3. Misión 2: seguir la pista de los datos

Examine ahora:

```text
/opt/caso04/expediente/arquitectura.txt
```

Puede leer el documento completo con herramientas ya conocidas.

Después deberá extraer únicamente las líneas que contienen la palabra:

```text
Almacenamiento
```

y guardarlas en:

```text
/opt/caso04/trabajo/almacenamiento_en_arquitectura.txt
```

### Pista

Para seleccionar las líneas que contienen un texto puede utilizar:

```text
grep "texto_a_buscar" archivo
```

Recuerde además que:

```text
>
```

permite redirigir la salida de una orden hacia un archivo.

Debe decidir cómo combinar ambas cosas.

Cuando termine, examine el archivo que ha creado.

### Preguntas

1. ¿Qué nombre recibe el recurso de almacenamiento utilizado por la
   aplicación?

2. Dentro del contenedor aparece como `/datos/clientes`. ¿Significa eso que
   los documentos estén necesariamente almacenados en la capa propia del
   contenedor?

3. Si desaparece el Pod `portal-7bd96`, ¿deben desaparecer necesariamente
   los documentos?

Pulse **CHECK** para comprobar que ha localizado correctamente la información
sobre almacenamiento.
