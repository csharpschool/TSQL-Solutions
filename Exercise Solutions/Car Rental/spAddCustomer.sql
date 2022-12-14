USE [Car Rental]
GO
/****** Object:  StoredProcedure [dbo].[spAddCustomer]    Script Date: 2014-12-30 13:44:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAddCustomer]
	@SocialSecurityNumber nvarchar(10),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Customer (SocialSecurityNumber, FirstName, LastName)
	OUTPUT INSERTED.CustomerID -- Selects the desired columns and returns them
	VALUES (@SocialSecurityNumber, @FirstName, @LastName)
END

--exec spAddCustomer '123', 'sed', 'swwe'
