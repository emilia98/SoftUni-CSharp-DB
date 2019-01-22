USE "SoftUni"

/*
****** PROBLEM 16 ******
*/

/* Create table Towns */
CREATE TABLE "Towns" (
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Name] NVARCHAR(100)
);

SELECT * FROM "Towns";

/* Create table Addresses */
CREATE TABLE "Addresses" (
	Id INT PRIMARY KEY IDENTITY(1, 1),
	AddressText NVARCHAR(200) NOT NULL,
	TownId INT FOREIGN KEY REFERENCES Towns(Id)
);

SELECT * FROM "Addresses";

/* Create table Departments */
CREATE TABLE "Departments" (
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Name] NVARCHAR(100) NOT NULL
);

SELECT * FROM "Departments";

/* Create table Employees */
CREATE TABLE "Employees"(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	JobTitle NVARCHAR(100) NOT NULL,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id),
	HireDate DATE NULL,
	Salary DECIMAL(10, 2) NOT NULL,
	AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
);

SELECT * FROM "Employees";