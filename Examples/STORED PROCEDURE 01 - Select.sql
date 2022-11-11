CREATE PROCEDURE usp_ProductCategory_GetById
	@Id int
AS
SELECT ProductCategoryId, Name, ModifiedDate
FROM SalesLT.ProductCategory
WHERE ProductCategoryID = @Id
GO

-- Call the stored procedure
--EXEC usp_ProductCategory_GetById 1;
--GO