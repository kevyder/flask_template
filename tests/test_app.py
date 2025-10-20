import pytest

from src.app import app


@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client


def test_root_route(client):
    """Test the root route returns 'Hello World!' with status code 200"""
    response = client.get('/')
    assert response.status_code == 200
    assert b'Hello World!' in response.data
