# --- Stage 1: Build ---
FROM python:3.12-slim AS builder

# Prevent Python from writing pyc files and buffering stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install build dependencies (needed for compiling certain python packages)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install python dependencies into a local folder
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# Copy project files
COPY . .

# Run collectstatic (Django-specific)
RUN python manage.py collectstatic --noinput

# --- Stage 2: Runtime ---
# Using Google's Distroless Python image
FROM gcr.io/distroless/python3-debian12

WORKDIR /app

# Copy installed dependencies and project code from the builder
COPY --from=builder /root/.local /root/.local
COPY --from=builder /app /app

# Ensure local bin is in PATH
ENV PATH=/root/.local/bin:$PATH

# Expose port
EXPOSE 8000

# Run the application
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
