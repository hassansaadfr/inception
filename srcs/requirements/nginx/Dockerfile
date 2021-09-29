FROM hsaadaou/alpine_base

RUN apk add nginx

RUN openrc
RUN touch /run/openrc/softlevel

COPY default /etc/nginx/conf.d/default.conf
COPY proxy_params /etc/nginx/proxy_params

EXPOSE 80 443
RUN mkdir /var/run/nginx/
CMD ["nginx", "-g", "daemon off;"]
