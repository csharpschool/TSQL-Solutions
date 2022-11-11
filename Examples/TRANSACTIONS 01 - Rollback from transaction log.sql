USE AdventureWorksLT2012;

BEGIN TRANSACTION	-- Starts the transaction

-- Update the last name of all the customers (which is something that we want to reverse)
UPDATE SalesLT.Customer
	SET LastName = 'Wrong name';

SELECT FirstName,
	   LastName
FROM SalesLT.Customer

ROLLBACK TRANSACTION	-- Reverses the changes stored in the transaction log

SELECT FirstName,
	   LastName
FROM SalesLT.Customer
