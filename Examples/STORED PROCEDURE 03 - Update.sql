CREATE PROCEDURE usp_ProductCategory_Update
	@Id int,
	@Name nvarchar(50)
AS
UPDATE SalesLT.ProductCategory
	SET Name = @Name
WHERE ProductCategoryID = @Id;

SELECT ProductCategoryId, Name, ModifiedDate
FROM SalesLT.ProductCategory
WHERE ProductCategoryID = @Id;


-- Call the stored procedure
--EXEC usp_ProductCategory_Update 48, 'Changed categry';
GO