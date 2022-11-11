USE AdventureWorksLT2012;

-- User 1 begins a transaction and 
-- updates the last name for customer 50
BEGIN TRANSACTION
UPDATE SalesLT.Customer
	SET LastName = 'Smith'
WHERE CustomerId = 50;

-- User 2 updates the last name for customer 50 
-- before the transaction that User 1 began has finished
UPDATE SalesLT.Customer
	SET LastName = 'Johnson'
WHERE CustomerId = 50;

-- User 1 reads the data within the same transaction 
-- he started earlier. What has happened to the data?
SELECT FirstName,
	   LastName
FROM SalesLT.Customer
WHERE CustomerId = 50;