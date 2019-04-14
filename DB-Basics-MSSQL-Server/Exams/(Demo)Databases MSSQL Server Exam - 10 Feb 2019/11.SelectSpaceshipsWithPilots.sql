USE "ColonialJourney";

/*
	Extract from the database those spaceships, which have pilots, younger than 30 years old. 
	In other words, 30 years from 01/01/2019. 
	Sort the results alphabetically by spaceship name. 
*/
SELECT
ss.Name,
ss.Manufacturer

FROM (
SELECT *
FROM "Colonists" AS c
	WHERE DATEDIFF(YEAR, BirthDate, '01/01/2019') < 30
) AS res

INNER JOIN "TravelCards" AS tc
ON tc.ColonistId = res.Id

INNER JOIN "Journeys" AS j
ON j.Id = tc.JourneyId

INNER JOIN "Spaceships" AS ss
ON ss.Id = j.SpaceshipId

WHERE tc.JobDuringJourney = 'Pilot'
ORDER BY ss.Name ASC;