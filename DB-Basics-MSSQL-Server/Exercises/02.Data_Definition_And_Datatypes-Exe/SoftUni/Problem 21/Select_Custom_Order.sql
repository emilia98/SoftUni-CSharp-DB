/*
****** Problem 21 -> Select Custom Columns and Order ******
*/
USE "SoftUni";

SELECT "Name" FROM "Towns" ORDER BY "Name" ASC;

SELECT "Name" FROM "Departments" ORDER BY "Name" ASC;

SELECT "FirstName", "LastName", "JobTitle", "Salary" FROM "Employees" ORDER BY "Salary" DESC;