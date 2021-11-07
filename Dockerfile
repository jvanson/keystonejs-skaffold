FROM node:lts-alpine3.14

RUN apk add dumb-init
WORKDIR /usr/src/app
RUN chown node:node /usr/src/app
USER node
RUN npm install mocha
COPY --chown=node:node package.json /usr/src/app
RUN npm install
COPY --chown=node:node index.js /usr/src/app

EXPOSE 3000

#RUN yarn create-tables
CMD ["dumb-init", "yarn", "dev"]
#CMD [ "yarn", "dev" ]