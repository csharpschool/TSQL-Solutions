USE [My Database];

SELECT	o.OrderID, 
		o.OrderDate, 
		c.CustomerID, 
		c. Name
FROM Customer c
	CROSS JOIN [Order] o
