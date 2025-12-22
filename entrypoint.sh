#!/bin/bash

# Use PORT environment variable from Railway, or default to 8000
PORT=${PORT:-8000}

echo "Starting Gunicorn on port $PORT"

# Run gunicorn
exec gunicorn --bind 0.0.0.0:$PORT myproject.wsgi:application
