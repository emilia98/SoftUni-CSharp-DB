/* Problem 9. *Peaks in Rila */

USE "Geography";

SELECT 
	m.MountainRange,
	p.PeakName,
	p.Elevation
FROM 
	"Peaks" AS p
INNER JOIN 
	"Mountains" AS m
ON 
	p.MountainId = m.Id
WHERE 
	p.MountainId = 17
ORDER BY 
	Elevation DESC;