USE AdventureWorksLT2012;

-- Add a default date constraint to 
-- the column when the table is created
CREATE TABLE [SalesLT].[SalesOrderHeader1](
	[SalesOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	-- Add more columns here
	CONSTRAINT CK_Order_ShipDateIsAfterOrderDateOrShipDateIsNull
		CHECK ([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL)
)