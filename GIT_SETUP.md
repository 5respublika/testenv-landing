# 🚀 Размещение проекта в Git

## ✅ Что уже сделано

1. ✅ Инициализирован Git репозиторий
2. ✅ Создан `.gitignore` файл
3. ✅ Добавлены все файлы в репозиторий
4. ✅ Создан первый коммит

## 📋 Следующие шаги

### Вариант 1: GitHub

1. **Создайте новый репозиторий на GitHub:**
   - Перейдите на [github.com](https://github.com)
   - Нажмите "New repository"
   - Назовите репозиторий (например: `testenv-landing`)
   - НЕ инициализируйте с README (у нас уже есть)
   - Нажмите "Create repository"

2. **Подключите локальный репозиторий к GitHub:**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/testenv-landing.git
   git branch -M main
   git push -u origin main
   ```

### Вариант 2: GitLab

1. **Создайте новый проект на GitLab:**
   - Перейдите на [gitlab.com](https://gitlab.com)
   - Нажмите "New project"
   - Выберите "Create blank project"
   - Назовите проект (например: `testenv-landing`)
   - Нажмите "Create project"

2. **Подключите локальный репозиторий к GitLab:**
   ```bash
   git remote add origin https://gitlab.com/YOUR_USERNAME/testenv-landing.git
   git branch -M main
   git push -u origin main
   ```

### Вариант 3: Bitbucket

1. **Создайте новый репозиторий на Bitbucket:**
   - Перейдите на [bitbucket.org](https://bitbucket.org)
   - Нажмите "Create repository"
   - Назовите репозиторий (например: `testenv-landing`)
   - Нажмите "Create repository"

2. **Подключите локальный репозиторий к Bitbucket:**
   ```bash
   git remote add origin https://bitbucket.org/YOUR_USERNAME/testenv-landing.git
   git branch -M main
   git push -u origin main
   ```

## 🌐 GitHub Pages (для размещения сайта)

После размещения на GitHub, вы можете включить GitHub Pages:

1. Перейдите в настройки репозитория (Settings)
2. Прокрутите до секции "Pages"
3. В "Source" выберите "Deploy from a branch"
4. Выберите ветку "main" и папку "/ (root)"
5. Нажмите "Save"

Ваш сайт будет доступен по адресу: `https://YOUR_USERNAME.github.io/testenv-landing`

## 🔧 Полезные команды Git

```bash
# Проверить статус
git status

# Посмотреть историю коммитов
git log --oneline

# Добавить изменения
git add .

# Создать коммит
git commit -m "Описание изменений"

# Отправить изменения на сервер
git push

# Получить изменения с сервера
git pull

# Посмотреть удаленные репозитории
git remote -v
```

## 📝 Рекомендации

1. **Регулярно коммитьте изменения** - делайте коммиты после каждого значимого изменения
2. **Используйте понятные сообщения коммитов** - описывайте что именно изменилось
3. **Создавайте ветки для новых функций** - используйте `git checkout -b feature-name`
4. **Обновляйте README.md** - документируйте изменения в проекте

## 🎯 Готово!

После выполнения этих шагов ваш лендинг будет размещен в Git репозитории и доступен для совместной работы и развертывания.
