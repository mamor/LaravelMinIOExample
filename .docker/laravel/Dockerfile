FROM php:7.4-alpine

WORKDIR /app

RUN apk --update add git libmemcached-dev zlib-dev

RUN git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached
RUN git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis

RUN docker-php-ext-install memcached pdo_mysql redis
