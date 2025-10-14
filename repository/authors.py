from db.db import open_db

def get_author_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"

    rows = cur.execute( 'SELECT name, birth_year, nationality FROM authors WHERE LOWER(name) LIKE LOWER(?)', (search_term,)).fetchall()
    conn.close()

    authors = []
    for row in rows:
        authors.append({
            "name": row[0],
            "birth_year": row[1],
            "nationality": row[2]
        })
    
    return authors