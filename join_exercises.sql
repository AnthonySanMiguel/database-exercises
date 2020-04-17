USE employees;

# Write a query that shows each department along with the name of the current manager for that department.

# Department Name    | Department Manager
#  --------------------+--------------------
#   Customer Service   | Yuchang Weedman
#   Development        | Leon DasSarma
#   Finance            | Isamu Legleitner
#   Human Resources    | Karsten Sigstam
#   Marketing          | Vishwani Minakawa
#   Production         | Oscar Ghazalie
#   Quality Management | Dung Pesch
#   Research           | Hilary Kambil
#   Sales              | Hauke Zhang

SELECT depts.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS depts
    ON dm.dept_no = depts.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY depts.dept_name;

# Find the name of all departments currently managed by women.

# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil

SELECT depts.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS depts
    ON dm.dept_no = depts.dept_no
WHERE dm.to_date > CURDATE() AND e.gender = 'F'
ORDER BY depts.dept_name;

# Find the current titles of employees currently working in the Customer Service department.

# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241

SELECT titles.title as `Title`, COUNT(titles.emp_no) AS `COUNT`
FROM titles
    JOIN dept_emp
        ON titles.emp_no = dept_emp.emp_no
    JOIN departments
        ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
    AND departments.dept_name = 'Customer Service'
    AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;

# Find the current salary of all current managers.

# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987

# Bonus Find the names of all current employees, their department name, and their current manager's name.

#     240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....
