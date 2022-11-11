USE AdventureWorksLT2012;

SELECT SalesOrderNumber,
	   SubTotal,
	   OrderDate
FROM SalesLT.SalesOrderHeader
WHERE CustomerID = '30072'