USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT NOT NULL AUTO_INCREMENT,
    artist VARCHAR (50) DEFAULT 'NONE',
    name VARCHAR (50) NOT NULL,
    release_date DATE NOT NULL,
    sales INT,
    genre VARCHAR (50),
    PRIMARY KEY (id)
    );
SHOW TABLES;
