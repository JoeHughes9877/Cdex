-- ------------------------
-- Authors
-- ------------------------
INSERT INTO authors (name) VALUES ('Brandon Sanderson');
INSERT INTO authors (name) VALUES ('J.R.R. Tolkien');
INSERT INTO authors (name) VALUES ('George R.R. Martin');

-- ------------------------
-- Worlds
-- ------------------------
INSERT INTO worlds (name) VALUES ('Roshar');
INSERT INTO worlds (name) VALUES ('Middle-earth');
INSERT INTO worlds (name) VALUES ('Westeros');

-- ------------------------
-- Kingdoms (Regions)
-- ------------------------
-- Roshar
INSERT INTO kingdoms (name, world_id) VALUES ('Alethkar', 1);
INSERT INTO kingdoms (name, world_id) VALUES ('Thaylenah', 1);
INSERT INTO kingdoms (name, world_id) VALUES ('Jah Keved', 1);

-- Middle-earth
INSERT INTO kingdoms (name, world_id) VALUES ('Gondor', 2);
INSERT INTO kingdoms (name, world_id) VALUES ('Rohan', 2);
INSERT INTO kingdoms (name, world_id) VALUES ('Mordor', 2);

-- Westeros
INSERT INTO kingdoms (name, world_id) VALUES ('The North', 3);
INSERT INTO kingdoms (name, world_id) VALUES ('The Vale', 3);
INSERT INTO kingdoms (name, world_id) VALUES ('Dorne', 3);

-- ------------------------
-- Books
-- ------------------------
-- Correct info for Way of Kings
INSERT INTO books (title, year, author_id, world_id) 
VALUES ('The Way of Kings', 2010, 1, 1);

INSERT INTO books (title, year, author_id, world_id) 
VALUES ('The Hobbit', 1937, 2, 2);

INSERT INTO books (title, year, author_id, world_id) 
VALUES ('A Game of Thrones', 1996, 3, 3);

-- ------------------------
-- Characters
-- ------------------------
-- Way of Kings
INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Kaladin Stormblessed', 24, 'male', 'A skilled soldier and leader.', 1, 1);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Shallan Davar', 16, 'female', 'A young noblewoman with secret powers.', 1, 1);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Dalinar Kholin', 50, 'male', 'Highprince of Alethkar, a military leader.', 1, 1);

-- The Hobbit
INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Bilbo Baggins', 50, 'male', 'A hobbit who loves peace and comfort.', 2, 2);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Gandalf', 2019, 'male', 'A wise and powerful wizard.', 2, 2);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Thorin Oakenshield', 195, 'male', 'Leader of the dwarves on a quest.', 2, 2);

-- A Game of Thrones
INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Jon Snow', 17, 'male', 'Member of the Night''s Watch, son of Lyanna Stark.', 3, 3);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Daenerys Targaryen', 16, 'female', 'The last Targaryen heir, strong-willed.', 3, 3);

INSERT INTO characters (name, age, gender, description, book_id, world_id)
VALUES ('Tyrion Lannister', 32, 'male', 'Clever, witty, and underestimated.', 3, 3);

-- ------------------------
-- Quotes
-- ------------------------
-- Way of Kings
INSERT INTO quotes (text, character_id) VALUES ('Life before death.', 1);
INSERT INTO quotes (text, character_id) VALUES ('Journey before destination.', 1);
INSERT INTO quotes (text, character_id) VALUES ('I will see what I can do.', 2);
INSERT INTO quotes (text, character_id) VALUES ('The most important step a man can take is always the next one.', 3);

-- The Hobbit
INSERT INTO quotes (text, character_id) VALUES ('I am looking for someone to share in an adventure.', 4);
INSERT INTO quotes (text, character_id) VALUES ('All we have to decide is what to do with the time that is given us.', 5);
INSERT INTO quotes (text, character_id) VALUES ('If more of us valued food and cheer and song above hoarded gold, it would be a merrier world.', 6);

-- A Game of Thrones
INSERT INTO quotes (text, character_id) VALUES ('Winter is coming.', 7);
INSERT INTO quotes (text, character_id) VALUES ('I will take what is mine with fire and blood.', 8);
INSERT INTO quotes (text, character_id) VALUES ('A mind needs books as a sword needs a whetstone.', 9);
