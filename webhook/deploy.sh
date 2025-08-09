#!/bin/bash

# Webhook скрипт для автоматического обновления
# Размещается на ВМ и вызывается через webhook

LOG_FILE="/var/log/webhook.log"
REPO_PATH="/var/www/testenv-landing"
REPO_URL="https://github.com/5respublika/testenv-landing.git"

echo "$(date): Webhook triggered" >> $LOG_FILE

# Переходим в директорию репозитория
cd $REPO_PATH

# Обновляем код
git pull origin main >> $LOG_FILE 2>&1

# Перезапускаем веб-сервер
sudo systemctl reload nginx >> $LOG_FILE 2>&1

echo "$(date): Deployment completed" >> $LOG_FILE
