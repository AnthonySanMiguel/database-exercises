# USE your employees database. DESCRIBE each table and inspect the keys and see which columns have indexes and keys.

USE employees;

SHOW TABLES;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

# ------------------------------

# USE your codeup_test_db database. Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.

USE codeup_test_db;

SHOW TABLES;

SELECT * FROM albums;

ALTER TABLE albums
ADD UNIQUE (artist, name)
