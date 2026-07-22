# Dockerized Django Web Application

A Django web application containerized using Docker with a lightweight Python base image. This project demonstrates how to package a Django application into a portable container, simplifying development, testing, and deployment across different environments.

---

## Project Overview

This project showcases the fundamentals of Docker containerization by creating a lightweight Docker image for a Django application. The application and its dependencies are packaged into a single container using a custom Dockerfile, ensuring consistency and portability.

---

## Features

- Django web application built with Python
- Containerized using Docker
- Lightweight Docker image
- Automated dependency installation
- Custom Dockerfile for image creation
- Portable and reproducible development environment
- Version control using Git and GitHub
- Linux-based development workflow

---

## Technologies Used

- Python 3
- Django
- Docker
- Git
- GitHub
- Linux

---

## Project Structure

```
slim-docker-python-django-app/
│
├── test_django_pro/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   ├── asgi.py
│   └── wsgi.py
│
├── Dockerfile
├── .dockerignore
├── manage.py
├── requirements.txt
└── README.md
```

---

## Prerequisites

- Docker
- Git
- Python 3 (optional for local development)

---

## Clone the Repository

```bash
git clone https://github.com/ridhindas/slim-docker-pytrhon-django-app.git
```

```bash
cd slim-docker-pytrhon-django-app
```

---

## Build the Docker Image

```bash
docker build -t django-docker-app .
```

---

## Run the Docker Container

```bash
docker run -p 8000:8000 django-docker-app
```

---

## Access the Application

Open your browser and visit:

```
http://localhost:8000/
```

---

## Useful Docker Commands

### List Docker Images

```bash
docker images
```

### List Running Containers

```bash
docker ps
```

### Stop a Running Container

```bash
docker stop <container_id>
```

### Remove a Container

```bash
docker rm <container_id>
```

### Remove an Image

```bash
docker rmi django-docker-app
```

---

## Skills Demonstrated

- Docker Containerization
- Dockerfile Creation
- Python
- Django
- Linux
- Git & GitHub
- Application Packaging
- Environment Consistency

---

## Future Enhancements

- Add Docker Compose support
- Integrate PostgreSQL
- Configure Gunicorn
- Add Nginx reverse proxy
- Deploy on AWS EC2
- Implement GitHub Actions CI/CD
- Publish the Docker image to Docker Hub

---

## Author

**Ridhin Das**

GitHub: https://github.com/ridhindas

---

## License

This project is intended for learning and portfolio purposes.
