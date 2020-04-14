USE codeup_test_db;


/*********************** INSERT ***********************/
-- TODO TOGETHER: INSERT SINGLE RECORD INTO QUOTES DB

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');

-- TODO TOGETHER: INSERT MULTIPLE RECORDS INTO QUOTES DB.
--  **Note the double single quote in the first quote by Douglas Adams

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES  ('Douglas', 'Adams', 'Don''t panic'),
        ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
        ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
        ('Kurt', 'Vonnegut', 'The universe is a big place, perhaps the biggest.');


/*********************** SELECT ***********************/

-- TODO TOGETHER: View the author last name and the content from quotes.





-- TODO TOGETHER: View the quotes table. Notice how the id has been auto-incrementing on each insert.




/*********************** WHERE ***********************/

-- TODO TOGETHER: View quotes by Douglas Adams


-- TODO TOGETHER: View quote with primary key (in this case id) of 5


/*********************** UPDATE ***********************/
-- TODO TOGETHER: View all quotes


-- TODO TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens


/*********************** DELETE ***********************/

-- TODO TOGETHER: Delete quote with id 3. Then view the output.



/*********************** TRUNCATE ***********************/
-- TODO TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.

