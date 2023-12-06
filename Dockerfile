FROM node:18.17.1-alpine
WORKDIR /app/admin

RUN rm -rf node_modules

COPY package.json .
COPY yarn.lock .
RUN yarn install
COPY . .

CMD ["yarn", "dev"]