## 2. Misión 1: ¿qué significa realmente «el servidor»?

El departamento jurídico recibe esta afirmación:

> «La aplicación y los documentos estaban en el servidor `worker-03`.»

Antes de aceptarla, debe examinar el inventario técnico.

Los documentos del expediente se encuentran en:

```text
/opt/caso04/expediente
```

Utilice las herramientas Linux que ya conoce para:

1. comprobar qué archivos contiene el directorio;
2. localizar `inventario.txt`;
3. examinar su contenido.

No se proporciona la orden exacta: para esta tarea bastan herramientas
básicas utilizadas en las prácticas anteriores.

### Preguntas

1. ¿Qué era `worker-03`: la aplicación, un Pod, un contenedor o una máquina
   que actuaba como nodo?

2. ¿Son `worker-03`, `portal-7bd96` y `app` tres nombres para el mismo
   objeto técnico?

3. ¿Permite `inventario.txt` afirmar que los documentos estaban almacenados
   dentro del contenedor `app`?

4. ¿Permite saber únicamente con este inventario en qué centro de datos
   físico se encontraban los documentos?

Piense las respuestas antes de pulsar **NEXT**.
