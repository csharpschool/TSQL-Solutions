USE [My Database];

SELECT o.OrderID, o.OrderDate, c.Name,
	   o.CustomerID AS 'O - CustomerId', c.CustomerID AS 'C - CustomerId'
FROM Customer c
INNER JOIN [Order] o ON c.CustomerID = o.CustomerID

SELECT o.OrderID, o.OrderDate, c.Name, 
	   o.CustomerID AS 'O - CustomerId', c.CustomerID AS 'O - CustomerId'
FROM [Order] o
INNER JOIN Customer c ON o.CustomerID = c.CustomerID
