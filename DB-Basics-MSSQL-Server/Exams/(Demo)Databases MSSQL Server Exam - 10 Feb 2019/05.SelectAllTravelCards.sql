USE "ColonialJourney";

/* Extract from the database, all travel cards. Sort the results by card number ascending. */
SELECT 
	CardNumber, 
	JobDuringJourney
FROM 
	TravelCards
ORDER BY 
	CardNumber ASC;