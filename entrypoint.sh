#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Run migrations if needed
python manage.py migrate

# Start the Gunicorn server
exec gunicorn movie_app.wsgi:application -b 0.0.0.0:5000
