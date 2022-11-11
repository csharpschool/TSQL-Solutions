BEGIN TRANSACTION
SELECT FirstName, 
	   LastName
FROM SalesLT.Customer
WHERE CustomerId = 50;

-- User 2 updates the 
-- last name of customer 50
UPDATE SalesLT.Customer
	SET LastName = 'Johnson'
WHERE CustomerId = 50;

-- User 1 reads the same data again but gets dirty data
SELECT FirstName, 
	   LastName
FROM SalesLT.Customer
WHERE CustomerId = 50;