FROM mhart/alpine-node:latest

RUN apk add --update git && \
    git clone https://github.com/etsy/statsd.git

WORKDIR /statsd

RUN npm install --production

COPY test/config.js /statsd/config.js
COPY lib/influxdb.js node_modules/statsd-influxdb-backend/index.js

EXPOSE 8125 8126

CMD npm start
