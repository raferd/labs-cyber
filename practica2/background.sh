#!/bin/bash

set -e

CASO="/opt/caso02"

getent group juridico >/dev/null 2>&1 || groupadd juridico
getent group soporte >/dev/null 2>&1 || groupadd soporte

id -u marta >/dev/null 2>&1 || useradd -m -s /bin/bash marta
id -u diego >/dev/null 2>&1 || useradd -m -s /bin/bash diego
id -u responsable >/dev/null 2>&1 || useradd -m -s /bin/bash responsable

usermod -aG juridico marta
usermod -aG juridico responsable
usermod -aG soporte diego

rm -rf "$CASO"
mkdir -p "$CASO/documentos" "$CASO/trabajo" "$CASO/procesos" "$CASO/.originales"

cat > "$CASO/documentos/informe_interno.txt" <<'EOF'
INFORME INTERNO DE REVISIÓN

Se ha detectado actividad anómala en uno de los equipos de la organización.

El documento contiene información destinada únicamente al personal
autorizado del departamento jurídico.

Clasificación: uso interno.
EOF

cat > "$CASO/documentos/contrato_cliente.txt" <<'EOF'
CONTRATO DE PRESTACIÓN DE SERVICIOS

Documento correspondiente a un cliente de la organización.

Contiene información contractual y datos de contacto.

Su acceso debe limitarse al personal autorizado.
EOF

cp "$CASO/documentos/contrato_cliente.txt" "$CASO/.originales/contrato_cliente.txt"

chown responsable:juridico "$CASO/documentos/informe_interno.txt"
chown responsable:juridico "$CASO/documentos/contrato_cliente.txt"
chmod 640 "$CASO/documentos/informe_interno.txt"
chmod 644 "$CASO/documentos/contrato_cliente.txt"
chmod 755 "$CASO" "$CASO/documentos" "$CASO/trabajo" "$CASO/procesos"
chown root:root "$CASO/.originales/contrato_cliente.txt"
chmod 600 "$CASO/.originales/contrato_cliente.txt"
