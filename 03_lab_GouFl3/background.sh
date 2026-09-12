#!/bin/bash

set -e

CASO="/opt/caso03"

rm -rf "$CASO"

mkdir -p "$CASO/registros"
mkdir -p "$CASO/trabajo"
mkdir -p "$CASO/web"

cat > "$CASO/registros/conexiones.log" <<'EOF'
REGISTRO SIMULADO DE COMUNICACIONES

2026-09-11T09:14:02Z TCP 10.10.0.24:52318 -> 203.0.113.25:443
2026-09-11T09:14:05Z UDP 10.10.0.24:53120 -> 192.0.2.53:53
2026-09-11T09:15:11Z TCP 10.10.0.24:52344 -> 198.51.100.42:22
EOF

cat > "$CASO/web/aviso.txt" <<'EOF'
DOCUMENTO DE PRUEBA

Este documento ha sido obtenido mediante una comunicación HTTP
realizada dentro del laboratorio.

Su contenido no procede de Internet.
EOF

chmod -R 755 "$CASO"

MISSING=""
command -v ip >/dev/null 2>&1 || MISSING="$MISSING iproute2"
command -v ss >/dev/null 2>&1 || MISSING="$MISSING iproute2"
command -v ping >/dev/null 2>&1 || MISSING="$MISSING iputils-ping"
command -v curl >/dev/null 2>&1 || MISSING="$MISSING curl"
command -v python3 >/dev/null 2>&1 || MISSING="$MISSING python3"

if [ -n "$MISSING" ]; then
    apt-get update -qq
    DEBIAN_FRONTEND=noninteractive apt-get install -y -qq $MISSING
fi
