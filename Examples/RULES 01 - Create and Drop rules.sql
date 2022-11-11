USE AdventureWorksLT2012;
GO
-- Create a range rule (must be executed in an empty query window)
/*
	CREATE RULE Range_rule
	AS @ListPrice>= $0 AND @ListPrice <$2000000;
*/

-- Create a list rule (must be executed in an empty query window)
/*
	CREATE RULE list_rule
	AS @list IN ('1389', '0736', '0877')
*/

-- Connect rule to table
EXEC sp_bindrule 'Range_rule', 'SalesLT.Product.ListPrice';

-- Check rules connected to table
SELECT so.name AS [Rule], OBJECT_NAME(sc.object_id) AS [Table], sc.name AS [Column], so.object_id AS [ObjectId], so.create_date AS [Create Date]
FROM sys.objects so
	JOIN sys.columns sc ON so.object_id = sc.rule_object_id
WHERE 
	OBJECT_NAME(sc.object_id) = 'Product' AND -- table name
	sc.name = 'ListPrice' --column name

-- REmove rule from column
EXEC sp_unbindrule 'SalesLT.Product.ListPrice';

--Remove the rule
DROP RULE Range_rule;