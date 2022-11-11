CREATE TRIGGER After_Update_Customer_ArchiveNameChanges
ON dbo.Customer
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON	-- Turn off the return of the number of affected rows

	INSERT INTO dbo.CustomerArchive(CustomerId, OldName, NewName)
	SELECT i.CustomerId,
		d.Name,
		i.Name
	FROM deleted d
		INNER JOIN inserted i ON d.CustomerId = i.CustomerId
			AND d.Name <> i.Name; -- Ensures that the name has been updated
END

-- Insert a customer andselect it to make sure IsActive is set to 1
/*
	INSERT INTO dbo.Customer (Name)
	VALUES('Carl');

	SELECT CustomerId,
		Name,
		IsActive
	FROM dbo.Customer;

	SELECT CustomerId,
		OldName,
		NewNAme
	FROM dbo.CustomerArchive;
*/

-- Update the name to activate the UPDATE trigger
/*
	UPDATE dbo.Customer 
		SET Name = 'Mark'
	WHERE Name = 'Carl';

	SELECT CustomerId,
		Name,
		IsActive
	FROM dbo.Customer;

	SELECT CustomerId,
		OldName,
		NewNAme
	FROM dbo.CustomerArchive;

*/
