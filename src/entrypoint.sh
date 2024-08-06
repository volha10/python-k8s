#!/bin/bash

APP_PORT=${PORT:-8000}

/opt/venv/bin/gunicorn python_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"
