/* Problem 3. Many-To-Many Relationship */

USE "TableRelationsDB";

CREATE TABLE Students(
	StudentID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
);

CREATE TABLE Exams(
	ExamID INT IDENTITY(101, 1) PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
);

CREATE TABLE StudentsExams(
	StudentID INT NOT NULL,
	ExamID INT NOT NULL, 
	CONSTRAINT PK_StudentsExams 
		PRIMARY KEY(StudentID, ExamID),
	CONSTRAINT FK_StudentsExams_Students 
		FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_StudentsExams_Exams 
		FOREIGN KEY(ExamID) REFERENCES Exams(ExamID)
);

INSERT INTO Students ([Name]) VALUES ('Mila');
INSERT INTO Students ([Name]) VALUES ('Toni');
INSERT INTO Students ([Name]) VALUES ('Ron');

INSERT INTO Exams ([Name]) VALUES ('SpringMVC');
INSERT INTO Exams ([Name]) VALUES ('Neo4j');
INSERT INTO Exams ([Name]) VALUES ('Oracle 11g');

INSERT INTO StudentsExams (StudentID, ExamID) VALUES (1, 101);
INSERT INTO StudentsExams (StudentID, ExamID) VALUES (1, 102);
INSERT INTO StudentsExams (StudentID, ExamID) VALUES (2, 101);
INSERT INTO StudentsExams (StudentID, ExamID) VALUES (3, 103);
INSERT INTO StudentsExams (StudentID, ExamID) VALUES (2, 102);
INSERT INTO StudentsExams (StudentID, ExamID) VALUES (2, 101);