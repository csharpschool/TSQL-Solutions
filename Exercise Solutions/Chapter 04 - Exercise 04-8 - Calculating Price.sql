USE AdventureWorksLT2019;

SELECT	SalesOrderID,
		ProductID,
		OrderQty,
		UnitPrice,
		OrderQty * (UnitPrice - UnitPriceDiscount) AS Price
FROM SalesLT.SalesOrderDetail;



