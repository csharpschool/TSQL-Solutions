ALTER PROCEDURE spAddCustomerAndLogTryCatch
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	SET XACT_ABORT ON;	-- Makes the causes the transaction to be in an uncommittable state when an error occurs
	BEGIN TRY
		BEGIN TRANSACTION
			exec spAddCustomer @SocialSecurityNumber, @FirstName, @LastName;

			INSERT INTO DemoLog (Created, [Message])
			VALUES (GetDate(), 'Customer added by: ' + SYSTEM_USER)

			-- COMMENT OUT AND ALTER THE PROCEDURE TO TRY A FUNCTIONING TRANSACTION
			-- Should raise an error which should roll back the transaction
			--DELETE Customer
			--WHERE CustomerID = 2

			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF(XACT_STATE() = -1) ROLLBACK TRANSACTION;
		THROW; -- Re-throws the exception to the client
	END CATCH; 
END

/*
	USE [Car Rental]
	GO
	spAddCustomerAndLogTryCatch '123456', 'Carl', 'Jung'
	exec spGetAllCustomers;
*/