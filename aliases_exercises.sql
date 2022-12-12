
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;









