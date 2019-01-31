USE "SoftUni";

SELECT
	DepartmentId,
	ManagerId,
	MAX(Salary) AS MaxSalary,
	MIN(Salary) AS MinSalary,
	MAX(Salary) - MIN(Salary) AS Diff,
	COUNT(EmployeeID) AS EmployeesCount
FROM 
	"Employees"
GROUP BY 
	ManagerID, DepartmentID;