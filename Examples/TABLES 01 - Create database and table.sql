CREATE DATABASE DemoDatabase;
GO
USE DemoDatabase;
GO
CREATE TABLE [Order]
(
	OrderId int NOT NULL,
	OrderDate Date NOT NULL,
	ShipDate Date NULL
);

GO

SELECT *
FROM [Order]; 