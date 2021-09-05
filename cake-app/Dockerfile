FROM composer:2.0 as php-composer

COPY composer.json composer.json
COPY composer.lock composer.lock

FROM php:7.3-apache
# RUN apt-get update \
#         && apt-get install -y libicu-dev　git　unzip \
#         && docker-php-ext-install pdo_mysql intl zip 
RUN apt-get update && apt-get install -y \
        git \
        nano \
        libicu-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    && docker-php-ext-install intl \
    && rm -rf /var/lib/apt/lists/*


RUN eval "php -m | grep -e mbstring -e intl -e SimpleXML"



COPY . /var/www/html
WORKDIR /var/www/html

EXPOSE 8228