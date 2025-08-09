#!/bin/bash

# Простой скрипт деплоя без SSH ключей
# Использование: ./deploy-simple.sh

VM_HOST="158.160.186.95"
VM_USER="developer"

echo "🚀 Простой деплой на ВМ..."

# Проверяем доступность ВМ
echo "Проверяем доступность ВМ..."
ping -c 3 $VM_HOST

# Создаем архив
echo "Создаем архив..."
tar -czf deploy.tar.gz index.html README.md

# Показываем размер архива
echo "Размер архива:"
ls -lh deploy.tar.gz

echo "✅ Архив готов для загрузки!"
echo "📦 Файл: deploy.tar.gz"
echo "🌐 ВМ: $VM_HOST"
echo ""
echo "Для загрузки на ВМ выполните:"
echo "scp deploy.tar.gz $VM_USER@$VM_HOST:/tmp/"
echo ""
echo "Или используйте веб-интерфейс для загрузки файла."
