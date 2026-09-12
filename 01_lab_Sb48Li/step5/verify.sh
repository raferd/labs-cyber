#!/bin/bash

FILE="$HOME/caso/observaciones.txt"

test -f "$FILE" || exit 1

EXPECTED=$'Revisión inicial del expediente\nSe ha localizado el informe del incidente.'
ACTUAL="$(cat "$FILE")"

test "$ACTUAL" = "$EXPECTED" || exit 1

exit 0
