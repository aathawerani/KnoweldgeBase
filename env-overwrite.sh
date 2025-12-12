#!/usr/bin/with-contenv bash

cat <<EOF > /config/www/.env
APP_KEY=${APP_KEY}
APP_URL=${APP_URL}

DB_HOST=${DB_HOST}
DB_DATABASE=${DB_DATABASE}
DB_USERNAME=${DB_USER}
DB_PASSWORD=${DB_PASS}

STORAGE_TYPE=local

MAIL_DRIVER=smtp
MAIL_HOST=localhost
MAIL_PORT=587
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
EOF

echo "✔ BookStack .env has been rewritten from docker-compose environment variables"
