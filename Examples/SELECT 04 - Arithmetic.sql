USE AdventureWorksLT2012;

SELECT SalesOrderId AS Id,
	   OrderQty * UnitPrice AS 'Multiplication',
	   UnitPrice - UnitPriceDiscount AS 'Subtraction',
	   LineTotal / UnitPrice AS 'Division',
	   UnitPrice + 100 AS 'Addition',
	   Convert(nvarchar, SalesorderId) + ' - ' + Convert(nvarchar, ProductId) AS 'String concatenation',	-- Conversion required because the values are integers and would be treated as numbers otherwise which would result in a subtraction.
	   LineTotal % 2 AS 'Modulo'
FROM SalesLT.SalesOrderDetail;
