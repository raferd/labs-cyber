#!/bin/bash
DIR="/opt/caso02/procesos"
EXE="$DIR/proceso"
PIDFILE="$DIR/proceso.pid"

test -x "$EXE" || exit 1
test -f "$PIDFILE" || exit 1
PID="$(cat "$PIDFILE")"
case "$PID" in ''|*[!0-9]*) exit 1 ;; esac
if kill -0 "$PID" 2>/dev/null; then
    STATE="$(ps -p "$PID" -o stat= 2>/dev/null | tr -d ' ')"
    case "$STATE" in Z*) ;; *) exit 1 ;; esac
fi
exit 0
