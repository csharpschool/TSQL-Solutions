USE AdventureWorksLT2019;

SELECT SUM(sod.LineTotal) AS 'Total', pc.Name AS 'Category'
FROM SalesLT.SalesOrderDetail sod
	INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
	INNER JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
HAVING SUM(sod.LineTotal) < 300
