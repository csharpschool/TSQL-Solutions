USE AdventureWorksLT2019;

-- Change some data to get a better exercise result set --
UPDATE SalesLT.Product
	SET ProductCategoryID = NULL
WHERE ProductID BETWEEN 710 AND 712
----------------------------------------------------------

SELECT	p.ProductID,
		p.Name AS Product,
		pc.ProductCategoryID,
		pc.Name AS ProductCategory,
		p.ProductNumber
FROM SalesLT.Product p
RIGHT JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
