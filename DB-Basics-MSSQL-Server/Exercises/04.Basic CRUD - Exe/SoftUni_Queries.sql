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

/* Problem 7 - Find All Different Employee’s Salaries */
SELECT DISTINCT 
	Salary
FROM 
	"Employees";

/* Problem 8 - Find all Information About Employees */
SELECT 
	*
FROM 
	"Employees"
WHERE 
	JobTitle = 'Sales Representative';

/* Problem 9 - Find Names of All Employees by Salary in Range */
SELECT
	[FirstName], 
	[LastName], 
	[JobTitle]
FROM 
	"Employees"
WHERE 
	Salary BETWEEN 20000 AND 30000;

/* Problem 9.1 - Find Names of All Employees by Salary in Range */
SELECT
	[FirstName], 
	[LastName], 
	[JobTitle]
FROM 
	"Employees"
WHERE 
	Salary >= 20000 AND Salary <= 30000;

/* Problem 10 - Find Names of All Employees */
SELECT
	([FirstName] + ' ' + [MiddleName] + ' ' + [LastName])
    AS [Full Name]
FROM 
	"Employees"
WHERE
	Salary IN (12500, 14000, 23600, 25000);

/* Problem 10.1 - Find Names of All Employees */
SELECT
	CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName])
    AS [Full Name]
FROM 
	"Employees"
WHERE
	Salary IN (12500, 14000, 23600, 25000);

/* Problem 10.2 - Find Names of All Employees */
SELECT
	CONCAT_WS(' ', [FirstName], [MiddleName], [LastName])
    AS [Full Name]
FROM 
	"Employees"
WHERE
	Salary IN (12500, 14000, 23600, 25000);

/* Problem 11 - Find All Employees Without Manager */
SELECT
	FirstName, LastName
FROM 
	"Employees"
WHERE 
	ManagerId IS NULL;

/* Problem 12 - Find All Employees with Salary More Than 50000 */
SELECT 
	FirstName, LastName, Salary 
FROM 
	"Employees"
WHERE 
	Salary > 50000
ORDER BY 
	Salary DESC;

/* Problem 13 - Find 5 Best Paid Employees */
SELECT TOP(5)
	FirstName, LastName
FROM 
	"Employees"
ORDER BY Salary DESC;

/* Problem 14 - Find All Employees Except Marketing */
SELECT
	FirstName, LastName
FROM 
	"Employees"
WHERE 
	DepartmentID != 4;

/* Problem 14.1 - Find All Employees Except Marketing */
SELECT
	FirstName, LastName
FROM 
	"Employees"
WHERE 
	DepartmentID <> 4;

/* Problem 15 - Sort Employees Table*/
SELECT
	* 
FROM 
	"Employees"
ORDER BY 
	Salary DESC,
	FirstName ASC,
	LastName DESC,
	MiddleName ASC;

/* Problem 16 - Create View Employees with Salaries */
GO
CREATE VIEW V_EmployeesSalaries AS
	SELECT FirstName, LastName, Salary
	FROM "Employees";
GO

SELECT * FROM V_EmployeesSalaries;

/* Problem 17 - Create View Employees with Job Titles */
GO
CREATE VIEW V_EmployeeNameJobTitle AS
	SELECT 
		CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS [Full Name],
		JobTitle as [Job Title]
	FROM 
		"Employees"
GO

SELECT * FROM V_EmployeeNameJobTitle;

/* Problem 18 - Distinct Job Titles*/
SELECT DISTINCT
	JobTitle
FROM 
	"Employees";

/* Problem 19 - Find First 10 Started Projects */
SELECT TOP(10) 
	* 
FROM 
	"Projects" 
ORDER BY 
	"StartDate" ASC,
	"Name" ASC;

/* Problem 20 - Last 7 Hired Employees */
SELECT TOP(7) 
	FirstName, 
	LastName, 
	HireDate 
FROM 
	"Employees" 
ORDER BY 
	HireDate DESC;

/* Problem 21 - Increase Salaries */
UPDATE 
	"Employees"
SET 
	Salary = Salary * 1.12
WHERE 
	DepartmentID IN (1, 2, 4, 11);

SELECT Salary FROM "Employees";
