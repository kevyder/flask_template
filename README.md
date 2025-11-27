# Flask Template

A ready-to-use Flask project template with preconfigured development and testing tools.

## Features

- [Flask](https://flask.palletsprojects.com/) 3.1.2
- Dependency management with [uv](https://github.com/astral-sh/uv)
- Linting and formatting: [ruff](https://github.com/astral-sh/ruff)
- Pre-commit hooks configured
- Testing with [pytest](https://docs.pytest.org/) and [coverage](https://coverage.readthedocs.io/)
- Docker-ready

## Requirements

- Python 3.14.0
- [uv](https://github.com/astral-sh/uv) 0.9.11
- Docker (optional)

## Usage

### Install uv 0.9.11

```sh
pip install uv==0.9.11
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
