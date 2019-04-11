/* Problem 5. Online Store Database */

CREATE DATABASE "OnlineStoreDB";
GO

USE "OnlineStoreDB";
GO

CREATE TABLE Cities(
	CityID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL
);

CREATE TABLE Customers(
	CustomerID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL,
	Birthday DATE NOT NULL,
	CityID INT NOT NULL,
	CONSTRAINT FK_Customers_Cities FOREIGN KEY(CityID) REFERENCES Cities(CityID)
);

CREATE TABLE Orders(
	OrderID INT IDENTITY(1, 1) PRIMARY KEY,
	CustomerID INT NOT NULL,
	CONSTRAINT FK_Orders_Customers FOREIGN KEY(CustomerID) REFERENCES Customers
);

CREATE TABLE ItemTypes(
	ItemTypeID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL,
);

CREATE TABLE Items(
	ItemID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL,
	ItemTypeID INT NOT NULL,
	CONSTRAINT FK_Items_ItemTypes FOREIGN KEY(ItemTypeID) REFERENCES ItemTypes(ItemTypeID)
);

CREATE TABLE OrderItems(
	OrderID INT NOT NULL,
	ItemID INT NOT NULL,
	CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID, ItemID),
	CONSTRAINT FK_OrderItems_Orders FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
	CONSTRAINT FK_OrderItems_Items FOREIGN KEY(ItemID) REFERENCES Items(ItemID)
);