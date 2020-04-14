USE codeup_test_db;

-- All albums in your table
SELECT 'All albums:' AS
SELECT * album FROM albums;

-- All albums released before 1980
SELECT 'All albums released before 1980:' AS
SELECT * album FROM albums WHERE released < 1980;

-- All albums by Michael Jackson
SELECT 'All albums by Michael Jackson:' AS
SELECT * album FROM albums WHERE artist = 'Michael Jackson';
