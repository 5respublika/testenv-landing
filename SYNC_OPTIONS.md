# 🔄 Способы синхронизации Git и ВМ

## 🚀 Вариант 1: GitHub Actions (Рекомендуемый)

### Настройка:
1. **Добавьте секреты в GitHub:**
   - Перейдите в Settings → Secrets and variables → Actions
   - Добавьте:
     - `VM_HOST`: `158.160.182.219`
     - `VM_USERNAME`: `developer`
     - `VM_SSH_KEY`: ваш приватный SSH ключ
     - `VM_PORT`: `22`

2. **Автоматический деплой:**
   - При каждом push в main ветку
   - Файлы автоматически загружаются на ВМ

### Использование:
```bash
git add .
git commit -m "Update landing page"
git push origin main
# Автоматически деплоится на ВМ!
```

## 📦 Вариант 2: Ручная загрузка через SCP

### Использование:
```bash
# Сделайте скрипт исполняемым
chmod +x deploy.sh

# Запустите деплой
./deploy.sh
```

### Что делает скрипт:
- Создает архив с файлами
- Загружает на ВМ через SCP
- Распаковывает и настраивает веб-сервер

## 🐳 Вариант 3: Docker контейнер

### Сборка и запуск:
```bash
# Сборка образа
docker build -t testenv-landing .

# Запуск контейнера
docker run -d -p 80:80 testenv-landing

# Загрузка на ВМ
docker save testenv-landing | ssh user@vm "docker load"
```

## 🔗 Вариант 4: Webhook

### Настройка на ВМ:
1. Установите webhook сервер
2. Разместите `webhook/deploy.sh` на ВМ
3. Настройте GitHub webhook

### Использование:
- При push в репозиторий
- GitHub отправляет webhook на ВМ
- ВМ автоматически обновляется

## 📋 Вариант 5: Простая копия файлов

### Через SCP:
```bash
scp index.html developer@158.160.182.219:/var/www/html/
scp README.md developer@158.160.182.219:/var/www/html/
```

### Через rsync:
```bash
rsync -avz --delete ./ developer@158.160.182.219:/var/www/html/
```

## 🎯 Рекомендации

### Для разработки:
- **GitHub Actions** - автоматический деплой
- **Docker** - изолированная среда

### Для продакшена:
- **Webhook** - быстрые обновления
- **GitHub Actions** - надежный деплой

### Для тестирования:
- **Ручная загрузка** - простой способ
- **SCP/rsync** - быстрая синхронизация

## 🔧 Настройка ВМ

### Установка необходимого ПО:
```bash
# На ВМ
sudo apt update
sudo apt install git nginx docker.io -y

# Настройка nginx
sudo mkdir -p /var/www/testenv-landing
sudo chown -R $USER:$USER /var/www/testenv-landing
```

### Настройка SSH ключей:
```bash
# Генерация ключей на ВМ
ssh-keygen -t ed25519 -C "vm@example.com"

# Добавление в authorized_keys
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
```

## ✅ Готово!

Выберите подходящий способ синхронизации и начните использовать! 🚀
