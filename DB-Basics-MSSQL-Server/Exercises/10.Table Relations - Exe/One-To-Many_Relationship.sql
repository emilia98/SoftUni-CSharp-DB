/* Problem 2. One-To-Many Relationship */

USE "TableRelationsDB";

CREATE TABLE Manufacturers(
	ManufacturerID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	EstablishedOn DATE NOT NULL
);

CREATE TABLE Models(
	ModelID INT IDENTITY(101, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	ManufacturerID INT NOT NULL,
	CONSTRAINT FK_Models_Manufacturers 
		FOREIGN KEY (ManufacturerID)
		REFERENCES Manufacturers(ManufacturerID)
);

INSERT INTO 
	Manufacturers([Name], EstablishedOn)
VALUES 
	('BMW', '07/03/1916');

INSERT INTO 
	Manufacturers([Name], EstablishedOn)
VALUES 
	('Tesla', '01/01/2003');

INSERT INTO 
	Manufacturers([Name], EstablishedOn)
VALUES 
	('Lada', '01/05/1966');

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('X1', 1);

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('i6', 1);

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('Model S', 2);

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('Model X', 2);

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('Model 3', 2);

INSERT INTO 
	Models([Name], ManufacturerID)
VALUES 
	('Nova', 3);