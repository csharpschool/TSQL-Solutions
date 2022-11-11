USE AdventureWorksLT2019;

SELECT	c.CustomerID, 
		c.FirstName, 
		c.LastName, 
		c.EmailAddress,
		ca.AddressType,
		a.AddressLine1,
		a.City,
		a.PostalCode
FROM SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID