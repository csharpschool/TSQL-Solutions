CREATE PROCEDURE spGetAllCustomers
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	SocialSecurityNumber,
			FirstName,
			LastName,
			CustomerID
	FROM Customer
END

/* 
	-- Execute the stored procedure to return all the customers
	USE [Car Rental];
	exec spGetAllCustomers;
*/