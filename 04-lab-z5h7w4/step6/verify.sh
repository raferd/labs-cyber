#!/bin/bash
FILE="/opt/caso04/trabajo/dictamen.txt"
test -f "$FILE" || exit 1
grep -Fxq "A=NO" "$FILE" || exit 1
grep -Fxq "B=NO" "$FILE" || exit 1
grep -Fxq "C=SI" "$FILE" || exit 1
grep -Fxq "D=NO" "$FILE" || exit 1
grep -Fxq "E=NO" "$FILE" || exit 1
COUNT="$(grep -Ec '^[A-E]=(SI|NO)$' "$FILE")"
test "$COUNT" -eq 5 || exit 1
exit 0
