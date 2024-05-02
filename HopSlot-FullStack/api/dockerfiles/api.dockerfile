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

COPY .env .env

COPY . .


# Next.js collects completely anonymous telemetry data about general usage. Learn more here: https://nextjs.org/telemetry
# Uncomment the following line to disable telemetry at run time
ENV NEXT_TELEMETRY_DISABLED 1

CMD bun run start:dev