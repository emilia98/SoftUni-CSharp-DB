USE "Ads";

SELECT 
	COUNT(a.Id) AS 'AdsCount', 
	(CASE 
		WHEN t.Name IS NULL THEN '(no town)'
		ELSE t.Name
	END) AS "Town"
FROM 
	"Ads" AS a

LEFT JOIN 
	"Towns" AS t
ON 
	a.TownId = t.Id

GROUP BY 
	t.Name
HAVING 
	COUNT(a.Id) IN (2, 3);

/*
AdsCount	Town
3	(no town)
2	Blagoevgrad
3	Dobrich
2	Shoumen
2	Sofia
2	Stara Zagora
*/
