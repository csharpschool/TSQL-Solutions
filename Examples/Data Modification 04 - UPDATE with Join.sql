USE AdventureWorksLT2012;

UPDATE SalesLT.Product
	SET ListPrice = ListPrice * 1.12,
		ModifiedDate = GETDATE()	-- Get current date
FROM SalesLT.Product p
	 JOIN SalesLT.ProductCategory pc on p.ProductCategoryID = pc.ProductCategoryID
	 WHERE pc.Name = 'Brakes'

SELECT TOP 10
      p.[Name],
      p.[ListPrice],
      p.[ModifiedDate],
	  pc.[Name]
FROM SalesLT.Product p
	 JOIN SalesLT.ProductCategory pc on p.ProductCategoryID = pc.ProductCategoryID
 WHERE pc.Name = 'Brakes'
