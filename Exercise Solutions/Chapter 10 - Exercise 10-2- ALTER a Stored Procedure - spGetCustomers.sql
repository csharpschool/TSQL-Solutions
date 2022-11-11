USE [Car Rental]
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCustomers]    Script Date: 2014-12-26 10:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetAllCustomers]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CustomerID,
			SocialSecurityNumber,
			FirstName,
			LastName
	FROM Customer
END

/* 
	-- Execute the stored procedure to return all the customers
	USE [Car Rental];
	exec spGetAllCustomers;
*/