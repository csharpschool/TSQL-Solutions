USE AdventureWorksLT2019;

SELECT	ProductID,
		Name,
		Size,
		Weight
FROM SalesLT.Product
--WHERE Size <> NULL AND Weight = NULL; -- Does not work because NULL is unknown
WHERE Size IS NOT NULL AND Weight IS NULL;