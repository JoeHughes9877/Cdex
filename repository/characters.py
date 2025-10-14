from db.db import open_db

def get_character_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"

    rows = cur.execute('''
        SELECT
            c.id AS character_id,
            c.name AS character_name,
            c.age,
            c.gender,
            c.description,
            b.title AS book_title,
            b.year AS book_year,
            a.name AS author_name,
            w.name AS world_name,
            s.name AS series_name,
            q.text AS quote_text
        FROM characters c
        JOIN book_characters bc ON c.id = bc.character_id
        JOIN books b ON bc.book_id = b.id
        JOIN authors a ON b.author_id = a.id
        JOIN worlds w ON b.world_id = w.id
        LEFT JOIN series s ON b.series_id = s.id
        LEFT JOIN quotes q ON c.id = q.character_id AND b.id = q.book_id
        WHERE LOWER(c.name) LIKE LOWER(?)
        ORDER BY c.name, b.year
    ''', (search_term,)).fetchall()

    conn.close()

    characters = []
    for row in rows:
        char_id, char_name, age, gender, description, book_title, book_year, author_name, world_name, series_name, quote_text = row

        if char_id not in characters:
            characters[char_id] = {
                "id": char_id,
                "name": char_name,
                "age": age,
                "gender": gender,
                "description": description,
                "worlds": set(),
                "books": {},
                "quotes": set()
            }

    return characters
