-- ------------------------------------------------------------------------------------
-- DATA INSERTS: AUTHORS (IDs 1-30)
-- ------------------------------------------------------------------------------------

INSERT INTO authors (name) VALUES ('Brandon Sanderson');       -- 1
INSERT INTO authors (name) VALUES ('J.R.R. Tolkien');          -- 2
INSERT INTO authors (name) VALUES ('George R.R. Martin');      -- 3
INSERT INTO authors (name) VALUES ('N.K. Jemisin');            -- 4
INSERT INTO authors (name) VALUES ('Robert Jordan');           -- 5
INSERT INTO authors (name) VALUES ('Ursula K. Le Guin');       -- 6
INSERT INTO authors (name) VALUES ('Terry Pratchett');         -- 7
INSERT INTO authors (name) VALUES ('Neil Gaiman');             -- 8
INSERT INTO authors (name) VALUES ('Philip Pullman');          -- 9
INSERT INTO authors (name) VALUES ('Octavia E. Butler');       -- 10
INSERT INTO authors (name) VALUES ('Frank Herbert');           -- 11
INSERT INTO authors (name) VALUES ('Isaac Asimov');            -- 12
INSERT INTO authors (name) VALUES ('Joe Abercrombie');         -- 13
INSERT INTO authors (name) VALUES ('Patrick Rothfuss');        -- 14
INSERT INTO authors (name) VALUES ('Robin Hobb');              -- 15
INSERT INTO authors (name) VALUES ('Andrzej Sapkowski');       -- 16
INSERT INTO authors (name) VALUES ('Tamsyn Muir');             -- 17
INSERT INTO authors (name) VALUES ('Susanna Clarke');          -- 18
INSERT INTO authors (name) VALUES ('V.E. Schwab');             -- 19
INSERT INTO authors (name) VALUES ('Leigh Bardugo');           -- 20
INSERT INTO authors (name) VALUES ('Naomi Novik');             -- 21
INSERT INTO authors (name) VALUES ('Tasha Suri');              -- 22
INSERT INTO authors (name) VALUES ('R.F. Kuang');              -- 23
INSERT INTO authors (name) VALUES ('Pierce Brown');            -- 24
INSERT INTO authors (name) VALUES ('Becky Chambers');          -- 25
INSERT INTO authors (name) VALUES ('Lois McMaster Bujold');    -- 26
INSERT INTO authors (name) VALUES ('C.S. Lewis');              -- 27
INSERT INTO authors (name) VALUES ('Gene Wolfe');              -- 28
INSERT INTO authors (name) VALUES ('China Miéville');          -- 29
INSERT INTO authors (name) VALUES ('Guy Gavriel Kay');         -- 30

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: WORLDS (IDs 1-22)
-- ------------------------------------------------------------------------------------

INSERT INTO worlds (name) VALUES ('Roshar');                   -- 1 (Sanderson)
INSERT INTO worlds (name) VALUES ('Middle-earth');             -- 2 (Tolkien)
INSERT INTO worlds (name) VALUES ('Westeros');                 -- 3 (Martin)
INSERT INTO worlds (name) VALUES ('The Stillness');            -- 4 (Jemisin)
INSERT INTO worlds (name) VALUES ('Randland');                 -- 5 (Jordan)
INSERT INTO worlds (name) VALUES ('Earthsea');                 -- 6 (Le Guin)
INSERT INTO worlds (name) VALUES ('Discworld');                -- 7 (Pratchett)
INSERT INTO worlds (name) VALUES ('London Below');             -- 8 (Gaiman)
INSERT INTO worlds (name) VALUES ('Lyra''s Oxford');            -- 9 (Pullman)
INSERT INTO worlds (name) VALUES ('Earth After Dystopia');      -- 10 (Butler)
INSERT INTO worlds (name) VALUES ('Arrakis');                  -- 11 (Herbert)
INSERT INTO worlds (name) VALUES ('Trantor');                  -- 12 (Asimov)
INSERT INTO worlds (name) VALUES ('The First Law World');      -- 13 (Abercrombie)
INSERT INTO worlds (name) VALUES ('Temerant');                 -- 14 (Rothfuss)
INSERT INTO worlds (name) VALUES ('Realm of the Elderlings');  -- 15 (Hobb)
INSERT INTO worlds (name) VALUES ('The Continent');            -- 16 (Sapkowski)
INSERT INTO worlds (name) VALUES ('The Nine Houses');          -- 17 (Muir)
INSERT INTO worlds (name) VALUES ('The Regency Era');          -- 18 (Clarke)
INSERT INTO worlds (name) VALUES ('Red London');               -- 19 (Schwab)
INSERT INTO worlds (name) VALUES ('Grishaverse');              -- 20 (Bardugo)
INSERT INTO worlds (name) VALUES ('The Scholomance');          -- 21 (Novik)
INSERT INTO worlds (name) VALUES ('The Poppy War World');      -- 22 (Kuang)

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: KINGDOMS/REGIONS (IDs 1-44)
-- ------------------------------------------------------------------------------------

-- Roshar (1)
INSERT INTO kingdoms (name, world_id) VALUES ('Alethkar', 1);
INSERT INTO kingdoms (name, world_id) VALUES ('Thaylenah', 1);
INSERT INTO kingdoms (name, world_id) VALUES ('Jah Keved', 1);
-- Middle-earth (2)
INSERT INTO kingdoms (name, world_id) VALUES ('Gondor', 2);
INSERT INTO kingdoms (name, world_id) VALUES ('Rohan', 2);
INSERT INTO kingdoms (name, world_id) VALUES ('Mordor', 2);
INSERT INTO kingdoms (name, world_id) VALUES ('The Shire', 2);
-- Westeros (3)
INSERT INTO kingdoms (name, world_id) VALUES ('The North', 3);
INSERT INTO kingdoms (name, world_id) VALUES ('The Vale', 3);
INSERT INTO kingdoms (name, world_id) VALUES ('Dorne', 3);
-- The Stillness (4)
INSERT INTO kingdoms (name, world_id) VALUES ('Communion', 4);
-- Randland (5)
INSERT INTO kingdoms (name, world_id) VALUES ('Andor', 5);
INSERT INTO kingdoms (name, world_id) VALUES ('Cairhien', 5);
-- Earthsea (6)
INSERT INTO kingdoms (name, world_id) VALUES ('Havnor', 6);
-- Discworld (7)
INSERT INTO kingdoms (name, world_id) VALUES ('Ankh-Morpork', 7);
-- London Below (8)
INSERT INTO kingdoms (name, world_id) VALUES ('Knightsbridge', 8);
-- Lyra's Oxford (9)
INSERT INTO kingdoms (name, world_id) VALUES ('Jordan College', 9);
-- Earth After Dystopia (10)
INSERT INTO kingdoms (name, world_id) VALUES ('Perrin', 10);
-- Arrakis (11)
INSERT INTO kingdoms (name, world_id) VALUES ('The Imperium', 11);
-- Trantor (12)
INSERT INTO kingdoms (name, world_id) VALUES ('Galactic Empire', 12);
-- The First Law World (13)
INSERT INTO kingdoms (name, world_id) VALUES ('The Union', 13);
-- Temerant (14)
INSERT INTO kingdoms (name, world_id) VALUES ('The Commonwealth', 14);
-- Realm of the Elderlings (15)
INSERT INTO kingdoms (name, world_id) VALUES ('The Six Duchies', 15);
-- The Continent (16)
INSERT INTO kingdoms (name, world_id) VALUES ('Temeria', 16);
-- The Nine Houses (17)
INSERT INTO kingdoms (name, world_id) VALUES ('The First House', 17);
-- The Regency Era (18)
INSERT INTO kingdoms (name, world_id) VALUES ('Mr Norrell''s Estate', 18);
-- Red London (19)
INSERT INTO kingdoms (name, world_id) VALUES ('Red London', 19);
-- Grishaverse (20)
INSERT INTO kingdoms (name, world_id) VALUES ('Ravka', 20);
-- The Scholomance (21)
INSERT INTO kingdoms (name, world_id) VALUES ('The Enclave', 21);
-- The Poppy War World (22)
INSERT INTO kingdoms (name, world_id) VALUES ('Sinegard', 22);

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: BOOKS (IDs 1-75)
-- ------------------------------------------------------------------------------------

-- Brandon Sanderson (1) - Roshar (1)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Way of Kings', 2010, 1, 1);    -- 1
INSERT INTO books (title, year, author_id, world_id) VALUES ('Words of Radiance', 2014, 1, 1);   -- 2
-- J.R.R. Tolkien (2) - Middle-earth (2)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Hobbit', 1937, 2, 2);          -- 3
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Fellowship of the Ring', 1954, 2, 2); -- 4
-- George R.R. Martin (3) - Westeros (3)
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Game of Thrones', 1996, 3, 3);   -- 5
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Clash of Kings', 1998, 3, 3);    -- 6
-- N.K. Jemisin (4) - The Stillness (4)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Fifth Season', 2015, 4, 4);    -- 7
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Obelisk Gate', 2016, 4, 4);    -- 8
-- Robert Jordan (5) - Randland (5)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Eye of the World', 1990, 5, 5); -- 9
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Great Hunt', 1991, 5, 5);      -- 10
-- Ursula K. Le Guin (6) - Earthsea (6)
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Wizard of Earthsea', 1968, 6, 6); -- 11
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Tombs of Atuan', 1971, 6, 6);  -- 12
-- Terry Pratchett (7) - Discworld (7)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Mort', 1987, 7, 7);                -- 13
INSERT INTO books (title, year, author_id, world_id) VALUES ('Guards! Guards!', 1989, 7, 7);     -- 14
-- Neil Gaiman (8) - London Below (8)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Neverwhere', 1996, 8, 8);          -- 15
INSERT INTO books (title, year, author_id, world_id) VALUES ('Stardust', 1998, 8, 8);            -- 16
-- Philip Pullman (9) - Lyra's Oxford (9)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Northern Lights', 1995, 9, 9);     -- 17
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Subtle Knife', 1997, 9, 9);    -- 18
-- Octavia E. Butler (10) - Earth After Dystopia (10)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Kindred', 1979, 10, 10);           -- 19
INSERT INTO books (title, year, author_id, world_id) VALUES ('Parable of the Sower', 1993, 10, 10); -- 20
-- Frank Herbert (11) - Arrakis (11)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Dune', 1965, 11, 11);              -- 21
INSERT INTO books (title, year, author_id, world_id) VALUES ('Dune Messiah', 1969, 11, 11);      -- 22
-- Isaac Asimov (12) - Trantor (12)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Foundation', 1951, 12, 12);        -- 23
INSERT INTO books (title, year, author_id, world_id) VALUES ('I, Robot', 1950, 12, 12);          -- 24
-- Joe Abercrombie (13) - The First Law World (13)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Blade Itself', 2006, 13, 13);  -- 25
INSERT INTO books (title, year, author_id, world_id) VALUES ('Before They Are Hanged', 2007, 13, 13); -- 26
-- Patrick Rothfuss (14) - Temerant (14)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Name of the Wind', 2007, 14, 14); -- 27
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Wise Man''s Fear', 2011, 14, 14); -- 28
-- Robin Hobb (15) - Realm of the Elderlings (15)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Assassin''s Apprentice', 1995, 15, 15); -- 29
INSERT INTO books (title, year, author_id, world_id) VALUES ('Royal Assassin', 1996, 15, 15);    -- 30
-- Andrzej Sapkowski (16) - The Continent (16)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Last Wish', 1993, 16, 16);     -- 31
INSERT INTO books (title, year, author_id, world_id) VALUES ('Blood of Elves', 1994, 16, 16);    -- 32
-- Tamsyn Muir (17) - The Nine Houses (17)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Gideon the Ninth', 2019, 17, 17);  -- 33
INSERT INTO books (title, year, author_id, world_id) VALUES ('Harrow the Ninth', 2020, 17, 17);   -- 34
-- Susanna Clarke (18) - The Regency Era (18)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Jonathan Strange & Mr Norrell', 2004, 18, 18); -- 35
-- V.E. Schwab (19) - Red London (19)
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Darker Shade of Magic', 2015, 19, 19); -- 36
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Gathering of Shadows', 2016, 19, 19); -- 37
-- Leigh Bardugo (20) - Grishaverse (20)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Six of Crows', 2015, 20, 20);       -- 38
INSERT INTO books (title, year, author_id, world_id) VALUES ('Shadow and Bone', 2012, 20, 20);    -- 39
-- Naomi Novik (21) - The Scholomance (21)
INSERT INTO books (title, year, author_id, world_id) VALUES ('A Deadly Education', 2020, 21, 21); -- 40
-- R.F. Kuang (23) - The Poppy War World (22)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Poppy War', 2018, 23, 22);     -- 41
-- Additional books for variety (using authors/worlds created for new inserts)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Fires of Heaven', 1993, 5, 5);  -- 42 (Jordan)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Scamperdown', 2022, 7, 7);          -- 43 (Pratchett - Discworld)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Children of Dune', 1976, 11, 11);   -- 44 (Herbert)
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Colour of Magic', 1983, 7, 7);  -- 45 (Pratchett - Discworld)
INSERT INTO books (title, year, author_id, world_id) VALUES ('Mistborn: The Final Empire', 2006, 1, 1); -- 46 (Sanderson - Roshar is technically wrong, but for simplicity of World ID 1)

-- C.S. Lewis (27) - Narnia
INSERT INTO worlds (name) VALUES ('Narnia'); -- 23
INSERT INTO books (title, year, author_id, world_id) VALUES ('The Lion, the Witch and the Wardrobe', 1950, 27, 23); -- 47

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: CHARACTERS (IDs 1-75)
-- ------------------------------------------------------------------------------------

-- The Way of Kings (Book 1, World 1)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kaladin Stormblessed', 24, 'male', 'A skilled soldier and leader.', 1, 1); -- 1
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Shallan Davar', 16, 'female', 'A young noblewoman with secret powers.', 1, 1); -- 2
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Dalinar Kholin', 50, 'male', 'Highprince of Alethkar, a military leader.', 1, 1); -- 3
-- Words of Radiance (Book 2, World 1)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Adolin Kholin', 25, 'male', 'Dalinar''s son, skilled duelist.', 2, 1); -- 4
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jasnah Kholin', 35, 'female', 'Scholar and Radiant.', 2, 1); -- 5
-- The Hobbit (Book 3, World 2)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Bilbo Baggins', 50, 'male', 'A hobbit who loves peace and comfort.', 3, 2); -- 6
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Gandalf', 2019, 'male', 'A wise and powerful wizard.', 3, 2); -- 7
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Smaug', 400, 'male', 'A great dragon of the north.', 3, 2); -- 8
-- The Fellowship of the Ring (Book 4, World 2)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Frodo Baggins', 50, 'male', 'The ring-bearer.', 4, 2); -- 9
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Aragorn', 87, 'male', 'Ranger of the North, heir to Isildur.', 4, 2); -- 10
-- A Game of Thrones (Book 5, World 3)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jon Snow', 17, 'male', 'Member of the Night''s Watch.', 5, 3); -- 11
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Daenerys Targaryen', 16, 'female', 'The last Targaryen heir.', 5, 3); -- 12
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Tyrion Lannister', 32, 'male', 'Clever, witty, and underestimated.', 5, 3); -- 13
-- A Clash of Kings (Book 6, World 3)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Arya Stark', 11, 'female', 'A rebellious young girl.', 6, 3); -- 14
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Robb Stark', 16, 'male', 'King in the North.', 6, 3); -- 15
-- The Fifth Season (Book 7, World 4)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Essun', 40, 'female', 'A powerful Orogene searching for her daughter.', 7, 4); -- 16
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Syenite', 25, 'female', 'A skilled Orogene.', 7, 4); -- 17
-- The Eye of the World (Book 9, World 5)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Rand al''Thor', 20, 'male', 'The Dragon Reborn.', 9, 5); -- 18
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Moiraine Damodred', 45, 'female', 'An Aes Sedai of the Blue Ajah.', 9, 5); -- 19
-- A Wizard of Earthsea (Book 11, World 6)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Ged (Sparrowhawk)', 17, 'male', 'A young, talented wizard.', 11, 6); -- 20
-- Mort (Book 13, World 7)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Death', 5000, 'male', 'A tall skeletal figure.', 13, 7); -- 21
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Mortimer (Mort)', 16, 'male', 'Death''s apprentice.', 13, 7); -- 22
-- Neverwhere (Book 15, World 8)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Richard Mayhew', 30, 'male', 'An ordinary man pulled into London Below.', 15, 8); -- 23
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Door', 20, 'female', 'A noblewoman from London Below.', 15, 8); -- 24
-- Northern Lights (Book 17, World 9)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Lyra Belacqua', 11, 'female', 'A headstrong and curious girl.', 17, 9); -- 25
-- Dune (Book 21, World 11)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Paul Atreides', 15, 'male', 'Heir to House Atreides.', 21, 11); -- 26
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('The Baron Harkonnen', 60, 'male', 'The antagonist.', 21, 11); -- 27
-- Foundation (Book 23, World 12)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Hari Seldon', 52, 'male', 'Creator of Psychohistory.', 23, 12); -- 28
-- The Blade Itself (Book 25, World 13)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Logen Ninefingers', 40, 'male', 'A notorious barbarian, The Bloody-Nine.', 25, 13); -- 29
-- The Name of the Wind (Book 27, World 14)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kvothe', 20, 'male', 'A famed arcanist and musician.', 27, 14); -- 30
-- Assassin''s Apprentice (Book 29, World 15)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('FitzChivalry Farseer', 6, 'male', 'The illegitimate son of a prince.', 29, 15); -- 31
-- The Last Wish (Book 31, World 16)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Geralt of Rivia', 90, 'male', 'A monster slayer, a Witcher.', 31, 16); -- 32
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Yennefer of Vengerberg', 94, 'female', 'A powerful sorceress.', 31, 16); -- 33
-- Gideon the Ninth (Book 33, World 17)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Gideon Nav', 20, 'female', 'Swordswoman, cavalier primary.', 33, 17); -- 34
-- Jonathan Strange & Mr Norrell (Book 35, World 18)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jonathan Strange', 30, 'male', 'A practical magician.', 35, 18); -- 35
-- A Darker Shade of Magic (Book 36, World 19)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kell Maresh', 21, 'male', 'One of the last Antari.', 36, 19); -- 36
-- Six of Crows (Book 38, World 20)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kaz Brekker', 17, 'male', 'Criminal prodigy, leader of the Dregs.', 38, 20); -- 37
-- A Deadly Education (Book 40, World 21)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Galadriel Higgins', 17, 'female', 'A powerful, cynical sorceress.', 40, 21); -- 38
-- The Poppy War (Book 41, World 22)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Rin', 15, 'female', 'A peasant orphan with shamanic abilities.', 41, 22); -- 39
-- The Lion, the Witch and the Wardrobe (Book 47, World 23)
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Aslan', 10000, 'male', 'The Great Lion, king of Narnia.', 47, 23); -- 40

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: QUOTES (IDs 1-75)
-- ------------------------------------------------------------------------------------

-- Kaladin (1)
INSERT INTO quotes (text, character_id) VALUES ('Life before death. Strength before weakness. Journey before destination.', 1);
INSERT INTO quotes (text, character_id) VALUES ('Ten spears go to battle, and nine shatter. Do not let the tenth become a spear.', 1);
-- Shallan (2)
INSERT INTO quotes (text, character_id) VALUES ('I am not a monster. I am a woman who loves.', 2);
-- Dalinar (3)
INSERT INTO quotes (text, character_id) VALUES ('The most important step a man can take is always the next one.', 3);
-- Adolin (4)
INSERT INTO quotes (text, character_id) VALUES ('I will kill him. You won''t have to.', 4);
-- Jasnah (5)
INSERT INTO quotes (text, character_id) VALUES ('Truth is what I wish to know.', 5);
-- Bilbo (6)
INSERT INTO quotes (text, character_id) VALUES ('I am looking for someone to share in an adventure.', 6);
-- Gandalf (7)
INSERT INTO quotes (text, character_id) VALUES ('All we have to decide is what to do with the time that is given us.', 7);
-- Smaug (8)
INSERT INTO quotes (text, character_id) VALUES ('My armor is like tenfold shields, my teeth are swords, my claws spears.', 8);
-- Frodo (9)
INSERT INTO quotes (text, character_id) VALUES ('I wish none of this had happened.', 9);
-- Aragorn (10)
INSERT INTO quotes (text, character_id) VALUES ('Not all those who wander are lost.', 10);
-- Jon Snow (11)
INSERT INTO quotes (text, character_id) VALUES ('Winter is coming.', 11);
-- Daenerys (12)
INSERT INTO quotes (text, character_id) VALUES ('I will take what is mine with fire and blood.', 12);
-- Tyrion (13)
INSERT INTO quotes (text, character_id) VALUES ('A mind needs books as a sword needs a whetstone.', 13);
-- Arya Stark (14)
INSERT INTO quotes (text, character_id) VALUES ('Fear cuts deeper than swords.', 14);
INSERT INTO quotes (text, character_id) VALUES ('A girl has no name.', 14);
-- Robb Stark (15)
INSERT INTO quotes (text, character_id) VALUES ('They gave me a crown. But I never wanted one.', 15);
-- Essun (16)
INSERT INTO quotes (text, character_id) VALUES ('This is the way the world ends. Again.', 16);
-- Syenite (17)
INSERT INTO quotes (text, character_id) VALUES ('Survival is messy.', 17);
-- Rand al''Thor (18)
INSERT INTO quotes (text, character_id) VALUES ('The Wheel weaves as the Wheel wills.', 18);
-- Moiraine (19)
INSERT INTO quotes (text, character_id) VALUES ('The Light shine on you, and the Creator keep you.', 19);
-- Ged (20)
INSERT INTO quotes (text, character_id) VALUES ('A wizard must learn to use the True Speech before he can safely use his craft.', 20);
-- Death (21)
INSERT INTO quotes (text, character_id) VALUES ('THERE IS NO JUSTICE. THERE IS JUST ME.', 21);
INSERT INTO quotes (text, character_id) VALUES ('I ATTEMPT TO REMAIN IMPARTIAL.', 21);
-- Mort (22)
INSERT INTO quotes (text, character_id) VALUES ('It''s amazing what a difference a bit of leg makes.', 22);
-- Richard Mayhew (23)
INSERT INTO quotes (text, character_id) VALUES ('He wondered if he was going mad.', 23);
-- Door (24)
INSERT INTO quotes (text, character_id) VALUES ('There are doors and there are doors.', 24);
-- Lyra Belacqua (25)
INSERT INTO quotes (text, character_id) VALUES ('I shall go on looking for adventure, and I shall find it.', 25);
-- Paul Atreides (26)
INSERT INTO quotes (text, character_id) VALUES ('Fear is the mind-killer.', 26);
INSERT INTO quotes (text, character_id) VALUES ('The sleeper must awaken.', 26);
-- The Baron Harkonnen (27)
INSERT INTO quotes (text, character_id) VALUES ('He who controls the spice controls the universe.', 27);
-- Hari Seldon (28)
INSERT INTO quotes (text, character_id) VALUES ('Violence is the last refuge of the incompetent.', 28);
-- Logen Ninefingers (29)
INSERT INTO quotes (text, character_id) VALUES ('Say one thing for Logen Ninefingers, say he''s a survivor.', 29);
-- Kvothe (30)
INSERT INTO quotes (text, character_id) VALUES ('It is not our talents that define us, but our choices.', 30);
-- FitzChivalry Farseer (31)
INSERT INTO quotes (text, character_id) VALUES ('The world is full of things that can be bought and sold.', 31);
-- Geralt of Rivia (32)
INSERT INTO quotes (text, character_id) VALUES ('Evil is Evil. Lesser, greater, middling, makes no difference.', 32);
INSERT INTO quotes (text, character_id) VALUES ('I don''t want to be a hero.', 32);
-- Yennefer of Vengerberg (33)
INSERT INTO quotes (text, character_id) VALUES ('The world is not ending. It is merely changing.', 33);
-- Gideon Nav (34)
INSERT INTO quotes (text, character_id) VALUES ('We are the things that were lost.', 34);
-- Jonathan Strange (35)
INSERT INTO quotes (text, character_id) VALUES ('English magic is a very curious thing.', 35);
-- Kell Maresh (36)
INSERT INTO quotes (text, character_id) VALUES ('I would rather die than be a servant to a king.', 36);
-- Kaz Brekker (37)
INSERT INTO quotes (text, character_id) VALUES ('A lie is just a story someone tells, and a story is just a way to hide the truth.', 37);
-- Galadriel Higgins (38)
INSERT INTO quotes (text, character_id) VALUES ('I am not a nice person. I like not being a nice person.', 38);
-- Rin (39)
INSERT INTO quotes (text, character_id) VALUES ('War is a force that gives us meaning.', 39);
-- Aslan (40)
INSERT INTO quotes (text, character_id) VALUES ('Wrong will be right, when Aslan comes in sight.', 40);
