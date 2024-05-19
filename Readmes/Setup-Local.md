# Local Setup for HopSlot environment

Pre-requisites:

1. Git installed and setup with SSH keys(optional SSH).

2. Bun installed as a runtime.

3. Docker installed.

Required Additional Services/Accounts:

  1. Docker hub account

  2. Firebase account

  3. Github account

  4. Cloudinary account

---

Note:

in fullstack folder, dont run before setting up docker. Only do the setup steps and not the run steps.

## 1. Hopslot-DL

Required modules:

1. Python: 3.12

2. PyTorch

3. Scikit-learn

4. Pandas

5. Numpy

6. joblib

7. Jupyter Notebook

This is standard procedure to run, you can run the encoder file first and then the model file. Note that, the storage path is in django api, you can change it to your desired path.

## 2. Hopslot-FullStack/api

Runtime: Bun

Steps to setup:

1. Copy the .env.example to .env and fill the required fields.

2. Run `bun install` to install the dependencies.

3. If you are running the postgresql database as a fresh instance then run `bun run postgres:migrate:dev` to migrate the database, if not then run `bun run prisma:generate:db_clients` to generate the prisma clients for both databases. Here you can create another .env.local file to store the database URLs not as the docker service names but as the localhost.

    Use   `./api.sh -l .env.local ...` to run the commands with the local database.

4. If mongodb is fresh instance then `bunx prisma db seed` to seed the mongodb database.

5. Run `bun run start:dev` to start the server.

Package.json scripts:

Until `test:e2e` all the scripts are nest-js default scripts.

1. `postgres:migrate:dev` - Migrate the postgresql database.

2. `postgres:migrate:dev:create` - Create the migration for postgresql database.

3. `postgres:migrate:deploy` - Deploy the migration for postgresql database.

4. `prisma:postgres:dbpush` - Push the postgresql database.

5. `prisma:mongo:dbpush` - Push the mongodb database.

6. `prisma:generate:postgres_client` - Generate the prisma clients for postgresql database.

7. `prisma:generate:mongo_client` - Generate the prisma clients for mongodb database.

8. `prisma:generate:db_clients` - Generate the prisma clients for both databases.

## 3. Hopslot-FullStack/django-api

Runtime: Python 3.12

Steps to setup:

  1. Copy the .env.example to .env and fill the required fields.

  2. This is done is docker container so you need not worry about setup as it is already setup in the dockerfile.

  3. There is also a requirements.txt file which contains the required python packages.

## 4. Hopslot-FullStack/app

Runtime: Flutter 3.20+

Steps to setup:

  1. Copy the .env.example to .env and fill the required fields.

  2. Run `flutter pub get` to install the dependencies.

  3. Init firebase project using flutterfire CLI.

  4. Run `flutter run` to start the app.

  5. In env api url specify your PC IP address as host (if testing on real device) or locahost if testing on emulator.

## 5. Hopslot-FullStack/docker

All commands can be run using `docker compose [...]`.

The system it is tested on is MacOS Sanoma with M2 Max Chip.

Steps to run:

Pre-requisites:

1. Create a folder `bind-mounts` if in dev mode or `bind-mounts-prod` if in prod mode, and create a folder `kui` in it and then create **FILE** called `config.yaml`, this is important for kafka UI startup as if you leave it to docker to create files, it will create folders only so kui will fail.

2. Create a folder `env` and copy the .env files env-example files in it and setup the env variables.

*Please maintain the order of service startup*

1. `docker compose up -d redis pg-db` to start the redis and postgresql database.

2. `docker compose up -d mongo-helper mongo-db-primary mongo-db-secondary-1 mongo-db-secondary-2` to start the mongodb database.

3. After mongo cluster is full app and running check logs of `mongo-helper` by running `docker compose logs mongo-helper` and check if it has 'OK!' in the logs. If it says 'User or db already exists' then ignore if anything else then restart this one container by running `docker compose restart mongo-helper`.
It is responsible for creating the database and user in the primary mongo database.

4. `docker compose up -d kafka-controller-1 kafka-controller-2 kafka-controller-3` to start the kafka cluster controllers. (Wait for 2 to 5 sec)

5. `docker compose up -d kafka-broker-1 kafka-broker-2 kafka-broker-3` to start the kafka cluster brokers. (Wait for 2 to 5 sec) Check the logs to see if Kafka Server is running.

6. `docker compose up -d kafka-ui` to start the kafka ui. Now you can go to localhost:8080 to see the kafka ui and the 3 brokers.

7. `docker compose build hopslot-api hopslot-django-api` to build the api and django-api images. (*IMP* Dont forget to build the images before running the containers)

8. `docker compose up -d hopslot-api hopslot-django-api` to start the api and django-api containers.

If nest-api fails once telling kafka producer doesn't have partitions or something just restart the container, it should fix itself.