USE AdventureWorksLT2019;

SELECT FirstName, LastName
FROM SalesLT.Customer
ORDER BY LastName ASC, 
         FirstName DESC

-- With DISTINCT --
SELECT DISTINCT FirstName, LastName
FROM SalesLT.Customer
ORDER BY LastName ASC, 
         FirstName DESC
