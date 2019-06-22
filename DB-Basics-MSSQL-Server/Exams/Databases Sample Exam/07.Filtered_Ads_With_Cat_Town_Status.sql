USE "Ads";

SELECT
	a.Title,
	c.Name AS "CategoryName",
	t.Name AS "TownName",
	s.Status
FROM 
	"Ads" AS a

INNER JOIN 
	"Categories" AS c
ON 
	a.CategoryId = c.Id

INNER JOIN 
	"Towns" AS t
ON 
	a.TownId = t.Id

INNER JOIN 
	"AdStatuses" AS s
ON 
	a.StatusId = s.Id

WHERE
	t.Name IN ('Sofia', 'Blagoevgrad', 'Stara Zagora')
	AND
	s.Status = 'Published'

ORDER BY 
	a.Title ASC;

/*
Title	CategoryName	TownName	Status
BMW 320 for Sale	Cars	Sofia	Published
Free cat. Great hunter	Animals	Blagoevgrad	Published
iPad 4 128GB 4G	Electronics	Stara Zagora	Published
Job as Housekeeper	Jobs	Stara Zagora	Published
*/