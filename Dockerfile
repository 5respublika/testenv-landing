FROM nginx:alpine

# Копируем файлы сайта
COPY index.html /usr/share/nginx/html/
COPY README.md /usr/share/nginx/html/

# Копируем конфигурацию nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
