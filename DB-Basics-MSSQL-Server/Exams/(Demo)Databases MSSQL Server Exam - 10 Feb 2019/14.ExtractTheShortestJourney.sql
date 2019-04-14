USE "ColonialJourney";

/* Extract from the database the shortest journey, its destination spaceport name, planet name and purpose. */
SELECT
sj.Id, 
p.Name AS [PlanetName], 
sp.Name AS [SpaceportName], 
sj.Purpose AS [JourneyPurpose]
FROM (
SELECT TOP(1)
Id, (JourneyEnd - JourneyStart) AS Cont, Purpose, DestinationSpaceportId
FROM "Journeys"
ORDER BY Cont ASC
) as sj
INNER JOIN Spaceports AS sp
ON sp.Id = sj.DestinationSpaceportId
INNER JOIN Planets AS p
ON p.Id = sp.PlanetId
