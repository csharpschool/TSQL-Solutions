USE AdventureWorksLT2012;

-- Calculated total for LineTotal grouped by ProductId
--SELECT SUM(LineTotal) AS 'Total', ProductID
--FROM SalesLT.SalesOrderDetail
--GROUP BY ProductID

-- Calculated total for LineTotal grouped by product category
SELECT SUM(sod.LineTotal) AS 'Total', pc.Name AS 'Category'
FROM SalesLT.SalesOrderDetail sod
INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
INNER JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
HAVING SUM(sod.LineTotal) < 200
