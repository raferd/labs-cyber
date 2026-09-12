Respuesta a las preguntas anteriores:

Las respuestas del dictamen son:

```text
A=NO
B=NO
C=SI
D=NO
E=NO
```

**A = NO**

La aplicación veía los documentos mediante `/datos/clientes`, pero la
arquitectura indica que ese directorio estaba asociado a `clientes-pvc`,
almacenamiento persistente independiente del Pod. No estaban almacenados
únicamente en la capa propia del contenedor.

**B = NO**

La cronología muestra que `portal-7bd96` empezó a terminarse a las 10:18 y
fue sustituido por `portal-9a2c1` antes del comienzo de la revisión.

**C = SI**

La documentación indica expresamente que `clientes-pvc` es persistente e
independiente del ciclo de vida de un Pod.

**D = NO**

Decir que el servicio está «en la nube» o disponer de una etiqueta de región
no basta, con este expediente, para localizar físicamente todas las copias
de los datos.

**E = NO**

Un identificador de cuenta registrado en un evento no identifica por sí
solo a la persona física que realizó la acción.

<br><br>

## 7. Cierre del caso

La afirmación inicial:

> «La aplicación y los documentos estaban en el servidor `worker-03`.»

era demasiado imprecisa.

Una descripción más adecuada del escenario sería:

```text
infraestructura cloud
        |
        +-- clúster Kubernetes
        |       |
        |       +-- nodo worker-03 (VM)
        |       |       |
        |       |       +-- Pod portal-7bd96
        |       |               |
        |       |               +-- contenedor app
        |       |
        |       +-- nodo worker-02 (VM)
        |               |
        |               +-- Pod portal-9a2c1
        |
        +-- almacenamiento persistente clientes-pvc
        |
        +-- registros centralizados
```

### Qué debe conservar de esta práctica

**Máquina virtual**

Es un computador virtualizado que normalmente dispone de su propio sistema
operativo.

**Contenedor**

Es un entorno aislado para ejecutar procesos. En Linux comparte el kernel
del host y puede ser creado o sustituido rápidamente.

**Docker**

Es una tecnología muy utilizada para construir y ejecutar contenedores.
No es sinónimo de contenedor y no es un requisito de Kubernetes.

**Kubernetes**

Gestiona aplicaciones contenerizadas en un clúster. Trabaja con Pods como
unidad desplegable básica y puede sustituir Pods que dejan de estar
operativos.

**Pod**

Agrupa uno o varios contenedores estrechamente relacionados. Debe
considerarse potencialmente reemplazable.

**Almacenamiento persistente**

Permite que determinados datos sobrevivan independientemente de la vida de
un Pod o contenedor concreto.

**Cloud**

No es una tecnología única ni una ubicación física concreta. Puede ofrecer
máquinas virtuales, Kubernetes, almacenamiento, bases de datos, registros y
otros muchos servicios.

### Fortalezas y debilidades desde la perspectiva del incidente

La automatización y sustitución rápida de componentes puede aumentar la
disponibilidad del servicio.

Pero también puede provocar que, cuando comienza una investigación, el
entorno de ejecución original ya haya sido sustituido.

Separar ejecución y almacenamiento permite conservar los datos aunque
desaparezca una instancia concreta.

Pero obliga a identificar correctamente **qué recurso contiene cada dato** y
qué proveedor o componente controla su conservación.

Centralizar registros puede permitir que sobrevivan a la desaparición de un
Pod.

Pero su utilidad depende de que hayan sido realmente exportados, de su
contenido y de las políticas de retención aplicadas.

### Una regla útil para futuras situaciones

Ante frases como:

```text
"estaba en el servidor"

"estaba en un contenedor"

"estaba en Kubernetes"

"estaba en la nube"
```

conviene formular preguntas más precisas:

```text
¿Dónde se ejecutaba la aplicación?

¿Dónde persistían los datos?

¿Qué elemento era efímero?

¿Qué elemento fue sustituido?

¿Qué registros existen y dónde se conservan?

¿Qué controla la organización y qué controla el proveedor?

¿Qué información falta para sostener la conclusión?
```

En un análisis técnico con relevancia jurídica, una respuesta correcta puede
ser perfectamente:

> «Con la información disponible todavía no puede determinarse.»

Distinguir entre **hechos observados**, **inferencias razonables** y
**afirmaciones no demostradas** es parte esencial de la interpretación de
un incidente.
