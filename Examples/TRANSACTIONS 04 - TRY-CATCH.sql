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
	PRINT 'An error occured'
END CATCH