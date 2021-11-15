#!/bin/sh -x

if [[ -z $(psql --host ${DB_HOST} -U postgres -Atql | grep ${DB_NAME}) ]]; then 
  createdb  -h ${DB_HOST} -U postgres ${DB_NAME} -e
else 
  echo "Database ${DB_NAME} exists already"
fi