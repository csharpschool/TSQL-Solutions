USE AdventureWorksLT2019;

SELECT	CustomerID,
		FirstName,
		LastName,
		EmailAddress
  FROM SalesLT.Customer
  WHERE CustomerID = 10;