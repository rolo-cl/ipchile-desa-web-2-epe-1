#FROM php:7.4-apache
FROM ldwsstudios/site-chilecampanas:0.0.2

RUN rm -fr /var/www/html/*

COPY src/ /var/www/html
COPY app-version.txt /var/www/html
COPY app-date-build.txt /var/www/html
RUN TZ="America/Santiago" date +"%Y-%m-%d_%H:%M" > version.txt

RUN ls -la /var/www/html/

RUN mkdir /var/www/html/storage/
RUN ln -s /storage/e-commerce/sistema/ /var/www/html/storage/
#RUN chmod -R 775 /var/www/html/
#RUN chown -R www-data /var/www/html/

EXPOSE 80
#EXPOSE 443
