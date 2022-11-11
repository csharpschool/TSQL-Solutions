USE AdventureWorksLT2019;

SELECT	soh.SalesOrderNumber AS 'OrderNo',
		CONVERT(Date, soh.DueDate) AS 'DueDate',
		CONVERT(Date, soh.OrderDate) AS 'OrderDate',
		soh.TotalDue,
		c.FirstName + ' ' + c.LastName AS 'FullName',
		c.EmailAddress AS 'Email'
FROM SalesLT.SalesOrderHeader soh
INNER JOIN SalesLT.Customer c ON soh.CustomerID = c.CustomerID