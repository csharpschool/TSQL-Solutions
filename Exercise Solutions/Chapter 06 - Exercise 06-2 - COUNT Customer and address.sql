USE AdventureWorksLT2019;

SELECT	COUNT(*) AS 'Total', 
		COUNT(c.EmailAddress) AS 'HasEmail',
		COUNT(c.MiddleName) AS 'HasMiddleName',
		COUNT(a.AddressLine2) AS 'HasSecondAddress'
FROM	SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
WHERE a.CountryRegion NOT IN ('United States')


/*
	Verification/comparison data where no row filter (WHERE) has been added
*/
SELECT	COUNT(*) AS 'Total', 
		COUNT(c.EmailAddress) AS 'HasEmail',
		COUNT(c.MiddleName) AS 'HasMiddleName',
		COUNT(a.AddressLine2) AS 'HasSecondAddress'
FROM	SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID


