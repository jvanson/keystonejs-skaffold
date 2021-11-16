FROM node:lts-alpine3.14
#FROM alpine:3.13
WORKDIR /var/tmp
COPY package.json /var/tmp
COPY index.js /var/tmp
RUN npm install

RUN apk add postgresql-client
COPY create* /var/tmp/
RUN chmod 755 /var/tmp/create*


