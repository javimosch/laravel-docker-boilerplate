#FROM php:7.2-fpm
FROM php:7-cli-alpine
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apk add --no-cache bash
WORKDIR /app
