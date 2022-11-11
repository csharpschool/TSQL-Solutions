USE AdventureWorksLT2012;

-- Contains 'Road'
SELECT Name, 
	   ListPrice
FROM SalesLT.Product
WHERE Name LIKE '%Road%';

--Strats with 'MOU'
SELECT	Name, 
	ListPrice
FROM SalesLT.Product
WHERE Name LIKE 'MOU%';

--Ends with 'CAGE'
SELECT	Name, 
	ListPrice
FROM SalesLT.Product
WHERE Name LIKE '%CAGE';

-- One character which can match to any character in the string
SELECT	Name, 
	ListPrice
FROM SalesLT.Product
WHERE Name LIKE 'R_A%';

--Use escape character for special characters
SELECT	Name, 
	ListPrice
FROM SalesLT.Product
WHERE Name LIKE 'Sport \[100\]%' ESCAPE '\';