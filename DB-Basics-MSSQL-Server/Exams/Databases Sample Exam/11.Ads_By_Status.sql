USE "Ads";

SELECT 
	"as".Status, 
	COUNT("a".StatusId) AS "Count"
FROM 
	"AdStatuses" AS "as"

LEFT JOIN 
	"Ads" AS "a"
ON 
	"as".Id = "a".StatusId

GROUP BY 
	"as".Status;

/*
Status	Count
Inactive	3
Published	11
Rejected	2
Waiting Approval	3
*/
