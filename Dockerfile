FROM node:7

MAINTAINER Justin Ferrieu

RUN mkdir -p /srv/webapp

COPY package.json /srv/webapp

WORKDIR /srv/webapp
RUN npm install --quiet
COPY . /srv/webapp

RUN npm run build:production

EXPOSE 3000
CMD ["npm", "start"]
