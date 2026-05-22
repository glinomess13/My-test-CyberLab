#!/bin/bash

TOKEN="YOUR_TELEGRAM_BOT_TOKEN"
CHAT_ID="YOUR_TELEGRAM_CHAT_ID"

LOG_FILE="/root/vps_project/honey-logs/cowrie.json"

tail -fn0 "$LOG_FILE" | while read line; do
    if echo "$line" | grep -q "cowrie.login.success\|cowrie.login.failed"; then
        IP=$(echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | head -n 1)
        USER=$(echo "$line" | grep -oP '(?<="username":")[^"]*')
        PASS=$(echo "$line" | grep -oP '(?<="password":")[^"]*')

        MESSAGE="🚨 HONEYPOT ALERT! %0AIP: $IP %0AUser: $USER %0APass: $PASS"
        curl -s -X POST "https://telegram.org" -d chat_id="$CHAT_ID" -d text="$MESSAGE" > /dev/null
    fi
done
