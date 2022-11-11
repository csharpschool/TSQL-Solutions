USE AdventureWorksLT2019;

SELECT	pc.ProductCategoryID AS 'CategoryID',
		pc.Name AS 'Category',
		p.Name AS 'Product'
FROM SalesLT.ProductCategory pc
LEFT JOIN SalesLT.Product p ON pc.ProductCategoryID = p.ProductCategoryID
WHERE ProductID IS NULL