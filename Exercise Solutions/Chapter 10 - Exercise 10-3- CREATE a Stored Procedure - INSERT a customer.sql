CREATE PROCEDURE spAddCustomer
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Customer (SocialSecurityNumber, FirstName, LastName)
	VALUES (@SocialSecurityNumber, @FirstName, @LastName)
END

/*
	-- Add a new customer using the spAddCustomer stored procedure 
	-- and list the customers using the spGetAllCustomers stored procedure
	USE [Car Rental];
	exec spAddCustomer '123456ABCD', 'Agnes', 'Baum';
	exec spGetAllCustomers;
*/