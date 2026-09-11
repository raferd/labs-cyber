#!/bin/bash
CASO="/opt/caso02"
FILE="$CASO/documentos/contrato_cliente.txt"
BASE="$CASO/.originales/contrato_cliente.txt"

test -f "$FILE" || exit 1
MODE="$(stat -c '%a' "$FILE")"
test "$MODE" = "640" || exit 1
OWNER="$(stat -c '%U:%G' "$FILE")"
test "$OWNER" = "responsable:juridico" || exit 1
cmp -s "$FILE" "$BASE" || exit 1
exit 0
