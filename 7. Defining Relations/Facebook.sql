CREATE DATABASE Facebook

USE Facebook

CREATE TABLE Users(
id INT IDENTITY,
email VARCHAR(60),
password VARCHAR(15),
registration_date DATE
);

CREATE TABLE Friends(
friend_1 INT,
friend_2 INT
);

CREATE TABLE Walls(
user_number INT,
user_number_sender INT,
message VARCHAR(250),
date DATETIME
);

CREATE TABLE Groups(
groupId INT IDENTITY,
name VARCHAR(50),
description VARCHAR(250)
);

CREATE TABLE GroupMembers(
group_number INT,
user_number INT
);

