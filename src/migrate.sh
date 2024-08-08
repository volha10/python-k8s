#!/bin/bash

set -e

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL}
SUPERUSER_USERNAME=${DJANGO_SUPERUSER_USERNAME}

/opt/venv/bin/python manage.py collectstatic --no-input

/opt/venv/bin/python manage.py migrate

/opt/venv/bin/python manage.py createsuperuser --email "$SUPERUSER_EMAIL" --username "$SUPERUSER_USERNAME" --no-input || true
