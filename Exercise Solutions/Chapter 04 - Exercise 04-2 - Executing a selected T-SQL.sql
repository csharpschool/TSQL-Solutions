USE AdventureWorksLT2019;

SELECT *
FROM SalesLT.Address;

SELECT AddressID,
	   AddressLine1,
       AddressLine2,
       City,
       StateProvince,
       CountryRegion,
       PostalCode,
       rowguid,
       ModifiedDate
  FROM SalesLT.Address;