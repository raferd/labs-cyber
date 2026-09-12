Respuesta a las preguntas anteriores:

1. A las 10:15 `portal-7bd96` se ejecutaba en `worker-03`.

2. A las 10:18 se registra un fallo de comprobación de estado
   (`HEALTHCHECK_FAILED`) y después el Pod pasa a terminarse
   (`TERMINATING`).

3. Aparece el nuevo Pod `portal-9a2c1` en el nodo `worker-02`.

4. No. Cuando comienza la revisión a las 10:22, la cronología muestra que
   Kubernetes ya había sustituido el Pod y el punto de acceso del servicio
   dirigía las comunicaciones al nuevo Pod.

Una fortaleza de la orquestación —sustituir rápidamente una instancia que
falla— puede convertirse al mismo tiempo en una dificultad para la
investigación: **el entorno original puede ser efímero**.

<br><br>

## 5. Misión 4: ¿qué evidencia puede sobrevivir?

La desaparición del Pod no significa que toda la información relacionada
con el incidente haya desaparecido.

Examine estos tres documentos utilizando las herramientas básicas que ya
conoce:

```text
/opt/caso04/expediente/almacenamiento.txt

/opt/caso04/expediente/registros.txt

/opt/caso04/expediente/proveedor_cloud.txt
```

### Piense en tres tipos de información

**Estado del entorno de ejecución**

El Pod original puede haber sido sustituido.

**Datos persistentes**

Los documentos pueden encontrarse en almacenamiento cuyo ciclo de vida no
depende del Pod.

**Registros centralizados**

Los eventos que se exportaron antes de desaparecer el Pod pueden seguir
disponibles en otro sistema.

### Preguntas

1. ¿Seguía disponible `clientes-pvc` a las 10:22?

2. ¿La sustitución del Pod elimina automáticamente los registros que ya
   habían sido enviados al sistema centralizado?

3. La consola utiliza la etiqueta `region-eu-1`. ¿Permite esa etiqueta,
   por sí sola y con la documentación disponible, determinar el centro de
   datos físico y la localización de todas las copias?

4. El registro contiene `account=cuenta-17`. ¿Permite ese dato identificar
   por sí solo a la persona física que realizó la actividad?

5. Si tuviera que continuar la investigación, ¿qué fuentes pediría conservar
   antes de que transcurra más tiempo?

Piense las respuestas antes de pulsar **NEXT**.
