FROM hsaadaou/alpine_base

RUN apk add redis

RUN sed -i 's/bind 127.0.0.1/#bind 127.0.0.1/g' /etc/redis.conf

CMD ["redis-server", "--protected-mode no"]
