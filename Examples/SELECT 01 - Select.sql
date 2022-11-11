-- Connect to the AdvetureWorksLT database
USE AdventureWorksLT2012;

-- Select data from the SalesLT.Customer table
SELECT CustomerId,FirstName, LastName
FROM SalesLT.Customer;

SELECT CustomerId,
	   FirstName, 
	   LastName
FROM SalesLT.Customer;

SELECT CustomerId
	  ,FirstName
	  , LastName
FROM SalesLT.Customer;
