USE "ColonialJourney";

/* Update all spaceships light speed rate with 1 where the Id is between 8 and 12. */
UPDATE Spaceships
SET LightSpeedRate = LightSpeedRate + 1
WHERE (Id >= 8 AND Id <= 12);