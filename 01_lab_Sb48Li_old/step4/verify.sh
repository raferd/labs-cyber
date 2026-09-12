#!/bin/bash

CASO="$HOME/caso"

test -d "$CASO/evidencias" || exit 1

test -f "$CASO/evidencias/informe_incidente.txt" || exit 1
test -f "$CASO/evidencias/documento_recibido.txt" || exit 1

test -f "$CASO/documentos/informe_incidente.txt" || exit 1
test -f "$CASO/descargas/documento_recibido.txt" || exit 1

cmp -s \
  "$CASO/documentos/informe_incidente.txt" \
  "$CASO/evidencias/informe_incidente.txt" || exit 1

cmp -s \
  "$CASO/descargas/documento_recibido.txt" \
  "$CASO/evidencias/documento_recibido.txt" || exit 1

exit 0
