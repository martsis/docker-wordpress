FROM martsis/php:7.3-fpm

RUN apt-get -y update && apt-get -y install unzip \
    && cd /var/www/html/site \
    && wget https://ru.wordpress.org/latest-ru_RU.zip -O wordpress.zip \
    && unzip wordpress.zip -d ./ \
    && apt-get -y purge unzip \
    && apt-get -y autoremove \
    && rm wordpress.zip

WORKDIR "/var/www/html/site"