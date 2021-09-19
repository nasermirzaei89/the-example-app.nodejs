FROM node:9

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install

COPY . .

USER node

CMD ["npm", "run", "start:dev"]
