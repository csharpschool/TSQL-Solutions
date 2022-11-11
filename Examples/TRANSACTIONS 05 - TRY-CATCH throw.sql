BEGIN TRY
	BEGIN TRANSACTION

	--Update a product
	UPDATE SalesLT.Product
		SET Name = 'New name'
	WHERE ProductID = 680;

	--Delete a product category in use
	DELETE FROM SalesLT.ProductCategory
	WHERE ProductCategoryID = 18;

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	-- Error handling goes here
	ROLLBACK TRANSACTION
	PRINT 'Error Message:  ' + ERROR_MESSAGE();
	THROW;	-- Throws the error up to the client
	-- THROW 50000, 'The error message', 1;
END CATCH
