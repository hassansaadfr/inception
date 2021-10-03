FROM hsaadaou/alpine_base

ARG MYSQL_ROOT_PASSWORD
ARG WP_DB_NAME
ARG ADMIN_WP_USER
ARG ADMIN_WP_PASS

RUN addgroup root mygrp

RUN apk add mariadb mariadb-common mariadb-client

COPY init.sh .
RUN chmod +x init.sh

COPY init_db.sh init_db.sh
RUN chmod +x init_db.sh

EXPOSE 3306

RUN ./init.sh

CMD ["mysqld", "--user=root"]
