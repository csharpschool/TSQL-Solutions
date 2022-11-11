USE DemoDatabase;

-- Asd column
ALTER TABLE [Order]
ADD CustomerId int NOT NULL

-- Change data type
ALTER TABLE [Order]
ALTER COLUMN OrderDate datetime NOT NULL

-- Delete the CustomerId column
ALTER TABLE [Order]
DROP COLUMN CustomerId
