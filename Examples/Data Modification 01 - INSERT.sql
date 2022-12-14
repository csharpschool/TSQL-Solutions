USE AdventureWorksLT2012;

INSERT INTO SalesLT.ProductCategory
		(
			[ParentProductCategoryID],
			[Name],
			[rowguid],
			[ModifiedDate]
		)
VALUES(
		NULL,				-- We could skip this value as NULL values are allowed in this column
		'New Category 1', 
		NEWID(),			-- Create a new GUID
		GETDATE()			-- Get the current date
	)

 SELECT * FROM SalesLT.ProductCategory Where Name = 'New Category 1'

INSERT INTO SalesLT.ProductCategory
		(
			[Name],
			[rowguid],
			[ModifiedDate]
		)
VALUES(
		'New Category 2', 
		NEWID(),			-- Create a new GUID
		GETDATE()			-- Get the current date
	)

SELECT * FROM SalesLT.ProductCategory Where Name = 'New Category 2'