nohup sleep 3600 >/dev/null 2>&1 &
echo $! > "$BASE/sistema/proceso2.pid"
