FROM node:18-alpine

WORKDIR /app

COPY . .

ENV NODE_ENV production

RUN npm install

RUN npm run start

EXPOSE 1337

CMD ["npm", "start"]