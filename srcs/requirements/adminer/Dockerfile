FROM hsaadaou/alpine_base

COPY adminer.php adminer.php

RUN apk add php7 php7-session php7-pdo php7-mysqli openssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/localhost.pem -keyout /etc/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=Nginx K8s FT/OU=Saadaoui Hassan/CN=localhost"

RUN sed -i 's/;openssl.capath=/openssl.capath=\/etc\/ssl\//g' /etc/php7/php.ini

CMD [ "php", "-S", "0.0.0.0:5000", "adminer.php" ]
