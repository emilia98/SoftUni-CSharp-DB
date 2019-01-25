CREATE VIEW v_EmployeeNameJobTitle
AS
SELECT 
	([FirstName]
	+ ' '
	+ 
	CASE 
		WHEN [MiddleName] IS NULL THEN ''
		ELSE [MiddleName]
    END
	+ ' '
	+ [LastName]) AS [Full Name],
	[JobTitle] AS [Job Title]
FROM "Employees";