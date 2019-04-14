USE "ColonialJourney";

/*
Find all colonists and their job during journey with rank 2. 
Keep in mind that all the selected colonists with rank 2 must be the oldest ones. 
You can use ranking over their job during their journey. 
*/

SELECT 
	res.JobDuringJourney, 
	(res.FirstName + ' ' + res.LastName) AS [FullName], 
	Rank
FROM (
	SELECT  
		c.FirstName,
		c.LastName,
		tc.JobDuringJourney,
		DENSE_RANK() OVER (PARTITION BY tc.JobDuringJourney ORDER BY c.BirthDate ASC) AS Rank
	FROM 
		"Colonists" AS c
	INNER JOIN 
		TravelCards AS tc
	ON 
		tc.ColonistId = c.Id
	) AS res
WHERE 
	Rank = 2;