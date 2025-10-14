from db.db import open_db

def get_book_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"

    rows = cur.execute('''
        SELECT b.title, b.year, b.genre, a.name AS author_name, w.name AS world_name
        FROM books b
        JOIN authors a ON b.author_id = a.id
        JOIN worlds w ON b.world_id = w.id
        WHERE LOWER(b.title) LIKE LOWER(?)
    ''', (search_term,)).fetchall()

    conn.close()

    books = []
    for row in rows:
        books.append({
            "name": row[0],
            "birth_year": row[1],
            "nationality": row[2],
            "author_name": row[3], 
            "world_name": row[4]
        })
    
    return books
