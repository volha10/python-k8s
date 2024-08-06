#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL}
SUPERUSER_USERNAME=${DJANGO_SUPERUSER_USERNAME}

/opt/venv/bin/python manage.py migrate

/opt/venv/bin/python manage.py createsuperuser --email "$SUPERUSER_EMAIL" --username "$SUPERUSER_USERNAME" --no-input || true
