-----------------------------------------------
-- The SELECT statement for CREATING the vew --
-----------------------------------------------
SELECT	dbo.Booking.BookingID, dbo.Vehicle.RegistrationNumber, dbo.VehicleType.Name AS VehicleType, 
		dbo.Customer.FirstName + ' ' + dbo.Customer.LastName AS Customer, dbo.Booking.Cost, 
		dbo.Booking.Rented, dbo.Booking.Returned
FROM	dbo.Booking
		INNER JOIN dbo.Customer ON dbo.Booking.CustomerID = dbo.Customer.CustomerID 
		INNER JOIN dbo.Vehicle ON dbo.Booking.VehicleID = dbo.Vehicle.VehicleID 
		INNER JOIN dbo.VehicleType ON dbo.Vehicle.VehicleTypeID = dbo.VehicleType.VehicleTypeID