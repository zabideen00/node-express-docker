FROM node:18-alpine

LABEL maintainer="Zain Ul Abideen zainulabideen1258@gmail.com"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENTRYPOINT /bin/sh entrypoints/entrypoint.sh
