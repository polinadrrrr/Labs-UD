SELECT name, surname, patronymic, (SELECT name FROM companies WHERE users.company = companies.id) AS company_name FROM users;

SELECT users.name, users.surname, users.patronymic, companies.name, genders.name_ENG FROM users, companies, genders 
WHERE users.company = companies.id and users.gender = genders.id;

INSERT INTO cities (id, name_rus, name_eng) 
VALUES ('3', 'Красноярск', 'Krasnoyarsk'), ('4', 'Канск', 'Kansk'), ('5', 'Иркутск', 'Irkutsk');

ALTER TABLE users DROP COLUMN region;

UPDATE users SET city = 2 WHERE id in(5, 10, 15);
UPDATE users SET city = 4 WHERE id in(4, 9, 14);
UPDATE users SET city = 1 WHERE id in(3, 8, 13);
UPDATE users SET city = 5 WHERE id in(2, 7, 12);
UPDATE users SET city = 3 WHERE id in(1, 6, 11);

SELECT users.city, cities.name_ENG, COUNT(users.id) AS counter FROM users, cities WHERE users.city = cities.id GROUP BY users.city;
SELECT users.name, users.surname, cities.name_ENG FROM users JOIN cities on users.city = cities.id;

UPDATE users SET city = NULL WHERE id IN(1, 6, 11);
SELECT users.name, cities.name_ENG FROM users
LEFT JOIN cities ON users.city = cities.id;
SELECT users.name, cities.name_ENG FROM users
JOIN cities ON users.city = cities.id;

UPDATE users SET city = 3 WHERE id IN(1, 6, 11);

ALTER TABLE users ADD age INT(100) AFTER birth_day;

UPDATE users SET age = 44 WHERE id in(1);
UPDATE users SET age = 49 WHERE id in(2);
UPDATE users SET age = 83 WHERE id in(3, 13);
UPDATE users SET age = 24 WHERE id in(4);
UPDATE users SET age = 39 WHERE id in(5);
UPDATE users SET age = 34 WHERE id in(6);
UPDATE users SET age = 48 WHERE id in(7);
UPDATE users SET age = 53 WHERE id in(8);
UPDATE users SET age = 38 WHERE id in(9);
UPDATE users SET age = 52 WHERE id in(10);
UPDATE users SET age = 55 WHERE id in(11);
UPDATE users SET age = 43 WHERE id in(12);
UPDATE users SET age = 72 WHERE id in(14);
UPDATE users SET age = 62 WHERE id in(15);

SELECT name, surname, age AS senior FROM users WHERE age = (SELECT MAX(age) FROM users);
SELECT name, surname, age AS junior FROM users WHERE age = (SELECT MIN(age) FROM users);
SELECT AVG(age) AS average_age FROM users;

SELECT AVG(age) AS average_age, MAX(age) AS senior, MIN(age) AS junior 
FROM users WHERE city = 1;
SELECT AVG(age) AS average_age, MAX(age) AS senior, MIN(age) AS junior 
FROM users WHERE city = 2;
SELECT AVG(age) AS average_age, MAX(age) AS senior, MIN(age) AS junior 
FROM users WHERE city = 3;
SELECT AVG(age) AS average_age, MAX(age) AS senior, MIN(age) AS junior 
FROM users WHERE city = 4;
SELECT AVG(age) AS average_age, MAX(age) AS senior, MIN(age) AS junior 
FROM users WHERE city = 5;
