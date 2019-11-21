FROM php:7.2-apache 
COPY ./config/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./config/ports.conf /etc/apache2/ports.conf
COPY ./config/apache2.conf /etc/apache2/apache2.conf
#RUN docker-php-ext-install pdo pdo_mysql 
RUN a2enmod rewrite 
COPY test/ /var/www/html/test 
WORKDIR /var/www/html/test
RUN chown -R www-data:www-data tmp
