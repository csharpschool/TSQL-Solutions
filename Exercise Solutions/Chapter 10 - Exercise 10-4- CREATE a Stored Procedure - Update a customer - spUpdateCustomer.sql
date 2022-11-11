CREATE PROCEDURE spUpdateCustomer
	@CustomerID uniqueidentifier,
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Customer
	SET SocialSecurityNumber = @SocialSecurityNumber,
	    FirstName = @FirstName,
		LastName = @LastName,
		CustomerID = @CustomerID
	WHERE CustomerID = @CustomerID
END

/*
	USE [Car Rental];
	exec spUpdateCustomer 3, '98765432', 'John', 'Smith'
	exec spGetAllCustomers;
*/