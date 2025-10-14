from db.db import open_db

def get_book_by_title(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"
    rows = cur.execute('''
        SELECT 
            b.id,
            b.title,
            b.year,
            b.genre,
            a.name,
            w.name,
            s.name
        FROM books b
        LEFT JOIN authors a ON b.author_id = a.id
        LEFT JOIN worlds w ON b.world_id = w.id
        LEFT JOIN series s ON b.series_id = s.id
        WHERE LOWER(b.title) LIKE LOWER(?)
        ORDER BY b.title
    ''', (search_term,)).fetchall()

    books = []
    for row in rows:
        books.append({
            "book_id": row[0],
            "title": row[1],
            "year": row[2],
            "genre": row[3],
            "author_name": row[4],
            "world_name": row[5],
            "series_name": row[6]
        })

    return books