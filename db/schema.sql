PRAGMA foreign_keys = ON;

-- ------------------------
-- Table: Authors (EXPANDED)
-- ------------------------
CREATE TABLE IF NOT EXISTS authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    birth_year INTEGER,
    nationality TEXT
);

-- ------------------------
-- Table: Worlds
-- ------------------------
CREATE TABLE IF NOT EXISTS worlds (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- ------------------------
-- Table: Kingdoms (or regions within worlds)
-- ------------------------
CREATE TABLE IF NOT EXISTS kingdoms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    world_id INTEGER NOT NULL,
    FOREIGN KEY (world_id) REFERENCES worlds(id) ON DELETE CASCADE
);

-- ------------------------
-- Table: Books (EXPANDED)
-- ------------------------
CREATE TABLE IF NOT EXISTS books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    year INTEGER,
    genre TEXT,
    author_id INTEGER NOT NULL,
    world_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE,
    FOREIGN KEY (world_id) REFERENCES worlds(id) ON DELETE CASCADE
);

-- ------------------------
-- Table: Characters
-- ------------------------
CREATE TABLE IF NOT EXISTS characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER,
    gender TEXT,
    description TEXT,
    book_id INTEGER NOT NULL,
    world_id INTEGER NOT NULL,
    FOREIGN KEY(book_id) REFERENCES books(id),
    FOREIGN KEY(world_id) REFERENCES worlds(id)
);

-- ------------------------
-- Table: Quotes
-- ------------------------
CREATE TABLE IF NOT EXISTS quotes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    text TEXT NOT NULL,
    character_id INTEGER NOT NULL,
    FOREIGN KEY (character_id) REFERENCES characters(id) ON DELETE CASCADE
);