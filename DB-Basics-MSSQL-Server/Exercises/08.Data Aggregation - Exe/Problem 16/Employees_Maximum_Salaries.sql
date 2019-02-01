USE "SoftUni";

SELECT
	DepartmentID,
	MAX(Salary) AS MaxSalary
FROM 
	"Employees"
GROUP BY
	DepartmentID
HAVING 
	NOT( MAX(Salary) >= 30000 AND MAX(Salary) <= 70000);
--HAVING ( MAX(Salary) < 30000 OR MAX(Salary) > 70000);