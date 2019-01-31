USE "SoftUni";

SELECT
	DepartmentId,
	ManagerId,
	SUM(Salary) AS TotalSalary,
	COUNT(EmployeeID) AS EmployeesCount,
	AVG(Salary) AS AvgSalary
FROM 
	"Employees"
GROUP BY 
	ManagerID, DepartmentID;