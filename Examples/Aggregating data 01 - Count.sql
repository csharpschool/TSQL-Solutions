USE AdventureWorksLT2012;

SELECT COUNT(*) AS 'Total', 
	   COUNT(MiddleName) AS 'With Middle Name'
FROM SalesLT.Customer
