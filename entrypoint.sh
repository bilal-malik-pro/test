#!/bin/bash

# Use PORT environment variable from Railway, or default to 8000
PORT=${PORT:-8000}

echo "==================================="
echo "Starting Gunicorn on port $PORT"
echo "==================================="

# Run database migrations
python manage.py migrate --noinput

# Run gunicorn with more verbose logging
exec gunicorn --bind 0.0.0.0:$PORT \
    --workers 2 \
    --threads 4 \
    --timeout 120 \
    --access-logfile - \
    --error-logfile - \
    --log-level info \
    myproject.wsgi:application
