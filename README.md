# Tailwind Django App

A simple, beautiful web application built with Django and Tailwind CSS, ready to deploy on Railway.

## Features

- Modern responsive design with Tailwind CSS
- Django backend
- Docker containerization
- Ready for Railway deployment
- WhiteNoise for static file serving

## Local Development

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Run migrations:
```bash
python manage.py migrate
```

3. Start the development server:
```bash
python manage.py runserver
```

4. Visit `http://localhost:8000` in your browser

## Docker Deployment

Build and run with Docker:

```bash
docker build -t tailwind-app .
docker run -p 8000:8000 tailwind-app
```

## Railway Deployment

1. Push your code to GitHub
2. Connect your GitHub repository to Railway
3. Railway will automatically detect the Dockerfile and deploy
4. Set environment variables in Railway dashboard:
   - `SECRET_KEY`: Your Django secret key
   - `DEBUG`: Set to `False` for production
   - `ALLOWED_HOSTS`: Your Railway domain

## Tech Stack

- Python 3.11
- Django 4.2
- Tailwind CSS (via CDN)
- Gunicorn
- WhiteNoise
- Docker

## License

MIT
