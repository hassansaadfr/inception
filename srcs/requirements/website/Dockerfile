FROM hsaadaou/alpine_base

RUN apk add nodejs npm

WORKDIR /srv

COPY src srcs
COPY public public
COPY package.json package.json

RUN npm i -y
RUN npm run build
CMD ["npm", "run", "serve"]
