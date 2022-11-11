USE AdventureWorksLT2012;

SELECT DISTINCT FirstName, LastName
FROM SalesLT.Customer
ORDER BY LastName ASC,
		 FirstName DESC