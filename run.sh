#!/bin/sh

ls -lah

envsubst '$DB_USER,$DB_PASSWORD,$DB_URL,$DB_NAME' < backend.properties > liquibase.properties
liquibase update

envsubst '$DB_USER,$DB_PASSWORD,$DB_URL' < carlydb.properties > liquibase.properties
liquibase update