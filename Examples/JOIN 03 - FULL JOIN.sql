USE [My Database];

SELECT	o.OrderID, 
		o.OrderDate, 
		c.CustomerID, 
		c.Name
FROM Customer c
	FULL JOIN [Order] o ON c.CustomerID = o.CustomerID
