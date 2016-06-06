FROM php:7

RUN apt-get update && \
    apt-get -y install git-core

# setup workdir
RUN mkdir /home/dumplie
WORKDIR /home/dumplie

# upload composer files
COPY composer.json /home/dumplie

# install & run composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer install && composer clear-cache

# upload the rest of the code
COPY . /home/dumplie
WORKDIR /home/dumplie
