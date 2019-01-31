USE "SoftUni";

SELECT
	DepartmentId,
	ManagerId,
	STRING_AGG(Salary, ', ')
FROM 
	"Employees"
GROUP BY 
	ManagerID, DepartmentID;