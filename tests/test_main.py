from src.main import health_check

def test_health_check():
    result = health_check()
    assert result is True
