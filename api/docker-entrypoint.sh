#!/bin/sh

echo "Waiting PostgreSQL..."

# use netcat to check database availability
while ! nc -z db 5432; do
  sleep 0.1
done

echo "PostgreSQL is ready!"

# create migrations and migrate changes
python3 manage.py makemigrations 
python3 manage.py migrate

HOST_PORT="${PORT:-8000}"

# initialize django server
python manage.py runserver 0.0.0.0:${HOST_PORT}
