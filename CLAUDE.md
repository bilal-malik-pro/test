# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with this repository.

## Project Overview

This is a Django web application with Tailwind CSS styling, containerized with Docker and configured for Railway deployment.

## Tech Stack

- **Backend**: Django 4.2+ (Python 3.11)
- **Styling**: Tailwind CSS (via CDN)
- **Static Files**: WhiteNoise
- **Web Server**: Gunicorn (production)
- **Database**: SQLite (default)
- **Containerization**: Docker
- **Deployment**: Railway

## Project Structure

```
myproject/          # Django project settings
  settings.py       # Main configuration
  urls.py           # Root URL configuration
  wsgi.py           # WSGI application
webapp/             # Main Django application
  views.py          # View functions
  urls.py           # App URL routes
  models.py         # Database models
  templates/        # HTML templates
```

## Common Commands

### Local Development

```bash
# Install dependencies
pip install -r requirements.txt

# Run database migrations
python manage.py migrate

# Start development server
python manage.py runserver

# Create a new migration after model changes
python manage.py makemigrations

# Collect static files
python manage.py collectstatic --noinput
```

### Docker

```bash
# Build image
docker build -t tailwind-app .

# Run container
docker run -p 8000:8000 tailwind-app
```

## Environment Variables

- `SECRET_KEY`: Django secret key (required in production)
- `DEBUG`: Set to `False` in production
- `ALLOWED_HOSTS`: Comma-separated list of allowed hosts
- `PORT`: Server port (used by Railway, defaults to 8000)

## Key Configuration Notes

- Static files are served via WhiteNoise middleware
- The entrypoint.sh script handles PORT variable for Railway deployment
- Templates use Tailwind CSS via CDN (no build step required)
