#!/bin/bash
SRC="/opt/caso04/expediente/cronologia.log"
OUT="/opt/caso04/trabajo/pod_afectado.txt"
TMP="/tmp/caso04-pod-expected.$$"
test -f "$OUT" || exit 1
test -s "$OUT" || exit 1
grep "portal-7bd96" "$SRC" > "$TMP"
cmp -s "$OUT" "$TMP"
STATUS=$?
rm -f "$TMP"
exit $STATUS
