#!/bin/bash

# Скрипт для ручной загрузки файлов на ВМ
# Использование: ./deploy.sh

VM_HOST="158.160.186.95"
VM_USER="developer"
VM_PATH="/var/www/testenv-landing"

echo "🚀 Загружаем файлы на ВМ..."

# Создаем архив с файлами
tar -czf deploy.tar.gz index.html README.md

# Загружаем архив на ВМ
scp deploy.tar.gz $VM_USER@$VM_HOST:/tmp/

# Распаковываем на ВМ (если есть доступ)
ssh $VM_USER@$VM_HOST << 'EOF'
    sudo mkdir -p /var/www/testenv-landing
    sudo tar -xzf /tmp/deploy.tar.gz -C /var/www/testenv-landing/
    sudo chown -R www-data:www-data /var/www/testenv-landing/
    sudo systemctl reload nginx
    rm /tmp/deploy.tar.gz
EOF

# Очищаем локальный архив
rm deploy.tar.gz

echo "✅ Деплой завершен!"
echo "🌐 Сайт доступен по адресу: http://$VM_HOST"
