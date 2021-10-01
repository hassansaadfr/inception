FROM hsaadaou/alpine_base

RUN apk add nginx openssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/localhost.pem -keyout /etc/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=Nginx K8s FT/OU=Saadaoui Hassan/CN=localhost"

COPY default /etc/nginx/conf.d/default.conf
COPY proxy_params /etc/nginx/proxy_params

EXPOSE 80 443
RUN mkdir /var/run/nginx/
CMD ["nginx", "-g", "daemon off;"]
