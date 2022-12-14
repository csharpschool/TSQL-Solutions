USe AdventureWorksLT2019;

-- A --
SELECT	AddressID,
		AddressLine1,
		AddressLine2,
		City,
		PostalCode
FROM SalesLT.Address
WHERE AddressLine2 IS NOT NULL;

-- B --
SELECT	AddressID,
		AddressLine1,
		AddressLine2,
		City,
		PostalCode
FROM SalesLT.Address
WHERE City LIKE '%Key%' and AddressLine2 IS NULL;

-- C --
SELECT	AddressID,
		AddressLine1,
		AddressLine2,
		City,
		PostalCode
FROM SalesLT.Address
WHERE AddressLine2 IS NOT NULL OR City LIKE 'Round%';

-- D --
SELECT	ProductID,
		Name AS Product,
		ListPrice
FROM SalesLT.Product
WHERE ListPrice BETWEEN 100 AND 200 AND Name LIKE 'HL%';

-- E --
SELECT *
FROM SalesLT.Product
WHERE SellStartDate BETWEEN '2005-07-01' AND '2005-07-02' AND 
	  SellEndDate IS NULL;
