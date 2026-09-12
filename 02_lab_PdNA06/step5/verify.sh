#!/bin/bash
DIR="/opt/caso02/procesos"
SRC="$DIR/proceso.c"
EXE="$DIR/proceso"
PIDFILE="$DIR/proceso.pid"

test -f "$SRC" || exit 1
test -x "$EXE" || exit 1
test -f "$PIDFILE" || exit 1
grep -q "getpid" "$SRC" || exit 1
grep -q "sleep" "$SRC" || exit 1
PID="$(cat "$PIDFILE")"
case "$PID" in ''|*[!0-9]*) exit 1 ;; esac
kill -0 "$PID" 2>/dev/null || exit 1
COMM="$(ps -p "$PID" -o comm= 2>/dev/null | tr -d '[:space:]')"
test "$COMM" = "proceso" || exit 1
exit 0
