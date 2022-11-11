USE AdventureWorksLT2019;

-- With column name
SELECT	SalesOrderID
		ProductID,
		OrderQty,
		UnitPrice,
		OrderQty * UnitPrice AS 'Price'
FROM SalesLT.SalesOrderDetail;