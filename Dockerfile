FROM node:16
WORKDIR /usr/src
COPY package*.json ./
COPY yarn.lock ./
COPY . .
EXPOSE 8000
EXPOSE 3333
CMD yarn install && yarn start

