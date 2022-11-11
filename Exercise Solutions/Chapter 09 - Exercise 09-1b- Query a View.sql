USE [Car Rental];

SELECT	BookingID, VehicleID, CustomerID, Rented, Returned, Cost, 
		VehicleTypeID, [Type], SocialSecurityNumber, FirstName, LastName
FROM	dbo.vwRentedNotReturned