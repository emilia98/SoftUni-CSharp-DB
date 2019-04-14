USE "ColonialJourney";


/*
	Extract from the database the fastest spaceship and its destination spaceport name. 
	In other words, the ship with the highest light speed rate. 
*/
SELECT 
	res.Name AS [SpaceshipName],
	sp.Name AS [SpaceportName]
FROM (
	SELECT TOP(1) *
	FROM "Spaceships"
	ORDER BY LightSpeedRate DESC
) AS res

INNER JOIN 
	"Journeys" AS J
ON 
	j.SpaceshipId = res.Id
INNER JOIN 
	"Spaceports" AS sp
ON 
	sp.Id = j.DestinationSpaceportId
GROUP BY 
	res.Name, 
	sp.Name;