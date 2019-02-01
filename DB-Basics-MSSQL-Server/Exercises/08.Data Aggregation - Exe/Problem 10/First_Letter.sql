USE "Gringotts";

SELECT DISTINCT
	SUBSTRING(FirstName, 1, 1) AS FirstLetter
FROM 
	"WizzardDeposits" 
WHERE 
	DepositGroup = 'Troll Chest'
GROUP BY 
	DepositGroup,
	FirstName
ORDER BY 
	FirstLetter ASC;