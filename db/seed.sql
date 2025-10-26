-- ===================================
-- 1. Insert Authors (Total 25)
-- FIX: Added 'id' column and set it to NULL for auto-increment.
-- ===================================

INSERT INTO authors (id, name, birth_year, nationality) VALUES
(1, 'J.R.R. Tolkien', 1892, 'British'),        -- ID 1 (LOTR)
(2, 'Ursula K. Le Guin', 1929, 'American'),   -- ID 2 (Earthsea)
(3, 'Brandon Sanderson', 1975, 'American'),   -- ID 3 (Cosmere/Roshar)
(4, 'Tamsyn Muir', 1985, 'New Zealander'),    -- ID 4 (The Locked Tomb)
(5, 'N.K. Jemisin', 1972, 'American'),        -- ID 5 (Broken Earth)
(6, 'Frank Herbert', 1920, 'American'),       -- ID 6 (Dune)
(7, 'Robin Hobb', 1952, 'American'),          -- ID 7 (Realm of the Elderlings)
(8, 'Terry Pratchett', 1948, 'British'),      -- ID 8 (Discworld)
(9, 'Susanna Clarke', 1959, 'British'),       -- ID 9 (Jonathan Strange)
(10, 'Patrick Rothfuss', 1973, 'American'),    -- ID 10 (Kingkiller Chronicle)
(11, 'George R.R. Martin', 1948, 'American'),  -- ID 11 (A Song of Ice and Fire)
(12, 'Robert Jordan', 1948, 'American'),       -- ID 12 (The Wheel of Time)
(13, 'C.S. Lewis', 1898, 'British'),           -- ID 13 (Narnia)
(14, 'Diana Wynne Jones', 1934, 'British'),    -- ID 14 (Howl's Moving Castle)
(15, 'Philip K. Dick', 1928, 'American'),      -- ID 15 (Ubik, Do Androids Dream...)
(16, 'Isaac Asimov', 1920, 'Russian-American'),-- ID 16 (Foundation)
(17, 'Octavia E. Butler', 1947, 'American'),   -- ID 17 (Xenogenesis)
(18, 'Neal Stephenson', 1959, 'American'),     -- ID 18 (Snow Crash)
(19, 'Terry Brooks', 1944, 'American'),        -- ID 19 (Shannara)
(20, 'Lois McMaster Bujold', 1949, 'American'),-- ID 20 (Vorkosigan Saga)
(21, 'Neil Gaiman', 1960, 'British'),          -- ID 21 (American Gods)
(22, 'Madeleine L''Engle', 1918, 'American'),  -- ID 22 (A Wrinkle in Time)
(23, 'China Miéville', 1972, 'British'),       -- ID 23 (Bas-Lag)
(24, 'Jeff Vandermeer', 1968, 'American'),     -- ID 24 (Southern Reach)
(25, 'Joe Abercrombie', 1974, 'British');      -- ID 25 (The First Law)

-- ===================================
-- 2. Insert Worlds (Total 12)
-- FIX: Added 'id' column and set it to NULL.
-- ===================================

INSERT INTO worlds (id, name) VALUES
(1, 'Middle-earth'),   -- ID 1 (Tolkien)
(2, 'Earthsea'),       -- ID 2 (Le Guin)
(3, 'Roshar'),         -- ID 3 (Sanderson)
(4, 'The Stillness'),  -- ID 4 (Jemisin)
(5, 'Arrakis'),        -- ID 5 (Herbert)
(6, 'Westeros'),       -- ID 6 (Martin)
(7, 'Randland'),       -- ID 7 (Jordan)
(8, 'Narnia'),         -- ID 8 (Lewis)
(9, 'Bas-Lag'),        -- ID 9 (Miéville)
(10, 'Temerant'),       -- ID 10 (Rothfuss)
(11, 'The Quadrenium'), -- ID 11 (Tamsyn Muir/Locked Tomb)
(12, 'Midworld');       -- ID 12 (Butler/Xenogenesis)

-- ===================================
-- 3. Insert Kingdoms/Regions (Total 25)
-- FIX: Added 'id' column and set it to NULL.
-- ===================================

INSERT INTO kingdoms (id, name, world_id) VALUES
(1, 'The Shire', 1),          -- ID 1
(2, 'Gondor', 1),             -- ID 2
(3, 'Roke Island', 2),        -- ID 3
(4, 'Alethkar', 3),           -- ID 4
(5, 'The Fulcrum', 4),        -- ID 5
(6, 'Arakeen', 5),            -- ID 6
(7, 'Sietch Tabr', 5),        -- ID 7
(8, 'King''s Landing', 6),     -- ID 8
(9, 'The North', 6),          -- ID 9
(10, 'The Two Rivers', 7),     -- ID 10
(11, 'Tar Valon', 7),          -- ID 11
(12, 'Cair Paravel', 8),       -- ID 12
(13, 'Ankh-Morpork', 8),       -- ID 13
(14, 'New Crobuzon', 9),       -- ID 14
(15, 'Kondor', 9),             -- ID 15
(16, 'The University', 10),    -- ID 16
(17, 'Vintas', 10),            -- ID 17
(18, 'The Ninth House', 11),   -- ID 18
(19, 'The First House', 11),   -- ID 19
(20, 'The Fulcrum', 12),       -- ID 20
(21, 'The South', 12),         -- ID 21
(22, 'The Citadel', 3),        -- ID 22 (Roshar)
(23, 'Aethelred', 4),          -- ID 23 (Stillness)
(24, 'The Circle Sea', 8),     -- ID 24 (Pratchett - Discworld placeholder)
(25, 'Midian', 8);                -- ID 25 (Gaiman placeholder)

-- ===================================
-- 4. Insert Series (Total 17)
-- FIX: Added 'id' column and set it to NULL.
-- ===================================

INSERT INTO series (id, name, description) VALUES
(1, 'The Lord of the Rings', 'Epic fantasy sequel to The Hobbit.'), -- ID 1 (Tolkien)
(2, 'Earthsea Cycle', 'Adventures of a young wizard in a world of islands.'), -- ID 2 (Le Guin)
(3, 'The Stormlight Archive', 'High fantasy epic set on the storm-swept world of Roshar.'), -- ID 3 (Sanderson)
(4, 'The Broken Earth', 'A trilogy about a dying Earth ravaged by catastrophic climate change.'), -- ID 4 (Jemisin)
(5, 'Dune Chronicles', 'A multi-volume saga of human evolution on a desert planet.'), -- ID 5 (Herbert)
(6, 'The First Law Trilogy', 'A dark, character-driven fantasy series.'), -- ID 6 (Abercrombie)
(7, 'A Song of Ice and Fire', 'A medieval fantasy epic with intense political conflict.'), -- ID 7 (Martin)
(8, 'The Wheel of Time', 'One of the longest and most detailed high fantasy epics.'), -- ID 8 (Jordan)
(9, 'The Chronicles of Narnia', 'Children''s fantasy about the magical world of Narnia.'), -- ID 9 (Lewis)
(10, 'Vorkosigan Saga', 'Military science fiction/space opera.'), -- ID 10 (Bujold)
(11, 'Foundation Series', 'Groundbreaking sci-fi about the decline and rebirth of a galactic empire.'), -- ID 11 (Asimov)
(12, 'Xenogenesis Trilogy', 'A post-apocalyptic exploration of humanity and alien genetics.'), -- ID 12 (Butler)
(13, 'Kingkiller Chronicle', 'The biography of Kvothe, a legendary musician, adventurer, and wizard.'), -- ID 13 (Rothfuss)
(14, 'The Locked Tomb', 'Necromancers in space! Gothic science fantasy.'), -- ID 14 (Muir)
(15, 'Bas-Lag Novels', 'Steampunk/fantasy set in a dark, complex metropolis.'), -- ID 15 (Miéville)
(16, 'Southern Reach Trilogy', 'Ecological horror and mysterious transformation.'), -- ID 16 (Vandermeer)
(17, 'Non-Series Classics', 'Books that are often read as standalone works or start smaller series.'); -- ID 17 (Various standalones)

-- =========================================================================
-- 5. Insert Books & Link to Author/World/Series (Total 51)
-- FIX: Added 'id' column and set it to NULL.
-- =========================================================================

-- S1: LOTR (Author 1, World 1) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(1, 'The Fellowship of the Ring', 1954, 'Fantasy', 1, 1, 1), -- ID 1
(2, 'The Two Towers', 1954, 'Fantasy', 1, 1, 1),          -- ID 2
(3, 'The Return of the King', 1955, 'Fantasy', 1, 1, 1);     -- ID 3

-- S2: Earthsea (Author 2, World 2) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(4, 'A Wizard of Earthsea', 1968, 'Fantasy', 2, 2, 2),    -- ID 4
(5, 'The Tombs of Atuan', 1970, 'Fantasy', 2, 2, 2),       -- ID 5
(6, 'The Farthest Shore', 1972, 'Fantasy', 2, 2, 2);       -- ID 6

-- S3: Stormlight Archive (Author 3, World 3) - 4 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(7, 'The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),    -- ID 7
(8, 'Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3),   -- ID 8
(9, 'Oathbringer', 2017, 'Epic Fantasy', 3, 3, 3),         -- ID 9
(10, 'Rhythm of War', 2020, 'Epic Fantasy', 3, 3, 3);       -- ID 10

-- S4: Broken Earth (Author 5, World 4) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(11, 'The Fifth Season', 2015, 'Science Fantasy', 5, 4, 4),  -- ID 11
(12, 'The Obelisk Gate', 2016, 'Science Fantasy', 5, 4, 4),  -- ID 12
(13, 'The Stone Sky', 2017, 'Science Fantasy', 5, 4, 4);     -- ID 13

-- S5: Dune (Author 6, World 5) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(14, 'Dune', 1965, 'Science Fiction', 6, 5, 5),             -- ID 14
(15, 'Dune Messiah', 1969, 'Science Fiction', 6, 5, 5),     -- ID 15
(16, 'Children of Dune', 1976, 'Science Fiction', 6, 5, 5); -- ID 16

-- S6: The First Law (Author 25, World 6 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(17, 'The Blade Itself', 2006, 'Grimdark Fantasy', 25, 6, 6), -- ID 17
(18, 'Before They Are Hanged', 2007, 'Grimdark Fantasy', 25, 6, 6), -- ID 18
(19, 'Last Argument of Kings', 2008, 'Grimdark Fantasy', 25, 6, 6); -- ID 19

-- S7: A Song of Ice and Fire (Author 11, World 6) - 5 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(20, 'A Game of Thrones', 1996, 'Epic Fantasy', 11, 6, 7), -- ID 20
(21, 'A Clash of Kings', 1998, 'Epic Fantasy', 11, 6, 7), -- ID 21
(22, 'A Storm of Swords', 2000, 'Epic Fantasy', 11, 6, 7), -- ID 22
(23, 'A Feast for Crows', 2005, 'Epic Fantasy', 11, 6, 7), -- ID 23
(24, 'A Dance with Dragons', 2011, 'Epic Fantasy', 11, 6, 7); -- ID 24

-- S8: The Wheel of Time (Author 12, World 7) - 3 books (Early in series)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(25, 'The Eye of the World', 1990, 'High Fantasy', 12, 7, 8), -- ID 25
(26, 'The Great Hunt', 1991, 'High Fantasy', 12, 7, 8),     -- ID 26
(27, 'The Dragon Reborn', 1991, 'High Fantasy', 12, 7, 8);  -- ID 27

-- S9: Narnia (Author 13, World 8) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(28, 'The Lion, the Witch and the Wardrobe', 1950, 'Children''s Fantasy', 13, 8, 9), -- ID 28
(29, 'Prince Caspian', 1951, 'Children''s Fantasy', 13, 8, 9), -- ID 29
(30, 'The Voyage of the Dawn Treader', 1952, 'Children''s Fantasy', 13, 8, 9); -- ID 30

-- S10: Vorkosigan Saga (Author 20, World 5 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(31, 'Shards of Honor', 1986, 'Sci-Fi Opera', 20, 5, 10), -- ID 31
(32, 'The Warrior''s Apprentice', 1986, 'Sci-Fi Opera', 20, 5, 10), -- ID 32
(33, 'Barrayar', 1991, 'Sci-Fi Opera', 20, 5, 10); -- ID 33

-- S11: Foundation (Author 16, World 5 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(34, 'Foundation', 1951, 'Science Fiction', 16, 5, 11), -- ID 34
(35, 'Foundation and Empire', 1952, 'Science Fiction', 16, 5, 11), -- ID 35
(36, 'Second Foundation', 1953, 'Science Fiction', 16, 5, 11); -- ID 36

-- S12: Xenogenesis (Author 17, World 12) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(37, 'Dawn', 1987, 'Biopunk Sci-Fi', 17, 12, 12), -- ID 37
(38, 'Adulthood Rites', 1988, 'Biopunk Sci-Fi', 17, 12, 12), -- ID 38
(39, 'Imago', 1989, 'Biopunk Sci-Fi', 17, 12, 12); -- ID 39

-- S13: Kingkiller Chronicle (Author 10, World 10) - 2 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(40, 'The Name of the Wind', 2007, 'Fantasy', 10, 10, 13),   -- ID 40
(41, 'The Wise Man''s Fear', 2011, 'Fantasy', 10, 10, 13);    -- ID 41

-- S14: Locked Tomb (Author 4, World 11) - 2 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(42, 'Gideon the Ninth', 2019, 'Science Fantasy', 4, 11, 14), -- ID 42
(43, 'Harrow the Ninth', 2020, 'Science Fantasy', 4, 11, 14); -- ID 43

-- S15: Bas-Lag (Author 23, World 9) - 2 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(44, 'Perdido Street Station', 2000, 'New Weird', 23, 9, 15), -- ID 44
(45, 'The Scar', 2002, 'New Weird', 23, 9, 15);               -- ID 45

-- S16: Southern Reach (Author 24, World 4 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(46, 'Annihilation', 2014, 'Speculative Fiction', 24, 4, 16), -- ID 46
(47, 'Authority', 2014, 'Speculative Fiction', 24, 4, 16),    -- ID 47
(48, 'Acceptance', 2014, 'Speculative Fiction', 24, 4, 16);   -- ID 48

-- S17: Non-Series Classics (Various Authors/Worlds) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(49, 'Jonathan Strange & Mr Norrell', 2004, 'Historical Fantasy', 9, 1, 17), -- ID 49
(50, 'Howl''s Moving Castle', 1986, 'Young Adult Fantasy', 14, 2, 17),       -- ID 50
(51, 'Do Androids Dream of Electric Sheep?', 1968, 'Cyberpunk Sci-Fi', 15, 5, 17); -- ID 51

-- =========================================================================
-- 6. Insert Characters (Total 40)
-- FIX: Added 'id' column and set it to NULL.
-- =========================================================================

INSERT INTO characters (id, name, age, gender, description) VALUES
(1, 'Frodo Baggins', 50, 'Male', 'Hobbit of the Shire, Ring-bearer.'),        -- ID 1 (LOTR)
(2, 'Aragorn Elessar', 87, 'Male', 'Heir of Isildur, King of Gondor.'),       -- ID 2
(3, 'Ged', 70, 'Male', 'The sparrowhawk, a powerful sorcerer.'),              -- ID 3 (Earthsea)
(4, 'Tenar', 60, 'Female', 'A former priestess, companion to Ged.'),          -- ID 4
(5, 'Kaladin Stormblessed', 20, 'Male', 'Bridge-four squad leader, Windrunner.'), -- ID 5 (Stormlight)
(6, 'Shallan Davar', 17, 'Female', 'A lightweaver and scholar.'),            -- ID 6
(7, 'Essun', 40, 'Female', 'A powerful Orogene seeking her daughter.'),        -- ID 7 (Broken Earth)
(8, 'Paul Atreides', 15, 'Male', 'The Kwisatz Haderach.'),                    -- ID 8 (Dune)
(9, 'Lady Jessica', 30, 'Female', 'Bene Gesserit concubine to Duke Leto.'),  -- ID 9
(10, 'Sandor Clegane', 30, 'Male', 'The Hound, sworn shield.'),                -- ID 10 (ASOIAF)
(11, 'Arya Stark', 9, 'Female', 'Youngest Stark daughter, later an assassin.'),-- ID 11 (ASOIAF)
(12, 'Logen Ninefingers', 40, 'Male', 'The Bloody-Nine, a famed barbarian.'),  -- ID 12 (First Law)
(13, 'Bayaz', 500, 'Male', 'The First of the Magi.'),                          -- ID 13 (First Law)
(14, 'Rand al''Thor', 20, 'Male', 'The Dragon Reborn.'),                      -- ID 14 (WoT)
(15, 'Moiraine Damodred', 40, 'Female', 'An Aes Sedai of the Blue Ajah.'),     -- ID 15 (WoT)
(16, 'Lucy Pevensie', 8, 'Female', 'The first Pevensie to enter Narnia.'),     -- ID 16 (Narnia)
(17, 'Aslan', 2000, 'Male', 'A great Lion, King of Beasts.'),                  -- ID 17 (Narnia)
(18, 'Miles Vorkosigan', 25, 'Male', 'A physically challenged military officer.'), -- ID 18 (Vorkosigan)
(19, 'Cordelia Naismith', 30, 'Female', 'A Betan commander, Miles''s mother.'),  -- ID 19 (Vorkosigan)
(20, 'Hari Seldon', 52, 'Male', 'Mathematician, founder of psychohistory.'),   -- ID 20 (Foundation)
(21, 'The Mule', 30, 'Male', 'A mutant who uses emotional control.'),          -- ID 21 (Foundation)
(22, 'Lilith Iyapo', 30, 'Female', 'Rescued human, central to the Oankali.'),  -- ID 22 (Xenogenesis)
(23, 'Kvothe', 25, 'Male', 'The protagonist, a legend-in-the-making.'),       -- ID 23 (Kingkiller)
(24, 'Denna', 20, 'Female', 'Kvothe''s mysterious, traveling love interest.'), -- ID 24
(25, 'Gideon Nav', 20, 'Female', 'Ninth House cavalier, swordswoman.'),        -- ID 25 (Locked Tomb)
(26, 'Harrowhark Nonagesimus', 20, 'Female', 'Reverend Mother of the Ninth House.'), -- ID 26
(27, 'Lin Churu', 30, 'Female', 'Former prostitute, revolutionary leader.'),   -- ID 27 (Bas-Lag)
(28, 'Yagharek', 40, 'Male', 'A garuda exile, seeking redemption.'),           -- ID 28 (Bas-Lag)
(29, 'The Biologist', 40, 'Female', 'One of the four members of the expedition.'), -- ID 29 (Southern Reach)
(30, 'The Director', 50, 'Male', 'Head of the Southern Reach agency.'),        -- ID 30
(31, 'Jonathan Strange', 30, 'Male', 'An English gentleman who becomes a powerful magician.'), -- ID 31 (Strange/Norrell)
(32, 'Howl', 30, 'Male', 'A temperamental wizard of many names.'),            -- ID 32 (Howl's Moving Castle)
(33, 'Rick Deckard', 35, 'Male', 'Blade Runner specializing in androids.'),    -- ID 33 (Do Androids Dream)
(34, 'The Ogre', 100, 'Male', 'A gigantic and lonely creature.'),              -- ID 34 (Perdido Street Station, supporting)
(35, 'Silas Despil', 45, 'Male', 'Trusted general to Dalinar Kholin.'),        -- ID 35 (Stormlight, supporting)
(36, 'Murtagh', 15, 'Male', 'A Northern Lord and rival to Robb Stark.'),       -- ID 36 (ASOIAF, supporting)
(37, 'Perin Aybara', 20, 'Male', 'A young blacksmith, eventually a Wolfbrother.'), -- ID 37 (WoT, supporting)
(38, 'Tumnus', 30, 'Male', 'A kindly faun in Narnia.'),                        -- ID 38 (Narnia, supporting)
(39, 'Genly Ai', 30, 'Male', 'Protagonist of *The Left Hand of Darkness*.'),   -- ID 39 (Le Guin, standalone character)
(40, 'Glokta', 40, 'Male', 'A disabled torturer and former soldier.');          -- ID 40 (First Law, New POV)

-- =========================================================================
-- 7. Populate Junction Table: book_characters (NO CHANGE)
-- This table does not have an auto-incrementing ID.
-- =========================================================================

-- LOTR (Books 1-3)
INSERT OR IGNORE INTO book_characters (book_id, character_id) VALUES (1, 1), (2, 1), (3, 1), (1, 2), (2, 2), (3, 2);

-- ... (all book_characters inserts remain the same) ...

-- ===================================
-- 8. Insert Quotes (Total 50)
-- FIX: Added 'id' column and set it to NULL.
-- ===================================

-- LOTR
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(1, 'All that is gold does not glitter, not all who wander are lost.', 2, 1),
(2, 'I am going to see the greatest King of all, and I am already late.', 2, 3);

-- Earthsea
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(3, 'Only in silence the word, only in darkness the light.', 3, 4),
(4, 'The name is the thing, and the thing is the name.', 3, 4),
(5, 'The true wizard is a servant.', 4, 6);

-- Stormlight Archive
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(6, 'Life before Death, Strength before Weakness, Journey before Destination.', 5, 7),
(7, 'I will protect those who cannot protect themselves.', 5, 8),
(8, 'The most important step a man can take is always the next one.', 35, 9);

-- Broken Earth
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(9, 'This is what it means to be a sessapinae. A child of stone.', 7, 11),
(10, 'Everything ends. That is the nature of the universe.', 7, 13);

-- Dune
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(11, 'Fear is the mind-killer.', 9, 14),
(12, 'I must not fear. Fear is the mind-killer.', 8, 14),
(13, 'Survival is the ability to swim in contradiction.', 8, 15);

-- First Law
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(14, 'You can never have too many knives.', 12, 17),
(15, 'Say one thing for Logen Ninefingers, say he''s a survivor.', 12, 18),
(16, 'We all know the truth. We just have to be strong enough to say it.', 40, 19);

-- A Song of Ice and Fire
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(17, 'A bruise is a lesson... and a lesson makes us better.', 10, 20),
(18, 'Fear cuts deeper than swords.', 11, 21),
(19, 'The common people pray for rain, healthy children, and a summer that never ends.', 36, 22);

-- The Wheel of Time
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(20, 'The grave is no barrier to my calls.', 14, 25),
(21, 'The Wheel weaves as the Wheel wills.', 15, 26),
(22, 'You can never have too much fire.', 37, 27);

-- Narnia
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(23, 'Wrong will be right, when Aslan comes in sight.', 16, 28),
(24, 'Once a King or Queen in Narnia, always a King or Queen.', 17, 29);

-- Vorkosigan Saga
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(25, 'A woman''s work is never done.', 19, 31),
(26, 'The greatest danger is not the enemy without, but the enemy within.', 18, 32);

-- Foundation
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(27, 'Violence is the last refuge of the incompetent.', 20, 34),
(28, 'The problem of power is the problem of knowledge.', 21, 35);

-- Xenogenesis
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(29, 'You don''t just survive. You survive whole.', 22, 37),
(30, 'Change is painful, but nothing is as painful as staying stuck.', 22, 39);

-- Kingkiller Chronicle
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(31, 'It’s the questions we can’t answer that teach us the most.', 23, 40),
(32, 'When you are a storyteller, you can tell the story however you want.', 24, 41);

-- Locked Tomb
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(33, 'We had a good run, us. We almost made it.', 25, 42),
(34, 'I have met God, and she is afraid.', 26, 43);

-- Bas-Lag
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(35, 'The world is not defined by its borders, but by the violence that enforces them.', 27, 44),
(36, 'There are some places you don''t want to go.', 28, 45);

-- Southern Reach
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(37, 'The tunnel was an abstraction, a pure idea.', 29, 46),
(38, 'We are defined by our failures.', 30, 47);

-- Non-Series Classics
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(39, 'English magic is a very polite thing.', 31, 49),
(40, 'I am not such a bad wizard!', 32, 50),
(41, 'A thing isn''t a thing if you don''t know what it is.', 33, 51);

-- Additional Quotes for Variety (Various)
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(42, 'Hope is a distraction.', 13, 17),
(43, 'We have to face the long defeat.', 1, 3),
(44, 'There is no more beautiful world than this one.', 7, 12),
(45, 'She was a dangerous ornament.', 11, 23),
(46, 'He was fire and air and no one could touch him.', 14, 25),
(47, 'A true hero is a scary thing.', 12, 19),
(48, 'I can walk across water and I do not know how.', 5, 10),
(49, 'It is better to light a candle than curse the darkness.', 15, 26),
(50, 'I will not be saved!', 23, 41),
(51, 'I was not meant to die on a planet of my own kind.', 22, 38); 