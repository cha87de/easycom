FROM php:7.2-apache
MAINTAINER alb-TEC engineering <info@alb-tec.de>

# setup apache config
RUN a2enmod rewrite
RUN a2enmod actions
RUN rm /etc/apache2/sites-available/* && rm /etc/apache2/sites-enabled/*
ADD run-dev/apache2-easycom.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/*.conf /etc/apache2/sites-enabled/

COPY easycom.tgz /var/www/html
WORKDIR /var/www/html
RUN tar xfz easycom.tgz