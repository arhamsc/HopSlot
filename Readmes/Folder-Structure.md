# Folder Structures

There are 3 root folders in this project.

1. Hopslot-DL:

    It contains the deep and machine learning related code.

2. Hopslot-FullStack:

    It contains the core working of this project, all the servers, client and docker.

3. Hopslot-SQL:

    Just a datagrip configuration file.

---

## 1. Hopslot-DL

This folder contains the deep and machine learning related code.

Python: 3.12

1. **Hopslot-DL/models**:

    This folder contains the deep learning models, which are stored for future use.

2. **Hopslot-DL/datasets/final**:

    This folder contains the final datasets, which are used for training the models.
    Its parent folder containers some intermediate datasets and old.

3. **Hopslot-DL/formats**:

    This folder contains the required json format and its related transformation functions for the API.

4. **Hopslot-DL/old.txt**:

    This file contains the old code, which is not used in the project.

5. **Hopslot-DL/**:

    This folder contains _Encode_Values.ipynb_ and _Hopslot_LR_model.ipynb_ files, which are used for multilabel binarizer and logistic regression model respectively.

---

## 2. Hopslot-FullStack/api

Runtime: Bun

This folder is the primary NestJS server, which is used for the API. It follows the classic NestJS structure.

1. It has multi database prisma setup, so in global/prisma we have service for both mongodb and postgresql.

2. It also has dockerfile to build the docker image.

3. standalone/zod-to-json-schema.ts can be run using `bun run` to generate the json schema from zod schema, mainly for use in ApiDog.

### 3. Hopslot-FullStack/django-api

Runtime: Python 3.20

This folder contains the django api which serves the model for prediction and mapping of the severity.

1. App module predict_symptoms contains the code for prediction.

2. It also has the dumped model and encoder for the prediction.

3. It has a dockerfile to build the docker image.

### 4. Hopslot-FullStack/app

Runtime: Flutter 3.20

It is the client side app for doctors and patients, to use.

1. It follows Clean Architecture.

2. It is plain clean architecture and not feature in layers.

3. **lib/**

    a. **config**: Contains the configuration function to be run in main() method.

    b. **core**: Contains the core logic, which is the api setup, constants, logger, router, theme and pragma_func file.

    c. **main**: Contains the clean architecture setup, which is the core logic of entire app. (Every layer has its own provider folder to serve riverpod providers.)

    >> data: Repositories and its providers.
    >>
    >> domain: Contains abstract classes, entity freezed classes, enums, reactive form generator classes, helper entities, models, global state freezed models, usecases and all its providers.
    >>
    >> application: Contains the location setup service and notification setup service and its providers.
    >>
    >> presentation: Contains the apps screens, controllers and widgets.
    >> It has controllers with the same prefix as the screen name. and each controller has a state folder which contains the freezed class for that controller. It also has global listeners and handlers.

    d. **shared**: It contains only the global shared presentation widgets and provider.

    e. **utils**: Contains utils like exceptions, interceptors, observers, etc.

## 3. Hopslot-FullStack/docker

This folder contains the docker-compose file to run the entire project.

It has 3 main docker files:

1. **docker-compose.yaml**:

    This has to be used during development only as it contains bind mounts etc.

    a. **docker-compose.win.override.yaml**:

        This file should be run alongside the main file when using windows.

2. **docker-compose.prod.yaml**:

    This file is used to build hopslot-api and hopslot-django-api images and to push them. It can also be used to test the production build.

3. **docker-compose.deployment.yaml**:

    This is the file that needs to be in EC2 or where you deploy, as it will pull the required images and start the service.

Folders:

1. **bind-mounts**:

    This folder contains the bind mounts for the development environment.

2. **bind-mounts-prod**:

    This folder contains the bind mounts for the production environment.

3. **ignored**:

    Keep all the personal secrets in this folder and also postgres backups.

4. **init-files**:
  
      This folder contains the init files for the mongodb database for development.

5. **secrets**:

    This folder should contain final init-files, env variables inside `prod` folder and the firebase key. This should be copied to the EC2 instance.

6. **harbour.sh**:

    This script can be used to simply docker compose commands like to follow you can add -l, and to attach windows file you can add -w.