cp /app/config/php-development.ini $PHP_INI_DIR/php.ini -r
echo Serving for development
echo NODE_ENV $NODE_ENV
echo PORT $PORT
php /app/laravel/artisan serve --host 0.0.0.0 