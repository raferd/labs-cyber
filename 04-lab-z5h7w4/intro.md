# ¿Dónde están realmente la aplicación y los datos?

## Virtualización, contenedores, Kubernetes y nube con relevancia jurídica

Durante la investigación de un incidente, el departamento jurídico recibe
esta afirmación:

> «La aplicación y los documentos estaban en el servidor `worker-03`.»

El equipo técnico matiza después esa explicación:

> «La aplicación se ejecutaba en un contenedor dentro de un Pod de Kubernetes.
> El nodo `worker-03` era una máquina virtual. Los documentos utilizaban
> almacenamiento persistente externo al Pod.»

Su misión será reconstruir qué significa realmente esa arquitectura y decidir
qué afirmaciones pueden sostenerse con la información disponible.

No aprenderá a administrar Docker ni Kubernetes. El objetivo es comprender:

- qué diferencia hay entre una máquina virtual, un contenedor y un Pod;
- qué papel tienen Docker y Kubernetes;
- por qué ejecución y almacenamiento no son lo mismo;
- qué puede desaparecer durante un incidente y qué puede persistir;
- y por qué decir que algo «está en la nube» suele ser técnicamente insuficiente.

Además, deberá reutilizar herramientas Linux aprendidas en las prácticas
anteriores para examinar el expediente.

**Tiempo previsto de realización: 40-45 minutos.**
