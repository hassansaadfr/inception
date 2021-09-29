FROM hsaadaou/alpine_base

RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session composer

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /wp-cli.phar
RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/wordpress

RUN wp core download --locale=fr_FR --path=/var/wordpress/

RUN openrc
RUN touch /run/openrc/softlevel

COPY init.sh /
RUN chmod +x init.sh

EXPOSE 5050

CMD ./init.sh
