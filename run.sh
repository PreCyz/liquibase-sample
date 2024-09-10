#!/bin/sh

ls -lah

envsubst '$DB_USER,$DB_PASSWORD,$DATABASE' < backend.properties > liquibase.properties
liquibase update

envsubst '$DB_USER,$DB_PASSWORD' < carlydb.properties > liquibase.properties
liquibase update