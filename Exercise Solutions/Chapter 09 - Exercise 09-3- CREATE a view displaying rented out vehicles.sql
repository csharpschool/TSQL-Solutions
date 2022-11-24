------------------------------------------------
-- The SELECT statement for CREATING the view --
------------------------------------------------
SELECT    dbo.Vehicle.VehicleID, dbo.Vehicle.RegistrationNumber, dbo.Vehicle.BasePricePerKm, dbo.Vehicle.BasePricePerDay, dbo.Vehicle.DayTariff, dbo.Vehicle.KmTariff, dbo.Vehicle.Meter, dbo.Vehicle.VehicleTypeID, dbo.VehicleType.Name AS VehicleType, dbo.Booking.Rented, 
              dbo.Booking.Returned, dbo.Booking.Cost
FROM      dbo.VehicleType INNER JOIN
              dbo.Vehicle ON dbo.VehicleType.VehicleTypeID = dbo.Vehicle.VehicleTypeID LEFT OUTER JOIN
              dbo.Booking ON dbo.Vehicle.VehicleID = dbo.Booking.VehicleID
WHERE    (dbo.Booking.Rented IS NOT NULL) AND (dbo.Booking.Returned IS NULL) AND (dbo.Booking.Cost IS NULL)