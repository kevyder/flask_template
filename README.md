# Flask Template

A ready-to-use Flask project template with preconfigured development and testing tools.

## Features

- [Flask](https://flask.palletsprojects.com/) (>=3.1.3)
- Dependency management with [uv](https://github.com/astral-sh/uv) (>=0.11.3)
- Linting and formatting: [ruff](https://github.com/astral-sh/ruff)
- Pre-commit hooks configured
- Testing with [pytest](https://docs.pytest.org/) and [coverage](https://coverage.readthedocs.io/)
- Docker-ready

> **Note:** Actual dependency versions are pinned in `pyproject.toml`—the above are minimums.

## Requirements

- Python >=3.13.1
- [uv](https://github.com/astral-sh/uv) >=0.11.3
- Docker (optional)

## Usage

### Install uv

```sh
pip install "uv>=0.11.3"
```

### Install project dependencies

```sh
uv sync
```

### Run locally

Run the Flask app (dev mode):

```sh
uv run flask --app src.app run --host=0.0.0.0 --port=8080 --debug
```

Or, for simpler quick testing:

```sh
uv run python -m flask --app src.app run --host=0.0.0.0 --port=8080 --debug
```

### Run with Docker

```sh
docker-compose up --build
```

The app will be available at [http://localhost:8080](http://localhost:8080).

## Testing

Run tests locally:

```sh
uv run pytest
```

Or, using Docker (runs tests and exits):

```sh
docker-compose -f docker-compose.test.yml up --build
```

## Pre-commit

Install pre-commit hooks:

```sh
uv run pre-commit install
```

## Project structure

```
.
├── src/
│   └── app.py
├── Dockerfile
├── docker-compose.yml
├── docker-compose.test.yml
├── pyproject.toml
├── uv.lock
├── README.md
├── tests/
└── ...
```

## License

This project is licensed under the Apache 2.0 License. See the [LICENSE](LICENSE) file for details.
