USE "SoftUni";

SELECT
	[FirstName]
	,[LastName]
FROM 
	"Employees"
WHERE 
	CHARINDEX('EI', LastName) <> 0;
