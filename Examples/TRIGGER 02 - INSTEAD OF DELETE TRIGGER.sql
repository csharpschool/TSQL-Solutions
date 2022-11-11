CREATE TRIGGER InsteadOf_Delete_Customer_MarkCustomerAsInactive
ON dbo.Customer
INSTEAD OF DELETE
AS
BEGIN
	SET NOCOUNT ON	-- Turn off the return of the number of affected rows

	UPDATE dbo.Customer
		SET IsActive = 0
	FROM dbo.Customer c
		INNER JOIN deleted d ON c.CustomerId = d.CustomerId;
END

-- Insert a customer andselect it to make sure IsActive is set to 1
/*
	INSERT INTO dbo.Customer (Name)
	VALUES('Jonas');

	SELECT CustomerId,
		Name,
		IsActive
	FROM dbo.Customer
*/

-- DELETE the customer we just added to activate the trigger.
-- The row should still exist after the delete but the 
-- IsActive flag should be set to 0
/*
	DELETE FROM dbo.Customer
	WHERE CustomerId = 1;

	SELECT CustomerId,
		Name,
		IsActive
	FROM dbo.Customer
*/