ALTER TABLE users DROP CONSTRAINT gender;
ALTER TABLE users DROP CONSTRAINT company;

UPDATE users SET gender = 1;
UPDATE users SET gender = 2 WHERE id in(3, 4, 5, 7, 8, 14, 15);

INSERT INTO companies (name, TIN, MSRN, director, address) VALUES 
('Electric Avenue', '148253235888', '3788134688335', 'Alfred R. Conrad', '56467 Arjun Port Suite 965 North Gloriaside, MA 29403-4539'), 
('Profitpros', '292033684927', '3370295332400', 'Gregory J. Ellis', '9959 Oberbrunner Course Port Remington, TN 64262-7734'), 
('Gemco', '720929705956', '8587201416343', 'Natacha M. McIntyre', '146 Theodora Station Abbottfort, KY 69637-7744');

UPDATE users SET company = 1 WHERE id in(5, 10, 15);
UPDATE users SET company = 2 WHERE id in(4, 9, 14);
UPDATE users SET company = 3 WHERE id in(3, 8, 13);
UPDATE users SET company = 4 WHERE id in(2, 7, 12);
UPDATE users SET company = 5 WHERE id in(1, 6, 11);

ALTER TABLE users MODIFY COLUMN gender INT(10);
ALTER TABLE users MODIFY COLUMN company INT(10);

ALTER TABLE users
ADD CONSTRAINT genders
FOREIGN KEY (gender)
REFERENCES genders(id);

ALTER TABLE users
ADD CONSTRAINT companies
FOREIGN KEY (company)
REFERENCES companies(id);