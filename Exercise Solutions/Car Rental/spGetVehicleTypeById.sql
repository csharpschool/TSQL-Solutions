CREATE PROCEDURE spGetVehicleTypeById
	@VehiceTypeID int
AS
BEGIN
	SELECT	VehicleTypeID,
			BasePricePerKm,
			BasePricePerDay,
			DayTariff,
			KmTariff,
			Name
	FROM VehicleType
	WHERE VehicleTypeID = @VehiceTypeID
END

-- spGetVehicleTypeById 1