USE "SoftUni";

SELECT * FROM (
	SELECT 
		FirstName + ' ' + LastName AS 'Full Name',
		JobTitle AS 'Job Title',
		Salary
	FROM Employees
    WHERE DepartmentID = 1
)
AS 
	c 
WHERE 
	Salary < 40000;