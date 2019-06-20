USE "Ads";

SELECT 
	a.Title, 
	t.Name AS "Town"
FROM 
	"Ads" AS a
LEFT JOIN 
	"Towns" AS t
ON 
	a.TownId = t.Id
ORDER BY 
	a.Id ASC;

/*
Title	Town
Just a Joke	NULL
2 bed apartment to let	Ruse
BMW 320 for Sale	Sofia
iPhone 4S for Sale	Dobrich
Job as Housekeeper	Stara Zagora
Ford Mondeo Zetec 1.8TDCI, 2009	Shoumen
Afterschool Bus Driver	Veliko Tarnovo
Nikon D5100 DSLR c/w 18-55mm Lens + Kit	Burgas
iPad 4 128GB 4G	Stara Zagora
Skandika Vancouver 6 Tent	Shoumen
Free cat. Great hunter	Blagoevgrad
Free cat	Dobrich
Free dog	Blagoevgrad
Free MP3 Player	Dobrich
3 bed apartment to let	Pleven
Free porno	NULL
2012 Nissan Altima 3.5 SR 2dr Coupe CVT	Yambol
Lexus SC 430 Gold (2006)	Sofia
Pharmacy Technician Job (Walgreens)	NULL
*/