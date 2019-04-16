CREATE DATABASE Electronics

USE Electronics

CREATE TABLE Product(
maker CHAR,
model CHAR(4),
type VARCHAR(7)
);

CREATE TABLE Printer(
code INT,
model CHAR(4),
price DECIMAL(5,2)
);

INSERT INTO Product
VALUES('A','1256','PC');

INSERT INTO Printer
VALUES(1,'1401',150);

ALTER TABLE Printer
ADD type VARCHAR(6),color CHAR;

ALTER TABLE Printer
DROP COLUMN price;

DROP TABLE Product;

DROP TABLE Printer;
