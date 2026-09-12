#!/bin/bash

set -e

CASO="/opt/caso04"
EXP="$CASO/expediente"
TRABAJO="$CASO/trabajo"

rm -rf "$CASO"

mkdir -p "$EXP"
mkdir -p "$TRABAJO"

cat > "$EXP/inventario.txt" <<'EOF'
INVENTARIO TÉCNICO DEL SERVICIO

Aplicación: portal-clientes
Plataforma: Kubernetes gestionado
Clúster: prod-clientes

Nodo observado a las 10:15: worker-03
Tipo de nodo: máquina virtual

Pod observado a las 10:15: portal-7bd96
Contenedor de aplicación: app
Imagen declarada: portal-clientes:3.4.1

Punto de acceso estable: portal-clientes-svc
Almacenamiento declarado: clientes-pvc

La documentación recibida no identifica el centro de datos físico.
EOF

cat > "$EXP/arquitectura.txt" <<'EOF'
ARQUITECTURA DECLARADA DEL SERVICIO

Usuario
  -> punto de acceso portal-clientes-svc
  -> Pod disponible de la aplicación
  -> contenedor app

Nodo worker-03:
  máquina virtual perteneciente al clúster prod-clientes.

Pod portal-7bd96:
  unidad de ejecución de Kubernetes observada a las 10:15.

Contenedor app:
  ejecuta la aplicación portal-clientes.

Almacenamiento: clientes-pvc
Almacenamiento: montado dentro del contenedor como /datos/clientes
Almacenamiento: persistente e independiente del ciclo de vida de un Pod

Registros:
  la aplicación envía registros a un sistema centralizado externo al Pod.

El punto de acceso portal-clientes-svc puede dirigir las nuevas comunicaciones
a otro Pod disponible si el anterior deja de estar operativo.
EOF

cat > "$EXP/cronologia.log" <<'EOF'
2026-09-11T10:14:58Z POD     portal-7bd96 RUNNING node=worker-03
2026-09-11T10:15:11Z APP     portal-7bd96 EVENT autenticacion_anomala account=cuenta-17
2026-09-11T10:16:02Z STORAGE clientes-pvc READ expediente_4821.pdf
2026-09-11T10:18:02Z POD     portal-7bd96 HEALTHCHECK_FAILED
2026-09-11T10:18:05Z POD     portal-7bd96 TERMINATING
2026-09-11T10:18:09Z POD     portal-9a2c1 RUNNING node=worker-02
2026-09-11T10:18:12Z SERVICE portal-clientes-svc TARGET portal-9a2c1
2026-09-11T10:22:00Z INCIDENT REVIEW_STARTED
EOF

cat > "$EXP/almacenamiento.txt" <<'EOF'
INFORMACIÓN SOBRE EL ALMACENAMIENTO clientes-pvc

Tipo funcional: almacenamiento persistente utilizado por la aplicación.
Montaje en el contenedor: /datos/clientes
Dependencia del Pod: no depende de que exista un Pod concreto.
Estado a las 10:22: disponible.

La información entregada no especifica:
- el centro de datos físico concreto;
- el país en el que se encuentran cada una de las copias;
- el número de réplicas internas mantenidas por el proveedor.

Existe una copia de seguridad diaria gestionada como servicio separado.
EOF

cat > "$EXP/registros.txt" <<'EOF'
INFORMACIÓN SOBRE REGISTROS

Los registros de aplicación se exportan a un sistema centralizado
independiente de los Pods.

Los eventos básicos de la plataforma Kubernetes utilizados en este caso
también se conservan en el sistema de registros.

Retención configurada: 30 días.

La sustitución de un Pod no elimina automáticamente los registros que ya
hayan sido exportados al sistema centralizado.
EOF

cat > "$EXP/proveedor_cloud.txt" <<'EOF'
INFORMACIÓN FACILITADA SOBRE EL PROVEEDOR

Servicios utilizados:
- máquinas virtuales para los nodos del clúster;
- Kubernetes gestionado;
- almacenamiento persistente;
- servicio de registros centralizados.

Etiqueta de región utilizada en la consola: region-eu-1

La documentación técnica recibida para este ejercicio no identifica
el centro de datos físico ni permite determinar por sí sola la localización
física exacta de todas las copias de los datos.
EOF

cat > "$EXP/afirmaciones.txt" <<'EOF'
AFIRMACIONES PARA EL DICTAMEN PRELIMINAR

A. Los documentos estaban almacenados dentro del sistema de archivos
   propio del contenedor app.

B. El Pod portal-7bd96 seguía siendo el Pod activo del servicio cuando
   comenzó la revisión a las 10:22.

C. El almacenamiento clientes-pvc podía seguir disponible después de que
   el Pod portal-7bd96 dejara de estar operativo.

D. La expresión «estaba en la nube» permite determinar por sí sola el
   centro de datos físico en el que se encontraban todos los datos.

E. El registro account=cuenta-17 permite identificar por sí solo a la
   persona física que realizó la actividad.

Para cada afirmación debe decidir: SI o NO.
EOF

cat > "$EXP/plantilla_dictamen.txt" <<'EOF'
A=
B=
C=
D=
E=
EOF

chmod -R a+rX "$CASO"
chmod 777 "$TRABAJO"
