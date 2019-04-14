CREATE DATABASE "ColonialJourney";
GO

USE "ColonialJourney";

CREATE TABLE Planets(
Id INT IDENTITY(1, 1) PRIMARY KEY,
[Name] VARCHAR(30) NOT NULL
);

CREATE TABLE Spaceports(
Id INT IDENTITY(1, 1) PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
PlanetId INT NOT NULL,
CONSTRAINT FK_Spaceports_Planets FOREIGN KEY(PlanetId) REFERENCES Planets(Id)
);

CREATE TABLE Spaceships(
Id INT IDENTITY(1, 1) PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
LightSpeedRate INT DEFAULT 0
);

CREATE TABLE Colonists(
Id INT IDENTITY(1, 1) PRIMARY KEY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Ucn VARCHAR(30) UNIQUE NOT NULL,
BirthDate DATE NOT NULL
);

CREATE TABLE Journeys(
Id INT IDENTITY(1, 1) PRIMARY KEY,
JourneyStart DATETIME NOT NULL,
JourneyEnd DATETIME NOT NULL,
Purpose VARCHAR(11),
DestinationSpaceportId INT NOT NULL,
SpaceshipId INT NOT NULL,
CONSTRAINT Purpose_Value CHECK ( Purpose in ('Medical', 'Technical', 'Educational', 'Military')),
CONSTRAINT FK_Journeys_Spaceports FOREIGN KEY(DestinationSpaceportId) REFERENCES Spaceports(Id),
CONSTRAINT FK_Journeys_Spaceships FOREIGN KEY(SpaceshipId) REFERENCES Spaceships(Id),
);


CREATE TABLE TravelCards(
Id INT IDENTITY(1, 1) PRIMARY KEY,
CardNumber CHAR(10) UNIQUE NOT NULL,
JobDuringJourney VARCHAR(8),
ColonistId INT NOT NULL,
JourneyId INT NOT NULL,
CONSTRAINT FK_TravelCards_Colonists FOREIGN KEY(ColonistId) REFERENCES Colonists(Id),
CONSTRAINT FK_TravelCards_Journeys FOREIGN KEY(JourneyId) REFERENCES Journeys(Id),
CONSTRAINT JobDuringJourney_Value CHECK ( JobDuringJourney in ('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook'))
);