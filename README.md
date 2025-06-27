# Flask Template

A ready-to-use Flask project template with preconfigured development and testing tools.

## Features

- [Flask](https://flask.palletsprojects.com/) 3.1.1
- Dependency management with [Poetry](https://python-poetry.org/)
- Linting and formatting: [flake8](https://flake8.pycqa.org/), [black](https://black.readthedocs.io/), [isort](https://pycqa.github.io/isort/)
- Pre-commit hooks configured
- Testing with [pytest](https://docs.pytest.org/) and [coverage](https://coverage.readthedocs.io/)
- Docker-ready

## Requirements

- Python 3.13.1
- [Poetry](https://python-poetry.org/docs/#installation) 2.1.1
- Docker (optional)

## Usage

### Install poetry 2.1.1

```sh
pip install poetry==2.1.1
```

### Install project dependencies

```sh
poetry install
```

### Run locally

```sh
poetry run flask run --host=0.0.0.0 --port=8001 --debug
```

Or simply:

```sh
python app.py
```

### Run with Docker

```sh
docker-compose up --build
```

The app will be available at [http://localhost:8001](http://localhost:8001).

## Testing

```sh
poetry run pytest
```

## Pre-commit

Install pre-commit hooks:

```sh
poetry run pre-commit install
```

## Project structure

```
.
├── app.py
├── Dockerfile
├── docker-compose.yml
├── pyproject.toml
├── poetry.lock
├── README.md
├── tests/
└── ...
```

## License

This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for details.
