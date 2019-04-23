CREATE DATABASE Flights

USE Flights

CREATE TABLE Airline(
code CHAR(2) PRIMARY KEY,
name VARCHAR(30),
country VARCHAR(30)
);

CREATE TABLE Airplane(
code INT PRIMARY KEY,
type VARCHAR(40),
seats INT NOT NULL,
year DATETIME
);

CREATE TABLE Booking(
code CHAR(6),
agency VARCHAR(50),
airline_code CHAR(2),
flight_number CHAR(6) PRIMARY KEY,
customer_id INT NOT NULL,
booking_date DATETIME,
flight_date DATETIME,
price INT NOT NULL,
status INT NOT NULL
);

CREATE TABLE Flight(
fnumber CHAR(6) PRIMARY KEY,
airline_operator CHAR(2),
dep_airport CHAR(3),
arr_airport CHAR(3),
flight_time TIME,
flight_duration INT NOT NULL,
airplane INT NOT NULL
);

CREATE TABLE Agency(
name VARCHAR(50) PRIMARY KEY,
country VARCHAR(30),
city VARCHAR(30),
phone VARCHAR(12)
);

CREATE TABLE Customer(
id INT PRIMARY KEY,
fname VARCHAR(15),
lname VARCHAR(15),
email VARCHAR(40)
);

CREATE TABLE Airport(
code CHAR(3) PRIMARY KEY,
name VARCHAR(50),
country VARCHAR(50),
city VARCHAR(50)
);

ALTER TABLE Flight
ADD CONSTRAINT airline_op FOREIGN KEY(airline_operator)
REFERENCES Airline(code);

ALTER TABLE Booking
ADD CONSTRAINT airline_cod FOREIGN KEY(airline_code)
REFERENCES Airline(code);

ALTER TABLE Flight
ADD CONSTRAINT flight_depairport FOREIGN KEY(dep_airport)
REFERENCES Airport(code);

ALTER TABLE Flight
ADD CONSTRAINT flight_airport FOREIGN KEY(arr_airport)
REFERENCES Airport(code);

ALTER TABLE Flight
ADD CONSTRAINT airplane FOREIGN KEY(airplane)
REFERENCES Airplane(code);

ALTER TABLE Booking
ADD CONSTRAINT flight_agency FOREIGN KEY(agency)
REFERENCES Agency(name);

ALTER TABLE Booking
ADD CONSTRAINT booking_flightnum FOREIGN KEY(flight_number)
REFERENCES Flight(fnumber);

ALTER TABLE Booking
ADD CONSTRAINT booking_custid FOREIGN KEY(customer_id)
REFERENCES Customer(id);

ALTER TABLE Airline
ADD CONSTRAINT uq_name UNIQUE(name);

ALTER TABLE Airport
ADD CONSTRAINT uq_airport_name UNIQUE(name);

ALTER TABLE Airplane
ADD CONSTRAINT ck_seat
CHECK (seats > 0);

ALTER TABLE Booking
ADD CONSTRAINT ck_date
CHECK (flight_date >= booking_date);

ALTER TABLE Customer
ADD CONSTRAINT ck_email
CHECK (email LIKE '%@%.%');

ALTER TABLE Booking
ADD CONSTRAINT ck_status
CHECK (status IN('0','1'));
