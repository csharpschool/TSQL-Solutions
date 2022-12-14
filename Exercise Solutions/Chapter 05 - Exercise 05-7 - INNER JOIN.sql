USE AdventureWorksLT2019;

SELECT	sod.SalesOrderDetailID, 
		sod.OrderQty,
		sod.UnitPrice,
		p.Name AS 'Product',
		p.ProductNumber,
		p.ListPrice
FROM SalesLT.SalesOrderDetail sod
INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID