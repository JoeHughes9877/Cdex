-- =========================================================================================
-- MASSIVE SEED DATA FOR INTERCONNECTED SCHEMA
-- This data is designed to rigorously test the new Many-to-Many (book_characters)
-- and Series relationships.
-- =========================================================================================

-- IMPORTANT: These lines are for resetting the database during testing.
-- DELETE FROM quotes;
-- DELETE FROM book_characters;
-- DELETE FROM books;
-- DELETE FROM characters;
-- DELETE FROM series;
-- DELETE FROM kingdoms;
-- DELETE FROM worlds;
-- DELETE FROM authors;

-- ==========================
-- 1. Insert Authors (Total 6)
-- ==========================

INSERT INTO authors (name, birth_year, nationality) VALUES
('J.R.R. Tolkien', 1892, 'British'),       -- ID 1 (LOTR)
('Ursula K. Le Guin', 1929, 'American'),  -- ID 2 (Earthsea)
('Brandon Sanderson', 1975, 'American'),  -- ID 3 (Cosmere/Roshar)
('Tamsyn Muir', 1985, 'New Zealander'),   -- ID 4 (The Locked Tomb)
('N.K. Jemisin', 1972, 'American'),       -- ID 5 (Broken Earth)
('Frank Herbert', 1920, 'American');      -- ID 6 (Dune)

-- ==========================
-- 2. Insert Worlds (Total 5)
-- ==========================

INSERT INTO worlds (name) VALUES
('Middle-earth'),   -- ID 1
('Earthsea'),       -- ID 2
('Roshar'),         -- ID 3
('The Stillness'),  -- ID 4 (Jemisin)
('Arrakis');        -- ID 5 (Dune)

-- ==========================
-- 3. Insert Kingdoms/Regions (Total 10)
-- ==========================

INSERT INTO kingdoms (name, world_id) VALUES
('The Shire', 1),
('Gondor', 1),
('Roke Island', 2),
('Jah Keved', 3),
('Alethkar', 3),
('The Fulcrum', 4),
('Yumenes', 4),
('Arakeen', 5),
('Sietch Tabr', 5),
('Giedi Prime', 5);

-- ==========================
-- 4. Insert Series (Total 5)
-- ==========================

INSERT INTO series (name, description) VALUES
('The Lord of the Rings', 'Epic fantasy sequel to The Hobbit.'), -- ID 1
('Earthsea Cycle', 'Adventures of a young wizard in a world of islands.'), -- ID 2
('The Stormlight Archive', 'High fantasy epic set on the storm-swept world of Roshar.'), -- ID 3
('The Broken Earth', 'A trilogy about a dying Earth ravaged by catastrophic climate change.'), -- ID 4
('Dune Chronicles', 'A multi-volume saga of human evolution on a desert planet.'); -- ID 5

-- ==========================
-- 5. Insert Books & Link to Author/World/Series (Total 10)
-- ==========================

-- Series 1: LOTR (Author 1, World 1)
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Fellowship of the Ring', 1954, 'Fantasy', 1, 1, 1), -- ID 1
('The Two Towers', 1954, 'Fantasy', 1, 1, 1),          -- ID 2
('The Return of the King', 1955, 'Fantasy', 1, 1, 1);     -- ID 3

-- Series 2: Earthsea (Author 2, World 2) - Note the different world
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('A Wizard of Earthsea', 1968, 'Fantasy', 2, 2, 2),    -- ID 4
('The Tombs of Atuan', 1970, 'Fantasy', 2, 2, 2);       -- ID 5

-- Series 3: Stormlight Archive (Author 3, World 3)
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),    -- ID 6
('Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3);   -- ID 7

-- Series 4: Broken Earth (Author 5, World 4)
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Fifth Season', 2015, 'Science Fantasy', 5, 4, 4);  -- ID 8

-- Series 5: Dune (Author 6, World 5)
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Dune', 1965, 'Science Fiction', 6, 5, 5),             -- ID 9
('Dune Messiah', 1969, 'Science Fiction', 6, 5, 5);     -- ID 10

-- ==========================
-- 6. Insert Characters (Total 12)
-- ==========================

INSERT INTO characters (name, age, gender, description) VALUES
('Frodo Baggins', 50, 'Male', 'Hobbit of the Shire, bearer of the One Ring.'),        -- ID 1
('Gandalf', 2019, 'Male', 'An Istari (Wizard) of immense power.'),                   -- ID 2
('Ged', 70, 'Male', 'The sparrowhawk, a powerful sorcerer.'),                        -- ID 3
('Tenar', 60, 'Female', 'A former priestess, companion to Ged.'),                    -- ID 4
('Kaladin Stormblessed', 20, 'Male', 'Bridge-four squad leader, a Windrunner.'),     -- ID 5
('Shallan Davar', 17, 'Female', 'A lightweaver and scholar.'),                      -- ID 6
('Shedar', 35, 'Female', 'A member of the Alethi royal house.'),                     -- ID 7 (Supporting character)
('Essun', 40, 'Female', 'A powerful Orogene seeking her daughter.'),                  -- ID 8
('Schaffa', 60, 'Male', 'An ancient Guardian of the Fulcrum.'),                      -- ID 9
('Paul Atreides', 15, 'Male', 'Son of Duke Leto, destined to become the Kwisatz Haderach.'), -- ID 10
('Lady Jessica', 30, 'Female', 'Bene Gesserit concubine to Duke Leto.'),             -- ID 11
('Stilgar', 55, 'Male', 'Naib of Sietch Tabr, a Fremen leader.');                     -- ID 12

-- ==========================
-- 7. Populate Junction Table: book_characters (Many-to-Many Linking)
-- ==========================

-- Frodo (ID 1): Books 1, 2, 3 (LOTR Trilogy)
INSERT INTO book_characters (book_id, character_id) VALUES (1, 1), (2, 1), (3, 1);
-- Gandalf (ID 2): Books 1, 2, 3
INSERT INTO book_characters (book_id, character_id) VALUES (1, 2), (2, 2), (3, 2);

-- Ged (ID 3): Books 4, 5 (Earthsea)
INSERT INTO book_characters (book_id, character_id) VALUES (4, 3), (5, 3);
-- Tenar (ID 4): Book 5 only
INSERT INTO book_characters (book_id, character_id) VALUES (5, 4);

-- Kaladin (ID 5): Books 6, 7 (Stormlight Archive)
INSERT INTO book_characters (book_id, character_id) VALUES (6, 5), (7, 5);
-- Shallan (ID 6): Books 6, 7
INSERT INTO book_characters (book_id, character_id) VALUES (6, 6), (7, 6);
-- Shedar (ID 7): Book 7 only (Supporting character)
INSERT INTO book_characters (book_id, character_id) VALUES (7, 7);

-- Essun (ID 8): Book 8 (Broken Earth, main character)
INSERT INTO book_characters (book_id, character_id) VALUES (8, 8);
-- Schaffa (ID 9): Book 8
INSERT INTO book_characters (book_id, character_id) VALUES (8, 9);

-- Paul Atreides (ID 10): Books 9, 10 (Dune)
INSERT INTO book_characters (book_id, character_id) VALUES (9, 10), (10, 10);
-- Lady Jessica (ID 11): Books 9, 10
INSERT INTO book_characters (book_id, character_id) VALUES (9, 11), (10, 11);
-- Stilgar (ID 12): Books 9, 10
INSERT INTO book_characters (book_id, character_id) VALUES (9, 12), (10, 12);

-- ==========================
-- 8. Insert Quotes (Total 10 - Linked to Character and specific Book)
-- ==========================

-- LOTR Quotes
INSERT INTO quotes (text, character_id, book_id) VALUES
('All that is gold does not glitter, not all those who wander are lost.', 2, 1), -- Gandalf, Fellowship
('I wish the Ring had never come to me. I wish none of this had happened.', 1, 1), -- Frodo, Fellowship
('Despair is only for those who see the end beyond all doubt.', 2, 3); -- Gandalf, Return of the King

-- Earthsea Quotes
INSERT INTO quotes (text, character_id, book_id) VALUES
('Only in silence the word, only in darkness the light.', 3, 4), -- Ged, Wizard of Earthsea
('The name is the thing, and the thing is the name.', 3, 4), -- Ged, Wizard of Earthsea
('I did not know I was afraid.', 4, 5); -- Tenar, Tombs of Atuan

-- Stormlight Archive Quotes
INSERT INTO quotes (text, character_id, book_id) VALUES
('Life before Death, Strength before Weakness, Journey before Destination.', 5, 6); -- Kaladin, Way of Kings

-- Broken Earth Quote
INSERT INTO quotes (text, character_id, book_id) VALUES
('This is what it means to be a sessapinae. A child of stone.', 8, 8); -- Essun, Fifth Season

-- Dune Quotes
INSERT INTO quotes (text, character_id, book_id) VALUES
('Fear is the mind-killer.', 11, 9), -- Lady Jessica, Dune
('I must not fear. Fear is the mind-killer.', 10, 9); -- Paul Atreides, Dune