USE [Car Rental];

-- STEP 1 - ADD COLUMN --
-- Alter the table to add a new column --
ALTER TABLE DemoLog
ADD DemoColumn int NOT NULL
GO

-- STEP 2 - ALTER DATATYPE --
-- Alter the table to change the datatype --
ALTER TABLE DemoLog
ALTER COLUMN [Message] nvarchar(MAX) NOT NULL
GO

-- STEP 3 - REMOVE COLUMN --
-- Alter the table to delete a column --
ALTER TABLE DemoLog
DROP COLUMN DemoColumn
GO