USE "ColonialJourney";

/*
	Find all planets and all of their spaceports. 
	Select planet name and the count of the spaceports. 
	Sort them by spaceports count (descending), then by name (ascending). 
*/

SELECT
	 p.Name, COUNT(sp.Id)
FROM 
	Planets AS p
LEFT JOIN 
	Spaceports AS sp
ON 
	p.Id = sp.PlanetId
GROUP BY 
	p.Name
ORDER BY 
	COUNT(sp.Id) DESC, 
	p.Name ASC;