
# # =========JOIN EXAMPLE DATABASE======
# # can show all users in that table
# select *
# from users;
#
# select *
# from roles;
#
# # Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
#
# INSERT INTO users (name, email, role_id) VALUES
# ('jeffrey', 'bob@example.com', 2),
# ('andy', 'joe@example.com', 2),
# ('henry', 'sally@example.com', 2),
# ('jack', 'adam@example.com', NULL);
#
# #inner join
# SELECT users.name AS username, roles.name AS rolename
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# #left join
# SELECT users.name AS username, roles.name AS rolename
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# #right join
# SELECT users.name AS username, roles.name AS rolename
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;
#
# #using count
# SELECT roles.name as 'role', count(users.role_id) as 'num of roles'
# FROM roles
# JOIN users ON users.role_id = roles.id
# GROUP BY roles.name;
#


# ======== EMPLOYEE DATABASE =========
# write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date > NOW()
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date > NOW() && e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.

SELECT title, COUNT(*)
FROM departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN titles t on t.emp_no = de.emp_no
WHERE de.to_date > NOW() && t.to_date > NOW() && d.dept_name = 'Customer Service'
GROUP BY title;

# Find the current salary of all current managers.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name), s.salary
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date > NOW() && s.to_date > NOW()
ORDER BY d.dept_name;


