FROM python:3.14.0-slim

ENV PYTHONUNBUFFERED 1
ENV UV_VERSION=0.9.11
ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

# Set Flask main module
ENV FLASK_APP=src.app

# Set work directory
WORKDIR /app


# Install UV
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir uv==$UV_VERSION

# Copy using uv.lock* in case it doesn't exist yet
COPY ./pyproject.toml ./uv.lock* /app/

# Install dependencies
RUN uv sync --no-dev

# Copy project files
COPY src/ ./src/

# Expose port
EXPOSE 8080

# Start the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080", "--debug"]
