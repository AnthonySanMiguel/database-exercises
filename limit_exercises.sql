USE employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:
# Zykh
# Zyda
# Zwicker
# Zweizig
# Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker

SELECT DISTINCT last_name
FROM employees
order by last_name DESC
LIMIT 10;

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees. Their names should be:
# Khun Bernini
# Pohua Sudkamp
# Xiaopeng Uehara
# Irene Isaak
# Dulce Wrigley

SELECT first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%%%%-12-25'
order by birth_date ASC, hire_date DESC
LIMIT 5;

# Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results. The employee names should be:
# Piyawadee Bultermann
# Heng Luft
# Yuqun Kandlur
# Basil Senzako
# Mabo Zobel

SELECT first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND birth_date LIKE '%%%%-12-25'
order by birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;
