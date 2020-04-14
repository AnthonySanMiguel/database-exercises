USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd:' AS
SELECT album FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released:' AS
SELECT released FROM albums WHERE album = 'Sgt. Peppers Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'The genre for Nevermind:' AS
SELECT genre FROM albums WHERE album = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Which albums were released in the 1990s:' AS
SELECT album FROM albums WHERE released BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Which albums had less than 20 million certified sales:' AS
SELECT album FROM albums WHERE total_certified_copies < 20;

-- All the albums with a genre of "Rock".
SELECT 'All the albums with a genre of "Rock":' AS
SELECT album FROM albums WHERE genre = 'Rock';
