USE "Geography";
GO

CREATE VIEW v_HighestPeak_2
AS
SELECT TOP(1)
	* 
FROM
	Peaks
ORDER BY 
	Elevation DESC;