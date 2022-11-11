------------------------------------------------
-- The SELECT statement for CREATING the view --
------------------------------------------------
SELECT DISTINCT dbo.Vehicle.VehicleID, dbo.Vehicle.RegistrationNumber, dbo.Vehicle.BasePricePerKm, 
		dbo.Vehicle.BasePricePerDay, dbo.Vehicle.DayTariff, dbo.Vehicle.KmTariff,
		dbo.Vehicle.Meter, dbo.Vehicle.VehicleTypeID, dbo.VehicleType.Name AS VehicleType
FROM dbo.Booking 
	RIGHT OUTER JOIN dbo.Vehicle ON dbo.Booking.VehicleID = dbo.Vehicle.VehicleID
	LEFT OUTER JOIN dbo.VehicleType ON dbo.Vehicle.VehicleTypeID = dbo.VehicleType.VehicleTypeID
WHERE (dbo.Vehicle.VehicleID NOT IN (SELECT VehicleID FROM dbo.vwIsRentedOut))