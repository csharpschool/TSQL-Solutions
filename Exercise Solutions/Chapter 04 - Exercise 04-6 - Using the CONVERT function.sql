USE AdventureWorksLT2019;

SELECT	SalesOrderID,
		ProductID,
		OrderQty,
		UnitPrice,
		CONVERT(nvarchar, UnitPriceDiscount * 100) + '%' AS  Discount,
		LineTotal
  FROM SalesLT.SalesOrderDetail;



