
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



