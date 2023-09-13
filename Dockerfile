FROM php:8.2-apache
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" \
  && docker-php-ext-install mysqli \
  && docker-php-ext-enable mysqli