USE AdventureWorksLT2019;

SELECT ProductID, SUM(LineTotal) AS 'Total'
FROM SalesLT.SalesOrderDetail
GROUP BY ProductID
