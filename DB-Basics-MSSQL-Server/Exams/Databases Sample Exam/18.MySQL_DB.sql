CREATE DATABASE "orders";

USE "orders";

CREATE TABLE "products" (
	Id INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	Price DECIMAL(17, 2) NOT NULL
);

CREATE TABLE "customers" (
	Id INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
);

CREATE TABLE "orders" (
	Id INT NOT NULL PRIMARY KEY,
	[Date] DATETIME NOT NULL
);

CREATE TABLE "order_items" (
	Id INT NOT NULL PRIMARY KEY,
	OrderId INT NOT NULL,
	ProductId INT NOT NULL,
	Quantity DECIMAL(17, 2) NOT NULL,
	CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderId) REFERENCES orders(Id),
	CONSTRAINT FK_OrderItems_Products FOREIGN KEY (ProductId) REFERENCES products(Id)
);

INSERT INTO products VALUES (1,'beer',1.20), (2,'cheese',9.50), (3,'rakiya',12.40), (4,'salami',6.33), (5,'tomatos',2.50), (6,'cucumbers',1.35), (7,'water',0.85), (8,'apples',0.75);
INSERT INTO customers VALUES (1,'Peter'), (2,'Maria'), (3,'Nakov'), (4,'Vlado');
INSERT INTO orders VALUES (1,'2015-02-13 13:47:04'), (2,'2015-02-14 22:03:44'), (3,'2015-02-18 09:22:01'), (4,'2015-02-11 20:17:18');
INSERT INTO order_items VALUES (12,4,6,2.00), (13,3,2,4.00), (14,3,5,1.50), (15,2,1,6.00), (16,2,3,1.20), (17,1,2,1.00), (18,1,3,1.00), (19,1,4,2.00), (20,1,5,1.00), (21,3,1,4.00), (22,1,1,3.00);


SELECT
	[Name] AS "product_name",
	COUNT(oi.ProductId) AS "num_orders",
	ISNULL(SUM(oi.Quantity), 0) AS "quantity",
	p.Price AS "price",
	ISNULL(SUM(p.Price * oi.Quantity), 0) AS "total_price"
FROM 
	"products" AS p

LEFT JOIN "order_items" AS oi
ON p.Id = oi.ProductId

GROUP BY 
	p.Name, p.Price
ORDER BY 
	[Name] ASC;


/* 
product_name,num_orders,quantity,price,total_price
apples,0,0.00,0.75,0.0000
beer,3,13.00,1.20,15.6000
cheese,2,5.00,9.50,47.5000
cucumbers,1,2.00,1.35,2.7000
rakiya,2,2.20,12.40,27.2800
salami,1,2.00,6.33,12.6600
tomatos,2,2.50,2.50,6.2500
water,0,0.00,0.85,0.0000
*/