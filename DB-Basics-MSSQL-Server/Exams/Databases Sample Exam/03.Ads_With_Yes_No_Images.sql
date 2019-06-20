USE "Ads";

SELECT 
	Title, 
	[Date],
	CASE 
		WHEN ImageDataURL IS NULL THEN 'no'
		ELSE 'yes'
	END AS "Has Image"
FROM 
	"Ads"
ORDER BY 
	Id ASC;

/*
Title	Date	Has Image
Just a Joke	2014-12-24 23:53:17.000	no
2 bed apartment to let	2014-12-24 20:21:11.000	no
BMW 320 for Sale	2014-12-26 12:37:50.000	yes
iPhone 4S for Sale	2014-12-27 01:56:47.000	yes
Job as Housekeeper	2014-12-30 23:43:30.000	no
Ford Mondeo Zetec 1.8TDCI, 2009	2015-01-01 09:08:38.000	yes
Afterschool Bus Driver	2014-12-27 17:11:00.000	no
Nikon D5100 DSLR c/w 18-55mm Lens + Kit	2014-12-23 19:04:27.000	yes
iPad 4 128GB 4G	2014-12-31 05:18:41.000	yes
Skandika Vancouver 6 Tent	2014-12-26 11:42:40.000	yes
Free cat. Great hunter	2014-12-24 17:38:58.000	no
Free cat	2014-12-26 05:14:30.000	no
Free dog	2015-01-01 20:07:33.000	no
Free MP3 Player	2014-12-24 05:15:37.000	no
3 bed apartment to let	2014-12-26 17:16:24.000	yes
Free porno	2015-01-02 11:33:00.000	no
2012 Nissan Altima 3.5 SR 2dr Coupe CVT	2015-02-02 22:44:00.000	no
Lexus SC 430 Gold (2006)	2015-02-19 17:36:00.000	yes
Pharmacy Technician Job (Walgreens)	2015-01-31 12:00:00.000	no
*/