FROM node:7.7
COPY package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir /src && cp -a /tmp/node_modules /src
WORKDIR /src
COPY . /src/
RUN npm run build:production

EXPOSE 3000
CMD ["npm", "start"]
