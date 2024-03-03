#!/bin/bash
if [ -f .env ]; then
  php artisan serve --host 0.0.0.0 --port 8000
else
  cat .env.example > .env
  composer update
  composer install
  php artisan key:generate
  php artisan serve --host 0.0.0.0 --port 8000
fi