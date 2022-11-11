CREATE PROCEDURE spDeleteCustomer
	@CustomerID int
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Customer
	WHERE CustomerID = @CustomerID
END

/*
	USE [Car Rental];
	exec spDeleteCustomer 3
	exec spGetAllCustomers;
*/