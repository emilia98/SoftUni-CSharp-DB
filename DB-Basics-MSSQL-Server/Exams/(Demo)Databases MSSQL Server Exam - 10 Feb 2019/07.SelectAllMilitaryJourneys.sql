USE "ColonialJourney";

/* 
	Extract from the database, all Military journeys. 
	Sort the results ascending by journey start.
*/
SELECT 
	Id,
	FORMAT(JourneyStart, 'dd/MM/yyyy') AS [JourneyStart],
	FORMAT(JourneyEnd, 'dd/MM/yyyy') AS [JourneyEnd]
FROM 
	Journeys
WHERE 
	Purpose = 'Military'
ORDER BY 
	JourneyStart ASC;