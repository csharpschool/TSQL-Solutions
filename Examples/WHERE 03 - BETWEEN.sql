USE AdventureWorksLT2012;
SELECT Name, 
	   ListPrice
FROM SalesLT.Product
WHERE ListPrice BETWEEN 1 AND 1000;

--Will yield the same result as BETWEEN
SELECT Name, 
	   ListPrice
FROM SalesLT.Product
WHERE ListPrice >= 50 AND ListPrice <= 100;

-- OR
SELECT Name, 
	   ListPrice
FROM SalesLT.Product
WHERE (ListPrice >= 50 AND ListPrice <= 100) OR ListPrice > 500;