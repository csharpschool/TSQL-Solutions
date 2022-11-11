USE AdventureWorksLT2019;

SELECT	COUNT(*) AS 'Total', 
		COUNT(Size) AS 'HasSize'
FROM	SalesLT.Product

-- Verification queries --
SELECT *
FROM SalesLT.Product
WHERE Size IS NULL

SELECT *
FROM SalesLT.Product
WHERE Size IS NOT NULL
