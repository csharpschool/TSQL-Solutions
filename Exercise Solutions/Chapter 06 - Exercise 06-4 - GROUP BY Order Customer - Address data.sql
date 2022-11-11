USE AdventureWorksLT2019;

SELECT	soh.SalesOrderNumber,
		COUNT(sod.SalesOrderDetailID) AS 'NoOfOrderRows',
		SUM(sod.LineTotal) AS 'TotalAmount',
		a.City,
		c.FirstName + ' ' + c.LastName AS 'CustomerName'
FROM SalesLT.SalesOrderHeader soh
INNER JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN SalesLT.CustomerAddress ca ON soh.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
INNER JOIN SalesLT.Customer c ON soh.CustomerID = c.CustomerID
WHERE a.CountryRegion NOT IN('United States')
GROUP BY soh.SalesOrderNumber, a.City, c.FirstName, c.LastName