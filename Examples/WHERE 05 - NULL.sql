USE AdventureWorksLT2012;

SELECT FirstName,
	   LastName,
	   MiddleName
FROM SalesLT.Customer
WHERE MiddleName = NULL;

SELECT FirstName,
	   LastName,
	   MiddleName
FROM SalesLT.Customer
WHERE MiddleName IS NULL;

SELECT FirstName,
	   LastName,
	   MiddleName
FROM SalesLT.Customer
WHERE MiddleName IS NOT NULL;