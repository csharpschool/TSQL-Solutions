USE AdventureWorksLT2019;

SELECT	CustomerID,
		FirstName,
		LastName,
		ModifiedDate
FROM SalesLT.Customer
WHERE LastName LIKE '%mm%' AND (FirstName LIKE 'K%' OR FirstName LIKE '%Y');