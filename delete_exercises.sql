--COPY AND PASTE INDIVIDUAL COMMANDS BELOW AFTER LOGGING IN TO MYSQL

-- Albums released after 1991
SELECT * FROM albums WHERE release_date > '1991';

-- Albums with the genre 'disco'
SELECT * FROM albums WHERE genre = 'Disco';
-- or SELECT * FROM albums WHERE genre LIKE '%disco%';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT * FROM albums WHERE artist = 'Whitney Houston';

--DELETE VERSION
DELETE FROM albums WHERE release_date > '1991';

DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE artist LIKE '%whitney houston%';
