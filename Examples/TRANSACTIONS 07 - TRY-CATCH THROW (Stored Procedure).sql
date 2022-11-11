CREATE PROCEDURE [dbo].[usp_Test_THROW]
	@ProductId int,
	@ProductName nvarchar(50),
	@ProductCategoryId int
AS
BEGIN TRY
	BEGIN TRANSACTION

	--Update a product
	UPDATE SalesLT.Product
		SET Name = @ProductName
	WHERE ProductID = @ProductId;

	--Delete a product category in use
	DELETE FROM SalesLT.ProductCategory
	WHERE ProductCategoryID = @ProductCategoryId;

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	-- Error handling goes here
	ROLLBACK TRANSACTION
	PRINT 'Error Message:  ' + ERROR_MESSAGE();
	THROW;	-- Throws the error up to the client
	-- THROW 50000, 'The error message', 1;
END CATCH

-- EXEC usp_Test_THROW 680, 'New Name', 18