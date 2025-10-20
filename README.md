# Flask Template

A ready-to-use Flask project template with preconfigured development and testing tools.

## Features

- [Flask](https://flask.palletsprojects.com/) 3.1.1
- Dependency management with [uv](https://github.com/astral-sh/uv)
- Linting and formatting: [flake8](https://flake8.pycqa.org/), [black](https://black.readthedocs.io/), [isort](https://pycqa.github.io/isort/)
- Pre-commit hooks configured
- Testing with [pytest](https://docs.pytest.org/) and [coverage](https://coverage.readthedocs.io/)
- Docker-ready

## Requirements

- Python 3.13.9
- [uv](https://github.com/astral-sh/uv) 0.9.3
- Docker (optional)

## Usage

### Install uv 0.9.3

```sh
pip install uv==0.9.3
```

### Install project dependencies

```sh
uv sync
```

### Run locally

```sh
flask run --host=0.0.0.0 --port=8080 --debug
```

Or simply:

```sh
python app.py
```

### Run with Docker

```sh
docker-compose up --build
```

The app will be available at [http://localhost:8080](http://localhost:8080).

## Testing

```sh
pytest
```

## Pre-commit

Install pre-commit hooks:

```sh
pre-commit install
```

## Project structure

```
.
├── app.py
├── Dockerfile
├── docker-compose.yml
├── pyproject.toml
├── uv.lock
├── README.md
├── tests/
└── ...
```

## License

This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for details.
