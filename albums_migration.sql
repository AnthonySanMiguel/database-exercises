USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    artist VARCHAR (124) DEFAULT 'NONE',
    name VARCHAR (124) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR (500) DEFAULT 'NONE'
    );
SHOW TABLES;
