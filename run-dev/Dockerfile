FROM php:7.1-apache
MAINTAINER alb-TEC engineering <info@alb-tec.de>

# prepare for pdf creation
#RUN apt-get update && apt-get install -y texlive-full 

# setup apache config
RUN a2enmod rewrite
RUN a2enmod actions
RUN rm /etc/apache2/sites-available/* && rm /etc/apache2/sites-enabled/*
ADD ./apache-conf/* /etc/apache2/sites-available/
RUN ln -s /etc/apache2/sites-available/*.conf /etc/apache2/sites-enabled/

# Set Apache environment variables
#ENV APACHE_LOG_DIR /var/log/apache2
#ENV APACHE_SERVERNAME localhost
#ENV APACHE_SERVERALIAS docker.localhost
#EXPOSE 80

VOLUME /var/www/html/