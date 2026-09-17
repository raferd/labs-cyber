#!/bin/bash
set -e
BASE="/opt/examen10"

if [ -f "$BASE/sistema/proceso.pid" ]; then
  kill "$(cat "$BASE/sistema/proceso.pid")" 2>/dev/null || true
fi
rm -rf "$BASE"

mkdir -p "$BASE/documentos" "$BASE/evidencias" "$BASE/sistema"

cat > "$BASE/documentos/informe.txt" <<'EOF'
INFORME DE INCIDENTE
Referencia: INC-2026-0916
Estado: BORRADOR
EOF

cat > "$BASE/documentos/informe_validado.txt" <<'EOF'
INFORME DE INCIDENTE
Referencia: INC-2026-0916
Estado: VALIDADO
EOF

cat > "$BASE/documentos/contrato.txt" <<'EOF'
CONTRATO DE SERVICIO
Clasificación: uso interno
EOF

cat > "$BASE/evidencias/original.txt" <<'EOF'
EVIDENCIA EXPORTADA
Referencia: EXP-77
Valor: 4200
EOF

cp "$BASE/evidencias/original.txt" "$BASE/evidencias/copia_A.txt"

cat > "$BASE/evidencias/copia_B.txt" <<'EOF'
EVIDENCIA EXPORTADA
Referencia: EXP-77
Valor: 4300
EOF

groupadd -f juridico >/dev/null 2>&1 || true
chown root:juridico "$BASE/documentos/contrato.txt"

chmod -R a+rX "$BASE"
chmod 640 "$BASE/documentos/contrato.txt"

nohup sleep 3600 >/dev/null 2>&1 &
echo $! > "$BASE/sistema/proceso.pid"
