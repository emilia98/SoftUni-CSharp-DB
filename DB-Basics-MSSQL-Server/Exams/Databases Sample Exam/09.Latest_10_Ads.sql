USE "Ads";

SELECT TOP(10) 
	Title, 
	[Date],
	[as].Status AS [Status]
FROM 
	"Ads" AS a

INNER JOIN 
	"AdStatuses" AS "as"
ON 
	"as".Id = a.StatusId

ORDER BY 
	[Date] DESC;

/*
Title	Date	Status
Lexus SC 430 Gold (2006)	2015-02-19 17:36:00.000	Inactive
2012 Nissan Altima 3.5 SR 2dr Coupe CVT	2015-02-02 22:44:00.000	Waiting Approval
Pharmacy Technician Job (Walgreens)	2015-01-31 12:00:00.000	Rejected
Free porno	2015-01-02 11:33:00.000	Rejected
Free dog	2015-01-01 20:07:33.000	Inactive
Ford Mondeo Zetec 1.8TDCI, 2009	2015-01-01 09:08:38.000	Published
iPad 4 128GB 4G	2014-12-31 05:18:41.000	Published
Job as Housekeeper	2014-12-30 23:43:30.000	Published
Afterschool Bus Driver	2014-12-27 17:11:00.000	Published
iPhone 4S for Sale	2014-12-27 01:56:47.000	Published
*/
