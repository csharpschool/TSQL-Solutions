USE AdventureWorksLT2012;

-- ADD a constraint
ALTER TABLE SalesLT.Address
ADD CONSTRAINT DF_AddressLine2_MissingValue DEFAULT 'Missing' FOR AddressLine2;

-- DROP the constraint
ALTER TABLE SalesLT.Address
DROP CONSTRAINT DF_AddressLine2_MissingValue;

-- ADD a date constraint
ALTER TABLE SalesLT.Address
ADD CONSTRAINT DF_Address_ModifiedDate DEFAULT GETDATE() FOR ModifiedDate;

-- DROP the date constraint
ALTER TABLE SalesLT.Address
DROP CONSTRAINT DF_Address_ModifiedDate;
