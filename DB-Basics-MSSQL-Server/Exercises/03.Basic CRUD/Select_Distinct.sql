USE "SoftUni";

SELECT DISTINCT JobTitle FROM Employees ORDER BY JobTitle;

/* Does not return the distincted job titles, 
   because of employeeId
*/

SELECT DISTINCT EmployeeID, JobTitle FROM Employees ORDER BY JobTitle
