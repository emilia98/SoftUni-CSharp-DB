USE "ColonialJourney";

/*
	Extract from the database the less popular job in the longest journey. 
	In other words, the job with less assign colonists.
*/

SELECT TOP(1) 
	res.Id, 
	t.JobDuringJourney AS [Job Name]
FROM 
	(
		SELECT TOP(1) 
			j.Id
		FROM 
			"Journeys" AS j
		ORDER BY 
			(j.JourneyEnd - j.JourneyStart) DESC
	) AS res

INNER JOIN 
	TravelCards AS t
ON 
	res.Id = t.JourneyId
GROUP BY 
	res.Id, 
	t.JobDuringJourney
ORDER BY 
	COUNT(t.JobDuringJourney);