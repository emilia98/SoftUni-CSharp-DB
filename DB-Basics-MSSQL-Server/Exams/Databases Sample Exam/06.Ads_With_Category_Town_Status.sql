USE "Ads";

SELECT
	a.Title,
	c.Name AS "CategoryName",
	t.Name AS "TownName",
	"as".Status
FROM 
	"Ads" AS a

LEFT JOIN 
	"Categories" AS c
ON 
	a.CategoryId = c.Id

LEFT JOIN 
	"Towns" AS t
ON 
	a.TownId = t.Id

LEFT JOIN 
	"AdStatuses" AS "as"
ON 
	a.StatusId = "as".Id

ORDER BY 
	a.Id ASC;

/*
Title	CategoryName	TownName	Status
Just a Joke	NULL	NULL	Published
2 bed apartment to let	Properties	Ruse	Published
BMW 320 for Sale	Cars	Sofia	Published
iPhone 4S for Sale	Phones	Dobrich	Published
Job as Housekeeper	Jobs	Stara Zagora	Published
Ford Mondeo Zetec 1.8TDCI, 2009	Cars	Shoumen	Published
Afterschool Bus Driver	Jobs	Veliko Tarnovo	Published
Nikon D5100 DSLR c/w 18-55mm Lens + Kit	Electronics	Burgas	Published
iPad 4 128GB 4G	Electronics	Stara Zagora	Published
Skandika Vancouver 6 Tent	Sports	Shoumen	Published
Free cat. Great hunter	Animals	Blagoevgrad	Published
Free cat	Animals	Dobrich	Waiting Approval
Free dog	Animals	Blagoevgrad	Inactive
Free MP3 Player	Electronics	Dobrich	Waiting Approval
3 bed apartment to let	Properties	Pleven	Inactive
Free porno	Education	NULL	Rejected
2012 Nissan Altima 3.5 SR 2dr Coupe CVT	Cars	Yambol	Waiting Approval
Lexus SC 430 Gold (2006)	Cars	Sofia	Inactive
Pharmacy Technician Job (Walgreens)	Jobs	NULL	Rejected
*/