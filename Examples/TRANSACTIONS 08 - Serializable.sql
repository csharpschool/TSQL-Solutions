BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL
	SERIALIZABLE;

SELECT FirstName,
	   LastName
FROM SalesLT.Customer
WHERE LastName = 'Smith';

-- Will be executed after COMMIT
-- in the right window
ROLLBACK TRANSACTION
SELECT FirstName,
	   LastName
FROM SalesLT.Customer
WHERE LastName = 'Smith';

