USE AdventureWorksLT2012;

-- Add a UNIQUE CONSTRAINT to the EmailAddress column
CREATE TABLE [Customer](
	CustomerId int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[IsActive] [Bit] NOT NULL CONSTRAINT DF_Customer_IsActive DEFAULT(1),
	CONSTRAINT PK_Customer_CustomerId PRIMARY KEY (CustomerId)
 )

 CREATE TABLE [CustomerArchive](
	CustomerId int,
	[OldName] nvarchar(50) NOT NULL,
	[NewName]  nvarchar(50) NOT NULL,
	CONSTRAINT PK_CustomerArchive_CustomerId PRIMARY KEY (CustomerId)
 )