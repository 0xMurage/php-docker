FROM php:8.1.5-fpm-alpine3.15

WORKDIR /var/www/html

#install GD
RUN apk add --no-cache freetype libpng libjpeg-turbo   \
  && apk add --virtual build-deps freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd  --with-freetype=/usr/include/  --with-jpeg=/usr/include/ \
  && nproc=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${nproc} gd \
  && apk del build-deps

RUN docker-php-ext-install pdo pdo_mysql bcmath exif sockets

RUN apk add --no-cache libzip-dev && docker-php-ext-configure zip \
    && docker-php-ext-install zip


RUN apk add --no-cache  zlib-dev icu-dev  && docker-php-ext-configure intl \
      && docker-php-ext-install intl


EXPOSE 9000

CMD ["php-fpm"]