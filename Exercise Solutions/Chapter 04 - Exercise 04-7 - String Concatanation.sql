USE AdventureWorksLT2019;

SELECT	CustomerID,
		FirstName + ' ' + MiddleName + ' ' + LastName + ' ' + Suffix AS FullName
FROM [AdventureWorksLT2019].[SalesLT].[Customer];


-- NULL fix
SELECT	CustomerID,
		FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName + ' ' + ISNULL(Suffix, '') AS FullName
FROM [AdventureWorksLT2019].[SalesLT].[Customer];


-- Complete
SELECT	CustomerID,
		FirstName + ' ' + LTRIM(ISNULL(MiddleName, '') + ' ' + RTRIM(LastName + ' ' + ISNULL(Suffix, ''))) AS FullName
FROM [AdventureWorksLT2019].[SalesLT].[Customer];