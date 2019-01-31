USE "SoftUni";

SELECT
	DepartmentId,
	ManagerId,
	MIN(Salary) AS MinSalary
FROM 
	"Employees"
GROUP BY 
	ManagerID, DepartmentID;