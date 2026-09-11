## 7. Cierre del caso

La respuesta a la pregunta anterior es **no**.

`ps` nos informa sobre los procesos existentes cuando ejecutamos la orden. Por sí solo no reconstruye qué procesos se estaban ejecutando en un momento anterior.

Durante esta práctica ha utilizado:

```text
whoami       identificar el usuario actual
id           consultar identidad y grupos
ls -l        examinar propietarios y permisos
chmod        modificar permisos
sha256sum    calcular y verificar hashes
vi           editar un archivo de código fuente
gcc          compilar un programa
ps           examinar procesos
kill         solicitar la terminación de un proceso
```

### Tres conclusiones importantes

**1. Permiso no equivale a acceso realizado**

Que una cuenta tenga permiso para leer un archivo indica una **capacidad de acceso**. No demuestra que el usuario haya leído realmente ese archivo.

**2. Un hash permite comprobar integridad**

Un hash puede utilizarse para detectar modificaciones del contenido. Por sí solo no demuestra quién creó o modificó el archivo.

**3. Un proceso es una ejecución concreta**

El programa es un archivo. El proceso es una instancia de ese programa que se encuentra ejecutándose y dispone, entre otras cosas, de un PID.

La observación de los procesos actuales no constituye por sí sola un historial de ejecución.

En la siguiente práctica cambiaremos de pregunta:

**¿Con quién se comunicaba el equipo?**

Para responderla estudiaremos direcciones IP, nombres DNS, puertos y conexiones de red.
