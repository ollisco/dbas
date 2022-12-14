CREATE TABLE Books
(bookID integer PRIMARY KEY,
title varchar(100),
pages integer);

CREATE TABLE Resources
(physicalID integer PRIMARY KEY,
bookID integer,
damaged BOOLEAN DEFAULT false);

CREATE TABLE Prequels
(bookID INTEGER,
prequelID INTEGER,
PRIMARY KEY (bookID,prequelID));

CREATE TABLE Edition
(bookID INTEGER,
ISBN varchar(20),
edition Integer,
publisher varchar(100),
DoP Date,
PRIMARY KEY (bookID));

CREATE TABLE Author
(bookID integer,
author varchar(100),
PRIMARY KEY (bookID, author));

CREATE TABLE Genre
(bookID integer,
genre varchar(100),
PRIMARY KEY (bookID, genre));

CREATE TABLE Language
(bookID INTEGER,
language varchar(100),
PRIMARY KEY (bookID, language));

CREATE TABLE Users
(userID integer PRIMARY KEY,
name varchar(100),
address varchar(100),
email varchar(50));

CREATE TABLE Students
(userID integer,
program varchar(100),
PRIMARY KEY (userID)
);

CREATE TABLE Admins
(userID integer,
department varchar(100),
phoneNumber varchar(15),
PRIMARY KEY (userID)
);

CREATE TABLE Borrowing
(borrowingID Integer PRIMARY KEY,
physicalID integer,
userID integer,
DoB DATE DEFAULT CURRENT_DATE,
DoR DATE,
DoE DATE DEFAULT CURRENT_DATE+7);

CREATE TYPE pMethod AS ENUM ('Klarna', 'Swish', 'Card','Cash');

CREATE TABLE Fines
(borrowingID integer,
Amount integer,
PRIMARY KEY (borrowingID));
 
CREATE TABLE TRANSACTIONS
(transactionID integer PRIMARY KEY,
 borrowingID integer,
 paymentMethod pMethod,
 DoP DATE
 );
 
--drop table admins,author,books,borrowing,edition,fines,genre,language,prequels,resources,students,transactions,users; 
 