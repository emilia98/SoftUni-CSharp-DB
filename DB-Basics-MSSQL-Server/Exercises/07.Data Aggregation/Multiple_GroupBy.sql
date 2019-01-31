USE "SoftUni";

SELECT
	ManagerID,
	DepartmentID,
    SUM(Salary) AS TotalSalary
FROM 
	"Employees"
WHERE DepartmentID = 1
GROUP BY 
	ManagerID,
	DepartmentID;


	USE "SoftUni";

SELECT
    DepartmentID,
	ManagerID,
    SUM(Salary) AS TotalSalary
FROM 
	"Employees"
GROUP BY 
	DepartmentID,
	ManagerID;

SELECT
    -- DepartmentID,
	ManagerID,
    SUM(Salary) AS TotalSalary
FROM 
	"Employees"
GROUP BY 
	-- DepartmentID,
	ManagerID;