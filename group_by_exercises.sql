USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT title
FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
# Eldridge
# Erbe
# Erde
# Erie
# Etalle

SELECT DISTINCT last_name
FROM employees
WHERE (last_name LIKE 'e%') AND (last_name LIKE '%e') # or can use LIKE 'E%E'
GROUP BY last_name
LIMIT 5;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT DISTINCT last_name, first_name
FROM employees
WHERE (last_name LIKE 'e%') AND (last_name LIKE '%e');

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
# Chleq
# Lindqvist
# Qiwen

SELECT DISTINCT last_name
FROM employees
WHERE (last_name LIKE '%q%') AND last_name NOT LIKE '%qu%'
order by last_name
LIMIT 3;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE (last_name LIKE '%q%') AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
# 441 M
# 268 F

SELECT COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND (gender = 'M' OR gender = 'F')
GROUP BY gender;
