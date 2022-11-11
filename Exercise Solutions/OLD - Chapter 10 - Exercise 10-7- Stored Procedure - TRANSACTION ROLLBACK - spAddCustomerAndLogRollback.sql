ALTER PROCEDURE spAddCustomerAndLog
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	SET XACT_ABORT ON; -- Makes transactions uncommittable if an error occur
	BEGIN TRANSACTION
		-- Insert a customer
		INSERT INTO Customer (SocialSecurityNumber, FirstName, LastName)
		VALUES (@SocialSecurityNumber, @FirstName, @LastName)

		-- Insert a log entry
		INSERT INTO DemoLog (Created, [Message])
		VALUES (GetDate(), 'Customer added by: ' + SYSTEM_USER)

		-- Should raise an error which should roll back the transaction
		DELETE Customer
		WHERE CustomerID = 2

	IF(XACT_STATE() = -1) ROLLBACK TRANSACTION;
	ELSE COMMIT TRANSACTION
END

/*
	USE [Car Rental]
	GO
	spAddCustomerAndLog '159753', 'Sigmund', 'Freud'
*/