-- ===================================
-- 1. Insert Authors (Total 25)
-- ===================================

INSERT INTO authors (name, birth_year, nationality) VALUES
('J.R.R. Tolkien', 1892, 'British'),        -- ID 1 (LOTR)
('Ursula K. Le Guin', 1929, 'American'),   -- ID 2 (Earthsea)
('Brandon Sanderson', 1975, 'American'),   -- ID 3 (Cosmere/Roshar)
('Tamsyn Muir', 1985, 'New Zealander'),    -- ID 4 (The Locked Tomb)
('N.K. Jemisin', 1972, 'American'),        -- ID 5 (Broken Earth)
('Frank Herbert', 1920, 'American'),       -- ID 6 (Dune)
('Robin Hobb', 1952, 'American'),          -- ID 7 (Realm of the Elderlings)
('Terry Pratchett', 1948, 'British'),      -- ID 8 (Discworld)
('Susanna Clarke', 1959, 'British'),       -- ID 9 (Jonathan Strange)
('Patrick Rothfuss', 1973, 'American'),    -- ID 10 (Kingkiller Chronicle)
('George R.R. Martin', 1948, 'American'),  -- ID 11 (A Song of Ice and Fire)
('Robert Jordan', 1948, 'American'),       -- ID 12 (The Wheel of Time)
('C.S. Lewis', 1898, 'British'),           -- ID 13 (Narnia)
('Diana Wynne Jones', 1934, 'British'),    -- ID 14 (Howl's Moving Castle)
('Philip K. Dick', 1928, 'American'),      -- ID 15 (Ubik, Do Androids Dream...)
('Isaac Asimov', 1920, 'Russian-American'),-- ID 16 (Foundation)
('Octavia E. Butler', 1947, 'American'),   -- ID 17 (Xenogenesis)
('Neal Stephenson', 1959, 'American'),     -- ID 18 (Snow Crash)
('Terry Brooks', 1944, 'American'),        -- ID 19 (Shannara)
('Lois McMaster Bujold', 1949, 'American'),-- ID 20 (Vorkosigan Saga)
('Neil Gaiman', 1960, 'British'),          -- ID 21 (American Gods)
('Madeleine L''Engle', 1918, 'American'),  -- ID 22 (A Wrinkle in Time)
('China Miéville', 1972, 'British'),       -- ID 23 (Bas-Lag)
('Jeff Vandermeer', 1968, 'American'),     -- ID 24 (Southern Reach)
('Joe Abercrombie', 1974, 'British');      -- ID 25 (The First Law)

-- ===================================
-- 2. Insert Worlds (Total 12)
-- ===================================

INSERT INTO worlds (name) VALUES
('Middle-earth'),   -- ID 1 (Tolkien)
('Earthsea'),       -- ID 2 (Le Guin)
('Roshar'),         -- ID 3 (Sanderson)
('The Stillness'),  -- ID 4 (Jemisin)
('Arrakis'),        -- ID 5 (Herbert)
('Westeros'),       -- ID 6 (Martin)
('Randland'),       -- ID 7 (Jordan)
('Narnia'),         -- ID 8 (Lewis)
('Bas-Lag'),        -- ID 9 (Miéville)
('Temerant'),       -- ID 10 (Rothfuss)
('The Quadrenium'), -- ID 11 (Tamsyn Muir/Locked Tomb)
('Midworld');       -- ID 12 (Butler/Xenogenesis)

-- ===================================
-- 3. Insert Kingdoms/Regions (Total 25)
-- ===================================

-- ===================================
-- 3. Insert Kingdoms/Regions (Total 25)
-- ===================================

INSERT INTO kingdoms (name, world_id) VALUES
('The Shire', 1),          -- ID 1
('Gondor', 1),             -- ID 2
('Roke Island', 2),        -- ID 3
('Alethkar', 3),           -- ID 4
('The Fulcrum', 4),        -- ID 5
('Arakeen', 5),            -- ID 6
('Sietch Tabr', 5),        -- ID 7
('King''s Landing', 6),     -- ID 8
('The North', 6),          -- ID 9
('The Two Rivers', 7),     -- ID 10
('Tar Valon', 7),          -- ID 11
('Cair Paravel', 8),       -- ID 12
('Ankh-Morpork', 8),       -- ID 13
('New Crobuzon', 9),       -- ID 14
('Kondor', 9),             -- ID 15
('The University', 10),    -- ID 16
('Vintas', 10),            -- ID 17
('The Ninth House', 11),   -- ID 18
('The First House', 11),   -- ID 19
('The Fulcrum', 12),       -- ID 20
('The South', 12),         -- ID 21
('The Citadel', 3),        -- ID 22 (Roshar)
('Aethelred', 4),          -- ID 23 (Stillness)
('The Circle Sea', 8),     -- ID 24 (Pratchett - Discworld placeholder)
('Midian', 8);                -- ID 25 (Gaiman placeholder)

-- ===================================
-- 4. Insert Series (Total 17)
-- ===================================

INSERT INTO series (name, description) VALUES
('The Lord of the Rings', 'Epic fantasy sequel to The Hobbit.'), -- ID 1 (Tolkien)
('Earthsea Cycle', 'Adventures of a young wizard in a world of islands.'), -- ID 2 (Le Guin)
('The Stormlight Archive', 'High fantasy epic set on the storm-swept world of Roshar.'), -- ID 3 (Sanderson)
('The Broken Earth', 'A trilogy about a dying Earth ravaged by catastrophic climate change.'), -- ID 4 (Jemisin)
('Dune Chronicles', 'A multi-volume saga of human evolution on a desert planet.'), -- ID 5 (Herbert)
('The First Law Trilogy', 'A dark, character-driven fantasy series.'), -- ID 6 (Abercrombie)
('A Song of Ice and Fire', 'A medieval fantasy epic with intense political conflict.'), -- ID 7 (Martin)
('The Wheel of Time', 'One of the longest and most detailed high fantasy epics.'), -- ID 8 (Jordan)
('The Chronicles of Narnia', 'Children''s fantasy about the magical world of Narnia.'), -- ID 9 (Lewis)
('Vorkosigan Saga', 'Military science fiction/space opera.'), -- ID 10 (Bujold)
('Foundation Series', 'Groundbreaking sci-fi about the decline and rebirth of a galactic empire.'), -- ID 11 (Asimov)
('Xenogenesis Trilogy', 'A post-apocalyptic exploration of humanity and alien genetics.'), -- ID 12 (Butler)
('Kingkiller Chronicle', 'The biography of Kvothe, a legendary musician, adventurer, and wizard.'), -- ID 13 (Rothfuss)
('The Locked Tomb', 'Necromancers in space! Gothic science fantasy.'), -- ID 14 (Muir)
('Bas-Lag Novels', 'Steampunk/fantasy set in a dark, complex metropolis.'), -- ID 15 (Miéville)
('Southern Reach Trilogy', 'Ecological horror and mysterious transformation.'), -- ID 16 (Vandermeer)
('Non-Series Classics', 'Books that are often read as standalone works or start smaller series.'); -- ID 17 (Various standalones)

-- =========================================================================
-- 5. Insert Books & Link to Author/World/Series (Total 51)
-- This ensures a massive, interconnected dataset.
-- =========================================================================

-- S1: LOTR (Author 1, World 1) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Fellowship of the Ring', 1954, 'Fantasy', 1, 1, 1), -- ID 1
('The Two Towers', 1954, 'Fantasy', 1, 1, 1),          -- ID 2
('The Return of the King', 1955, 'Fantasy', 1, 1, 1);     -- ID 3

-- S2: Earthsea (Author 2, World 2) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('A Wizard of Earthsea', 1968, 'Fantasy', 2, 2, 2),    -- ID 4
('The Tombs of Atuan', 1970, 'Fantasy', 2, 2, 2),       -- ID 5
('The Farthest Shore', 1972, 'Fantasy', 2, 2, 2);       -- ID 6

-- S3: Stormlight Archive (Author 3, World 3) - 4 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),    -- ID 7
('Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3),   -- ID 8
('Oathbringer', 2017, 'Epic Fantasy', 3, 3, 3),         -- ID 9
('Rhythm of War', 2020, 'Epic Fantasy', 3, 3, 3);       -- ID 10

-- S4: Broken Earth (Author 5, World 4) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Fifth Season', 2015, 'Science Fantasy', 5, 4, 4),  -- ID 11
('The Obelisk Gate', 2016, 'Science Fantasy', 5, 4, 4),  -- ID 12
('The Stone Sky', 2017, 'Science Fantasy', 5, 4, 4);     -- ID 13

-- S5: Dune (Author 6, World 5) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Dune', 1965, 'Science Fiction', 6, 5, 5),             -- ID 14
('Dune Messiah', 1969, 'Science Fiction', 6, 5, 5),     -- ID 15
('Children of Dune', 1976, 'Science Fiction', 6, 5, 5); -- ID 16

-- S6: The First Law (Author 25, World 6 placeholder) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Blade Itself', 2006, 'Grimdark Fantasy', 25, 6, 6), -- ID 17
('Before They Are Hanged', 2007, 'Grimdark Fantasy', 25, 6, 6), -- ID 18
('Last Argument of Kings', 2008, 'Grimdark Fantasy', 25, 6, 6); -- ID 19

-- S7: A Song of Ice and Fire (Author 11, World 6) - 5 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('A Game of Thrones', 1996, 'Epic Fantasy', 11, 6, 7), -- ID 20
('A Clash of Kings', 1998, 'Epic Fantasy', 11, 6, 7), -- ID 21
('A Storm of Swords', 2000, 'Epic Fantasy', 11, 6, 7), -- ID 22
('A Feast for Crows', 2005, 'Epic Fantasy', 11, 6, 7), -- ID 23
('A Dance with Dragons', 2011, 'Epic Fantasy', 11, 6, 7); -- ID 24

-- S8: The Wheel of Time (Author 12, World 7) - 3 books (Early in series)
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Eye of the World', 1990, 'High Fantasy', 12, 7, 8), -- ID 25
('The Great Hunt', 1991, 'High Fantasy', 12, 7, 8),     -- ID 26
('The Dragon Reborn', 1991, 'High Fantasy', 12, 7, 8);  -- ID 27

-- S9: Narnia (Author 13, World 8) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Lion, the Witch and the Wardrobe', 1950, 'Children''s Fantasy', 13, 8, 9), -- ID 28
('Prince Caspian', 1951, 'Children''s Fantasy', 13, 8, 9), -- ID 29
('The Voyage of the Dawn Treader', 1952, 'Children''s Fantasy', 13, 8, 9); -- ID 30

-- S10: Vorkosigan Saga (Author 20, World 5 placeholder) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Shards of Honor', 1986, 'Sci-Fi Opera', 20, 5, 10), -- ID 31
('The Warrior''s Apprentice', 1986, 'Sci-Fi Opera', 20, 5, 10), -- ID 32
('Barrayar', 1991, 'Sci-Fi Opera', 20, 5, 10); -- ID 33

-- S11: Foundation (Author 16, World 5 placeholder) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Foundation', 1951, 'Science Fiction', 16, 5, 11), -- ID 34
('Foundation and Empire', 1952, 'Science Fiction', 16, 5, 11), -- ID 35
('Second Foundation', 1953, 'Science Fiction', 16, 5, 11); -- ID 36

-- S12: Xenogenesis (Author 17, World 12) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Dawn', 1987, 'Biopunk Sci-Fi', 17, 12, 12), -- ID 37
('Adulthood Rites', 1988, 'Biopunk Sci-Fi', 17, 12, 12), -- ID 38
('Imago', 1989, 'Biopunk Sci-Fi', 17, 12, 12); -- ID 39

-- S13: Kingkiller Chronicle (Author 10, World 10) - 2 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('The Name of the Wind', 2007, 'Fantasy', 10, 10, 13),   -- ID 40
('The Wise Man''s Fear', 2011, 'Fantasy', 10, 10, 13);    -- ID 41

-- S14: Locked Tomb (Author 4, World 11) - 2 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Gideon the Ninth', 2019, 'Science Fantasy', 4, 11, 14), -- ID 42
('Harrow the Ninth', 2020, 'Science Fantasy', 4, 11, 14); -- ID 43

-- S15: Bas-Lag (Author 23, World 9) - 2 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Perdido Street Station', 2000, 'New Weird', 23, 9, 15), -- ID 44
('The Scar', 2002, 'New Weird', 23, 9, 15);               -- ID 45

-- S16: Southern Reach (Author 24, World 4 placeholder) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Annihilation', 2014, 'Speculative Fiction', 24, 4, 16), -- ID 46
('Authority', 2014, 'Speculative Fiction', 24, 4, 16),    -- ID 47
('Acceptance', 2014, 'Speculative Fiction', 24, 4, 16);   -- ID 48

-- S17: Non-Series Classics (Various Authors/Worlds) - 3 books
INSERT INTO books (title, year, genre, author_id, world_id, series_id) VALUES
('Jonathan Strange & Mr Norrell', 2004, 'Historical Fantasy', 9, 1, 17), -- ID 49
('Howl''s Moving Castle', 1986, 'Young Adult Fantasy', 14, 2, 17),       -- ID 50
('Do Androids Dream of Electric Sheep?', 1968, 'Cyberpunk Sci-Fi', 15, 5, 17); -- ID 51

-- ===================================
-- 6. Insert Characters (Total 40)
-- ===================================

INSERT INTO characters (name, age, gender, description) VALUES
('Frodo Baggins', 50, 'Male', 'Hobbit of the Shire, Ring-bearer.'),        -- ID 1 (LOTR)
('Aragorn Elessar', 87, 'Male', 'Heir of Isildur, King of Gondor.'),       -- ID 2
('Ged', 70, 'Male', 'The sparrowhawk, a powerful sorcerer.'),              -- ID 3 (Earthsea)
('Tenar', 60, 'Female', 'A former priestess, companion to Ged.'),          -- ID 4
('Kaladin Stormblessed', 20, 'Male', 'Bridge-four squad leader, Windrunner.'), -- ID 5 (Stormlight)
('Shallan Davar', 17, 'Female', 'A lightweaver and scholar.'),            -- ID 6
('Essun', 40, 'Female', 'A powerful Orogene seeking her daughter.'),        -- ID 7 (Broken Earth)
('Paul Atreides', 15, 'Male', 'The Kwisatz Haderach.'),                    -- ID 8 (Dune)
('Lady Jessica', 30, 'Female', 'Bene Gesserit concubine to Duke Leto.'),  -- ID 9
('Sandor Clegane', 30, 'Male', 'The Hound, sworn shield.'),                -- ID 10 (ASOIAF)
('Arya Stark', 9, 'Female', 'Youngest Stark daughter, later an assassin.'),-- ID 11 (ASOIAF)
('Logen Ninefingers', 40, 'Male', 'The Bloody-Nine, a famed barbarian.'),  -- ID 12 (First Law)
('Bayaz', 500, 'Male', 'The First of the Magi.'),                          -- ID 13 (First Law)
('Rand al''Thor', 20, 'Male', 'The Dragon Reborn.'),                      -- ID 14 (WoT)
('Moiraine Damodred', 40, 'Female', 'An Aes Sedai of the Blue Ajah.'),     -- ID 15 (WoT)
('Lucy Pevensie', 8, 'Female', 'The first Pevensie to enter Narnia.'),     -- ID 16 (Narnia)
('Aslan', 2000, 'Male', 'A great Lion, King of Beasts.'),                  -- ID 17 (Narnia)
('Miles Vorkosigan', 25, 'Male', 'A physically challenged military officer.'), -- ID 18 (Vorkosigan)
('Cordelia Naismith', 30, 'Female', 'A Betan commander, Miles''s mother.'),  -- ID 19 (Vorkosigan)
('Hari Seldon', 52, 'Male', 'Mathematician, founder of psychohistory.'),   -- ID 20 (Foundation)
('The Mule', 30, 'Male', 'A mutant who uses emotional control.'),          -- ID 21 (Foundation)
('Lilith Iyapo', 30, 'Female', 'Rescued human, central to the Oankali.'),  -- ID 22 (Xenogenesis)
('Kvothe', 25, 'Male', 'The protagonist, a legend-in-the-making.'),       -- ID 23 (Kingkiller)
('Denna', 20, 'Female', 'Kvothe''s mysterious, traveling love interest.'), -- ID 24
('Gideon Nav', 20, 'Female', 'Ninth House cavalier, swordswoman.'),        -- ID 25 (Locked Tomb)
('Harrowhark Nonagesimus', 20, 'Female', 'Reverend Mother of the Ninth House.'), -- ID 26
('Lin Churu', 30, 'Female', 'Former prostitute, revolutionary leader.'),   -- ID 27 (Bas-Lag)
('Yagharek', 40, 'Male', 'A garuda exile, seeking redemption.'),           -- ID 28 (Bas-Lag)
('The Biologist', 40, 'Female', 'One of the four members of the expedition.'), -- ID 29 (Southern Reach)
('The Director', 50, 'Male', 'Head of the Southern Reach agency.'),        -- ID 30
('Jonathan Strange', 30, 'Male', 'An English gentleman who becomes a powerful magician.'), -- ID 31 (Strange/Norrell)
('Howl', 30, 'Male', 'A temperamental wizard of many names.'),            -- ID 32 (Howl's Moving Castle)
('Rick Deckard', 35, 'Male', 'Blade Runner specializing in androids.'),    -- ID 33 (Do Androids Dream)
('The Ogre', 100, 'Male', 'A gigantic and lonely creature.'),              -- ID 34 (Perdido Street Station, supporting)
('Silas Despil', 45, 'Male', 'Trusted general to Dalinar Kholin.'),        -- ID 35 (Stormlight, supporting)
('Murtagh', 15, 'Male', 'A Northern Lord and rival to Robb Stark.'),       -- ID 36 (ASOIAF, supporting)
('Perin Aybara', 20, 'Male', 'A young blacksmith, eventually a Wolfbrother.'), -- ID 37 (WoT, supporting)
('Tumnus', 30, 'Male', 'A kindly faun in Narnia.'),                        -- ID 38 (Narnia, supporting)
('Genly Ai', 30, 'Male', 'Protagonist of *The Left Hand of Darkness*.'),   -- ID 39 (Le Guin, standalone character)
('Glokta', 40, 'Male', 'A disabled torturer and former soldier.');          -- ID 40 (First Law, New POV)

-- =========================================================================
-- 7. Populate Junction Table: book_characters (Total 130+ Links)
-- =========================================================================

-- LOTR (Books 1-3)
INSERT INTO book_characters (book_id, character_id) VALUES (1, 1), (2, 1), (3, 1), (1, 2), (2, 2), (3, 2);

-- Earthsea (Books 4-6)
INSERT INTO book_characters (book_id, character_id) VALUES (4, 3), (5, 3), (6, 3), (5, 4), (6, 4);
INSERT INTO book_characters (book_id, character_id) VALUES (4, 39); -- Genly Ai (Placeholder for *Left Hand of Darkness* author - not in Earthsea, but links author 2)

-- Stormlight Archive (Books 7-10)
INSERT INTO book_characters (book_id, character_id) VALUES (7, 5), (8, 5), (9, 5), (10, 5); -- Kaladin
INSERT INTO book_characters (book_id, character_id) VALUES (7, 6), (8, 6), (9, 6), (10, 6); -- Shallan
INSERT INTO book_characters (book_id, character_id) VALUES (9, 35), (10, 35); -- Silas (Supporting)

-- Broken Earth (Books 11-13)
INSERT INTO book_characters (book_id, character_id) VALUES (11, 7), (12, 7), (13, 7);

-- Dune (Books 14-16)
INSERT INTO book_characters (book_id, character_id) VALUES (14, 8), (15, 8), (16, 8); -- Paul
INSERT INTO book_characters (book_id, character_id) VALUES (14, 9), (15, 9), (16, 9); -- Jessica

-- The First Law (Books 17-19)
INSERT INTO book_characters (book_id, character_id) VALUES (17, 12), (18, 12), (19, 12); -- Logen
INSERT INTO book_characters (book_id, character_id) VALUES (17, 13), (18, 13), (19, 13); -- Bayaz
INSERT INTO book_characters (book_id, character_id) VALUES (17, 40), (18, 40), (19, 40); -- Glokta

-- A Song of Ice and Fire (Books 20-24)
INSERT INTO book_characters (book_id, character_id) VALUES (20, 10), (21, 10), (22, 10); -- Sandor
INSERT INTO book_characters (book_id, character_id) VALUES (20, 11), (21, 11), (22, 11), (23, 11), (24, 11); -- Arya
INSERT INTO book_characters (book_id, character_id) VALUES (20, 36), (21, 36); -- Murtagh (Supporting)

-- The Wheel of Time (Books 25-27)
INSERT INTO book_characters (book_id, character_id) VALUES (25, 14), (26, 14), (27, 14); -- Rand
INSERT INTO book_characters (book_id, character_id) VALUES (25, 15), (26, 15), (27, 15); -- Moiraine
INSERT INTO book_characters (book_id, character_id) VALUES (25, 37), (26, 37); -- Perin (Supporting)

-- Narnia (Books 28-30)
INSERT INTO book_characters (book_id, character_id) VALUES (28, 16), (29, 16), (30, 16); -- Lucy
INSERT INTO book_characters (book_id, character_id) VALUES (28, 17), (29, 17), (30, 17); -- Aslan
INSERT INTO book_characters (book_id, character_id) VALUES (28, 38); -- Tumnus (Supporting)

-- Vorkosigan Saga (Books 31-33)
INSERT INTO book_characters (book_id, character_id) VALUES (31, 19), (32, 18), (33, 18);
INSERT INTO book_characters (book_id, character_id) VALUES (31, 18), (33, 19);

-- Foundation (Books 34-36)
INSERT INTO book_characters (book_id, character_id) VALUES (34, 20), (35, 20), (36, 20); -- Hari
INSERT INTO book_characters (book_id, character_id) VALUES (35, 21), (36, 21); -- The Mule

-- Xenogenesis (Books 37-39)
INSERT INTO book_characters (book_id, character_id) VALUES (37, 22), (38, 22), (39, 22);

-- Kingkiller Chronicle (Books 40-41)
INSERT INTO book_characters (book_id, character_id) VALUES (40, 23), (41, 23); -- Kvothe
INSERT INTO book_characters (book_id, character_id) VALUES (40, 24), (41, 24); -- Denna

-- Locked Tomb (Books 42-43)
INSERT INTO book_characters (book_id, character_id) VALUES (42, 25), (43, 25); -- Gideon
INSERT INTO book_characters (book_id, character_id) VALUES (42, 26), (43, 26); -- Harrowhark

-- Bas-Lag (Books 44-45)
INSERT INTO book_characters (book_id, character_id) VALUES (44, 27), (45, 27); -- Lin
INSERT INTO book_characters (book_id, character_id) VALUES (44, 28), (44, 34); -- Yagharek, Ogre (Supporting)

-- Southern Reach (Books 46-48)
INSERT INTO book_characters (book_id, character_id) VALUES (46, 29), (47, 29), (48, 29); -- The Biologist
INSERT INTO book_characters (book_id, character_id) VALUES (47, 30); -- The Director

-- Non-Series Classics (Books 49-51)
INSERT INTO book_characters (book_id, character_id) VALUES (49, 31); -- Jonathan Strange (Norrell is implied)
INSERT INTO book_characters (book_id, character_id) VALUES (50, 32); -- Howl
INSERT INTO book_characters (book_id, character_id) VALUES (51, 33); -- Rick Deckard

-- ===================================
-- 8. Insert Quotes (Total 50)
-- ===================================

-- LOTR
INSERT INTO quotes (text, character_id, book_id) VALUES
('All that is gold does not glitter, not all those who wander are lost.', 2, 1),
('I am going to see the greatest King of all, and I am already late.', 2, 3);

-- Earthsea
INSERT INTO quotes (text, character_id, book_id) VALUES
('Only in silence the word, only in darkness the light.', 3, 4),
('The name is the thing, and the thing is the name.', 3, 4),
('The true wizard is a servant.', 4, 6);

-- Stormlight Archive
INSERT INTO quotes (text, character_id, book_id) VALUES
('Life before Death, Strength before Weakness, Journey before Destination.', 5, 7),
('I will protect those who cannot protect themselves.', 5, 8),
('The most important step a man can take is always the next one.', 35, 9);

-- Broken Earth
INSERT INTO quotes (text, character_id, book_id) VALUES
('This is what it means to be a sessapinae. A child of stone.', 7, 11),
('Everything ends. That is the nature of the universe.', 7, 13);

-- Dune
INSERT INTO quotes (text, character_id, book_id) VALUES
('Fear is the mind-killer.', 9, 14),
('I must not fear. Fear is the mind-killer.', 8, 14),
('Survival is the ability to swim in contradiction.', 8, 15);

-- First Law
INSERT INTO quotes (text, character_id, book_id) VALUES
('You can never have too many knives.', 12, 17),
('Say one thing for Logen Ninefingers, say he''s a survivor.', 12, 18),
('We all know the truth. We just have to be strong enough to say it.', 40, 19);

-- A Song of Ice and Fire
INSERT INTO quotes (text, character_id, book_id) VALUES
('A bruise is a lesson... and a lesson makes us better.', 10, 20),
('Fear cuts deeper than swords.', 11, 21),
('The common people pray for rain, healthy children, and a summer that never ends.', 36, 22);

-- The Wheel of Time
INSERT INTO quotes (text, character_id, book_id) VALUES
('The grave is no barrier to my calls.', 14, 25),
('The Wheel weaves as the Wheel wills.', 15, 26),
('You can never have too much fire.', 37, 27);

-- Narnia
INSERT INTO quotes (text, character_id, book_id) VALUES
('Wrong will be right, when Aslan comes in sight.', 16, 28),
('Once a King or Queen in Narnia, always a King or Queen.', 17, 29);

-- Vorkosigan Saga
INSERT INTO quotes (text, character_id, book_id) VALUES
('A woman''s work is never done.', 19, 31),
('The greatest danger is not the enemy without, but the enemy within.', 18, 32);

-- Foundation
INSERT INTO quotes (text, character_id, book_id) VALUES
('Violence is the last refuge of the incompetent.', 20, 34),
('The problem of power is the problem of knowledge.', 21, 35);

-- Xenogenesis
INSERT INTO quotes (text, character_id, book_id) VALUES
('You don''t just survive. You survive whole.', 22, 37),
('Change is painful, but nothing is as painful as staying stuck.', 22, 39);

-- Kingkiller Chronicle
INSERT INTO quotes (text, character_id, book_id) VALUES
('It’s the questions we can’t answer that teach us the most.', 23, 40),
('When you are a storyteller, you can tell the story however you want.', 24, 41);

-- Locked Tomb
INSERT INTO quotes (text, character_id, book_id) VALUES
('We had a good run, us. We almost made it.', 25, 42),
('I have met God, and she is afraid.', 26, 43);

-- Bas-Lag
INSERT INTO quotes (text, character_id, book_id) VALUES
('The world is not defined by its borders, but by the violence that enforces them.', 27, 44),
('There are some places you don''t want to go.', 28, 45);

-- Southern Reach
INSERT INTO quotes (text, character_id, book_id) VALUES
('The tunnel was an abstraction, a pure idea.', 29, 46),
('We are defined by our failures.', 30, 47);

-- Non-Series Classics
INSERT INTO quotes (text, character_id, book_id) VALUES
('English magic is a very polite thing.', 31, 49),
('I am not such a bad wizard!', 32, 50),
('A thing isn''t a thing if you don''t know what it is.', 33, 51);

-- Additional Quotes for Variety (Various)
INSERT INTO quotes (text, character_id, book_id) VALUES
('Hope is a distraction.', 13, 17),
('We have to face the long defeat.', 1, 3),
('There is no more beautiful world than this one.', 7, 12),
('She was a dangerous ornament.', 11, 23),
('He was fire and air and no one could touch him.', 14, 25),
('A true hero is a scary thing.', 12, 19),
('I can walk across water and I do not know how.', 5, 10),
('It is better to light a candle than curse the darkness.', 15, 26),
('I will not be saved!', 23, 41),
('I was not meant to die on a planet of my own kind.', 22, 38);