-----------------------------------------------
-- The SELECT statement for CREATING the vew --
-----------------------------------------------
SELECT	dbo.Booking.BookingID, dbo.Booking.VehicleID, dbo.Booking.CustomerID, dbo.Booking.Rented, 
		dbo.Booking.Returned, dbo.Booking.Cost, dbo.VehicleType.VehicleTypeID, dbo.VehicleType.Name AS Type, 
        dbo.Customer.SocialSecurityNumber, dbo.Customer.FirstName, dbo.Customer.LastName
FROM	dbo.Booking 
		INNER JOIN dbo.Customer ON dbo.Booking.CustomerID = dbo.Customer.CustomerID 
		INNER JOIN dbo.Vehicle ON dbo.Booking.VehicleID = dbo.Vehicle.VehicleID 
		INNER JOIN dbo.VehicleType ON dbo.Vehicle.VehicleTypeID = dbo.VehicleType.VehicleTypeID
WHERE	(dbo.Booking.Returned IS NULL) AND (dbo.Booking.Cost IS NULL)