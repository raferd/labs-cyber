#!/bin/bash

SOURCE="/opt/caso03/web/aviso.txt"
COPY="/opt/caso03/trabajo/respuesta.txt"
LOG="/opt/caso03/servidor.log"

test -f "$COPY" || exit 1

cmp -s "$SOURCE" "$COPY" || exit 1

test -f "$LOG" || exit 1
grep -q "GET /aviso.txt" "$LOG" || exit 1

exit 0
