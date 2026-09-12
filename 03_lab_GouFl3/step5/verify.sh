#!/bin/bash

FILE="/opt/caso03/trabajo/puerto_8080.txt"

test -s "$FILE" || exit 1

grep -q "LISTEN" "$FILE" || exit 1
grep -q "8080" "$FILE" || exit 1

exit 0
