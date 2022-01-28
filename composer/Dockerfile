ARG BASE_IMAGE

FROM $BASE_IMAGE

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=composer  /docker-entrypoint.sh  /docker-entrypoint.sh

ENV COMPOSER_HOME /tmp
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apk add tini

WORKDIR /var/www/html

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["composer"]