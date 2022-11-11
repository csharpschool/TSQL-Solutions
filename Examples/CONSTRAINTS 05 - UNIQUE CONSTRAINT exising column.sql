USE AdventureWorksLT2012;

-- Add a UNIQUE CONSTRAINT to the EmailAddress column
CREATE TABLE [SalesLT].[Customer1](
	[CustomerID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [dbo].[Name] NOT NULL,
	[LastName] [dbo].[Name] NOT NULL,
	[EmailAddress] [nvarchar](50) NULL CONSTRAINT AK_Customer_EMailAddress UNIQUE,
	[ModifiedDate] [datetime] NOT NULL
	--Add more columns here
 )
