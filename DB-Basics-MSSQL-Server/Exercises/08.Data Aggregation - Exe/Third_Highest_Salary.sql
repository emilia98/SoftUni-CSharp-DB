USE "SoftUni";

SELECT
	e.DepartmentID
	, (
		SELECT DISTINCT Salary 
		FROM "Employees" as i
		WHERE e.DepartmentID = i.DepartmentID
		ORDER BY Salary DESC
		OFFSET 2 ROWS
		FETCH FIRST 1 ROWS ONLY 
	) AS ThirdHighestSalary
FROM
	"Employees" AS e
WHERE (
		SELECT DISTINCT Salary 
		FROM "Employees" as i
		WHERE e.DepartmentID = i.DepartmentID
		ORDER BY Salary DESC
		OFFSET 2 ROWS
		FETCH FIRST 1 ROWS ONLY 
	) IS NOT NULL
GROUP BY 
	e.DepartmentID;
