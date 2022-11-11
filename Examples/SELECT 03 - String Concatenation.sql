-- Connect to the AdvetureWorksLT database
USE AdventureWorksLT2012;

-- Select data from the SalesLT.Customer table

SELECT FirstName + ' ' + LastName
FROM SalesLT.Customer;

SELECT FirstName + ' ' + LastName AS 'Name'
FROM SalesLT.Customer;
