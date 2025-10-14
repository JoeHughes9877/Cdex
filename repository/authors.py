from db.db import open_db

def get_author_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"
    rows = cur.execute('''
            SELECT 
                a.id AS author_id,
                a.name AS author_name,
                a.birth_year,
                a.nationality,
                b.title AS book_title,
                b.year AS book_year,
                b.genre AS book_genre,
                w.name AS world_name,
                s.name AS series_name
            FROM authors a
            LEFT JOIN books b ON a.id = b.author_id
            LEFT JOIN worlds w ON b.world_id = w.id
            LEFT JOIN series s ON b.series_id = s.id
            WHERE LOWER(a.name) LIKE LOWER(?)
            ORDER BY a.name, b.year
        ''', (search_term,)).fetchall()

    authors = []
    for row in rows:
        authors.append({
            "author_id": row[0],
            "name": row[1],
            "birth_year": row[2],
            "nationality": row[3],
            "book_title": row[4],
            "book_year": row[5],
            "book_genre": row[6],
            "world_name": row[7],
            "series_name": row[8]
        })

    return authors