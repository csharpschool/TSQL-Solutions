USE AdventureWorksLT2012;

-- Add a default date constraint to 
-- the column when the table is created
CREATE TABLE [SalesLT].[ProductModelNew](
	[ProductModelID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT DF_ModifiedDate_CurrentDate DEFAULT GETDATE()
)