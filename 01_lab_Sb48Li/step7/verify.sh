#!/bin/bash

CASO="$HOME/caso"

test ! -e "$CASO/prueba_eliminar.txt" || exit 1

exit 0
