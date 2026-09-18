## 1. Antes de abrir el expediente: mapa técnico mínimo

Comenzaremos con un resumen de los conceptos necesarios para interpretar
el caso.

### Máquina física

Una **máquina física** es un computador real: dispone de procesador, memoria,
almacenamiento y dispositivos físicos.

Sobre ella puede ejecutarse directamente un sistema operativo o una capa de
virtualización.

### Máquina virtual

Una **máquina virtual** (VM, *Virtual Machine*) es un computador simulado
mediante software.

Dispone de recursos virtuales, como CPU, memoria, disco e interfaces de red,
y normalmente ejecuta su **propio sistema operativo invitado**.

De forma simplificada:

```text
MÁQUINA FÍSICA
      |
      +-- VM 1
      |    +-- sistema operativo
      |         +-- aplicaciones
      |
      +-- VM 2
           +-- sistema operativo
                +-- aplicaciones
```

La virtualización permite utilizar un mismo hardware físico para ejecutar
varios entornos separados.

Entre sus ventajas habituales se encuentran el aislamiento y la flexibilidad.
Como contrapartida, cada VM mantiene un sistema operativo propio y consume
más recursos que un contenedor ligero.

### Contenedor

Un **contenedor** es un entorno aislado para ejecutar uno o varios procesos
de **una aplicación**.

En Linux, los contenedores se ejecutan como procesos aislados que comparten
el kernel del host, aunque pueden tener espacios separados para procesos,
red, sistema de archivos y otros recursos.

Por tanto:

```text
contenedor != máquina virtual
```

De forma simplificada:

```text
HOST LINUX
   |
   +-- kernel
   |
   +-- contenedor A
   |      +-- aplicación
   |
   +-- contenedor B
          +-- aplicación
```

Los contenedores suelen requerir menos recursos y pueden crearse y
sustituirse rápidamente.

Esa rapidez es una ventaja operativa, pero también introduce una idea
importante para una investigación: **un contenedor puede ser efímero**.

Los datos guardados únicamente en la capa escribible de un contenedor se
pierden normalmente cuando ese contenedor se elimina. Por eso los datos que
deben sobrevivir suelen almacenarse mediante mecanismos independientes del
ciclo de vida del contenedor.

### Imagen y contenedor

Una **imagen de contenedor** es la plantilla a partir de la cual se crean
contenedores.

Una misma imagen puede originar múltiples contenedores:

```text
                 imagen
                   |
          +--------+--------+
          |        |        |
          v        v        v
     contenedor contenedor contenedor
          A        B        C
```

Un contenedor puede estar ejecutándose o detenido. No debe confundirse la
imagen con una ejecución concreta de ella.

### Docker

**Docker** es una plataforma y un conjunto de herramientas muy utilizado
para construir, distribuir y ejecutar contenedores.

Docker no es sinónimo de contenedor: los contenedores son el concepto y
Docker es una de las tecnologías que permiten trabajar con ellos.

En esta práctica **no utilizaremos órdenes Docker**. Lo importante es saber
interpretar qué significa que una aplicación esté contenerizada.

### Kubernetes, clúster, nodo y Pod

Cuando una organización tiene muchas aplicaciones contenerizadas puede
necesitar automatizar su despliegue, sustitución, escalado y comunicación.

**Kubernetes** es una plataforma para desplegar, gestionar y coordinar
aplicaciones contenerizadas en un **clúster**.

Un clúster está formado por uno o varios **nodos**. Un nodo es una máquina,
física o virtual, capaz de ejecutar cargas de trabajo de Kubernetes.

Kubernetes no gestiona directamente «contenedores sueltos» como unidad
principal. Su unidad desplegable básica es el **Pod**.

Un Pod contiene uno o varios contenedores estrechamente relacionados y
comparte con ellos determinados recursos de red y almacenamiento.

```text
CLÚSTER KUBERNETES
       |
       +-- nodo worker-02
       |      +-- Pod
       |           +-- contenedor
       |
       +-- nodo worker-03
              +-- Pod
                   +-- contenedor
```

Los Pods suelen tratarse como elementos reemplazables. Si uno falla,
Kubernetes puede crear otro para mantener la aplicación disponible.

Esto aporta disponibilidad y automatización, pero puede complicar una
investigación: el entorno que existía cuando ocurrió un incidente puede haber
sido sustituido cuando comienza el análisis.

Kubernetes y Docker son tecnologías diferentes. Kubernetes puede utilizar
distintos contenedores y no necesita Docker para funcionar.

### Servicio estable frente a Pod reemplazable

Una aplicación no debería obligar a sus usuarios a conocer qué Pod concreto
la está ejecutando.

Kubernetes puede proporcionar un punto de acceso estable que dirija las
comunicaciones hacia los Pods disponibles.

De forma simplificada:

```text
USUARIO
   |
   v
punto de acceso estable
   |
   +------> Pod A
   |
   +------> Pod B
```

Si desaparece un Pod y aparece otro, el servicio puede continuar disponible.

### Almacenamiento persistente

La ejecución de una aplicación y el almacenamiento de sus datos son
problemas distintos.

Un Pod puede desaparecer mientras los datos permanecen en un recurso de
almacenamiento independiente.

```text
Pod A --------+
              |
              v
      almacenamiento persistente
              ^
              |
Pod B --------+
```

Que una aplicación vea los documentos en un directorio como `/datos` no
significa necesariamente que esos documentos estén almacenados dentro del
contenedor.

### Nube

La **computación en la nube** es un modelo de provisión de recursos y
servicios informáticos accesibles bajo demanda a través de una red.

Un proveedor cloud puede ofrecer, entre otras cosas:

- máquinas virtuales;
- contenedores;
- Kubernetes gestionado;
- almacenamiento;
- bases de datos;
- registros centralizados;
- aplicaciones completas.

Por tanto:

```text
nube != máquina virtual
nube != contenedor
nube != Kubernetes
```

Decir que algo «está en la nube» no identifica por sí solo dónde se ejecuta
una aplicación ni dónde están físicamente todas sus copias de datos.

### Fortalezas y límites que interesa recordar

**Máquinas virtuales**
- permiten separar entornos completos y ejecutar sistemas operativos
  independientes;
- suelen requerir más recursos que los contenedores.

**Contenedores**
- facilitan despliegues rápidos y reproducibles;
- utilizan menos recursos que una VM completa en muchos escenarios;
- pueden ser sustituidos rápidamente;
- una mala configuración o una imagen vulnerable también puede introducir
  riesgos;
- los datos importantes no deberían depender únicamente de la vida de un
  contenedor.

**Kubernetes**
- automatizan el despliegue, sustitución y escalado de aplicaciones;
- pueden aumentar disponibilidad y facilitar la recuperación ante fallos;
- añaden complejidad y nuevos elementos que deben comprenderse al investigar
  un incidente;
- un Pod observado durante el incidente puede no existir ya cuando comienza
  el análisis.

**Cloud**
- ofrece elasticidad y servicios gestionados;
- puede repartir ejecución, almacenamiento y registros entre servicios
  distintos;
- introduce dependencia del proveedor y exige conocer qué controla el
  cliente y qué controla el proveedor.

Pulse **NEXT** cuando esté preparado para abrir el expediente.
