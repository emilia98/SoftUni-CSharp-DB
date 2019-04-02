USE "Geography";

DELETE FROM
	Continents
WHERE
	ContinentCode IN ('PG', 'PT', 'ZT');

SELECT * FROM Continents;