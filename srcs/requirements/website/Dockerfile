FROM hsaadaou/alpine_base

RUN apk add nodejs npm

ARG PUBLIC_URL https://hsaadaou.42.fr/website

WORKDIR /srv

COPY src src
COPY public public
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm i --silent
RUN npm run build

RUN apk add nginx

RUN rm -rf /var/www/*
RUN mkdir -p /var/www/website
RUN mv build/* /var/www/website/

COPY default /etc/nginx/http.d/default.conf

RUN mkdir /var/run/nginx/

CMD ["nginx", "-g", "daemon off;"]
