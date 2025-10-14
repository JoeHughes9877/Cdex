from db.db import open_db

def get_world_by_name(q):
    conn = open_db()
    cur = conn.cursor()

    search_term = f"%{q}%"
    rows = cur.execute('''
        SELECT 
            w.id,
            w.name,
            k.name
        FROM worlds w
        LEFT JOIN kingdoms k ON w.id = k.world_id
        WHERE LOWER(w.name) LIKE LOWER(?)
        ORDER BY w.name
    ''', (search_term,)).fetchall()

    worlds = []
    for row in rows:
        worlds.append({
            "world_id": row[0],
            "name": row[1],
            "kingdom_name": row[2]
        })

    return worlds
