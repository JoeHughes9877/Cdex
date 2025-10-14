from db.db import open_db

def get_series_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"
    rows = cur.execute('''
        SELECT 
            s.id,
            s.name,
            s.description,
            b.title
        FROM series s
        LEFT JOIN books b ON s.id = b.series_id
        WHERE LOWER(s.name) LIKE LOWER(?)
        ORDER BY s.name
    ''', (search_term,)).fetchall()

    series_list = []
    for row in rows:
        series_list.append({
            "series_id": row[0],
            "name": row[1],
            "description": row[2],
            "book_title": row[3]
        })

    return series_list