from db.db import open_db

def get_author_by_name(name_input):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{name_input}%"

    rows = cur.execute('SELECT name FROM authors WHERE LOWER(name) LIKE LOWER(?)', (search_term,)).fetchall()
    conn.close()

    authors = []
    for row in rows:
        authors.append(row[0])
    
    return authors

