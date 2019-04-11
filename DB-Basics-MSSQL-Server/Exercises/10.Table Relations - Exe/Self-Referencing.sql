/* Problem 4. Self-Referencing  */

USE "TableRelationsDB";

CREATE TABLE Teachers(
	TeacherID INT IDENTITY(101, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	ManagerID INT
);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('John', NULL);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('Maya', 106);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('Silvia', 106);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('Ted', 105);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('Mark', 101);

INSERT INTO Teachers([Name], ManagerID)
VALUES ('Greta', 101);

ALTER TABLE Teachers
ADD CONSTRAINT FK_Teachers_Teachers FOREIGN KEY(ManagerID) REFERENCES Teachers(TeacherID)
GO
