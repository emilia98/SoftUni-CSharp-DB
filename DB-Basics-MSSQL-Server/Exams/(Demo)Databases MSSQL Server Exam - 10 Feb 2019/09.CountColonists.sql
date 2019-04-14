USE "ColonialJourney";

/*
	Count all colonists that are on technical journey.  
*/

SELECT 
	COUNT(tc.Id) AS [Count]
FROM 
	"Journeys" AS j
LEFT JOIN 
	"TravelCards" AS tc
ON 
	tc.JourneyId = j.Id
WHERE 
	j.Purpose = 'Technical';