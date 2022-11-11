USE AdventureWorksLT2019;

SELECT	CustomerID,
		FirstName,
		LastName,
		ModifiedDate
FROM SalesLT.Customer
WHERE ModifiedDate BETWEEN '2005-11-01' AND '2005-11-30';

-- OR --

SELECT	CustomerID,
		FirstName,
		LastName,
		ModifiedDate
FROM SalesLT.Customer
WHERE ModifiedDate >= '2005-11-01' AND ModifiedDate <= '2005-11-30';