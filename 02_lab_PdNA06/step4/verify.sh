#!/bin/bash
CASO="/opt/caso02"
ORIGINAL="$CASO/documentos/contrato_cliente.txt"
BASE="$CASO/.originales/contrato_cliente.txt"
COPY="$CASO/trabajo/contrato_cliente_copia.txt"
HASH="$CASO/trabajo/hash_original.txt"

test -f "$ORIGINAL" || exit 1
test -f "$COPY" || exit 1
test -f "$HASH" || exit 1
cmp -s "$ORIGINAL" "$BASE" || exit 1
sha256sum -c "$HASH" >/dev/null 2>&1 || exit 1
cmp -s "$ORIGINAL" "$COPY" && exit 1
grep -Fxq "Anotación añadida durante la revisión." "$COPY" || exit 1
exit 0
