/* Problem 6. University Database */

CREATE DATABASE "UniversityDB";
GO

USE "UniversityDB";

CREATE TABLE Subjects(
	SubjectID INT IDENTITY(1, 1) PRIMARY KEY,
	SubjectName VARCHAR(100) NOT NULL 
);

CREATE TABLE Majors(
	MajorID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] VARCHAR(100) NOT NULL
);

CREATE TABLE Students(
	StudentID INT IDENTITY(1, 1) PRIMARY KEY,
	StudentName VARCHAR(100) NOT NULL,
	StudentNumber VARCHAR(50) NOT NULL,
	MajorID INT NOT NULL,
	CONSTRAINT FK_StudentsMajors FOREIGN KEY(MajorID) REFERENCES Majors(MajorID)
);

CREATE TABLE Payments(
	PaymentID INT IDENTITY(1, 1) PRIMARY KEY,
	PaymentDate DATE NOT NULL,
	PaymentAmount MONEY NOT NULL,
	StudentID INT NOT NULL,
	CONSTRAINT FK_PaymentsStudents FOREIGN KEY(StudentID) REFERENCES Students(StudentID)
);


CREATE TABLE Agenda(
	StudentID INT NOT NULL,
	SubjectID INT NOT NULL,
	CONSTRAINT PK_StudentsSubjects PRIMARY KEY(StudentID, SubjectID),
	CONSTRAINT FK_AgendaStudents FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_AgendaSubjects FOREIGN KEY(SubjectID) REFERENCES Subjects(SubjectID)
);