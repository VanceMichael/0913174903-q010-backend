import os
import sqlite3
from pathlib import Path


path = Path(os.getenv("APP_DB_PATH", "data/service.sqlite3"))
path.parent.mkdir(parents=True, exist_ok=True)
with sqlite3.connect(path) as connection:
    connection.execute(
        "CREATE TABLE IF NOT EXISTS schema_versions (version INTEGER PRIMARY KEY, applied_at TEXT NOT NULL)"
    )
