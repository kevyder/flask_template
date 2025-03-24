FROM python:3.10

ENV PYTHONUNBUFFERED 1

# Update and install build dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-server-dev-all \
        gcc \
        python3-dev \
        musl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip3 install poetry==2.1.1
RUN poetry config virtualenvs.create false

# Copy using poetry.lock* in case it doesn't exist yet
COPY ./pyproject.toml ./poetry.lock* /app/

# Clean up build dependencies
RUN apt-get purge -y --auto-remove \
        gcc \
        python3-dev \
        musl-dev

WORKDIR /app
COPY . /app/

RUN adduser --disabled-password --gecos '' user

RUN poetry install --no-root
USER user
