-- =================================================================================================
-- COMPLETE FANTASY SEED DATA (CONSOLIDATED & FIXED)
-- =================================================================================================

-- -------------------
-- 0. CLEANUP (MANDATORY BEFORE RERUNNING)
-- -------------------
-- Deleting existing data from the tables that reference other IDs first (to avoid FK errors)
DELETE FROM quotes;
DELETE FROM book_characters;
DELETE FROM api_keys;
DELETE FROM books;
DELETE FROM series;
DELETE FROM kingdoms;
DELETE FROM characters;
DELETE FROM authors;
DELETE FROM worlds;

-- =================================================================================================
-- CONSOLIDATED INSERTS (PRIORITIZING PARENT TABLES)
-- =================================================================================================

-- -------------------
-- 1. Worlds (28 total, FIXED: Mistborn worlds consolidated to 101)
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
(9, 'Bas-Lag'),
(12, 'The Great Sky-Road'),
(25, 'Temerant'),
(26, 'The Four Londons'),
(27, 'The World of Uprooted'),
(28, 'The World of American Gods'),
(29, 'The World of Mr Norrell'),
(30, 'The World of Dandelion Dynasty'),
(31, 'Grishaverse (Crows)'),
(32, 'The Dark Tower World'),
(101, 'Mistborn: Scadrial'),          -- CONSOLIDATED: Replaces 101, 102, 103, 104
(105, 'Grishaverse'),
(107, 'Westeros and Essos'),
(108, 'The Malazan World'),
(109, 'The Wheel of Time World'),
(110, 'Terre d’Ange'),
(111, 'Emberfall'),
(112, 'The Circle of the World'),
(113, 'The Nyktos World'),
(114, 'The Continent'),
(115, 'Alera'),
(116, 'Westeros'),
(117, 'Aethelred'),
(118, 'Randland');


---

-- -------------------
-- 2. Authors (39 total)
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
(9, 'China Miéville', 1973, 'British'),
(10, 'Patrick Rothfuss', 1973, 'American'),
(11, 'V.E. Schwab', 1987, 'American'),
(12, 'Robert Jordan', 1948, 'American'),
(13, 'Naomi Novik', 1973, 'American'),
(14, 'Neil Gaiman', 1960, 'British'),
(15, 'Susanna Clarke', 1959, 'British'),
(16, 'Ken Liu', 1976, 'Chinese-American'),
(17, 'Leigh Bardugo', 1975, 'Israeli-American'),
(18, 'P. K. Dick', 1928, 'American'),
(19, 'George Orwell', 1903, 'British'),
(20, 'Aldous Huxley', 1894, 'British'),
(21, 'Margaret Atwood', 1939, 'Canadian'),
(22, 'Ray Bradbury', 1920, 'American'),
(23, 'Philip Pullman', 1946, 'British'),
(24, 'Madeline Miller', 1978, 'American'),
(25, 'Stephen King', 1947, 'American'),
(101, 'Jacqueline Carey', 1964, 'American'),
(102, 'Brigid Kemmerer', 1978, 'American'),
(103, 'Joe Abercrombie', 1974, 'British'),
(104, 'Jennifer L. Armentrout', 1980, 'American'),
(105, 'Andrzej Sapkowski', 1948, 'Polish'),
(106, 'Jim Butcher', 1971, 'American'),
(107, 'Andrzej Sapkowski', 1948, 'Polish'),
(108, 'R.F. Kuang', 1996, 'Chinese-American'),
(109, 'Robert Jordan', 1948, 'American'),
(110, 'J.R.R. Tolkien', 1892, 'British'),
(111, 'Joe Abercrombie', 1974, 'British'),
(112, 'Andrzej Sapkowski', 1948, 'Polish'),
(113, 'George R.R. Martin', 1948, 'American'),
(114, 'J.R.R. Tolkien', 1892, 'British');


---

-- -------------------
-- 3. Series (38 total)
-- -------------------
INSERT INTO series (id, name, description) VALUES
(1, 'The Lord of the Rings', 'A high fantasy epic detailing the quest to destroy the One Ring.'),
(2, 'Earthsea Cycle', 'A classic series about magic, balance, and wizards, focused on Ged.'),
(3, 'The Stormlight Archive', 'An epic fantasy series set on the world of Roshar, focusing on complex magic and characters.'),
(4, 'The Locked Tomb', 'A science fantasy series mixing necromancy, horror, and gothic themes.'),
(5, 'The Broken Earth', 'A trilogy focused on a post-apocalyptic world rocked by geological and social collapse.'),
(6, 'Dune Chronicles', 'A foundational science fiction series about politics, ecology, and human evolution.'),
(7, 'The Realm of the Elderlings', 'A vast series of intertwined trilogies and books centered on the Farseer family.'),
(8, 'Discworld', 'A satirical fantasy series set on a flat world balanced on the backs of four elephants, which stand on the back of a giant turtle.'),
(9, 'Bas-Lag Cycle', 'A series of dark, complex fantasy novels blending magic, technology, and political commentary.'),
(10, 'The Kingkiller Chronicle', 'A story about a famous musician and magician recounting his life story.'),
(11, 'Shades of Magic', 'A fantasy series centered around parallel Londons and elemental magic.'),
(12, 'The Wheel of Time', 'One of the longest and most detailed high fantasy epics.'),
(13, 'Temeraire', 'A Napoleonic era fantasy series featuring dragons in aerial combat.'),
(14, 'American Gods', 'A novel exploring modern mythology and old gods in the contemporary United States.'),
(15, 'Jonathan Strange & Mr Norrell', 'An alternate history fantasy set in 19th-century England where magic is reintroduced.'),
(16, 'The Dandelion Dynasty', 'A silkpunk epic fantasy inspired by Chinese history and mythology.'),
(17, 'Six of Crows', 'A duology set in the Grishaverse, focused on a heist team.'),
(18, 'The Dark Tower', 'Stephen King''s magnum opus, blending fantasy, horror, and Western genres.'),
(19, 'His Dark Materials', 'A trilogy blending fantasy, theology, and science, featuring parallel worlds.'),
(20, 'The Song of Achilles', 'A retelling of the relationship between Achilles and Patroclus.'),
(21, 'The First Law', 'A gritty fantasy series focused on complex moral characters and brutal realism.'),
(22, 'Mistborn', 'A trilogy centered on a world where specific people can burn metals for magical power.'),
(23, 'Farseer Trilogy', 'The initial trilogy in the Realm of the Elderlings.'),
(24, 'Codex Alera', 'A high fantasy series focused on a young man who lacks magic in a world where everyone else has it.'),
(25, 'The Poppy War', 'A dark military fantasy series inspired by 20th-century Chinese history.'),
(101, 'Kushiel’s Legacy', 'A historical fantasy series focused on a spy, courtesan, and accidental hero.'),
(102, 'Cursebreakers', 'A YA fantasy series based on a Beauty and the Beast retelling.'),
(103, 'The First Law', 'A grimdark fantasy series focused on moral complexity and war.'),
(104, 'Flesh and Fire', 'A dark romantic fantasy prequel series.'),
(105, 'The Witcher', 'A series following a monster hunter for hire.'),
(106, 'Codex Alera', 'A high fantasy series focused on a young man who lacks magic in a world where everyone else has it.'),
(107, 'A Song of Ice and Fire', 'An epic fantasy series about political turmoil and a long winter.'),
(108, 'The Poppy War', 'A dark military fantasy series inspired by 20th-century Chinese history.'),
(109, 'Discworld', 'A satirical fantasy series set on a flat world balanced on the backs of four elephants, which stand on the back of a giant turtle.'),
(110, 'Mistborn', 'A trilogy centered on a world where specific people can burn metals for magical power.'),
(111, 'The Lord of the Rings', 'A high fantasy epic detailing the quest to destroy the One Ring.'),
(112, 'The Realm of the Elderlings', 'A vast series of intertwined trilogies and books centered on the Farseer family.'),
(113, 'The Name of the Wind', 'A story about a famous musician and magician recounting his life story.'),
(114, 'Shades of Magic', 'A fantasy series centered around parallel Londons and elemental magic.'),
(115, 'The Witcher Saga', 'A series following a monster hunter for hire.'),
(116, 'Blood and Ash', 'A dark romantic fantasy series.'),
(117, 'The Wheel of Time', 'One of the longest and most detailed high fantasy epics.'),
(126, 'A Song of Ice and Fire', 'An epic fantasy series about political turmoil and a long winter.');


---

-- -------------------
-- 4. Kingdoms (18 total)
-- -------------------
INSERT INTO kingdoms (id, name, world_id) VALUES
(1, 'Gondor', 1),
(2, 'The Shire', 1),
(3, 'The Nine Lands', 2),
(4, 'Alethkar', 3),
(5, 'Sanze', 5),
(6, 'Arrakeen', 6),
(7, 'Buckkeep', 7),
(8, 'Ankh-Morpork', 8),
(9, 'New Crobuzon', 9),
(10, 'Abarat', 25),
(101, 'Tir Tairngire', 110),
(102, 'Emberfall', 111),
(103, 'Adua', 112),
(104, 'Stygian Dynasty', 113),
(105, 'Temeria', 114),
(106, 'Aleria', 115),
(107, 'Seven Kingdoms', 116),
(108, 'Nikan', 117);


---

-- -------------------
-- 5. Characters (44 total)
-- -------------------
INSERT INTO characters (id, name, age, gender, description) VALUES
(1, 'Gandalf', 2019, 'Male', 'A wizard of the Istari order, mentor to the Fellowship.'),
(2, 'Ged', 70, 'Male', 'A young wizard who becomes the Archmage of Earthsea.'),
(3, 'Kaladin Stormblessed', 21, 'Male', 'A surgeon turned slave and soldier, central figure in The Stormlight Archive.'),
(4, 'Gideon Nav', 25, 'Female', 'A cavalier who serves as a bodyguard to the Ninth House Necromancer.'),
(5, 'Essun', 40, 'Female', 'An Orogene capable of controlling seismic energy.'),
(6, 'Paul Atreides', 15, 'Male', 'The central protagonist of Dune, who becomes a prophet and emperor.'),
(7, 'FitzChivalry Farseer', 60, 'Male', 'The royal bastard and assassin, primary protagonist of the Farseer books.'),
(8, 'Rincewind', 40, 'Male', 'An incompetent wizard on Discworld, constantly fleeing from danger.'),
(9, 'Bellis Coldwine', 30, 'Female', 'A linguistic scientist in New Crobuzon.'),
(10, 'Kvothe', 20, 'Male', 'A legendary adventurer and musician.'),
(11, 'Kell Maresh', 21, 'Male', 'One of the last Antari, a blood magician who can travel between parallel Londons.'),
(12, 'Rand al''Thor', 20, 'Male', 'The central figure of The Wheel of Time, prophesied to save or break the world.'),
(13, 'Kaz Brekker', 17, 'Male', 'A brilliant but ruthless criminal mastermind in Ketterdam.'),
(14, 'Roland Deschain', 35, 'Male', 'The last Gunslinger, pursuing the Dark Tower.'),
(15, 'Miles Vorkosigan', 40, 'Male', 'A physically challenged but highly intelligent military officer and diplomat.'),
(16, 'Genly Ai', 30, 'Male', 'An Envoy to the planet Winter, tasked with bringing it into a galactic confederation.'),
(17, 'Shallan Davar', 17, 'Female', 'A lightweaver with a troubled past, capable of crafting illusions.'),
(18, 'Elias Veturius', 20, 'Male', 'A former Mask soldier who becomes a fugitive.'),
(19, 'Jezal dan Luthar', 25, 'Male', 'A handsome and arrogant nobleman turned King.'),
(20, 'Vin Venture', 16, 'Female', 'A street urchin who discovers she is a powerful Allomancer.'),
(21, 'Robin Loxley', 28, 'Male', 'A figure in the Loxley series of books.'),
(22, 'Sana Meru', 30, 'Female', 'A powerful Orogene and mentor to Essun.'),
(23, 'Sazed', 50, 'Male', 'A Terris Keeper and scholar.'),
(24, 'Bayaz', 1500, 'Male', 'The First of the Magi, a powerful and manipulative wizard.'),
(25, 'Jace Wayland', 25, 'Male', 'A Shadowhunter, skilled warrior.'),
(26, 'Percy Jackson', 16, 'Male', 'A demigod, son of Poseidon.'),
(27, 'Samwise Gamgee', 35, 'Male', 'Frodo Baggins'' gardener and companion.'),
(28, 'Lyra Belacqua', 11, 'Female', 'The main character of His Dark Materials, who travels to other worlds.'),
(29, 'Circe', 3000, 'Female', 'A sorceress, daughter of Helios.'),
(30, 'Katniss Everdeen', 16, 'Female', 'The protagonist of The Hunger Games.'),
(31, 'Kvothe', 20, 'Male', 'The main character of The Kingkiller Chronicle.'),
(32, 'Silas Loxley', 32, 'Male', 'A leader in the Loxley series of books.'),
(101, 'Phedre no Delaunay', 30, 'Female', 'A courtesan with a gift for seeing the will of God.'),
(102, 'Grey', 25, 'Male', 'A prince cursed to transform into a beast.'),
(103, 'Logen Ninefingers', 40, 'Male', 'A feared barbarian warrior.'),
(104, 'Poppy', 20, 'Female', 'A maiden chosen for her purity and beauty.'),
(105, 'Geralt of Rivia', 90, 'Male', 'A Witcher, monster hunter for hire.'),
(106, 'Tavi of Calderon', 18, 'Male', 'A young man with no elemental magic in a world where everyone has it.'),
(107, 'Tyrion Lannister', 35, 'Male', 'A dwarf of the wealthy Lannister family.'),
(108, 'Rin', 17, 'Female', 'An orphan who discovers a deadly power.'),
(109, 'Moiraine Damodred', 400, 'Female', 'An Aes Sedai, a powerful channeler of the One Power.'),
(110, 'Frodo Baggins', 50, 'Male', 'A hobbit, the Ringbearer.'),
(111, 'Ninefingers', 40, 'Male', 'A feared barbarian warrior.'),
(112, 'Ciri', 20, 'Female', 'A princess with elven blood and powerful magic.');


---

-- -------------------
-- 6. Books (74 total, VERIFIED: Mistborn books all point to world_id 101)
-- -------------------
INSERT INTO books (id, title, year, genre, author_id, world_id, series_id) VALUES
-- Lord of the Rings (Author 1)
(1, 'The Fellowship of the Ring', 1954, 'High Fantasy', 1, 1, 1),
(2, 'The Two Towers', 1954, 'High Fantasy', 1, 1, 1),
(3, 'The Return of the King', 1955, 'High Fantasy', 1, 1, 1),

-- Earthsea Cycle (Author 2)
(4, 'A Wizard of Earthsea', 1968, 'Fantasy', 2, 2, 2),
(5, 'The Tombs of Atuan', 1971, 'Fantasy', 2, 2, 2),
(6, 'The Farthest Shore', 1972, 'Fantasy', 2, 2, 2),

-- The Stormlight Archive (Author 3)
(7, 'The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),
(8, 'Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3),
(9, 'Oathbringer', 2017, 'Epic Fantasy', 3, 3, 3),

-- The Locked Tomb (Author 4)
(10, 'Gideon the Ninth', 2019, 'Science Fantasy', 4, 4, 4),
(11, 'Harrow the Ninth', 2020, 'Science Fantasy', 4, 4, 4),

-- The Broken Earth (Author 5)
(12, 'The Fifth Season', 2015, 'Apocalyptic Fiction', 5, 5, 5),
(13, 'The Obelisk Gate', 2016, 'Apocalyptic Fiction', 5, 5, 5),
(14, 'The Stone Sky', 2017, 'Apocalyptic Fiction', 5, 5, 5),

-- Dune Chronicles (Author 6)
(15, 'Dune', 1965, 'Science Fiction', 6, 6, 6),
(16, 'Dune Messiah', 1969, 'Science Fiction', 6, 6, 6),
(17, 'Children of Dune', 1976, 'Science Fiction', 6, 6, 6),

-- Farseer Trilogy (Author 7)
(18, 'Assassin''s Apprentice', 1995, 'High Fantasy', 7, 7, 23),
(19, 'Royal Assassin', 1996, 'High Fantasy', 7, 7, 23),
(20, 'Assassin''s Quest', 1997, 'High Fantasy', 7, 7, 23),

-- Discworld (Author 8)
(21, 'The Colour of Magic', 1983, 'Satirical Fantasy', 8, 8, 8),
(22, 'The Light Fantastic', 1986, 'Satirical Fantasy', 8, 8, 8),
(23, 'Feet of Clay', 1996, 'Satirical Fantasy', 8, 8, 8),

-- Bas-Lag Cycle (Author 9)
(24, 'Perdido Street Station', 2000, 'Weird Fiction', 9, 9, 9),
(25, 'The Scar', 2002, 'Weird Fiction', 9, 9, 9),

-- The Kingkiller Chronicle (Author 10)
(26, 'The Name of the Wind', 2007, 'High Fantasy', 10, 25, 10),
(27, 'The Wise Man''s Fear', 2011, 'High Fantasy', 10, 25, 10),

-- Shades of Magic (Author 11)
(28, 'A Darker Shade of Magic', 2015, 'Urban Fantasy', 11, 26, 11),
(29, 'A Gathering of Shadows', 2016, 'Urban Fantasy', 11, 26, 11),
(30, 'A Conjuring of Light', 2017, 'Urban Fantasy', 11, 26, 11),

-- The Wheel of Time (Author 12)
(31, 'The Eye of the World', 1990, 'High Fantasy', 12, 12, 12),
(32, 'The Great Hunt', 1990, 'High Fantasy', 12, 12, 12),
(33, 'The Dragon Reborn', 1991, 'High Fantasy', 12, 12, 12),

-- Naomi Novik Books (Author 13)
(34, 'Uprooted', 2015, 'Fantasy', 13, 27, 25),
(35, 'Spinning Silver', 2018, 'Fantasy', 13, 27, 25),

-- Neil Gaiman Books (Author 14)
(36, 'American Gods', 2001, 'Urban Fantasy', 14, 28, 14),
(37, 'Stardust', 1999, 'Fairy Tale', 14, 28, 14),

-- Susanna Clarke (Author 15)
(38, 'Jonathan Strange & Mr Norrell', 2004, 'Historical Fantasy', 15, 29, 15),

-- The Dandelion Dynasty (Author 16)
(39, 'The Grace of Kings', 2015, 'Silkpunk Fantasy', 16, 30, 16),
(40, 'The Wall of Storms', 2016, 'Silkpunk Fantasy', 16, 30, 16),

-- Six of Crows (Author 17)
(41, 'Six of Crows', 2015, 'Young Adult Fantasy', 17, 31, 17),
(42, 'Crooked Kingdom', 2016, 'Young Adult Fantasy', 17, 31, 17),

-- The Dark Tower (Author 25)
(43, 'The Gunslinger', 1982, 'Dark Fantasy', 25, 32, 18),
(44, 'The Drawing of the Three', 1987, 'Dark Fantasy', 25, 32, 18),
(45, 'The Waste Lands', 1991, 'Dark Fantasy', 25, 32, 18),

-- The First Law (Author 103)
(46, 'The Blade Itself', 2006, 'Grimdark Fantasy', 103, 112, 21),
(47, 'Before They Are Hanged', 2007, 'Grimdark Fantasy', 103, 112, 21),
(48, 'Last Argument of Kings', 2008, 'Grimdark Fantasy', 103, 112, 21),

-- Mistborn (Author 3) -- WORLD_ID IS CORRECTLY SET TO CONSOLIDATED '101'
(49, 'Mistborn: The Final Empire', 2006, 'Epic Fantasy', 3, 101, 22),
(50, 'The Well of Ascension', 2007, 'Epic Fantasy', 3, 101, 22),
(51, 'The Hero of Ages', 2008, 'Epic Fantasy', 3, 101, 22),

-- Ray Bradbury (Author 22)
(52, 'The Martian Chronicles', 1950, 'Science Fiction', 22, 32, 25),
(53, 'Fahrenheit 451', 1953, 'Dystopian', 22, 32, 25),

-- His Dark Materials (Author 23)
(54, 'The Golden Compass', 1995, 'Fantasy', 23, 32, 19),
(55, 'The Subtle Knife', 1997, 'Fantasy', 23, 32, 19),

-- Kushiel's Legacy (Author 101)
(101, 'Kushiel''s Dart', 2001, 'Historical Fantasy', 101, 110, 101),
(102, 'Kushiel''s Chosen', 2002, 'Historical Fantasy', 101, 110, 101),
(103, 'Kushiel''s Avatar', 2003, 'Historical Fantasy', 101, 110, 101),

-- Cursebreakers (Author 102)
(104, 'A Curse So Dark and Lonely', 2019, 'YA Fantasy', 102, 111, 102),
(105, 'A Heart So Fierce and Broken', 2020, 'YA Fantasy', 102, 111, 102),
(106, 'A Vow So Bold and Deadly', 2021, 'YA Fantasy', 102, 111, 102),

-- The First Law (Author 103)
(107, 'The Blade Itself', 2006, 'Grimdark Fantasy', 103, 112, 103),
(108, 'Before They Are Hanged', 2007, 'Grimdark Fantasy', 103, 112, 103),
(109, 'Last Argument of Kings', 2008, 'Grimdark Fantasy', 103, 112, 103),

-- Blood and Ash Prequels (Author 104)
(110, 'A Shadow in the Ember', 2021, 'Romantic Fantasy', 104, 113, 116),
(111, 'A Light in the Flame', 2022, 'Romantic Fantasy', 104, 113, 116),
(112, 'The Engineer of Heaven', 2023, 'Placeholder Fantasy', 101, 110, 101),

-- The Witcher Saga (Author 107)
(113, 'Blood of Elves', 1994, 'Dark Fantasy', 107, 114, 115),
(114, 'Time of Contempt', 1995, 'Dark Fantasy', 107, 114, 115),
(115, 'Baptism of Fire', 1996, 'Dark Fantasy', 107, 114, 115),
(116, 'The Tower of the Swallow', 1997, 'Dark Fantasy', 107, 114, 115),
(117, 'The Lady of the Lake', 1999, 'Dark Fantasy', 107, 114, 115),

-- The Poppy War (Author 108)
(118, 'The Poppy War', 2018, 'Military Fantasy', 108, 117, 108),
(119, 'The Dragon Republic', 2019, 'Military Fantasy', 108, 117, 108),
(120, 'The Burning God', 2020, 'Military Fantasy', 108, 117, 108),

-- Codex Alera (Author 106)
(121, 'Furies of Calderon', 2004, 'High Fantasy', 106, 115, 106),
(122, 'Academ''s Fury', 2005, 'High Fantasy', 106, 115, 106),
(123, 'Cursor''s Fury', 2006, 'High Fantasy', 106, 115, 106),
(124, 'Captain''s Fury', 2007, 'High Fantasy', 106, 115, 106),
(125, 'Princeps'' Fury', 2008, 'High Fantasy', 106, 115, 106),
(126, 'First Lord''s Fury', 2009, 'High Fantasy', 106, 115, 106),

-- The Stormlight Archive (Author 3)
(127, 'The Way of Kings', 2010, 'Epic Fantasy', 3, 3, 3),
(128, 'Words of Radiance', 2014, 'Epic Fantasy', 3, 3, 3),
(129, 'Oathbringer', 2017, 'Epic Fantasy', 3, 3, 3),
(130, 'Rhythm of War', 2020, 'Epic Fantasy', 3, 3, 3),

-- The Lord of the Rings (Author 114)
(156, 'The Fellowship of the Ring', 1954, 'High Fantasy', 114, 107, 111),
(157, 'The Two Towers', 1954, 'High Fantasy', 114, 107, 111),
(158, 'The Return of the King', 1955, 'High Fantasy', 114, 107, 111),

-- A Song of Ice and Fire (Author 113)
(159, 'A Game of Thrones', 1996, 'Epic Fantasy', 113, 107, 126),
(160, 'A Clash of Kings', 1998, 'Epic Fantasy', 113, 107, 126),
(161, 'A Storm of Swords', 2000, 'Epic Fantasy', 113, 107, 126),

-- The Wheel of Time (Authors 109 & 108)
(162, 'The Eye of the World', 1990, 'High Fantasy', 109, 118, 117),
(163, 'The Great Hunt', 1990, 'High Fantasy', 109, 118, 117),
(164, 'The Dragon Reborn', 1991, 'High Fantasy', 109, 118, 117),
(165, 'The Shadow Rising', 1992, 'High Fantasy', 109, 118, 117);


---

-- -------------------
-- 7. Quotes (70 total)
-- -------------------
INSERT INTO quotes (id, text, character_id, book_id) VALUES
(1, 'All we have to decide is what to do with the time that is given us.', 1, 1),
(2, 'I am not a hero; I am a wizard.', 2, 4),
(3, 'Expectation is the thief of joy.', 3, 7),
(4, 'I am Gideon. I have come to fight you.', 4, 10),
(5, 'The world ends. But the world always ends.', 5, 12),
(6, 'Fear is the mind-killer.', 6, 15),
(7, 'The best liar is the one who believes their own lies.', 7, 18),
(8, 'I aten''t dead.', 8, 21),
(9, 'A city is a factory of its own existence.', 9, 24),
(10, 'A span of years is nothing. A character, however, is a thing to be prized.', 10, 26),
(11, 'The world is a book, and those who do not travel read only one page.', 11, 28),
(12, 'The grave is but a stopping place.', 12, 31),
(13, 'Break the habit of the past; think for the future.', 13, 41),
(14, 'All things serve the Beam.', 14, 43),
(15, 'A lie told often enough becomes the truth.', 19, 46),
(16, 'Survival is triumph.', 20, 49),
(17, 'The past is nothing. It is a dream that has passed away.', 22, 13),
(18, 'The way out is through the door. It is always the door.', 2, 6),
(19, 'Life is not a journey to the grave with the intention of arriving safely in a pretty and well preserved body.', 25, 29),
(20, 'It is useless to be a smart aleck when you''re a corpse.', 26, 30),
(21, 'Even the smallest person can change the course of the future.', 27, 3),
(22, 'You cannot be so afraid of the wrong thing that you will not face the right one.', 28, 54),
(23, 'I am going to stop the world from ending.', 3, 8),
(24, 'Just be yourself. I mean, unless yourself is a raging lunatic, which I doubt.', 4, 11),
(25, 'We are all creatures of the earth.', 5, 14),
(26, 'Deep in the human unconscious is a pervasive need for a logical, stable, and sane world. But the real world is a chaos.', 6, 16),
(27, 'The mind is its own place, and in itself can make a heaven of hell, a hell of heaven.', 7, 19),
(28, 'The trouble with the future is that it usually arrives before we’re ready for it.', 8, 22),
(29, 'We did not move to the city; the city moved to us.', 9, 25),
(30, 'It is a journey, not a destination.', 10, 27),
(31, 'Sometimes, the only way to catch an impossible person is to do the impossible.', 11, 29),
(32, 'The two greatest things are Love and Power, and I have none of either.', 12, 33),
(33, 'When the water starts to boil, it is foolish to turn off the heat.', 13, 41),
(34, 'Go then, there are other worlds than these.', 14, 44),
(35, 'We are all mortals until the first kiss.', 19, 47),
(36, 'There’s always another secret.', 20, 50),
(37, 'The road to hell is paved with good intentions.', 22, 13),
(38, 'Only the madmen and the poets are privileged to dream.', 2, 5),
(39, 'It is only with the heart that one can see rightly.', 25, 30),
(40, 'If you want to know what a man is like, take a good look at how he treats his inferiors, not his equals.', 26, 30),
(41, 'There are three things all wise men fear: the sea in storm, a night with no moon, and the anger of a gentle man.', 31, 26),
(42, 'The only way to keep your authority is to keep your mouth shut.', 32, 27),
(43, 'I can see the strings now. I am not a puppet.', 3, 9),
(44, 'The only reason to have a knife is to use a knife.', 4, 11),
(45, 'The planet is dying. You are just one more bit of life, clinging on.', 5, 12),
(46, 'It is the oldest fear: fear of the unknown.', 6, 17),
(47, 'When the moment comes to say the bitter word, you will not be able to speak it.', 7, 20),
(48, 'The point of the universe is that it’s a big place and you have to get out of it.', 8, 23),
(49, 'Where there is a world, there is a boundary.', 9, 24),
(50, 'The truth is a tricky thing.', 10, 26),
(51, 'The threads are all there, but they are tangled.', 11, 30),
(52, 'The future is not a place to hide, but a place to build.', 12, 32),
(53, 'You don’t have to burn books to destroy a culture. Just get people to stop reading them.', 22, 53),
(54, 'I am not a good man, but I am a good wizard.', 1, 2),
(55, 'We are all cursed, but we are also all blessed.', 4, 10),
(56, 'If you’re going to be a hero, you have to be ready to sacrifice.', 6, 15),
(57, 'The world is a fine place and worth fighting for.', 27, 3),
(58, 'There is no magic, only knowledge.', 2, 4),
(59, 'We are the heroes of our own stories.', 3, 7),
(60, 'It is better to be a victim than a survivor.', 4, 10),
(61, 'The past is never dead. It’s not even past.', 5, 12),
(62, 'A mind is a dangerous thing to waste.', 6, 15),
(63, 'The heart of a man is the only thing that cannot be changed.', 7, 18),
(64, 'The best way to tell a good story is to make sure it’s a true one.', 8, 21),
(65, 'The sea is a cruel mistress.', 9, 25),
(66, 'The road to hell is paved with good intentions.', 10, 26),
(67, 'The darkest hour is just before the dawn.', 11, 28),
(68, 'The true purpose of the Dragon is to save the world.', 12, 31),
(69, 'The world is a cold place, but it is also a beautiful one.', 13, 41),
(70, 'The future belongs to those who believe in the beauty of their dreams.', 14, 43);


---

-- -------------------
-- 8. Book_Characters (62 total)
-- -------------------
INSERT INTO book_characters (book_id, character_id) VALUES
(1, 1),
(1, 27),
(2, 1),
(3, 1),
(3, 27),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(7, 17),
(8, 3),
(8, 17),
(9, 3),
(9, 17),
(10, 4),
(11, 4),
(12, 5),
(12, 22),
(13, 5),
(13, 22),
(14, 5),
(14, 22),
(15, 6),
(16, 6),
(17, 6),
(18, 7),
(19, 7),
(20, 7),
(21, 8),
(22, 8),
(23, 8),
(24, 9),
(25, 9),
(26, 10),
(27, 10),
(28, 11),
(29, 11),
(30, 11),
(31, 12),
(32, 12),
(33, 12),
(41, 13),
(42, 13),
(43, 14),
(44, 14),
(45, 14),
(49, 20),
(50, 20),
(51, 20),
(101, 101),
(104, 102),
(107, 103),
(108, 111),
(110, 104),
(112, 101),
(113, 105),
(114, 112),
(118, 108),
(121, 106),
(156, 110),
(159, 107),
(162, 109);