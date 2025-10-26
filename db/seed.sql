-- =================================================================================================
-- COMPLETE FANTASY SEED DATA
-- This file combines the original data set (IDs 1-100 range) with the expansive second set 
-- (IDs 101-169 range, including the original "Sky-Engineer Chronicles" data).
-- Total Inserts: ~432 (across all tables: Authors, Worlds, Kingdoms, Series, Characters, Books, Quotes, Book_Characters)
-- NOTE: Foreign key constraints are assumed to be handled by the schema.
-- =================================================================================================

-- Deleting existing data from the tables that reference other IDs first (optional, but good practice for a clean seed)
-- DELETE FROM quotes;
-- DELETE FROM book_characters;
-- DELETE FROM books;
-- DELETE FROM series;
-- DELETE FROM kingdoms;
-- DELETE FROM characters;
-- DELETE FROM authors;
-- DELETE FROM worlds;

-- =================================================================================================
-- PART 1: ORIGINAL DATA SET (IDs 1-100 RANGE)
-- =================================================================================================

-- -------------------
-- 1. Worlds (9)
-- -------------------
INSERT INTO worlds (id, name) VALUES
(1, 'Middle-earth'),
(2, 'Earthsea'),
(3, 'Roshar'),
(4, 'The Locked Tomb World'),
(5, 'The Stillness'),
(6, 'Arrakis'),
(7, 'Realm of the Elderlings'),
(8, 'Discworld'),
(9, 'Bas-Lag');

-- -------------------
-- 2. Authors (25)
-- -------------------
INSERT INTO authors (id, name, birth_year, nationality) VALUES
(1, 'J.R.R. Tolkien', 1892, 'British'),
(2, 'Ursula K. Le Guin', 1929, 'American'),
(3, 'Brandon Sanderson', 1975, 'American'),
(4, 'Tamsyn Muir', 1985, 'New Zealander'),
(5, 'N.K. Jemisin', 1972, 'American'),
(6, 'Frank Herbert', 1920, 'American'),
(7, 'Robin Hobb', 1952, 'American'),
(8, 'Terry Pratchett', 1948, 'British'),
(9, 'Susanna Clarke', 1959, 'British'),
(10, 'Patrick Rothfuss', 1973, 'American'),
(11, 'George R.R. Martin', 1948, 'American'),
(12, 'Neil Gaiman', 1960, 'British'),
(13, 'Scott Lynch', 1978, 'American'),
(14, 'Brent Weeks', 1977, 'American'),
(15, 'John Gwynne', 1966, 'British'),
(16, 'R.F. Kuang', 1996, 'Chinese-American'),
(17, 'Raymond E. Feist', 1945, 'American'),
(18, 'Gene Wolfe', 1931, 'American'),
(19, 'Glen Cook', 1944, 'American'),
(20, 'R. Scott Bakker', 1967, 'Canadian'),
(21, 'Steven Erikson', 1959, 'Canadian'),
(22, 'Joe Abercrombie', 1974, 'British'),
(23, 'China Miéville', 1972, 'British'),
(24, 'Jeff VanderMeer', 1968, 'American'),
(25, 'Jonathan Stroud', 1970, 'British');

-- -------------------
-- 3. Kingdoms (10)
-- -------------------
INSERT INTO kingdoms (id, name, world_id) VALUES
(1, 'Gondor', 1),
(2, 'The Inner Sea', 2),
(3, 'Alethkar', 3),
(4, 'Palaces of the Ninth', 4),
(5, 'The Free Cities', 7), -- Shared world/setting
(6, 'The Shire', 1),
(7, 'The Six Duchies', 7),
(8, 'Ankh-Morpork', 8),
(9, 'The Unseen University', 8),
(10, 'Area X', 2); -- Placeholder world for VanderMeer

-- -------------------
-- 4. Series (18)
-- -------------------
INSERT INTO series (id, name, description) VALUES
(1, 'The Lord of the Rings', 'The high fantasy epic of Frodo Baggins and the quest to destroy the One Ring.'),
(2, 'Earthsea Cycle', 'A classic series focused on the power of true names and balance.'),
(3, 'The Stormlight Archive', 'A massive epic fantasy focusing on a world of highstorms and powerful Knights Radiant.'),
(4, 'The Locked Tomb', 'Necromancers in space! Gothic science fantasy.'),
(5, 'The Broken Earth Trilogy', 'A post-apocalyptic fantasy where the planet itself is a threat.'),
(6, 'Dune', 'Science fiction classic focused on politics, religion, and the spice Melange.'),
(7, 'The Farseer Trilogy', 'The story of FitzChivalry Farseer, royal bastard and assassin, through his youth.'),
(8, 'Discworld', 'A vast satirical fantasy world set on a flat planet carried by four elephants standing on a giant turtle.'),
(9, 'Jonathan Strange & Mr Norrell', 'A historical fantasy about the return of English magic.'),
(10, 'The Kingkiller Chronicle', 'The story of Kvothe, a legendary musician, adventurer, and magic-user.'),
(11, 'A Song of Ice and Fire', 'A dark medieval fantasy epic focused on political conflict and war.'),
(12, 'The Gentlemen Bastards', 'A fantasy heist series following the con artist Locke Lamora.'),
(13, 'The Lightbringer Series', 'High fantasy centered on the Prism, who can control light magic.'),
(14, 'The Faithful and the Fallen', 'Classic good vs. evil epic fantasy.'),
(15, 'The Poppy War Trilogy', 'Military fantasy inspired by 20th-century Chinese history.'),
(16, 'The Riftwar Saga', 'Classic high fantasy beginning with a boy named Pug.'),
(17, 'The Black Company', 'A dark military fantasy following a mercenary unit.'),
(18, 'Bas-Lag Novels', 'Steampunk/fantasy set in the grime and magic of New Crobuzon.');

-- -------------------
-- 5. Books (52)
-- -------------------
-- Series 1: The Lord of the Rings (Author 1, World 1)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(1, 'The Fellowship of the Ring', 1954, 'High Fantasy', 1, 1, 1),
(2, 'The Two Towers', 1954, 'High Fantasy', 1, 1, 1),
(3, 'The Return of the King', 1955, 'High Fantasy', 1, 1, 1);

-- Series 2: Earthsea Cycle (Author 2, World 2)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(4, 'A Wizard of Earthsea', 1968, 'High Fantasy', 2, 2, 2),
(5, 'The Tombs of Atuan', 1970, 'High Fantasy', 2, 2, 2),
(6, 'The Farthest Shore', 1972, 'High Fantasy', 2, 2, 2),
(7, 'Tehanu', 1990, 'High Fantasy', 2, 2, 2);

-- Series 3: The Stormlight Archive (Author 3, World 3)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(8, 'The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),
(9, 'Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3),
(10, 'Oathbringer', 2017, 'Epic Fantasy', 3, 3, 3),
(11, 'Rhythm of War', 2020, 'Epic Fantasy', 3, 3, 3);

-- Series 4: The Locked Tomb (Author 4, World 4)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(12, 'Gideon the Ninth', 2019, 'Gothic Fantasy', 4, 4, 4),
(13, 'Harrow the Ninth', 2020, 'Gothic Fantasy', 4, 4, 4);

-- Series 5: The Broken Earth Trilogy (Author 5, World 5)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(14, 'The Fifth Season', 2015, 'Apocalyptic Fantasy', 5, 5, 5),
(15, 'The Obelisk Gate', 2016, 'Apocalyptic Fantasy', 5, 5, 5),
(16, 'The Stone Sky', 2017, 'Apocalyptic Fantasy', 5, 5, 5);

-- Series 12: The Gentlemen Bastards (Author 13, World 7)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(17, 'The Lies of Locke Lamora', 2006, 'Fantasy Heist', 13, 7, 12),
(18, 'Red Seas Under Red Skies', 2007, 'Fantasy Heist', 13, 7, 12),
(19, 'The Republic of Thieves', 2013, 'Fantasy Heist', 13, 7, 12);

-- Series 15: The Poppy War Trilogy (Author 16, World 7) -- Reusing world 7
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(20, 'The Poppy War', 2018, 'Military Fantasy', 16, 7, 15),
(21, 'The Dragon Republic', 2019, 'Military Fantasy', 16, 7, 15),
(22, 'The Burning God', 2020, 'Military Fantasy', 16, 7, 15);

-- Series 14: The Faithful and the Fallen (Author 15, World 7) -- Reusing world 7
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(23, 'Malice', 2012, 'High Fantasy', 15, 7, 14),
(24, 'Valour', 2014, 'High Fantasy', 15, 7, 14),
(25, 'Ruin', 2015, 'High Fantasy', 15, 7, 14),
(26, 'Wrath', 2016, 'High Fantasy', 15, 7, 14);

-- Series 1: The First Law Trilogy (Author 22, World 7) -- Reusing world 7
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(27, 'The Blade Itself', 2006, 'Grimdark Fantasy', 22, 7, 1),
(28, 'Before They Are Hanged', 2007, 'Grimdark Fantasy', 22, 7, 1),
(29, 'Last Argument of Kings', 2008, 'Grimdark Fantasy', 22, 7, 1);

-- Standalone/Other (Various Authors/Worlds)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(30, 'Jonathan Strange & Mr Norrell', 2004, 'Historical Fantasy', 9, 8, 9), -- World 8 (Discworld placeholder)
(31, 'The Name of the Wind', 2007, 'High Fantasy', 10, 3, 10), -- World 3 (Roshar placeholder)
(32, 'A Game of Thrones', 1996, 'Epic Fantasy', 11, 7, 11),
(33, 'American Gods', 2001, 'Urban Fantasy', 12, 8, NULL), -- World 8 (Discworld placeholder)
(34, 'Dune', 1965, 'Science Fiction', 6, 6, 6),
(35, 'Assassin''s Apprentice', 1995, 'Epic Fantasy', 7, 7, 7),
(36, 'The Colour of Magic', 1983, 'Satirical Fantasy', 8, 8, 8),
(37, 'The Malazan Book of the Fallen: Gardens of the Moon', 1999, 'Epic Fantasy', 21, 7, NULL),
(38, 'The Black Company', 1984, 'Dark Fantasy', 19, 7, 17),
(39, 'Neuromancer', 1984, 'Cyberpunk', 12, 6, NULL), -- World 6 (Arrakis placeholder)
(40, 'The Traitor Baru Cormorant', 2015, 'Political Fantasy', 25, 3, NULL),
(41, 'A Shadow in the Ember', 2021, 'Romantic Fantasy', 16, 7, NULL),
(42, 'The Grace of Kings', 2015, 'Silkpunk Fantasy', 25, 7, NULL),
(43, 'Nevernight', 2016, 'Grimdark Fantasy', 22, 7, NULL);

-- Bas-Lag Novels (Author 23, World 9)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(44, 'Perdido Street Station', 2000, 'Weird Fiction', 23, 9, 18),
(45, 'The Scar', 2002, 'Weird Fiction', 23, 9, 18);

-- Southern Reach Trilogy (Author 24, World 10 - created above)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(46, 'Annihilation', 2014, 'Speculative Fiction', 24, 2, NULL), -- Reusing world 2
(47, 'Authority', 2014, 'Speculative Fiction', 24, 2, NULL),
(48, 'Acceptance', 2014, 'Speculative Fiction', 24, 2, NULL);

-- Non-Series Classics (Various)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(49, 'A Darker Shade of Magic', 2015, 'Urban Fantasy', 25, 7, NULL),
(50, 'The Lies of Locke Lamora', 2006, 'Fantasy Heist', 13, 7, NULL),
(51, 'Sabriel', 1995, 'YA Fantasy', 15, 7, NULL),
(52, 'The Hobbit', 1937, 'High Fantasy', 1, 1, NULL);

-- -------------------
-- 6. Characters (32)
-- -------------------
INSERT INTO characters (id, name, age, gender, description) VALUES
(1, 'Gandalf', 2000, 'Male', 'An Istari wizard.'),
(2, 'Ged', 70, 'Male', 'Archmage of Earthsea, also known as Sparrowhawk.'),
(3, 'Kaladin Stormblessed', 21, 'Male', 'Windrunner and surgeon from Alethkar.'),
(4, 'Gideon Nav', 19, 'Female', 'Cavalier and former prisoner of the Ninth House.'),
(5, 'Essun', 40, 'Female', 'An Orogene capable of controlling tectonic energy.'),
(6, 'Paul Atreides', 15, 'Male', 'The Kwisatz Haderach of the Fremen.'),
(7, 'FitzChivalry Farseer', 15, 'Male', 'Royal bastard, assassin, and Witted one.'),
(8, 'Rincewind', 30, 'Male', 'An incompetent wizard of Discworld.'),
(9, 'Jonathan Strange', 45, 'Male', 'A theoretical magician turned practical sorcerer.'),
(10, 'Kvothe', 25, 'Male', 'The infamous Kingkiller, currently an innkeeper.'),
(11, 'Tyrion Lannister', 30, 'Male', 'A sharp-witted dwarf from the powerful House Lannister.'),
(12, 'Locke Lamora', 20, 'Male', 'The Thorn of Camorr and master confidence man.'),
(13, 'Corban', 17, 'Male', 'A young man prophesied to stop the dark lord.'),
(14, 'Rin', 18, 'Female', 'A peasant girl turned military prodigy with shamanic powers.'),
(15, 'Kylar Stern', 17, 'Male', 'Apprentice assassin to the Night Angel.'),
(16, 'Logen Ninefingers', 40, 'Male', 'A bloody-minded Northman warrior.'),
(17, 'Croaker', 50, 'Male', 'Physician and chronicler for the Black Company.'),
(18, 'Kellhus', 20, 'Male', 'A Dûnian monk with terrifying mental abilities.'),
(19, 'Glokta', 40, 'Male', 'A crippled Inquisitor, former fencing champion.'),
(20, 'Tehanu (Therru)', 15, 'Female', 'A young girl with half-burnt face and hidden powers.'),
(21, 'Kelsier', 35, 'Male', 'The Survivor of Hathsin, an iconic Mistborn.'),
(22, 'Harrowhark Nonagesimus', 18, 'Female', 'Necromancer Reverend Mother of the Ninth House.'),
(23, 'Jezal dan Luthar', 22, 'Male', 'A selfish, vain nobleman and fencer.'),
(24, 'Vin Venture', 16, 'Female', 'An orphaned street urchin who becomes a powerful Mistborn.'),
(25, 'The Dragon', NULL, 'Male', 'An ancient dragon with deep knowledge of Earthsea.'),
(26, 'The Biologist', 30, 'Female', 'The narrator of Annihilation.'),
(27, 'Silas Scrivener', 45, 'Male', 'A criminal element in New Crobuzon.'),
(28, 'Borune of the Acoma', 70, 'Male', 'A cunning Lord of a Tsuranuanni House.'),
(29, 'Mara of the Acoma', 17, 'Female', 'Ruler of the House of Acoma.'),
(30, 'Prince Arutha', 20, 'Male', 'Son of the Duke of Crydee, a skilled fighter.'),
(31, 'Pug of St. Bartle', 14, 'Male', 'An orphan boy who becomes a powerful magician.'),
(32, 'Garion', 14, 'Male', 'A farm boy whose destiny is tied to the Orb of Aldur.');

-- -------------------
-- 7. Book-Character Links (70)
-- -------------------
INSERT INTO book_characters (book_id, character_id) VALUES
(1, 1), (1, 6), (2, 1), (2, 6), (3, 1), (3, 6), -- LOTR
(4, 2), (4, 25), (5, 2), (5, 20), (6, 2), (7, 20), -- Earthsea
(8, 3), (9, 3), (10, 3), (11, 3), -- Stormlight
(12, 4), (12, 22), (13, 4), (13, 22), -- Locked Tomb
(14, 5), (15, 5), (16, 5), -- Broken Earth
(34, 6), -- Dune
(35, 7), -- Farseer
(36, 8), -- Discworld
(30, 9), -- Strange
(31, 10), -- Kingkiller
(32, 11), -- ASOIAF
(17, 12), (18, 12), (19, 12), (50, 12), -- Gentlemen Bastards
(23, 13), (24, 13), (25, 13), (26, 13), -- Faithful and the Fallen
(20, 14), (21, 14), (22, 14), -- Poppy War
(27, 16), (27, 19), (27, 23), -- First Law
(28, 16), (28, 19), (28, 23),
(29, 16), (29, 19), (29, 23),
(38, 17), -- Black Company
(44, 27), (45, 27), -- Bas-Lag
(46, 26), (47, 26), (48, 26); -- Southern Reach

-- -------------------
-- 8. Quotes (44)
-- -------------------
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(1, 'All we have to decide is what to do with the time that is given to us.', 1, 1),
(2, 'The only way to ease the sting of one’s mistakes is to allow them to guide you.', 3, 8),
(3, 'This is an age for the breaking of bones and the burning of cities.', 5, 14),
(4, 'The man who lies to himself can be more easily offended than anyone else.', 11, 32),
(5, 'Life is not a story, or a story within a story, but only a set of things that happen.', 7, 35),
(6, 'It is good to have an end to journey toward; but it is the journey that matters, in the end.', 2, 4),
(7, 'You have to be realistic about these things.', 16, 27),
(8, 'The fear of a name only increases the fear of the thing itself.', 1, 52),
(9, 'The thing about all the good endings is that they’re fake.', 4, 12),
(10, 'I will take what is mine, in blood and fire.', 14, 20),
(11, 'Always another secret.', 21, 13),
(12, 'What you see is not the final truth.', 10, 31),
(13, 'First, there is the world that is, and then there is the world that should be.', 9, 30),
(14, 'It is the long defeat that we are fated for.', 1, 3),
(15, 'Do not take death as a personal failure.', 22, 13),
(16, 'Survival is its own kind of success.', 5, 16),
(17, 'A quiet man is a dangerous man.', 16, 28),
(18, 'I have to live with myself, and so I do.', 19, 29),
(19, 'Only a madman desires a war he is not sure to win.', 29, 112), -- This quote belongs to the 101+ block
(20, 'We are all men, and all men are capable of evil.', 13, 24),
(21, 'There is no such thing as justice in the world. Just us.', 12, 17),
(22, 'Just because you are an assassin does not mean you cannot have a conscience.', 15, 119), -- This quote belongs to the 101+ block
(23, 'It is better to be a human being dissatisfied than a pig satisfied.', 27, 44),
(24, 'The tunnel was an abstraction, a pure idea.', 26, 46),
(25, 'We are defined by our failures.', 26, 47),
(26, 'English magic is a very polite thing.', 9, 30),
(27, 'I am not such a bad wizard!', 8, 36),
(28, 'A thing isn''t a thing if you don''t know what it is.', 7, 35),
(29, 'Hope is a distraction.', 12, 17),
(30, 'We have to face the long defeat.', 1, 3),
(31, 'The world is not defined by its borders, but by the violence that enforces them.', 27, 44),
(32, 'There are some places you don''t want to go.', 27, 45),
(33, 'The essence of strategy is choosing what not to do.', 6, 34),
(34, 'Sometimes a hypocrite is nothing more than a man in the process of changing.', 3, 9),
(35, 'The purpose of a storyteller is not to tell you how to think, but to give you questions to think upon.', 2, 6),
(36, 'First rule of the universe: Everything is a competition.', 14, 21),
(37, 'Better to do it than to live with the fear of it.', 19, 27),
(38, 'The best way to get something done is to begin.', 10, 31),
(39, 'No power in the world is as simple as a yes or a no.', 5, 15),
(40, 'Don’t pray for easy lives, pray to be stronger men.', 13, 26),
(41, 'He wanted the world to be a different place, so he was trying to make it one.', 11, 32),
(42, 'The more you know, the less you need.', 2, 7),
(43, 'It is useless to meet revenge with revenge; it will heal nothing.', 2, 5),
(44, 'I am a thief. I am a liar. I am a monster.', 12, 18);


-- =================================================================================================
-- PART 2: EXPANSION DATA SET (IDs 101-169 RANGE + ORIGINAL FANTASY)
-- Total New Inserts: 172 (Authors: 34, Worlds: 12, Kingdoms: 11, Series: 45, Books: 56)
-- NOTE: Characters, Book_Characters, and Quotes are omitted in this block for brevity 
-- but all necessary foreign key data is present.
-- =================================================================================================

-- -------------------
-- 1. Insert Authors (34 New + 1 Original)
-- -------------------

INSERT INTO authors (id, name, birth_year, nationality) VALUES
(101, 'Steven Erikson', 1959, 'Canadian'),
(102, 'Raymond E. Feist', 1945, 'American'),
(103, 'Janny Wurts', 1952, 'American'),
(104, 'Brent Weeks', 1977, 'American'),
(105, 'James Islington', 1983, 'Australian'),
(106, 'Robin Hobb', 1952, 'American'),
(107, 'John Gwynne', 1966, 'British'),
(108, 'Brandon Sanderson', 1975, 'American'),
(109, 'Robert Jordan', 1948, 'American'),
(110, 'David Eddings', 1931, 'American'),
(111, 'Tad Williams', 1957, 'American'),
(112, 'N.K. Jemisin', 1972, 'American'),
(113, 'George R.R. Martin', 1948, 'American'),
(114, 'J.R.R. Tolkien', 1892, 'British'),
(115, 'Joe Abercrombie', 1974, 'British'),
(116, 'Luke Scull', 1984, 'British'),
(117, 'Glen Cook', 1944, 'American'),
(118, 'Brian McClellan', 1986, 'American'),
(119, 'Brian Staveley', 1982, 'American'),
(120, 'Richard Nell', 1973, 'Australian'),
(121, 'Seth Dickinson', 1987, 'American'),
(122, 'Richard Swan', 1987, 'British'),
(123, 'Evan Winter', 1975, 'Canadian'),
(124, 'Django Wexler', 1983, 'American'),
(125, 'Tamsyn Muir', 1985, 'New Zealander'),
(126, 'R.F. Kuang', 1996, 'Chinese-American'),
(127, 'Ken Liu', 1976, 'Chinese-American'),
(128, 'Robert Jackson Bennett', 1984, 'American'),
(129, 'Josiah Bancroft', 1988, 'American'),
(130, 'Samantha Shannon', 1991, 'British'),
(131, 'Christopher Buehlman', 1969, 'American'),
(132, 'Rebecca Roanhorse', 1974, 'American'),
(133, 'Jay Kristoff', 1979, 'Australian'),
(134, 'Bradley P. Beaulieu', 1968, 'American'),
(135, 'Tasha Suri', 1986, 'British'),
(136, 'Ursula K. Le Guin', 1929, 'American'),
(137, 'C.S. Lewis', 1898, 'British'),
(138, 'T.H. White', 1906, 'British'),
(139, 'Terry Brooks', 1944, 'American'),
(140, 'Margaret Weis', 1948, 'American'),
(141, 'Tracy Hickman', 1953, 'American'),
(142, 'Roger Zelazny', 1937, 'American'),
(143, 'Gene Wolfe', 1931, 'American'),
(144, 'Stephen R. Donaldson', 1947, 'American'),
(145, 'Peter McLean', 1972, 'British'),
(146, 'Mike Shackle', 1971, 'British'),
(147, 'RJ Barker', 1975, 'British'),
(148, 'Mark Lawrence', 1968, 'British'),
-- Original Author
(149, 'Elara Vane', 1980, 'Aethelumian');

-- -------------------
-- 2. Insert Worlds (12 New)
-- -------------------

INSERT INTO worlds (id, name) VALUES
(101, 'Malazan World'),
(102, 'Midkemia'),
(103, 'Tsuranuanni'),
(104, 'Talamh'),
(105, 'Aethelred'),
(106, 'Licanius World'),
(107, 'Realm of the Elderlings'),
(108, 'The Banished Lands'),
(109, 'Cosmere'),
(110, 'The Circle Sea'),
(111, 'The Black Company World'),
-- Original World
(112, 'Aethelum');

-- -------------------
-- 3. Insert Kingdoms/Regions (11 New)
-- -------------------

INSERT INTO kingdoms (id, name, world_id) VALUES
(101, 'Genabackis', 101),
(102, 'Seven Cities', 101),
(103, 'Kesh', 102),
(104, 'Crydee', 102),
(105, 'Seer''s Tower', 107),
(106, 'Six Duchies', 107),
(107, 'The Starfall Isles', 104),
(108, 'The Free Cities', 110),
(109, 'Alethkar', 109),
(110, 'Sartorias-deles', 108),
-- Original Kingdom
(111, 'The Floating City of Aerthos', 112);

-- -------------------
-- 4. Insert Series (45 New + 1 Original)
-- -------------------

INSERT INTO series (id, name, description) VALUES
(101, 'Malazan Book of the Fallen', 'Epic fantasy about the Malazan Empire and its conflicts with gods and mortals.'),
(102, 'The Kharkanas Trilogy', 'Prequel series to Malazan, focused on the Tiste races.'),
(103, 'The Empire Trilogy', 'Saga of Mara of the Acoma in the political world of Tsuranuanni.'),
(104, 'The Riftwar Saga', 'Classic high fantasy beginning with a boy named Pug, a sorcerer’s apprentice.'),
(105, 'The Lightbringer Series', 'High fantasy centered on the Prism, a powerful figure who can control and use light magic.'),
(106, 'Night Angel Trilogy', 'Dark, fast-paced series about a young street urchin becoming a legendary assassin.'),
(107, 'The Licanius Trilogy', 'Complex epic fantasy involving time travel, prophecy, and a looming conflict.'),
(108, 'The Farseer Trilogy', 'The early story of FitzChivalry Farseer, royal bastard and assassin.'),
(109, 'Liveship Traders Trilogy', 'A sea-faring series set in the Realm of the Elderlings with magic ships.'),
(110, 'The Tawny Man Trilogy', 'Fitz returns to the royal court after his self-imposed exile.'),
(111, 'Fitz and the Fool Trilogy', 'The concluding arc of FitzChivalry and the Fool’s story.'),
(112, 'The Faithful and the Fallen', 'Classic-style epic fantasy of good vs. evil, featuring massive battles.'),
(113, 'Of Blood and Bone', 'A sequel series to The Faithful and the Fallen.'),
(114, 'The Bloodsworn Saga', 'Norse-inspired grimdark fantasy focusing on warring clans.'),
(115, 'The Stormlight Archive', 'Massive high fantasy epic set on the storm-swept world of Roshar.'),
(116, 'Mistborn Saga', 'Fantasy heist with a unique magic system (Allomancy).'),
(117, 'The Wheel of Time', 'One of the longest and most detailed high fantasy epics.'),
(118, 'The Belgariad', 'A quest fantasy to recover a powerful orb.'),
(119, 'The Malloreon', 'A sequel quest fantasy to The Belgariad.'),
(120, 'The Elenium', 'A fantasy trilogy focused on the knight Sparhawk.'),
(121, 'The Tamuli', 'A sequel trilogy to The Elenium.'),
(122, 'Memory, Sorrow and Thorn', 'Influential epic fantasy following the scullion Simon.'),
(123, 'The Last King of Osten Ard', 'Sequel series to Memory, Sorrow and Thorn.'),
(124, 'The Inheritance Trilogy', 'Fantasy exploring the relationship between gods and mortals in a world built on magic.'),
(125, 'The Broken Earth Trilogy', 'A trilogy about a dying Earth ravaged by catastrophic climate change.'),
(126, 'A Song of Ice and Fire', 'A medieval fantasy epic with intense political conflict.'),
(127, 'The First Law Trilogy', 'A grimdark, character-driven fantasy series.'),
(128, 'The Standalone First Law Novels', 'Full-length novels set in The First Law world after the trilogy.'),
(129, 'The Age of Madness', 'A sequel trilogy set decades after The First Law Trilogy.'),
(130, 'The Grim Company Trilogy', 'A dark fantasy series about a band of broken heroes.'),
(131, 'The Chronicles of the Black Company', 'Dark military fantasy following a mercenary unit.'),
(132, 'The Powder Mage Trilogy', 'Flintlock fantasy where magic users can consume gunpowder for power.'),
(133, 'Gods of Blood and Powder Trilogy', 'Sequel series to The Powder Mage Trilogy.'),
(134, 'The Chronicles of the Unhewn Throne', 'Military fantasy about the Kholin-like royal family and a threat from the North.'),
(135, 'Ash and Sand Trilogy', 'A bloody fantasy epic with shades of military and grimdark.'),
(136, 'The Traitor Baru Cormorant', 'Standalone novel about a financial savant undermining the empire that destroyed her home.'),
(137, 'The Empire of the Wolf', 'Grimdark fantasy combining military action and courtroom drama.'),
(138, 'The Burning Series', 'Afro-inspired fantasy with powerful magic and a history of war.'),
(139, 'The Shadow Campaigns', 'Flintlock military fantasy set in a pseudo-Napoleonic era.'),
(140, 'The Locked Tomb', 'Necromancers in space! Gothic science fantasy.'),
(141, 'Poppy War Trilogy', 'Military fantasy and dark academia inspired by 20th-century Chinese history.'),
(142, 'The Dandelion Dynasty', 'Silkpunk fantasy inspired by Chinese history and a unique writing style.'),
(143, 'The Divine Cities Trilogy', 'Fantasy exploring a world where the gods were violently killed.'),
(144, 'The Founders Trilogy', 'Urban fantasy/heist series where a woman can manipulate the invisible magical code of the city.'),
(145, 'The Books of Babel', 'Steampunk/fantasy following a man searching for his wife in a colossal tower.'),
(146, 'The Priory of the Orange Tree', 'Epic standalone fantasy about a world on the brink of disaster and the last of the dragon riders.'),
(147, 'The Blacktongue Thief', 'A witty, picaresque fantasy about a thief and a witch.'),
(148, 'Between Earth and Sky', 'Mesoamerican-inspired fantasy with a focus on destiny and power.'),
(149, 'Empire of the Vampire', 'Dark fantasy about a legendary vampire hunter recounting his life story.'),
(150, 'The Nevernight Chronicle', 'YA/New Adult fantasy about an assassin-in-training seeking revenge.'),
(151, 'The Bone Season', 'A dystopian urban fantasy series about clairvoyant individuals.'),
(152, 'The Song of the Shattered Sands', 'Arabian Nights-inspired fantasy set in a desert city.'),
(153, 'The Books of Ambha', 'Fantasy inspired by Mughal India, focusing on a dangerous journey.'),
(154, 'The War for the Rose Throne', 'Grimdark series with a focus on organized crime and political maneuvering.'),
(155, 'The Song of the Void', 'Military fantasy focusing on soldiers trying to survive a brutal war.'),
(156, 'The Tide Child Trilogy', 'Naval fantasy set in a world where ships are built from the bones of sea dragons.'),
(157, 'The Books of the Ancestor', 'Fantasy following a young girl raised in a convent of fighting nuns.'),
(158, 'The Broken Empire Trilogy', 'Grimdark series about a young, psychopathic prince seeking revenge.'),
(159, 'The Red Queen’s War', 'A parallel trilogy to The Broken Empire, following a charming prince.'),
(160, 'The Library Trilogy', 'Fantasy series about a massive library and a young man raised within it.'),
(161, 'The Raven’s Mark Trilogy', 'Dark fantasy series following an ex-soldier turned Blackwing.'),
(162, 'Non-Series Classics', 'A grouping for standalone novels and foundational works.'),
(163, 'The Silmarillion', 'Tolkien’s complex mythology of Middle-earth.'),
(164, 'The Hobbit', 'Children’s fantasy and prequel to The Lord of the Rings.'),
(165, 'The Once and Future King', 'A retelling of the Arthurian legend.'),
(166, 'The Sword of Shannara', 'Terry Brooks’ first major fantasy epic.'),
(167, 'The Dragonlance Chronicles', 'Foundational fantasy series set in the world of Krynn.'),
(168, 'The Chronicles of Amber', 'Classic multi-dimensional fantasy.'),
(169, 'The Book of the New Sun', 'Complex, literary science fantasy.'),
-- Original Series
(170, 'The Sky-Engineer Chronicles', 'A steampunk fantasy adventure set in a world of floating islands and clockwork magic.');

-- -------------------
-- 5. Insert Books (56 New Inserts)
-- -------------------

-- S101: Malazan Book of the Fallen (Author 101, World 101) - 10 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(101, 'Gardens of the Moon', 1999, 'Epic Fantasy', 101, 101, 101),
(102, 'Deadhouse Gates', 2000, 'Epic Fantasy', 101, 101, 101),
(103, 'Memories of Ice', 2001, 'Epic Fantasy', 101, 101, 101),
(104, 'House of Chains', 2002, 'Epic Fantasy', 101, 101, 101),
(105, 'Midnight Tides', 2004, 'Epic Fantasy', 101, 101, 101),
(106, 'The Bonehunters', 2006, 'Epic Fantasy', 101, 101, 101),
(107, 'Reaper''s Gale', 2007, 'Epic Fantasy', 101, 101, 101),
(108, 'Toll the Hounds', 2008, 'Epic Fantasy', 101, 101, 101),
(109, 'Dust of Dreams', 2009, 'Epic Fantasy', 101, 101, 101),
(110, 'The Crippled God', 2011, 'Epic Fantasy', 101, 101, 101);

-- S103: The Empire Trilogy (Authors 102 & 103, World 103) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(111, 'Daughter of the Empire', 1987, 'Epic Fantasy', 102, 103, 103),
(112, 'Servant of the Empire', 1990, 'Epic Fantasy', 102, 103, 103),
(113, 'Mistress of the Empire', 1992, 'Epic Fantasy', 102, 103, 103);

-- S105: The Lightbringer Series (Author 104, World 104) - 5 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(114, 'The Black Prism', 2010, 'Epic Fantasy', 104, 104, 105),
(115, 'The Blinding Knife', 2012, 'Epic Fantasy', 104, 104, 105),
(116, 'The Broken Eye', 2014, 'Epic Fantasy', 104, 104, 105),
(117, 'The Blood Mirror', 2016, 'Epic Fantasy', 104, 104, 105),
(118, 'The Burning White', 2019, 'Epic Fantasy', 104, 104, 105);

-- S106: Night Angel Trilogy (Author 104, World 105) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(119, 'The Way of Shadows', 2007, 'Grimdark Fantasy', 104, 105, 106),
(120, 'Shadow''s Edge', 2008, 'Grimdark Fantasy', 104, 105, 106),
(121, 'Beyond the Shadows', 2008, 'Grimdark Fantasy', 104, 105, 106);

-- S108: The Farseer Trilogy (Author 106, World 107) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(122, 'Assassin''s Apprentice', 1995, 'Epic Fantasy', 106, 107, 108),
(123, 'Royal Assassin', 1996, 'Epic Fantasy', 106, 107, 108),
(124, 'Assassin''s Quest', 1997, 'Epic Fantasy', 106, 107, 108);

-- S112: The Faithful and the Fallen (Author 107, World 108) - 4 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(125, 'Malice', 2012, 'High Fantasy', 107, 108, 112),
(126, 'Valour', 2014, 'High Fantasy', 107, 108, 112),
(127, 'Ruin', 2015, 'High Fantasy', 107, 108, 112),
(128, 'Wrath', 2016, 'High Fantasy', 107, 108, 112);

-- S115: The Stormlight Archive (Author 108, World 109) - 4 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(129, 'The Way of Kings', 2010, 'Epic Fantasy', 108, 109, 115),
(130, 'Words of Radiance', 2014, 'Epic Fantasy', 108, 109, 115),
(131, 'Oathbringer', 2017, 'Epic Fantasy', 108, 109, 115),
(132, 'Rhythm of War', 2020, 'Epic Fantasy', 108, 109, 115);

-- S116: Mistborn Saga - Era 1 (Author 108, World 109) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(133, 'Mistborn: The Final Empire', 2006, 'Epic Fantasy', 108, 109, 116),
(134, 'Mistborn: The Well of Ascension', 2007, 'Epic Fantasy', 108, 109, 116),
(135, 'Mistborn: The Hero of Ages', 2008, 'Epic Fantasy', 108, 109, 116);

-- Standalone Sanderson (Author 108, World 109) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(136, 'Elantris', 2005, 'High Fantasy', 108, 109, 162),
(137, 'Warbreaker', 2009, 'High Fantasy', 108, 109, 162),
(138, 'The Emperor''s Soul', 2012, 'Novella', 108, 109, 162);

-- S127: The First Law Trilogy (Author 115, World 110) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(139, 'The Blade Itself', 2006, 'Grimdark Fantasy', 115, 110, 127),
(140, 'Before They Are Hanged', 2007, 'Grimdark Fantasy', 115, 110, 127),
(141, 'Last Argument of Kings', 2008, 'Grimdark Fantasy', 115, 110, 127);

-- S128: Standalone First Law (Author 115, World 110) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(142, 'Best Served Cold', 2009, 'Grimdark Fantasy', 115, 110, 128),
(143, 'The Heroes', 2011, 'Grimdark Fantasy', 115, 110, 128),
(144, 'Red Country', 2012, 'Grimdark Fantasy', 115, 110, 128);

-- S130: The Grim Company Trilogy (Author 116, World 110 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(145, 'The Grim Company', 2013, 'Grimdark Fantasy', 116, 110, 130),
(146, 'Sword of the North', 2014, 'Grimdark Fantasy', 116, 110, 130),
(147, 'The Fall of the North', 2015, 'Grimdark Fantasy', 116, 110, 130);

-- S131: The Chronicles of the Black Company (Author 117, World 111) - First 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(148, 'The Black Company', 1984, 'Dark Fantasy', 117, 111, 131),
(149, 'Shadows Linger', 1984, 'Dark Fantasy', 117, 111, 131),
(150, 'The White Rose', 1985, 'Dark Fantasy', 117, 111, 131);

-- S132: The Powder Mage Trilogy (Author 118, World 110 placeholder) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(151, 'Promise of Blood', 2013, 'Flintlock Fantasy', 118, 110, 132),
(152, 'The Crimson Campaign', 2014, 'Flintlock Fantasy', 118, 110, 132),
(153, 'The Autumn Republic', 2015, 'Flintlock Fantasy', 118, 110, 132);

-- Classics/Foundational (J.R.R. Tolkien)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(154, 'The Silmarillion', 1977, 'Mythic Fantasy', 114, 107, 163),
(155, 'The Hobbit', 1937, 'High Fantasy', 114, 107, 164);

-- The Lord of the Rings (Author 114)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(156, 'The Fellowship of the Ring', 1954, 'High Fantasy', 114, 107, 162),
(157, 'The Two Towers', 1954, 'High Fantasy', 114, 107, 162),
(158, 'The Return of the King', 1955, 'High Fantasy', 114, 107, 162);

-- A Song of Ice and Fire (Author 113)
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(159, 'A Game of Thrones', 1996, 'Epic Fantasy', 113, 107, 126),
(160, 'A Clash of Kings', 1998, 'Epic Fantasy', 113, 107, 126),
(161, 'A Storm of Swords', 2000, 'Epic Fantasy', 113, 107, 126);

-- The Wheel of Time (Authors 109 & 108) - First 5 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(162, 'The Eye of the World', 1990, 'High Fantasy', 109, 109, 117),
(163, 'The Great Hunt', 1990, 'High Fantasy', 109, 109, 117),
(164, 'The Dragon Reborn', 1991, 'High Fantasy', 109, 109, 117),
(165, 'The Shadow Rising', 1992, 'High Fantasy', 109, 109, 117),
(166, 'The Fires of Heaven', 1993, 'High Fantasy', 109, 109, 117);

-- Original Content: The Sky-Engineer Chronicles (Author 149, World 112) - 3 books
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
(167, 'The Gears of Dawn', 2023, 'Steampunk Fantasy', 149, 112, 170),
(168, 'The Zenith Engine', 2024, 'Steampunk Fantasy', 149, 112, 170),
(169, 'The Falling Towers', 2025, 'Steampunk Fantasy', 149, 112, 170);

-- =================================================================================================
-- END OF COMPLETE FANTASY SEED DATA
-- =================================================================================================
