import sqlite3
from pathlib import Path

def open_db():
    file_path = Path(__file__).parent / "books.db"

    conn = sqlite3.connect(file_path)
    return conn