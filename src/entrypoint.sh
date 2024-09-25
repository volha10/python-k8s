#!/bin/bash

set -e

/opt/venv/bin/gunicorn python_k8s.wsgi:application --bind "0.0.0.0:8002"
