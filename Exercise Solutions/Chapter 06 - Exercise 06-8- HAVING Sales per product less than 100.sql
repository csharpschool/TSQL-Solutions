USE AdventureWorksLT2019;

SELECT p.Name AS 'Product', SUM(sod.LineTotal) AS 'Total'
FROM SalesLT.SalesOrderDetail sod
INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
GROUP BY sod.ProductID, p.Name
HAVING SUM(LineTotal) < 100