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
	PRINT 'Error number:   ' + CONVERT(nvarchar, ERROR_NUMBER());
	PRINT 'Error line:     ' + CONVERT(nvarchar, ERROR_LINE());
	PRINT 'Error severity: ' + CONVERT(nvarchar, ERROR_SEVERITY());
	PRINT 'Error state:    ' + CONVERT(nvarchar, ERROR_STATE());
END CATCH