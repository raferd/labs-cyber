## 6. Examinar y finalizar un proceso

Sabemos que el programa está ejecutándose. Ahora queremos observar cómo aparece ante el sistema operativo.

```bash
cd /opt/caso02/procesos
cat proceso.pid
ps -p "$(cat proceso.pid)" -o pid,user,cmd
```

Los campos indican:

```text
PID     identificador del proceso
USER    usuario bajo cuya identidad se ejecuta
CMD     programa u orden asociada al proceso
```

### Terminar el proceso

```bash
kill "$(cat proceso.pid)"
wait "$(cat proceso.pid)" 2>/dev/null
```

Compruebe de nuevo:

```bash
ps -p "$(cat proceso.pid)" -o pid,user,cmd
```

El proceso ya no debería aparecer.

Observe, sin embargo:

```bash
ls -l
```

El archivo ejecutable `proceso` sigue existiendo.

### Diferencia importante

Detener un proceso **no elimina el programa** que lo originó.

### Pregunta

Si observamos un proceso mediante `ps`, ¿demuestra eso que ese mismo proceso estaba ejecutándose ayer a una determinada hora?

Piense la respuesta.

Pulse **CHECK** para verificar que ha terminado correctamente el proceso.
