# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
# INSERT INTO users (name, email, role_id)
# VALUES ('Anthony', 'anthony@gmail.com', 2),
#        ('Kathryn', 'kathryn@yahoo.com', 2),
#        ('Michael', 'michael@satx.rr.com', 2),
#        ('Pepe', 'pepe@babsouthvet.com', NULL),

# Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

-- JOIN (aka 'INNER JOIN' only returns matches for both specified columns -- e.g. user name and roles)
SELECT users.name AS user_name, roles.name AS rows_name
FROM users
         JOIN roles ON users.role_id = roles.id;

-- LEFT JOIN (only returns matches from left column)
SELECT users.name AS user_name, roles.name AS rows_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

-- RIGHT JOIN (only returns matches from right column)
SELECT users.name AS user_name, roles.name AS rows_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

# Use count and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use group by in the query.

SELECT roles.name AS role_name, COUNT(*) AS currently_employed
FROM roles
         RIGHT JOIN users ON users.role_id = roles.id
GROUP BY roles.name;
