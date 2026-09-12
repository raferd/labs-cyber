#!/bin/bash
SRC="/opt/caso04/expediente/arquitectura.txt"
OUT="/opt/caso04/trabajo/almacenamiento_en_arquitectura.txt"
TMP="/tmp/caso04-almacenamiento-expected.$$"
test -f "$OUT" || exit 1
test -s "$OUT" || exit 1
grep "Almacenamiento" "$SRC" > "$TMP"
cmp -s "$OUT" "$TMP"
STATUS=$?
rm -f "$TMP"
exit $STATUS
