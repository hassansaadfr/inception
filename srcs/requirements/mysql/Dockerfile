FROM hsaadaou/alpine_base

RUN apk add mariadb mariadb-common mariadb-client

COPY init.sh .
RUN chmod +x init.sh

COPY init_db.sh init_db.sh
RUN chmod +x init_db.sh

EXPOSE 3306

CMD "./init.sh"
