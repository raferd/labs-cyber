#!/bin/bash

PIDFILE="/opt/caso03/servidor.pid"

test -f "$PIDFILE" || exit 1

PID="$(cat "$PIDFILE")"

case "$PID" in
    ''|*[!0-9]*)
        exit 1
        ;;
esac

if kill -0 "$PID" 2>/dev/null; then
    STATE="$(ps -p "$PID" -o stat= 2>/dev/null | tr -d ' ')"
    case "$STATE" in
        Z*) ;;
        *) exit 1 ;;
    esac
fi

ss -ltn 2>/dev/null | grep -q ':8080' && exit 1

exit 0
