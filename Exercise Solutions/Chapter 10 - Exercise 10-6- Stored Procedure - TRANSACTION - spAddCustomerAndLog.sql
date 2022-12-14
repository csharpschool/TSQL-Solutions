CREATE PROCEDURE spAddCustomerAndLog
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	BEGIN TRANSACTION
		-- Insert a customer
		INSERT INTO Customer (SocialSecurityNumber, FirstName, LastName)
		VALUES (@SocialSecurityNumber, @FirstName, @LastName)

		-- Insert a log entry
		INSERT INTO DemoLog (Created, [Message])
		VALUES (GetDate(), 'Customer added by: ' + SYSTEM_USER)

		IF(@@ERROR > 0) ROLLBACK TRANSACTION
		ELSE COMMIT TRANSACTION
END

/*
	USE [Car Rental]
	GO
	spAddCustomerAndLog '159753', 'Carl', 'Carlson'
	exec spGetAllCustomers;
	SELECT * FROM DemoLog
*/

