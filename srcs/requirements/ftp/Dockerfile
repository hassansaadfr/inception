FROM hsaadaou/alpine_base

RUN addgroup root mygrp

RUN apk add vsftpd openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=FR/ST=Paris/L=Paris/O=FTP FT/OU=Saadaoui Hassan/CN=localhost"

COPY init.sh .
RUN chmod +x init.sh

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 20 21 30020 30021 30022

CMD ./init.sh
