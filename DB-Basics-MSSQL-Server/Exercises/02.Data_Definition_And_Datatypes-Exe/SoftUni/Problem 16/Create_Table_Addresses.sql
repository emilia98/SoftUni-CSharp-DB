USE "SoftUni"

CREATE TABLE "Addresses" (
	Id INT PRIMARY KEY IDENTITY(1, 1),
	AddressText NVARCHAR(200) NOT NULL,
	TownId INT FOREIGN KEY REFERENCES Towns(Id)
);