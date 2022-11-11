USE AdventureWorksLT2019;

SELECT	SUM(soh.TotalDue) AS 'TotalAmount',
		a.StateProvince
FROM SalesLT.SalesOrderHeader soh
INNER JOIN SalesLT.CustomerAddress ca ON soh.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
GROUP BY a.StateProvince