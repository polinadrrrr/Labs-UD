ALTER TABLE users ALTER COLUMN city SET DEFAULT 'Tomsk'; 
ALTER TABLE users ALTER COLUMN region SET DEFAULT 'Tomsk region';

ALTER TABLE users ALTER COLUMN gender SET DEFAULT 1;
ALTER TABLE users MODIFY COLUMN gender TINYINT(1);

CREATE TABLE genders 
(id INT(10) PRIMARY KEY AUTO_INCREMENT,
name_RUS VARCHAR(50),
name_ENG VARCHAR(50));

INSERT INTO genders (id, name_rus, name_eng) 
VALUES ('1', 'мужской', 'male'), ('2', 'женский', 'female');

CREATE TABLE companies 
(id INT(10) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
TIN VARCHAR(12),
MSRN VARCHAR(13),
director VARCHAR(150),
address VARCHAR(100));

INSERT INTO companies (name, TIN, MSRN, director, address) VALUES 
('Kleinhans', '103043208736', '6291773795201', 'Paula R. Anderson', '331 Wintheiser Dale Steuberborough, IN 61115'), 
('World of Fun', '288397677758', '3414186290523', 'Larry C. Jones', '4508 Tad Hills Apt. 829 Cummingsburgh, IN 47476');

ALTER TABLE users ALTER COLUMN company SET DEFAULT 1;
ALTER TABLE users MODIFY COLUMN company TINYINT(1);

CREATE TABLE cities 
(id INT(10) PRIMARY KEY AUTO_INCREMENT,
name_RUS VARCHAR(50),
name_ENG VARCHAR(50));

INSERT INTO cities (name_RUS, name_ENG) VALUES 
('Томск', 'Tomsk'), ('Северск', 'Seversk');

ALTER TABLE users ALTER COLUMN city SET DEFAULT 1;
ALTER TABLE users MODIFY COLUMN city TINYINT(1);
