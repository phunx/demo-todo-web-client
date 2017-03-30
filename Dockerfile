FROM node:7.7
RUN mkdir /src
WORKDIR /src
COPY package.json /src/
RUN npm install
COPY . /src/
RUN npm run build:production

EXPOSE 3000
CMD ["npm", "start"]
