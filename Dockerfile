ARG PHP_VERSION=74
FROM likesistemas/php-dev:${PHP_VERSION}
RUN if [ "${PHP_VERSION}" != "56" ]; then \
        composer global require phpstan/phpstan:~2.0.4 rector/rector:~2.0.1 friendsofphp/php-cs-fixer:~3.52.1 -W \
    fi