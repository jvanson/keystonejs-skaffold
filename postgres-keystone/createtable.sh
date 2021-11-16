#!/bin/sh -x

if [[ $(psql --host ${DB_HOST} -U postgres -d ${DB_NAME} -c '\dt' | grep ${DB_NAME}) ]]; then 
  yarn create-tables
else 
  echo "Table ${DB_NAME} exists already"
fi