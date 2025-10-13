import sqlite3
from pathlib import Path

def open_db():
    file_path = Path(__file__).parent / "books.db"

    conn = sqlite3.connect(file_path)
    cur = conn.cursor()

    cur.execute('SELECT * FROM authors')
    rows = cur.fetchall()
    conn.close()

    for row in rows:
        print(row)