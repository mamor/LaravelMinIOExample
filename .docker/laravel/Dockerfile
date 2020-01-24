FROM php:7.4-alpine

WORKDIR /app

RUN apk update \
    && apk add --no-cache libmemcached-dev libzip-dev \
    && apk add --no-cache --virtual build-dependencies git \
    && git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached \
    && git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis

RUN docker-php-ext-install memcached pdo_mysql redis zip

RUN apk del --purge build-dependencies \
    && rm -rf /usr/src/php/ext/memcached \
    && rm -rf /usr/src/php/ext/redis

RUN apk add chromium chromium-chromedriver ttf-freefont
