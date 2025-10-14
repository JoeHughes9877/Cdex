from db.db import open_db

def get_book_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"

    rows = cur.execute( ''' SELECT b.id, b.title, b.year, b.genre, a.name AS author_name FROM books b JOIN authors a ON b.author_id = a.id WHERE LOWER(b.title) LIKE LOWER(?) ''', (search_term,) ).fetchall()
    conn.close()

    books = []
    for row in rows:
        books.append({
            "id": row[0],
            "name": row[1],
            "birth_year": row[2],
            "nationality": row[3]
        })
    
    return books
