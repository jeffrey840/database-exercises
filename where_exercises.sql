USE employees;

SELECT emp_no, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name REGEXP '^E';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
from employees
where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT *
from employees
where first_name = 'Irena' OR first_name = 'Vidya' Or first_name = 'Maya' AND gender = 'M';

select last_name
from employees
where last_name like 'E%' OR last_name like '%E';

select last_name
from employees
where last_name like 'E%' AND last_name like '%E';

select last_name
from employees
where last_name like '%q%' AND last_name not like '%qu%';