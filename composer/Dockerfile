FROM mimidots/php7.4.23-fpm-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=composer  /docker-entrypoint.sh  /docker-entrypoint.sh

RUN apk add tini

WORKDIR /var/www/html

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["composer"]