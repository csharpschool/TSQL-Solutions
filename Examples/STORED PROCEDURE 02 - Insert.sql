CREATE PROCEDURE usp_ProductCategory_Insert
	@Name nvarchar(50)
AS
INSERT INTO SalesLT.ProductCategory (Name)
VALUES(@Name);

SELECT ProductCategoryId, Name, ModifiedDate
FROM SalesLT.ProductCategory
WHERE ProductCategoryID = SCOPE_IDENTITY();


-- Call the stored procedure
--EXEC usp_ProductCategory_Insert 'My new categry';
GO