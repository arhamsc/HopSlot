FROM node:latest

RUN npm i -g bun

WORKDIR /app

COPY package.json ./
COPY bun.lockb ./

RUN apt-get update

RUN apt-get -y install curl

RUN apt-get install -y --no-install-recommends \
    python3 \
    make \
    g++

COPY ./prisma ./prisma

RUN bun install

# Run using docker compose hopslot-api build first and then up
RUN bun run prisma:generate:db_clients

COPY . .

CMD bun run start:dev