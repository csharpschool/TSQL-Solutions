USE AdventureWorksLT2019;

SELECT SUM(soh.TotalDue) AS 'Total', pc.Name AS 'Category'
FROM SalesLT.SalesOrderHeader soh
INNER JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
INNER JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
HAVING SUM(soh.TotalDue) < 300000