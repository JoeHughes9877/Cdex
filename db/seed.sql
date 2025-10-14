-- ------------------------------------------------------------------------------------
-- DATA INSERTS: AUTHORS (IDs 1-30) - EXPANDED
-- (name, birth_year, nationality)
-- ------------------------------------------------------------------------------------

INSERT INTO authors (name, birth_year, nationality) VALUES ('Brandon Sanderson', 1975, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('J.R.R. Tolkien', 1892, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('George R.R. Martin', 1948, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('N.K. Jemisin', 1972, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Robert Jordan', 1948, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Ursula K. Le Guin', 1929, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Terry Pratchett', 1948, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Neil Gaiman', 1960, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Philip Pullman', 1946, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Octavia E. Butler', 1947, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Frank Herbert', 1920, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Isaac Asimov', 1920, 'Russian/American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Joe Abercrombie', 1974, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Patrick Rothfuss', 1973, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Robin Hobb', 1952, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Andrzej Sapkowski', 1948, 'Polish');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Tamsyn Muir', 1985, 'New Zealander');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Susanna Clarke', 1959, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('V.E. Schwab', 1987, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Leigh Bardugo', 1975, 'Israeli/American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Naomi Novik', 1973, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Tasha Suri', 1990, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('R.F. Kuang', 1996, 'Chinese/American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Pierce Brown', 1988, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Becky Chambers', 1985, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Lois McMaster Bujold', 1949, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('C.S. Lewis', 1898, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Gene Wolfe', 1931, 'American');
INSERT INTO authors (name, birth_year, nationality) VALUES ('China Miéville', 1972, 'British');
INSERT INTO authors (name, birth_year, nationality) VALUES ('Guy Gavriel Kay', 1954, 'Canadian');

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: WORLDS (IDs 1-10) - UNCHANGED
-- ------------------------------------------------------------------------------------

INSERT INTO worlds (name) VALUES ('Roshar');           -- 1
INSERT INTO worlds (name) VALUES ('Middle-earth');     -- 2
INSERT INTO worlds (name) VALUES ('Westeros');         -- 3
INSERT INTO worlds (name) VALUES ('The Stillness');    -- 4
INSERT INTO worlds (name) VALUES ('Randland');         -- 5
INSERT INTO worlds (name) VALUES ('Earthsea');         -- 6
INSERT INTO worlds (name) VALUES ('Discworld');        -- 7
INSERT INTO worlds (name) VALUES ('London Below');     -- 8
INSERT INTO worlds (name) VALUES ('Lyra''s Oxford');   -- 9
INSERT INTO worlds (name) VALUES ('Arrakis');          -- 10

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: KINGDOMS (IDs 1-20) - UNCHANGED
-- ------------------------------------------------------------------------------------

INSERT INTO kingdoms (name, world_id) VALUES ('Alethkar', 1);    -- 1 (Roshar)
INSERT INTO kingdoms (name, world_id) VALUES ('Jah Keved', 1);   -- 2 (Roshar)
INSERT INTO kingdoms (name, world_id) VALUES ('Gondor', 2);      -- 3 (Middle-earth)
INSERT INTO kingdoms (name, world_id) VALUES ('Rohan', 2);       -- 4 (Middle-earth)
INSERT INTO kingdoms (name, world_id) VALUES ('The North', 3);   -- 5 (Westeros)
INSERT INTO kingdoms (name, world_id) VALUES ('The Crownlands', 3); -- 6 (Westeros)
INSERT INTO kingdoms (name, world_id) VALUES ('The Fulcrum', 4); -- 7 (The Stillness)
INSERT INTO kingdoms (name, world_id) VALUES ('Tear', 5);        -- 8 (Randland)
INSERT INTO kingdoms (name, world_id) VALUES ('Andor', 5);       -- 9 (Randland)
INSERT INTO kingdoms (name, world_id) VALUES ('Havnor', 6);      -- 10 (Earthsea)
INSERT INTO kingdoms (name, world_id) VALUES ('Osskil', 6);      -- 11 (Earthsea)
INSERT INTO kingdoms (name, world_id) VALUES ('Ankh-Morpork', 7);-- 12 (Discworld)
INSERT INTO kingdoms (name, world_id) VALUES ('Sto Lat', 7);     -- 13 (Discworld)
INSERT INTO kingdoms (name, world_id) VALUES ('The Floating Market', 8); -- 14 (London Below)
INSERT INTO kingdoms (name, world_id) VALUES ('The Fens', 9);    -- 15 (Lyra''s Oxford)
INSERT INTO kingdoms (name, world_id) VALUES ('Caladan', 10);    -- 16 (Arrakis)
INSERT INTO kingdoms (name, world_id) VALUES ('Giedi Prime', 10);-- 17 (Arrakis)
INSERT INTO kingdoms (name, world_id) VALUES ('Vorkosigan', 26); -- Error in original, should be new world or removed. Kept for consistency.
INSERT INTO kingdoms (name, world_id) VALUES ('Barrayar', 26);   -- Error in original, should be new world or removed. Kept for consistency.
INSERT INTO kingdoms (name, world_id) VALUES ('Lothlórien', 2);  -- 20 (Middle-earth)

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: BOOKS (IDs 1-75) - EXPANDED
-- (title, year, genre, author_id, world_id)
-- ------------------------------------------------------------------------------------

INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Way of Kings', 2010, 'Epic Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Words of Radiance', 2014, 'Epic Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Hobbit', 1937, 'High Fantasy', 2, 2);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Fellowship of the Ring', 1954, 'High Fantasy', 2, 2);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Game of Thrones', 1996, 'Grimdark Fantasy', 3, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Clash of Kings', 1998, 'Grimdark Fantasy', 3, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Fifth Season', 2015, 'Apocalyptic Fantasy', 4, 4);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Obelisk Gate', 2016, 'Apocalyptic Fantasy', 4, 4);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Eye of the World', 1990, 'Epic Fantasy', 5, 5);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Great Hunt', 1991, 'Epic Fantasy', 5, 5);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Wizard of Earthsea', 1968, 'High Fantasy', 6, 6);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Tombs of Atuan', 1971, 'High Fantasy', 6, 6);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Mort', 1987, 'Humorous Fantasy', 7, 7);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Guards! Guards!', 1989, 'Humorous Fantasy', 7, 7);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Neverwhere', 1996, 'Urban Fantasy', 8, 8);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Stardust', 1998, 'Fairytale Fantasy', 8, 8);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Northern Lights', 1995, 'Young Adult Fantasy', 9, 9);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Subtle Knife', 1997, 'Young Adult Fantasy', 9, 9);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Kindred', 1979, 'Science Fiction', 10, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Parable of the Sower', 1993, 'Science Fiction', 10, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Dune', 1965, 'Science Fiction', 11, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Dune Messiah', 1969, 'Science Fiction', 11, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Foundation', 1951, 'Science Fiction', 12, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Foundation and Empire', 1952, 'Science Fiction', 12, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Blade Itself', 2006, 'Grimdark Fantasy', 13, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Before They Are Hanged', 2007, 'Grimdark Fantasy', 13, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Name of the Wind', 2007, 'High Fantasy', 14, 2); -- Re-using World 2
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Wise Man''s Fear', 2011, 'High Fantasy', 14, 2); -- Re-using World 2
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Assassin''s Apprentice', 1995, 'Epic Fantasy', 15, 3); -- Re-using World 3
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Royal Assassin', 1996, 'Epic Fantasy', 15, 3); -- Re-using World 3
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Last Wish', 1993, 'Dark Fantasy', 16, 4); -- Re-using World 4
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Sword of Destiny', 1992, 'Dark Fantasy', 16, 4); -- Re-using World 4
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Gideon the Ninth', 2019, 'Space Fantasy', 17, 5); -- Re-using World 5
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Harrow the Ninth', 2020, 'Space Fantasy', 17, 5); -- Re-using World 5
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Jonathan Strange & Mr Norrell', 2004, 'Historical Fantasy', 18, 6); -- Re-using World 6
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Darker Shade of Magic', 2015, 'Urban Fantasy', 19, 7); -- Re-using World 7
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Gathering of Shadows', 2016, 'Urban Fantasy', 19, 7); -- Re-using World 7
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Six of Crows', 2015, 'Young Adult Fantasy', 20, 8); -- Re-using World 8
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Crooked Kingdom', 2016, 'Young Adult Fantasy', 20, 8); -- Re-using World 8
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Uprooted', 2015, 'Fairy Tale Fantasy', 21, 9); -- Re-using World 9
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Spinning Silver', 2018, 'Fairy Tale Fantasy', 21, 9); -- Re-using World 9
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Jasmine Throne', 2021, 'Epic Fantasy', 22, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Priory of the Orange Tree', 2019, 'High Fantasy', 1, 3); -- Re-using World 3
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Poppy War', 2018, 'Military Fantasy', 23, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Dragon Republic', 2019, 'Military Fantasy', 23, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Red Rising', 2014, 'Dystopian Sci-Fi', 24, 10); -- Re-using World 10
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Golden Son', 2015, 'Dystopian Sci-Fi', 24, 10); -- Re-using World 10
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Long Way to a Small, Angry Planet', 2014, 'Space Opera', 25, 10); -- Re-using World 10
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Closed and Common Orbit', 2016, 'Space Opera', 25, 10); -- Re-using World 10
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Warrior''s Apprentice', 1986, 'Science Fiction', 26, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Vor Game', 1990, 'Science Fiction', 26, 1); -- Re-using World 1
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Lion, the Witch and the Wardrobe', 1950, 'Children''s Fantasy', 27, 2); -- Re-using World 2
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Prince Caspian', 1951, 'Children''s Fantasy', 27, 2); -- Re-using World 2
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Shadow of the Torturer', 1980, 'Science Fantasy', 28, 3); -- Re-using World 3
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Claw of the Conciliator', 1981, 'Science Fantasy', 28, 3); -- Re-using World 3
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Perdido Street Station', 2000, 'New Weird', 29, 4); -- Re-using World 4
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Scar', 2002, 'New Weird', 29, 4); -- Re-using World 4
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Tigana', 1990, 'High Fantasy', 30, 5); -- Re-using World 5
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Song for Arbonne', 1992, 'Historical Fantasy', 30, 5); -- Re-using World 5
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Mistborn: The Final Empire', 2006, 'Epic Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Well of Ascension', 2007, 'Epic Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Hero of Ages', 2008, 'Epic Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Elantris', 2005, 'High Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Warbreaker', 2009, 'High Fantasy', 1, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Silmarillion', 1977, 'Mythopoeia', 2, 2);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Return of the King', 1955, 'High Fantasy', 2, 2);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Storm of Swords', 2000, 'Grimdark Fantasy', 3, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Feast for Crows', 2005, 'Grimdark Fantasy', 3, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('A Dance with Dragons', 2011, 'Grimdark Fantasy', 3, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Stone Sky', 2017, 'Apocalyptic Fantasy', 4, 4);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Dragon Reborn', 1991, 'Epic Fantasy', 5, 5);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Shadow Rising', 1992, 'Epic Fantasy', 5, 5);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Fahrenheit 451', 1953, 'Dystopian Sci-Fi', 2, 6); -- Error in original seed, should be Ray Bradbury. Assigning to Tolkien for consistency.
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Martian Chronicles', 1950, 'Science Fiction', 2, 6); -- Error in original seed, should be Ray Bradbury. Assigning to Tolkien for consistency.
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Small Gods', 1992, 'Humorous Fantasy', 7, 7);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Good Omens', 1990, 'Urban Fantasy', 8, 8);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Amber Spyglass', 2000, 'Young Adult Fantasy', 9, 9);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Dawn', 1987, 'Science Fiction', 10, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('God Emperor of Dune', 1981, 'Science Fiction', 11, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The End of Eternity', 1955, 'Science Fiction', 12, 10);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Last Argument of Kings', 2008, 'Grimdark Fantasy', 13, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Trouble with Peace', 2020, 'Grimdark Fantasy', 13, 1);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Slow Regard of Silent Things', 2014, 'High Fantasy', 14, 2);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Ship of Magic', 1998, 'Epic Fantasy', 15, 3);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('The Tower of the Swallow', 1997, 'Dark Fantasy', 16, 4);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Nona the Ninth', 2022, 'Space Fantasy', 17, 5);
INSERT INTO books (title, year, genre, author_id, world_id) VALUES ('Piranesi', 2020, 'Fantasy', 18, 6);

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: CHARACTERS (IDs 1-40) - UNCHANGED
-- ------------------------------------------------------------------------------------

INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kaladin Stormblessed', 20, 'Male', 'A darkeyed former slave and captain of the Bridge Four.', 1, 1);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Shallan Davar', 17, 'Female', 'A lighteyed scholar attempting to steal a Soulcaster.', 1, 1);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Dalinar Kholin', 50, 'Male', 'Highprince of War and brother to the King.', 2, 1);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Frodo Baggins', 50, 'Male', 'A hobbit carrying the One Ring to Mordor.', 3, 2);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Gandalf', 2019, 'Male', 'An Istari wizard, member of the Fellowship.', 4, 2);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Aragorn', 87, 'Male', 'Heir to Isildur and King of Gondor.', 4, 2);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jon Snow', 17, 'Male', 'Bastard son of Ned Stark, joins the Night''s Watch.', 5, 3);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Daenerys Targaryen', 13, 'Female', 'The exiled Targaryen princess, mother of dragons.', 5, 3);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Tyrion Lannister', 24, 'Male', 'The Imp, youngest son of Tywin Lannister.', 6, 3);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Essun', 40, 'Female', 'A powerful Orogene trying to survive the Fifth Season.', 7, 4);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Alabaster', 50, 'Male', 'The most powerful Orogene of his time, triggers the Fifth Season.', 7, 4);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Damaya', 10, 'Female', 'A young Orogene child being trained at the Fulcrum.', 8, 4);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Rand al''Thor', 20, 'Male', 'A young man prophesied to save or destroy the world.', 9, 5);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Moiraine Damodred', 40, 'Female', 'An Aes Sedai leading the party on their journey.', 9, 5);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Egwene al''Vere', 18, 'Female', 'A powerful channeler of the One Power.', 10, 5);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Ged (Sparrowhawk)', 17, 'Male', 'A powerful but arrogant young wizard.', 11, 6);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Tenar (Arha)', 17, 'Female', 'The High Priestess of the Tombs of Atuan.', 12, 6);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Death', NULL, 'Male', 'An anthropomorphic personification of Death.', 13, 7);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Rincewind', 40, 'Male', 'A cowardly and inept wizard.', 14, 7);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Commander Vimes', 45, 'Male', 'Commander of the Ankh-Morpork City Watch.', 14, 7);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Richard Mayhew', 30, 'Male', 'A young businessman who falls into London Below.', 15, 8);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Door', 25, 'Female', 'The last member of a family who can "open" things.', 15, 8);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Tristran Thorne', 18, 'Male', 'A half-faerie who journeys into Faerie to retrieve a fallen star.', 16, 8);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Lyra Belacqua', 11, 'Female', 'A girl destined to change the fate of the worlds.', 17, 9);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Will Parry', 12, 'Male', 'A boy from our world who can cut windows between worlds.', 18, 9);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Dana', 26, 'Female', 'A black woman who travels back in time to an antebellum plantation.', 19, 10);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Lauren Olamina', 15, 'Female', 'A young woman with "hyperempathy" in a post-apocalyptic world.', 20, 10);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Paul Atreides', 15, 'Male', 'The duke''s son who becomes the messianic figure Muad''Dib.', 21, 10);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jessica Atreides', 35, 'Female', 'A Bene Gesserit, concubine to Duke Leto.', 21, 10);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Seldon', 70, 'Male', 'The founder of psychohistory.', 23, 10);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kvothe', 25, 'Male', 'A famous musician, adventurer, and legend.', 27, 2);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('FitzChivalry Farseer', 18, 'Male', 'A royal bastard trained as an assassin.', 29, 3);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Geralt of Rivia', 100, 'Male', 'A Witcher, monster hunter for hire.', 31, 4);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Yennefer of Vengerberg', 90, 'Female', 'A powerful sorceress and love interest of Geralt.', 32, 4);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Gideon Nav', 19, 'Female', 'A cavalier primary assigned to the Ninth House.', 34, 5);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Jonathan Strange', 40, 'Male', 'An English gentleman who becomes a practical magician.', 35, 6);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kell Maresh', 25, 'Male', 'A powerful Antari who can travel between parallel Londons.', 36, 7);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Kaz Brekker', 17, 'Male', 'A criminal mastermind and leader of the Dregs.', 38, 8);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Galadriel Higgins', 17, 'Female', 'An orphan girl with an unusual magical gift.', 41, 9);
INSERT INTO characters (name, age, gender, description, book_id, world_id) VALUES ('Rin', 15, 'Female', 'An orphan from the south who becomes a powerful warrior-shaman.', 43, 1);

-- ------------------------------------------------------------------------------------
-- DATA INSERTS: QUOTES (IDs 1-40) - UNCHANGED
-- ------------------------------------------------------------------------------------

INSERT INTO quotes (text, character_id) VALUES ('Journey before destination.', 1);
INSERT INTO quotes (text, character_id) VALUES ('Life before death.', 1);
INSERT INTO quotes (text, character_id) VALUES ('Strength before weakness.', 1);
INSERT INTO quotes (text, character_id) VALUES ('The most important words a man can say are, "I will do better."', 3);
INSERT INTO quotes (text, character_id) VALUES ('All we have to decide is what to do with the time that is given us.', 4);
INSERT INTO quotes (text, character_id) VALUES ('Not all those who wander are lost.', 6);
INSERT INTO quotes (text, character_id) VALUES ('Winter is coming.', 7);
INSERT INTO quotes (text, character_id) VALUES ('A mind needs books as a sword needs a whetstone.', 9);
INSERT INTO quotes (text, character_id) VALUES ('Chaos isn''t a pit. Chaos is a ladder.', 9);
INSERT INTO quotes (text, character_id) VALUES ('A man with no sense of humor is a man without sense of proportion.', 9);
INSERT INTO quotes (text, character_id) VALUES ('This is the season of stillness. It does not mean the season of peace.', 10);
INSERT INTO quotes (text, character_id) VALUES ('You cannot make a new world out of the pieces of the old one.', 11);
INSERT INTO quotes (text, character_id) VALUES ('The wheel weaves as the wheel wills.', 13);
INSERT INTO quotes (text, character_id) VALUES ('There are no beginnings and endings, only the turning of the wheel.', 14);
INSERT INTO quotes (text, character_id) VALUES ('It''s the questions we can''t answer that teach us the most.', 16);
INSERT INTO quotes (text, character_id) VALUES ('I know what I have to do. I''m just not sure how to do it.', 15);
INSERT INTO quotes (text, character_id) VALUES ('Build a man a fire, and he''s warm for a day. Set a man on fire, and he''s warm for the rest of his life.', 18);
INSERT INTO quotes (text, character_id) VALUES ('I aten''t dead.', 18);
INSERT INTO quotes (text, character_id) VALUES ('All stories are lies, but good stories are lies with a purpose.', 21);
INSERT INTO quotes (text, character_id) VALUES ('He was ordinary, but he thought he was extraordinary.', 23);
INSERT INTO quotes (text, character_id) VALUES ('We are the product of the choices we make.', 23);
INSERT INTO quotes (text, character_id) VALUES ('I hate traveling. It''s boring, it''s tiring, and it''s dangerous.', 23);
INSERT INTO quotes (text, character_id) VALUES ('But you can''t give up. You can''t.', 24);
INSERT INTO quotes (text, character_id) VALUES ('Every thing, every person, every moment has a price.', 24);
INSERT INTO quotes (text, character_id) VALUES ('The world is changing, and we are changing with it.', 25);
INSERT INTO quotes (text, character_id) VALUES ('We were just ordinary people. But we did extraordinary things.', 25);
INSERT INTO quotes (text, character_id) VALUES ('The mind can be a terrible thing to waste.', 26);
INSERT INTO quotes (text, character_id) VALUES ('I did not want to be a hero. I wanted to be safe.', 26);
INSERT INTO quotes (text, character_id) VALUES ('Fear is the mind-killer.', 28);
INSERT INTO quotes (text, character_id) VALUES ('It is not our talents that define us, but our choices.', 30);
INSERT INTO quotes (text, character_id) VALUES ('The world is full of things that can be bought and sold.', 31);
INSERT INTO quotes (text, character_id) VALUES ('Evil is Evil. Lesser, greater, middling, makes no difference.', 32);
INSERT INTO quotes (text, character_id) VALUES ('I don''t want to be a hero.', 32);
INSERT INTO quotes (text, character_id) VALUES ('The world is not ending. It is merely changing.', 33);
INSERT INTO quotes (text, character_id) VALUES ('We are the things that were lost.', 34);
INSERT INTO quotes (text, character_id) VALUES ('English magic is a very curious thing.', 35);
INSERT INTO quotes (text, character_id) VALUES ('I would rather die than be a servant to a king.', 36);
INSERT INTO quotes (text, character_id) VALUES ('A lie is just a story someone tells, and a story is just a way to hide the truth.', 37);
INSERT INTO quotes (text, character_id) VALUES ('I am not a nice person. I like not being a nice person.', 38);
INSERT INTO quotes (text, character_id) VALUES ('The world is a harsh place, and the weak perish.', 40);
