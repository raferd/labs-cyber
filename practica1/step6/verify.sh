#!/bin/bash

CASO="$HOME/caso"

test -f "$CASO/evidencias/borrador_original.txt" || exit 1
test -s "$CASO/evidencias/borrador_original.txt" || exit 1

test ! -e "$CASO/temporal/borrador.txt" || exit 1
test ! -e "$CASO/evidencias/borrador.txt" || exit 1

exit 0
