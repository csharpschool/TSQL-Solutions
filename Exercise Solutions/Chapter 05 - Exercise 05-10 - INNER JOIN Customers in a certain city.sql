USE AdventureWorksLT2019;

SELECT	c.CustomerID,
		c.FirstName + ' ' + c.LastName AS 'FullName',
		c.EmailAddress AS 'Email',
		a.AddressLine1 AS 'Street',
		a.City,
		a.PostalCode
FROM SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
WHERE a.City IN ('Richmond', 'Calgary', 'Ottawa', 'London')