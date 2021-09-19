FROM php:7.4.23-fpm-alpine3.14

RUN apk update && apk add build-base

#RUN apk add bash && apk add bash-completion

RUN docker-php-ext-install pdo pdo_mysql bcmath exif

RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd  --with-freetype=/usr/include/  --with-jpeg=/usr/include/ \
  && nproc=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${nproc} gd \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev



EXPOSE 9000
CMD ["php-fpm"]