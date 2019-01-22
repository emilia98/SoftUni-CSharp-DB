/*
****** Problem 18 -> Insert employees *******
*/
USE "SoftUni";

INSERT INTO "Employees" 
(
  "FirstName",
  "MiddleName",
  "LastName",
  "JobTitle",
  "DepartmentId",
  "HireDate",
  "Salary",
  "AddressId"
) VALUES 
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500, NULL),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000, NULL),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25, NULL),
('Georgi', 'Teziev', 'Ivanov', 'CEO', 2, '2007-09-12', 3000, NULL),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88, NULL);

SELECT * FROM "Employees";