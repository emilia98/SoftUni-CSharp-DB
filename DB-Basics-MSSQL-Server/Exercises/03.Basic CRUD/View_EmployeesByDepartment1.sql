USE "SoftUni";
GO

CREATE VIEW v_EmployeesByDepartment1 AS
SELECT 
		FirstName + ' ' + LastName AS 'Full Name',
		JobTitle AS 'Job Title',
		Salary
	FROM Employees
    WHERE DepartmentID = 1;
GO

SELECT * FROM 
	v_EmployeesByDepartment1
WHERE 
	Salary < 40000;