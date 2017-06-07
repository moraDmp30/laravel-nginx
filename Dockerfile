FROM ej52/alpine-nginx-php:latest
LABEL autor = "Daniel Mora Pastor"

RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www

RUN composer create-project --prefer-dist laravel/laravel laravel

CMD ["bash"]
