USE "SoftUni";

SELECT
	ManagerID,
   SUM(Salary) AS TotalSalary
FROM 
	"Employees"
-- WHERE DepartmentID = 1
GROUP BY 
	ManagerID;