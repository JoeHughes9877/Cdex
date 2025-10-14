from db.db import open_db

def get_author_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"

    rows = cur.execute( 'SELECT id, name, birth_year, nationality FROM authors WHERE LOWER(name) LIKE LOWER(?)', (search_term,)).fetchall()
    conn.close()

    authors = []
    for row in rows:
        authors.append({
            "id": row[0],
            "name": row[1],
            "birth_year": row[2],
            "nationality": row[3]
        })
    
    return authors 