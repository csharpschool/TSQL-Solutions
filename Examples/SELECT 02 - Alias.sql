-- Connect to the AdvetureWorksLT database
USE AdventureWorksLT2012;

-- Select data from the SalesLT.Customer table

SELECT CustomerId AS Id,
	   FirstName, 
	   LastName
FROM SalesLT.Customer;

SELECT CustomerId AS [Id]
FROM SalesLT.Customer;

SELECT CustomerId AS 'Id'
FROM SalesLT.Customer;
