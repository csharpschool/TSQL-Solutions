CREATE PROCEDURE [dbo].[spGetAllCustomers]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CustomerID,
			SocialSecurityNumber,
			FirstName,
			LastName
	FROM Customer
END

