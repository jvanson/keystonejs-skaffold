#!/bin/sh -x

if [[ $(psql --host ${DB_HOST} -U postgres -Atql | grep ${DB_NAME}) ]]; then 
#if [[ -z $(psql --host ${DB_HOST} -U postgres -Atql | grep ${DB_NAME}) ]]; then 
  yarn create-tables
else 
  echo "Table ${DB_NAME} exists already"
fi