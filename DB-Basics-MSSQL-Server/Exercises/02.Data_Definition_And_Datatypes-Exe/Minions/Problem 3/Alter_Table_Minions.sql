/*
****** Problem 3 -> Add foreign key to table ******
*/
USE Minions

ALTER TABLE Minions
ADD TownId INT FOREIGN KEY REFERENCES Towns(Id)

/*
SELECT * FROM Minions
*/