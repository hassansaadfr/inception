FROM hsaadaou/alpine_base

RUN addgroup root mygrp

ARG WP_DB_NAME
ARG ADMIN_WP_USER
ARG ADMIN_WP_PASS

RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session composer php7-redis php7-ctype

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /wp-cli.phar
RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/wordpress

RUN mkdir -p /var/www/wordpress
RUN wp core download --locale=fr_FR --path=/var/www/wordpress

COPY init.sh /
RUN chmod +x init.sh

RUN sed -i 's/127.0.0.1:9000/9000/g' /etc/php7/php-fpm.d/www.conf
RUN sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php7/php-fpm.conf

RUN cat /etc/php7/php.ini | grep "extension=ctype.so" || echo "extension=ctype.so" >> /etc/php7/php.ini

CMD ["./init.sh"]
