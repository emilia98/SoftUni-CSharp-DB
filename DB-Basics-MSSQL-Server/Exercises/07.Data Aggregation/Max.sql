USE "SoftUni";

SELECT
	DepartmentId,
	ManagerId,
	MAX(Salary) AS MaxSalary
FROM 
	"Employees"
GROUP BY 
	ManagerID, DepartmentID;