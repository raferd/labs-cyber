## 8. Pregunta final del caso

Suponga ahora que usted no ha presenciado lo ocurrido durante el incidente y
que, al comenzar el análisis, sólo dispone del **estado actual** del sistema.

Comprueba tres cosas:

```text
1. diego ya no tiene permiso para leer contrato_cliente.txt

2. el hash SHA-256 actual del contrato coincide con el hash de referencia
   guardado durante la revisión

3. ps no muestra en este momento el proceso de prueba que examinamos
```

Un miembro del equipo concluye:

> «Entonces podemos afirmar que Diego no leyó ni modificó el contrato antes
> de que corrigiéramos los permisos y que ese proceso tampoco estuvo
> ejecutándose anteriormente.»

### Gran pregunta final

**¿Permiten esas observaciones actuales demostrar necesariamente esa
conclusión sobre lo que ocurrió antes?**

Elija una de estas tres respuestas:

```text
SÍ

NO

NO PUEDE DETERMINARSE CON LA INFORMACIÓN DISPONIBLE
```

Después prepare una justificación breve, de aproximadamente 5-10 líneas.

En ella debería distinguir entre:

- capacidad de acceso y acceso realmente realizado;
- integridad del contenido comparado e historia completa del archivo;
- estado actual de los procesos e historial de ejecución.

Piense también qué otras evidencias serían necesarias para reconstruir
acciones pasadas.

No pulse **NEXT** hasta haber adoptado una respuesta y preparado su
justificación.

Si la práctica se realiza en clase, espere a la puesta en común antes de
continuar.
