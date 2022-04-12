FROM php:7.4.28-fpm-alpine3.15

WORKDIR /var/www/html

#install GD
RUN apk add --no-cache freetype libpng libjpeg-turbo   \
  && apk add --virtual build-deps freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd  --with-freetype=/usr/include/  --with-jpeg=/usr/include/ \
  && nproc=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${nproc} gd \
  && apk del build-deps

RUN docker-php-ext-install pdo pdo_mysql bcmath exif
RUN CFLAGS="$CFLAGS -D_GNU_SOURCE" docker-php-ext-install sockets

RUN apk add --no-cache libzip-dev && docker-php-ext-configure zip \
    && docker-php-ext-install zip

EXPOSE 9000

CMD ["php-fpm"]