------------------------------------------------
-- The SELECT statement for CREATING the view --
------------------------------------------------
SELECT	dbo.Vehicle.VehicleID, dbo.Vehicle.RegistrationNumber, dbo.Vehicle.BasePricePerKm, 
		dbo.Vehicle.BasePricePerDay, dbo.Vehicle.DayTariff, dbo.Vehicle.KmTariff, dbo.Vehicle.Meter, 
		dbo.Vehicle.VehicleTypeID, dbo.VehicleType.Name AS VehicleType
FROM	dbo.Vehicle
		INNER JOIN dbo.VehicleType ON dbo.Vehicle.VehicleTypeID = dbo.VehicleType.VehicleTypeID

