#!/bin/bash
set -e

BASE="/opt/examen"
EXP="$BASE/expediente"

# Detener, si existiera, el proceso de una ejecución anterior.
if [ -f "$EXP/sistema/proceso.pid" ]; then
    kill "$(cat "$EXP/sistema/proceso.pid")" 2>/dev/null || true
fi

rm -rf "$BASE"
mkdir -p "$EXP/documentos" "$EXP/temporal" "$EXP/evidencias" \
         "$EXP/registros" "$EXP/sistema"

# ---------- Documentación ----------
cat > "$EXP/documentos/informe.txt" <<'EOT'
INFORME DE INCIDENTE
Estado: borrador de trabajo
Referencia: INC-2026-0912
EOT

cat > "$EXP/temporal/informe.txt" <<'EOT'
INFORME DE INCIDENTE
Estado: VERSIÓN VALIDADA
Referencia: INC-2026-0912
EOT

cat > "$EXP/documentos/contrato_confidencial.txt" <<'EOT'
CONTRATO DE SERVICIO
Documento reservado para el equipo autorizado.
EOT

# Grupo utilizado únicamente para representar permisos del caso.
groupadd -f juridico >/dev/null 2>&1 || true
chown root:juridico "$EXP/documentos/contrato_confidencial.txt" 2>/dev/null || true
chmod 640 "$EXP/documentos/contrato_confidencial.txt"

# ---------- Integridad ----------
cat > "$EXP/evidencias/original.txt" <<'EOT'
REGISTRO EXPORTADO DEL EXPEDIENTE
Referencia: EXP-4821
Estado: cerrado
Importe: 18500
EOT

cp "$EXP/evidencias/original.txt" "$EXP/evidencias/copia_A.txt"

cat > "$EXP/evidencias/copia_B.txt" <<'EOT'
REGISTRO EXPORTADO DEL EXPEDIENTE
Referencia: EXP-4821
Estado: cerrado
Importe: 19500
EOT

# ---------- Proceso ----------
nohup sleep 1200 >/dev/null 2>&1 &
echo $! > "$EXP/sistema/proceso.pid"

# ---------- Comunicaciones ----------
cat > "$EXP/registros/conexiones.log" <<'EOT'
REGISTRO SIMULADO DE COMUNICACIONES

2026-09-12T08:21:14Z UDP 10.20.0.18:51122 -> 192.0.2.53:53
2026-09-12T08:21:18Z TCP 10.20.0.18:51130 -> 198.51.100.77:443
2026-09-12T08:22:01Z TCP 10.20.0.18:51144 -> 203.0.113.44:22
2026-09-12T08:22:09Z TCP 10.20.0.18:51158 -> 198.51.100.90:8443
EOT

# ---------- Arquitectura ----------
cat > "$EXP/sistema/arquitectura.txt" <<'EOT'
ARQUITECTURA DEL SERVICIO

Aplicación: portal-clientes
Plataforma: Kubernetes gestionado

10:14:58  Pod portal-7bd96 RUNNING en nodo worker-03
10:18:05  Pod portal-7bd96 TERMINATING
10:18:09  Pod portal-2c9f RUNNING en nodo worker-02
10:18:12  El servicio portal-clientes-svc dirige nuevas comunicaciones a portal-2c9f
10:22:00  Comienza la revisión del incidente

Almacenamiento: expediente-pvc
Tipo: persistente
Dependencia del Pod: independiente del ciclo de vida de un Pod concreto

Registros: exportados a un sistema centralizado externo a los Pods
EOT

cat > "$EXP/sistema/proveedor.txt" <<'EOT'
INFORMACIÓN DEL PROVEEDOR

Etiqueta de región: region-eu-1
Servicios utilizados:
- máquinas virtuales para los nodos del clúster;
- Kubernetes gestionado;
- almacenamiento persistente;
- registros centralizados.

La documentación disponible en este ejercicio no identifica el centro de
datos físico concreto ni la ubicación física exacta de todas las copias.
EOT

chmod -R a+rX "$EXP"
chmod 640 "$EXP/documentos/contrato_confidencial.txt"
