USE AdventureWorksLT2019;

SELECT pc.Name AS 'Category', SUM(sod.LineTotal) AS 'Total'
FROM SalesLT.SalesOrderDetail sod
	INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
	INNER JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
