USE "ColonialJourney";

/* 
	Extract from the database, all colonists. 
	Sort the results by first name, them by last name, and finally by id in ascending order.
*/
SELECT 
	Id, 
	(FirstName + ' ' + LastName) AS [Full Name], 
	Ucn
FROM 
	Colonists
ORDER BY 
	FirstName ASC, 
	LastName ASC, 
	Id ASC;