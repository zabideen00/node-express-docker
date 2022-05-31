
# Contents

- [Overview](#overview)

- [Pre-requisites](#pre-requisites)

- [Setup for development](#development-setup)

- [Setup for production](#production-setup)

## Overview

This repository contains Dockerfile and docker-compose.yml files for both development and production environments for Node.js 18 Express project.

When you run Express project in development environment, you do not need to build docker image every time you make changes to your code. Changes to your code automatically reflect in the dockerized environment.

For production environment, you need to build the image first and then the docker container is created from freshly created docker image.

## Pre-requisites

You need following packages installed to run the Node.js Express project in containerized environment

- [Docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed on your system

- You do not need to install Node.js or npm on your system

  

### Development setup

* Create a `.env` file in the root of the project and pass all the environment variables

* Run `./local-deploy.sh` command in the root of the project

* Access application here [http://localhost:3000](http://localhost:3000)

* Everytime you make a change to `package.json`, you need to run `./local-deploy.sh` command

* Everytime you make a change to `Dockerfile.local`, you need to run `./local-deploy.sh --build` command

### Production setup

* create a `.env` file and pass all the environment variables there

* build docker image using following command

```docker build -t node-app-image .```

* run following command to start app

```docker-compose up -d```

* access the application here [http://localhost:4000](http://localhost:4000)
