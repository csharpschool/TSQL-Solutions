USE AdventureWorksLT2012;

UPDATE SalesLT.Product
	SET ListPrice = ListPrice * 1.12,
		ModifiedDate = GETDATE()	-- Get current date
WHERE ProductCategoryID = 24		-- => 'Gloves'

SELECT TOP 10
      [Name],
      [ListPrice],
      [ProductCategoryID],
      [ModifiedDate]
FROM [SalesLT].[Product]
WHERE ProductCategoryID = 24	-- => Gloves'