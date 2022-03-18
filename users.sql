ALTER TABLE users ADD email VARCHAR(100) UNIQUE;
ALTER TABLE users ADD gender VARCHAR(10) UNIQUE;
ALTER TABLE users ADD company VARCHAR(100) UNIQUE;
ALTER TABLE users ADD post VARCHAR(100) UNIQUE;
ALTER TABLE users ADD address VARCHAR(100) UNIQUE;
ALTER TABLE users ADD city VARCHAR(50) UNIQUE;
ALTER TABLE users ADD telephone VARCHAR(20) UNIQUE;

INSERT INTO `users` (`name`, `surname`, `patronymic`, `birth_day`, `email`) VALUES 
('Greg', 'Saxon', 'B', '1977-04-19', 'GregBSaxon@rhyta.com'),
('Dennis', 'Guerin', 'J', '1972-06-22', 'DennisJGuerin@rhyta.com'),
('Laura', 'Wilder', 'W', '1938-10-24', 'LauraWWilder@rhyta.com'),
('Daphine', 'McQuaid', 'C', '1997-04-25', 'DaphineCMcQuaid@jourrapide.com'),
('Angela', 'Maines', 'C', '1982-10-11', 'AngelaCMaines@jourrapide.com'),
('John', 'Bernhardt', 'R', '1987-08-24', 'JohnRBernhardt@dayrep.com'),
('Alberta', 'Ward', 'H', '1974-03-23','AlbertaHWard@armyspy.com'),
('Pamela', 'Huggins', 'L', '1968-04-18', 'PamelaLHuggins@armyspy.com'),
('Alan', 'Gonzales', 'M', '1983-05-21', 'AlanMGonzales@dayrep.com'),
('Jerald', 'Hale', 'L', '1970-01-07', 'JeraldLHale@jourrapide.com'),
('Robert', 'Hunter', 'G', '1967-02-18', 'RobertGHunter@armyspy.com'),
('John', 'Schaeffer', 'K', '1978-06-10', 'JohnKSchaeffer@teleworm.us'),
('David', 'Bolin', 'D', '1938-06-05', 'DavidDBolin@teleworm.us'),
('Linda', 'Parker', 'G', '1949-12-30', 'LindaGParker@jourrapide.com'),
('Tiffany', 'Hughes', 'G', '1960-03-27', 'TiffanyGHughes@dayrep.com');

ALTER TABLE users ADD CONSTRAINT UNIQUE(name, surname, patronymic, birth_day);

ALTER TABLE users  ADD region VARCHAR(300) NOT NULL DEFAULT 'Tomsk';
