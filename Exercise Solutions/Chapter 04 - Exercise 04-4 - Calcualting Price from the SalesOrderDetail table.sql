USE AdventureWorksLT2019;

-- Without column name
SELECT	SalesOrderID
		ProductID,
		OrderQty,
		UnitPrice,
		OrderQty * UnitPrice
FROM SalesLT.SalesOrderDetail;