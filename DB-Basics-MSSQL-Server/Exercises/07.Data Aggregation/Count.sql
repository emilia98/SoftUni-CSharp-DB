USE "SoftUni";

SELECT
	DepartmentID,
	COUNT(*) as TotalRows,
	COUNT(MiddleName) 
FROM 
	"Employees" 
GROUP BY 
	DepartmentID;