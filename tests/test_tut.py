
import pytest

from app import app

# Setup the fixture for the application 
@pytest.fixture
def client():
    app.config.update({"TESTING": True})

    with app.test_client() as client:
        yield client


# Test for route call
def test_hello_world(client):
    resp = client.get("/")
    
    assert b"Hello World" in resp.data

