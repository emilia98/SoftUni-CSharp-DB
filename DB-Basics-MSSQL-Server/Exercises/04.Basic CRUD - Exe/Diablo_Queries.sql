/* Queries for Diablo Database */

USE "Diablo";

/* Problem 25 - All Diablo Characters */
SELECT
	[Name]
FROM 
	"Characters"
ORDER BY 
	[Name] ASC;