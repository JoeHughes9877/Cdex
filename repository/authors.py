def get_author_by_name(name_input):
    conn = open_db()
    cur = conn.cursor()
    cur.execute('SELECT * FROM author')
