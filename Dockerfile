FROM php:7.2-apache
MAINTAINER alb-TEC engineering <info@alb-tec.de>

# prepare for pdf creation
RUN apt-get update && apt-get install -y texlive-full

# overwrite entrypoint
COPY docker-php-entrypoint /usr/local/bin/

# setup apache config
RUN a2enmod rewrite
RUN a2enmod actions
RUN rm /etc/apache2/sites-available/* && rm /etc/apache2/sites-enabled/*
ADD run-dev/apache2-easycom.conf /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/*.conf /etc/apache2/sites-enabled/

# place easycom build into container
COPY easycom.tgz /var/www/html
WORKDIR /var/www/html
RUN tar xfz easycom.tgz

ENV HTUSER=admin
ENV HTPASS=admin

VOLUME /var/www/html/easycom-phpbackend/_data

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 80
CMD ["apache2-foreground"]