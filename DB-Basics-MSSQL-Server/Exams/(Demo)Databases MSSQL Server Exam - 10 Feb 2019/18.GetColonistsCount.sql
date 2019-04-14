USE "ColonialJourney"
GO

CREATE FUNCTION udf_GetColonistsCount(@PlanetName VARCHAR(30))
RETURNS INT
AS
BEGIN
	DECLARE @colonists INT;
	SELECT @colonists = COUNT(c.Id) 
		FROM Planets as p

		INNER JOIN Spaceports AS sp
		ON sp.PlanetId = p.Id

		INNER JOIN Journeys AS j
		ON j.DestinationSpaceportId = sp.Id

		INNER JOIN TravelCards AS tc
		ON tc.JourneyId = j.Id

		INNER JOIN Colonists AS c
		ON tc.ColonistId = c.Id

		WHERE P.Name = @PlanetName
	RETURN @colonists;
END; 
GO

SELECT dbo.udf_GetColonistsCount('Otroyphus');