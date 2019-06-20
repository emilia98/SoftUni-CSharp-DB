USE "Ads";

SELECT 
	t.Name AS "Town Name", 
	"as".Status, 
	COUNT(t.Name) AS "Count"	
FROM 
	"Ads" AS a

INNER JOIN 
	"Towns" AS t
ON 
	a.TownId = t.Id

INNER JOIN 
	"AdStatuses" AS "as"
ON 
	a.StatusId = "as".Id

GROUP BY 
	t.Name, 
	"as".Status
ORDER BY 
	t.Name ASC, 
	"as".Status;

/*
Town Name	Status	Count
Blagoevgrad	Inactive	1
Blagoevgrad	Published	1
Burgas	Published	1
Dobrich	Published	1
Dobrich	Waiting Approval	2
Pleven	Inactive	1
Ruse	Published	1
Shoumen	Published	2
Sofia	Inactive	1
Sofia	Published	1
Stara Zagora	Published	2
Veliko Tarnovo	Published	1
Yambol	Waiting Approval	1
*/