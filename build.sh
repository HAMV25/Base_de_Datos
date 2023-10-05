#!/usr/bin/env bash
# exit on error

set -o errexit
# poetry install 
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
#DJANGO_SUPERUSER_PASSWORD=Henry-123 python manage.py createsuperuser --no-input --username=HAMV25  --email=hemac1025@gmail.com