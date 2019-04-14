USE "ColonialJourney";

/*
	Extract from the database names of all planets and their spaceports, 
		which have educational missions. 
	Sort the results by spaceport name in descending order. 
*/
SELECT 
	p.Name AS [PlanetName], 
	sp.Name AS [SpaceportName]
FROM 
	"Journeys" AS j
INNER JOIN 
	"Spaceports" AS sp
ON 
	j.DestinationSpaceportId = sp.Id
INNER JOIN 
	"Planets" AS p 
ON 
	p.Id = sp.PlanetId
WHERE 
	j.Purpose = 'Educational'
GROUP BY 
	sp.Name, 
	p.Name
ORDER BY 
	sp.Name DESC;