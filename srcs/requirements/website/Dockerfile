FROM hsaadaou/alpine_base

RUN apk add nodejs npm

WORKDIR /srv

COPY build build
COPY package.json package.json

RUN npm i -y
CMD ["npm", "run", "serve"]
