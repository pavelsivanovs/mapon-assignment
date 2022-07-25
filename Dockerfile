FROM php:7.4-apache
RUN apt-get -y update && apt-get -y install git zip unzip
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
