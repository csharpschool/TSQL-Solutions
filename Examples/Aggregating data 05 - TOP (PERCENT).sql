USE AdventureWorksLT2012;

SELECT TOP 1 PERCENT FirstName, LastName
FROM SalesLT.Customer
ORDER BY LastName ASC,
		 FirstName DESC