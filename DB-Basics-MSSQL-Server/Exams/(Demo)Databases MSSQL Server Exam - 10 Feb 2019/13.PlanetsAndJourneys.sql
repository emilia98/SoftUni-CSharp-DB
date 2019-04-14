USE "ColonialJourney";

/*
	Extract from the database all planets’ names and their journeys count. 
	Order the results by journeys count, descending and by planet name ascending. 
*/

SELECT p.Name, Count(j.Id) AS [JourneysCount]
FROM "Planets" AS p

INNER JOIN Spaceports AS sp
ON sp.PlanetId = p.Id

INNER JOIN Journeys AS j
ON j.DestinationSpaceportId = sp.Id

GROUP BY p.Name
ORDER BY JourneysCount DESC, p.Name ASC;

