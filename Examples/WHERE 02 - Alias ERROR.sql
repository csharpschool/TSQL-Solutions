USE AdventureWorksLT2012;

SELECT FirstName AS 'FName',
		LastName AS 'LName'
FROM SalesLT.Customer
WHERE LName = 'Smith';	-- It is not allowed to use alias names in the WHERE clause because it is executed before the SELECT statement