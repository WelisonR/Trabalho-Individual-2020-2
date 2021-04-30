#!/bin/sh

# create migrations and migrate changes
python3 manage.py makemigrations 
python3 manage.py migrate

# initialize django server
python manage.py runserver 0.0.0.0:8000
