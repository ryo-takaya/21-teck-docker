FROM composer:2.0 as php-composer

COPY composer.json composer.json
COPY composer.lock composer.lock

EXPOSE 8888

FROM php:8-apache