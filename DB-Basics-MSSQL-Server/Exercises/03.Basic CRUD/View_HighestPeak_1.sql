USE "Geography";
GO

CREATE VIEW v_HighestPeak
AS
SELECT
	* 
FROM
	Peaks
WHERE 
	Elevation 
		= (SELECT MAX(Elevation) FROM Peaks);