USE "SoftUni";

SELECT
	DepartmentID,
	SUM(Salary) AS TotalSalary
FROM 
	"Employees"
-- WHERE DepartmentID = 1
GROUP BY 
	DepartmentID;
/* If we want the Salart from the whole table */
-- SELECT
--	SUM(Salary) AS TotalSalary
--FROM 
--	"Employees";