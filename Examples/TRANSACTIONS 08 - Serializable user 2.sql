BEGIN TRANSACTION
UPDATE SalesLT.Customer
	SET LastName = 'Smith'
WHERE CustomerId = 1;

COMMIT TRANSACTION