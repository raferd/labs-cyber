#!/bin/bash

# Comprueba que el alumno ha creado el archivo fuente
if [ ! -f programa.c ]; then
    echo "No se encuentra el archivo programa.c"
    exit 1
fi

# Comprueba que existe el programa compilado
if [ ! -x programa ]; then
    echo "No se encuentra el ejecutable programa."
    echo "¿Has compilado programa.c con gcc?"
    exit 1
fi

# Comprueba que el programa funciona
if ! ./programa | grep -q "Hola. Mi PID es"; then
    echo "El programa existe, pero su salida no es la esperada."
    exit 1
fi

echo "Correcto: has creado, compilado y ejecutado el programa."
exit 0
