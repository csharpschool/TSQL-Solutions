USE AdventureWorksLT2012;

-- ADD a constraint to ShipDate
ALTER TABLE SalesLT.SalesOrderHeader
ADD CONSTRAINT CK_Order_ShipDateIsAfterOrderDateOrShipDateIsNull
	CHECK ([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL)

-- Drop the constraint on ShipDate
ALTER TABLE SalesLT.SalesOrderHeader
DROP CONSTRAINT CK_Order_ShipDateIsAfterOrderDateOrShipDateIsNull;
