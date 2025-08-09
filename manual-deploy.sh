#!/bin/bash

# Ручной деплой на ВМ
# Использование: ./manual-deploy.sh

VM_HOST="158.160.186.95"
VM_USER="developer"

echo "🚀 Ручной деплой на ВМ..."

# Создаем архив
echo "Создаем архив..."
tar -czf deploy.tar.gz index.html README.md

echo "📦 Архив создан: deploy.tar.gz"
echo ""
echo "📋 Инструкции по деплою:"
echo ""
echo "1. Войдите в консоль ВМ через Яндекс.Облако"
echo "2. Выполните команды:"
echo ""
echo "   # Создайте директорию"
echo "   sudo mkdir -p /var/www/testenv-landing"
echo ""
echo "   # Установите nginx если не установлен"
echo "   sudo apt update"
echo "   sudo apt install nginx -y"
echo ""
echo "3. Загрузите файл deploy.tar.gz на ВМ"
echo "4. Распакуйте архив:"
echo "   sudo tar -xzf deploy.tar.gz -C /var/www/testenv-landing/"
echo ""
echo "5. Настройте nginx:"
echo "   sudo tee /etc/nginx/sites-available/testenv-landing << 'EOF'"
echo "   server {"
echo "       listen 80;"
echo "       server_name $VM_HOST;"
echo "          root /var/www/testenv-landing;"
echo "       index index.html;"
echo "   }"
echo "   EOF"
echo ""
echo "6. Активируйте сайт:"
echo "   sudo ln -s /etc/nginx/sites-available/testenv-landing /etc/nginx/sites-enabled/"
echo "   sudo rm -f /etc/nginx/sites-enabled/default"
echo "   sudo systemctl restart nginx"
echo ""
echo "7. Сайт будет доступен по адресу:"
echo "   http://$VM_HOST"
