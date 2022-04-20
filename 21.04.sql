SELECT CONCAT(surname, " ", name, " ", patronymic, ".") AS full_name FROM users;
SELECT CONCAT_WS(' ', surname, name, patronymic, ".") AS full_name FROM users;

SELECT name, LENGTH(name) AS name_length FROM users;
SELECT name, LOCATE('an', name) AS ind FROM users;
SELECT CONCAT_WS(' ', surname, LEFT(name, 1), patronymic) AS full_name FROM users;

SELECT name FROM users WHERE LOCATE('a', name) = 2;
SELECT name, SUBSTRING(name, 2) FROM users;

SELECT email, SUBSTRING(email, LENGTH(name)+LENGTH(surname)+LENGTH(patronymic)+2) FROM users;
SELECT email, SUBSTRING(email, LOCATE('@', email)+1) FROM users;

SELECT companies.name, SUBSTRING(email, LOCATE('@', email)+1) AS domain, COUNT(users.id) AS counter FROM users 
INNER JOIN companies ON users.company = companies.id GROUP BY companies.name, domain;
