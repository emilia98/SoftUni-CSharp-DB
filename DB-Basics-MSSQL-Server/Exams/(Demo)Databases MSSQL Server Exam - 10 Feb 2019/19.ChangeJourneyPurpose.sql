USE "ColonialJourney";
GO

CREATE PROCEDURE usp_ChangeJourneyPurpose(@JourneyId INT, @NewPurpose VARCHAR(11))
AS
	DECLARE @FoundJourneyId INT = (SELECT Id FROM "Journeys" WHERE Id = @JourneyId);

	IF(@FoundJourneyId IS NULL)
	BEGIN
		; THROW 51000, 'The journey does not exist!', 1;  
	END

	DECLARE @CurrentPurpose VARCHAR(11) = (SELECT Purpose FROM "Journeys" WHERE Id = @JourneyId);

	IF(@CurrentPurpose = @NewPurpose)
	BEGIN
		; THROW 51000, 'You cannot change the purpose!', 2;  
	END

	UPDATE 
		"Journeys"
	SET 
		Purpose = @NewPurpose
	WHERE 
		Id = @JourneyId
GO

EXEC usp_ChangeJourneyPurpose 1, 'Technical'
SELECT * FROM Journeys
EXEC usp_ChangeJourneyPurpose 2, 'Educational'
EXEC usp_ChangeJourneyPurpose 196, 'Technical'
