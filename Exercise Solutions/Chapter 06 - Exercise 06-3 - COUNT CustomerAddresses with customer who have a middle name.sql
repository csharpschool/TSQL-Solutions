USE AdventureWorksLT2019;

SELECT	COUNT(*) AS 'Total',
		COUNT(c.MiddleName) AS 'HasMiddleName'
FROM SalesLT.CustomerAddress ca
INNER JOIN SalesLT.Customer c ON ca.CustomerID = c.CustomerID
WHERE ca.AddressType = 'Shipping'


/*
	Verification query
*/
SELECT	ca.CustomerID,
		ca.AddressID,
		ca.AddressType,
		c.MiddleName
  FROM SalesLT.CustomerAddress ca
  INNER JOIN SalesLT.Customer c ON ca.CustomerID = c.CustomerID
  WHERE ca.AddressType = 'Shipping'
