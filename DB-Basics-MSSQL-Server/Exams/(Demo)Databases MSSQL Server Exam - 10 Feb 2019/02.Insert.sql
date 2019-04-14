USE "ColonialJourney";

/* Insert Into Planets */
INSERT INTO Planets ([Name])
VALUES ('Mars');

INSERT INTO Planets ([Name])
VALUES ('Earth');

INSERT INTO Planets ([Name])
VALUES ('Jupiter');

INSERT INTO Planets ([Name])
VALUES ('Saturn');

/* Insert Into SPaceships */
INSERT INTO Spaceships([Name], Manufacturer, LightSpeedRate)
VALUES ('Golf', 'VW', 3);

INSERT INTO Spaceships([Name], Manufacturer, LightSpeedRate)
VALUES ('WakaWaka', 'Wakanda', 4);

INSERT INTO Spaceships([Name], Manufacturer, LightSpeedRate)
VALUES ('Falcon9', 'SpaceX', 1);

INSERT INTO Spaceships([Name], Manufacturer, LightSpeedRate)
VALUES ('Bed', 'Vidolov', 6);
