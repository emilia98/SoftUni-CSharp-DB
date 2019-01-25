USE "SoftUni";

SELECT
[FirstName]
,[LastName]
FROM "Employees"
-- WHERE NOT [DepartmentID] = 4;
WHERE [DepartmentID] <> 4;