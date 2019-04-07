USE "Relations";

CREATE TABLE Mountains (
 Id INT PRIMARY KEY ,
 MountainName VARCHAR(50)
);

CREATE TABLE Peaks(
  Id INT PRIMARY KEY,
  PeakName VARCHAR(50),
  MountainId INT,
  CONSTRAINT FK_Peaks_Mountains
  FOREIGN KEY (MountainId)
  REFERENCES Mountains(Id)
);

