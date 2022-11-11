USE AdventureWorksLT2012;
GO
CREATE VIEW SalesLT.vwCustomerAddressSmall
AS
SELECT	c.FirstName,
		c.LastName,
		a.AddressLine1,
		a.PostalCode,
		a.City
FROM SalesLT.Customer c
	 INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
	 INNER JOIN SalesLT.[Address] a ON ca.AddressID = a.AddressID
GO

SELECT	FirstName,
		LastName,
		AddressLine1,
		PostalCode,
		City
FROM SalesLT.vwCustomerAddressSmall
GO