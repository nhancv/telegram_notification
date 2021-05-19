#!/bin/bash
TELEGRAM_CHAT_ID=$1
TELEGRAM_MESSAGE=$2
TELEGRAM_BOT_TOKEN=$3
curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": ${TELEGRAM_CHAT_ID}, \"text\": \"${TELEGRAM_MESSAGE}\", \"disable_notification\": false}" \
     https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage