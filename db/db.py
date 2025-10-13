import sqlite3

conn = sqlite3.connect("Codex/db/books.db")
cur = conn.cursor()
cur.execute('SELECT * FROM authors')
rows = cur.fetchall()
conn.close()
for row in rows:
   print(row)