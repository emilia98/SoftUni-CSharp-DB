/* Queries for SoftUni Database */

USE "SoftUni";

/* Problem 2 - Find All Information About Departments */
SELECT * FROM "Departments";

/* Problem 3 - Find all Department Names */
SELECT [Name] FROM "Departments";

/* Problem 4 - Find Salary of Each Employee */
SELECT
	[FirstName],
	[LastName],
	Salary
FROM 
	"Employees";

/* Problem 5 - Find Full Name of Each Employee*/
SELECT
	[FirstName],
	[MiddleName],
	[LastName]
FROM 
	"Employees";

/* Problem 6 - Find Email Address of Each Employee*/
SELECT
	[FirstName] + '.' + [LastName] + '@softuni.bg'
FROM 
	"Employees";