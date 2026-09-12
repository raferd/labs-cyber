## 1. ¿Quién es quién en el sistema?

El equipo jurídico recibe acceso a un entorno de análisis.

Antes de examinar documentos conviene saber **con qué usuario estamos
trabajando** y qué otras cuentas existen en el escenario.

Ejecute:

```bash
whoami
```

En este laboratorio aparecerá:

```text
root
```

`root` es la cuenta administrativa del sistema.

La utilizamos porque estamos trabajando en un entorno de prácticas
aislado. No debe interpretarse como una recomendación de trabajar
habitualmente con privilegios administrativos.

Obtenga ahora información sobre la cuenta actual:

```bash
id
```

El comando `id` muestra, entre otras cosas, el identificador del usuario
y los grupos a los que pertenece.

### Usuarios relacionados con el caso

Examine ahora estas tres cuentas:

```bash
id marta
```

```bash
id diego
```

```bash
id responsable
```

Observe especialmente los grupos que aparecen en cada caso.

En el escenario existen dos grupos relevantes:

```text
juridico
soporte
```

### Pregunta

¿Qué usuarios pertenecen al grupo `juridico`?

¿Pertenece `diego` a ese grupo?

Piense la respuesta y pulse **NEXT**.
