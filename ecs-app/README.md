# Electronic civic service

## Overview
This repo contains implementation of electronic civic service by Softrams LLC.

## requirements
Springboot(2.7.6) application with react-web connected to postgres DB 

1. git repo https://github.com/softrams/odos-challenge-app-kleos.

2. Java-11, Node-14.16.0

3. Setup docker for local (download docker from [here](https://docs.docker.com/desktop/install/mac-install/))
4. Download postgres client on local from [here](https://www.postgresql.org/download/macosx/) Note: you will only need client for this application.
   define `export PSQL_BIN=/usr/local/bin/psql`

## Run application


1. Clone project
2. Start docker 
   `cd ~/ecs-app`, 
    then `docker-compose up -d`
    run task `docker ps` to check db(ecs_db_app) is running at port `5432`
3. Build and run application:
```java
	// builds npm first, updates liquibase and then runs the application
	cd ~/ecs-app
	./gradlew clean build
       ./gradlew bootRun
```

## More Info
More information to follow.
