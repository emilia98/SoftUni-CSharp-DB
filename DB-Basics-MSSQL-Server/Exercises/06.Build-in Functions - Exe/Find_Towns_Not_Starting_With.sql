USE "SoftUni";

SELECT
	[TownID]
	,[Name]
FROM "Towns"
WHERE
	SUBSTRING([NAME], 1, 1) NOT IN ('R', 'B', 'D')
ORDER BY 
	[Name] ASC;