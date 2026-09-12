#!/bin/bash

PIDFILE="/opt/caso03/servidor.pid"

test -f "$PIDFILE" || exit 1

PID="$(cat "$PIDFILE")"

case "$PID" in
    ''|*[!0-9]*)
        exit 1
        ;;
esac

kill -0 "$PID" 2>/dev/null || exit 1

ps -p "$PID" -o cmd= 2>/dev/null | grep -q "http.server 8080" || exit 1

ss -ltn 2>/dev/null | grep -q ':8080' || exit 1

exit 0
