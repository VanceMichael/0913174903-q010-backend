def test_project_imports():
    from app.main import create_app
    assert create_app() is None
