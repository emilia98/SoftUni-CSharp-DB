USE "ColonialJourney";

CREATE TABLE DeletedJourneys(
	Id INT NOT NULL,
	JourneyStart DATETIME NOT NULL,
	JourneyEnd DATETIME NOT NULL,
	Purpose VARCHAR(11),
	DestinationSpaceportId INT NOT NULL,
	SpaceshipId INT NOT NULL
);
GO

CREATE TRIGGER journeyDelete
ON 
	Journeys
AFTER DELETE
AS
	INSERT INTO DeletedJourneys(Id, JourneyStart, JourneyEnd, Purpose, DestinationSpaceportId, SpaceshipId)
	SELECT Id, JourneyStart, JourneyEnd, Purpose, DestinationSpaceportId, SpaceshipId
	FROM Deleted
GO

DELETE FROM TravelCards
WHERE JourneyId =  1

DELETE FROM Journeys
WHERE Id =  1
