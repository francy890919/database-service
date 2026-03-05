from unittest.mock import patch

import pytest
from src.main import health_check

def test_health_check_failure():
    with patch("src.main.get_connection", side_effect=Exception("Connection failed")):
        result = health_check()
        assert result is False
