CREATE PROCEDURE spGetVehicleById
	@VehicleId int
AS
BEGIN
	SELECT	VehicleID,
			RegistrationNumber,
			BasePricePerKm,
			BasePricePerDay,
			DayTariff,
			KmTariff,
			Meter,
			VehicleTypeID
	  FROM Vehicle
	  WHERE VehicleId = @VehicleId
END

-- spGetVehicleById 1