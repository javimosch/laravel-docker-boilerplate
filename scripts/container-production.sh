cp /app/config/php-production.ini $PHP_INI_DIR/php.ini -r
echo Serving for production
echo NODE_ENV $NODE_ENV
echo PORT $PORT
php /app/dist/artisan serve --host 0.0.0.0 