FROM node:20-alpine

WORKDIR /pages

COPY . .

RUN npm install -g pnpm

RUN pnpm install

RUN pnpm run build

EXPOSE 3000

CMD ["npm", "start"]