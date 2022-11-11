USE [My Database];

-- LEFT JOIN on the Customer table,
-- all rows are fetched from the Customer table.
SELECT	o.OrderID, 
		o.OrderDate, 
		c.CustomerID, 
		c.Name
FROM Customer c
	LEFT JOIN [Order] o ON c.CustomerID = o.CustomerID

SELECT	o.OrderID, 
		o.OrderDate, 
		c.CustomerID, 
		c.Name
FROM Customer c
	RIGHT JOIN [Order] o ON c.CustomerID = o.CustomerID
