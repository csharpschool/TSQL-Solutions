USE AdventureWorksLT2012;

INSERT INTO SalesLT.ProductCategory
		(
			[Name],
			[rowguid],
			[ModifiedDate]
		)
VALUES
	(
		'New Category 3', 
		NEWID(),			-- Create a new GUID
		GETDATE()			-- Get the current date
	),
	(
		'New Category 4', 
		NEWID(),			-- Create a new GUID
		GETDATE()			-- Get the current date
	)

SELECT * FROM SalesLT.ProductCategory WHERE Name IN ('New Category 3', 'New Category 4')