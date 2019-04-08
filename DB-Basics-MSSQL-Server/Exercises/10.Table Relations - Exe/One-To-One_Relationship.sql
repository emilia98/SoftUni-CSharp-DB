/* Problem 1. One-To-One Relationship */

USE "TableRelationsDB";

CREATE TABLE Passports(
	PassportID INT IDENTITY(101, 1) PRIMARY KEY,
	PassportName VARCHAR(10)
);

CREATE TABLE Persons(
	PersonID INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(100) NOT NULL,
	Salary MONEY NOT NULL,
	PassportID INT UNIQUE,
	CONSTRAINT FK_Persons_Passports FOREIGN KEY (PassportID)
				REFERENCES Passports(PassportID)
);

INSERT INTO 
	Passports (PassportName)
VALUES 
	('N34FG21B');

INSERT INTO 
	Passports (PassportName)
VALUES 
	('K65LO4R7');

INSERT INTO 
	Passports (PassportName)
VALUES 
	('ZE657QP2');

INSERT INTO 
	Persons (FirstName, Salary, PassportID)
VALUES 
	('Roberto', 43300.00, 102);

INSERT INTO 
	Persons (FirstName, Salary, PassportID)
VALUES 
	('Tom', 56100.00, 103);

INSERT INTO 
	Persons (FirstName, Salary, PassportID)
VALUES 
	('Yana', 60200.00, 101);