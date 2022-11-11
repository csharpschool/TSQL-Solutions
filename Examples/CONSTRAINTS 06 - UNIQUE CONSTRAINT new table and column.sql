USE AdventureWorksLT2012;

-- ADD a constraint to EmailAddress
ALTER TABLE SalesLT.Customer1
ADD CONSTRAINT AK_Customer_EmailAddress UNIQUE (EmailAddress);
	

-- Drop the constraint on EmailAddress
ALTER TABLE SalesLT.Customer1
DROP CONSTRAINT AK_Customer_EmailAddress;
