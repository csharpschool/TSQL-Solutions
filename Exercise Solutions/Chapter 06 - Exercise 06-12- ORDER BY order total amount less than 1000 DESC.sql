USE AdventureWorksLT2019;

SELECT	SalesOrderNumber,
		TotalDue
FROM SalesLT.SalesOrderHeader
WHERE TotalDue < 1000
ORDER BY TotalDue DESC;