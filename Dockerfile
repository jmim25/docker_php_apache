FROM php:apache-bullseye

# https://gist.github.com/hoandang/88bfb1e30805df6d1539640fc1719d12
RUN apt update
RUN apt upgrade -y
RUN apt install -y apt-utils
RUN a2enmod rewrite
# RUN docker-php-ext-install mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
