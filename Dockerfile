ARG PHP_VERSION
FROM likesistemas/php-dev:${PHP_VERSION}
ARG PHP_VERSION
RUN echo "PHP_VERSION: ${PHP_VERSION%%.*}"
RUN if [ "${PHP_VERSION%%.*}" != "5" ]; then \
        composer global require phpstan/phpstan:~2.0.4 rector/rector:~2.0.1 friendsofphp/php-cs-fixer:~3.52.1 -W; \
    fi