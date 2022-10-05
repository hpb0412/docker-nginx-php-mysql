FROM php:8.1.4-fpm

RUN apt update && apt upgrade -y
RUN docker-php-ext-install pdo_mysql
