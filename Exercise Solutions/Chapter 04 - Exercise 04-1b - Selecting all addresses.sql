USE AdventureWorksLT2019;

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