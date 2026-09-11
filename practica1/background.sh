#!/bin/bash

CASO="$HOME/caso"

# Crear la estructura del caso
mkdir -p "$CASO/documentos"
mkdir -p "$CASO/correo"
mkdir -p "$CASO/descargas"
mkdir -p "$CASO/temporal"

# Documentos
cat > "$CASO/documentos/contrato.txt" <<'EOF'
CONTRATO DE PRESTACIÓN DE SERVICIOS

Documento incorporado al expediente interno.
Fecha: 3 de septiembre de 2026.

Las partes acuerdan las condiciones de prestación del servicio
y las obligaciones de confidencialidad aplicables.
EOF

cat > "$CASO/documentos/informe_incidente.txt" <<'EOF'
INFORME INICIAL DEL INCIDENTE

El departamento técnico detectó actividad anómala en uno
de los sistemas de la organización.

Se solicita conservar la documentación relacionada con el incidente
y determinar qué información estaba disponible en el entorno afectado.
EOF

cat > "$CASO/documentos/notas.txt" <<'EOF'
NOTAS INTERNAS

Pendiente revisar los mensajes de correo relacionados con el incidente.
Pendiente identificar los documentos descargados por el usuario.
EOF

# Correos
cat > "$CASO/correo/mensaje_01.txt" <<'EOF'
De: responsable@empresa.example
Para: empleado@empresa.example
Asunto: Informe del incidente

Necesitamos revisar el informe generado por el departamento técnico.
Está guardado con el resto de documentación del expediente.
EOF

cat > "$CASO/correo/mensaje_02.txt" <<'EOF'
De: empleado@empresa.example
Para: responsable@empresa.example
Asunto: Documento recibido

He descargado el documento que me enviaron.
Lo he dejado en el directorio habitual de descargas.
EOF

# Descargas
cat > "$CASO/descargas/documento_recibido.txt" <<'EOF'
DOCUMENTO RECIBIDO

Documento pendiente de clasificación.
Debe determinarse si está relacionado con el incidente.
EOF

# Temporal
cat > "$CASO/temporal/borrador.txt" <<'EOF'
BORRADOR

Notas preliminares del análisis.
Este documento todavía no constituye una versión definitiva.
EOF
