def test_project_imports():
    from app.main import create_app
    assert create_app().title == "园区能源协同结算站"
