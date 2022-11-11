USE AdventureWorksLT2012;

DELETE FROM SalesLT.ProductCategory
WHERE ProductCategoryID IN (44, 45)

SELECT *
FROM [AdventureWorksLT2012].[SalesLT].[ProductCategory]
WHERE ProductCategoryID IN (44, 45)