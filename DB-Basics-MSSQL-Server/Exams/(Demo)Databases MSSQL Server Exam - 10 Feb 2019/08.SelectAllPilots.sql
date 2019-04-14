USE "ColonialJourney";

/*
	Extract from the database all colonists, which have a pilot job. 
	Sort the result by id, ascending. 
*/

SELECT 
	c.Id, 
	(c.FirstName + ' ' +  c.LastName) AS [full_name]
FROM 
	"Colonists" AS c
LEFT JOIN 
	"TravelCards" AS t
ON 
	t.ColonistId = c.Id
WHERE 
	t.JobDuringJourney = 'Pilot'
ORDER BY 
	c.Id ASC;