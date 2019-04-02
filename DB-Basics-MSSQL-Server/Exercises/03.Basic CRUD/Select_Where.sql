USE "SoftUni";

SELECT DISTINCT 
	JobTitle 
FROM 
	Employees 
WHERE 
	DepartmentID = 1;


SELECT DISTINCT 
	JobTitle 
FROM 
	Employees 
WHERE 
	DepartmentID = 1 
ORDER BY 
	JobTitle DESC;