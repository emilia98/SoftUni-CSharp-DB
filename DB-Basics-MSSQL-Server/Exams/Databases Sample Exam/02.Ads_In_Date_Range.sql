USE "Ads";

SELECT 
	Title, [Date]
FROM 
	"Ads"
WHERE 
	[Date] >='2014/12/26' AND [Date] <= '2015/01/02'
ORDER BY 
	[Date] ASC;

/*
Title	Date
Free cat	2014-12-26 05:14:30.000
Skandika Vancouver 6 Tent	2014-12-26 11:42:40.000
BMW 320 for Sale	2014-12-26 12:37:50.000
3 bed apartment to let	2014-12-26 17:16:24.000
iPhone 4S for Sale	2014-12-27 01:56:47.000
Afterschool Bus Driver	2014-12-27 17:11:00.000
Job as Housekeeper	2014-12-30 23:43:30.000
iPad 4 128GB 4G	2014-12-31 05:18:41.000
Ford Mondeo Zetec 1.8TDCI, 2009	2015-01-01 09:08:38.000
Free dog	2015-01-01 20:07:33.000
*/