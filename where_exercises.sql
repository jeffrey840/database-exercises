USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name REGEXP '^E';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name
from employees
where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select last_name
from employees
where last_name like 'E%' OR last_name like '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select last_name
from employees
where last_name like 'E%' AND last_name like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select last_name
from employees
where last_name like '%q%' AND last_name not like '%qu%';