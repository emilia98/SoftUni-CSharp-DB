USE "SoftUni";

SELECT
	[FirstName]
FROM 
	"Employees"
WHERE
	([DepartmentID] IN (3, 10)) AND 
	( CAST((FORMAT([HireDate], 'yyyy')) AS INT) BETWEEN 1995 AND 2005);