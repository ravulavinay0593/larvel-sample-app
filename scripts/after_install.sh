#!/bin/bash
cd /var/www/html
composer install --no-dev --prefer-dist
php artisan migrate --force
php artisan cache:clear
php artisan config:clear
php artisan storage:link
