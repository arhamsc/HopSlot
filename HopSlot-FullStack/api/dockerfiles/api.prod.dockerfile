FROM node:22

RUN npm i -g bun

WORKDIR /app

RUN apt-get update

RUN apt-get -y install curl

RUN apt-get install -y --no-install-recommends \
    python3 \
    make \
    g++


# --virtual: bundle packages, remove whole bundle at once, when done
RUN addgroup --system hopslot-prod
RUN adduser --system hopslot --ingroup hopslot-prod

COPY package.json ./
COPY bun.lockb ./

COPY ./prisma ./prisma

# Install app dependencies using the `npm ci` command instead of `npm install`
RUN bun install

RUN bun run prisma:generate:db_clients

# Bundle app source
COPY . .

# USER hopslot:hopslot-prod

ENV NODE_ENV=production

CMD [ "bun", "run", "start" ]
