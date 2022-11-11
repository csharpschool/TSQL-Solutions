CREATE PROCEDURE spGetVehicleTypes
AS
BEGIN
	SELECT	VehicleTypeID,
			BasePricePerKm,
			BasePricePerDay,
			DayTariff,
			KmTariff,
			Name
	FROM VehicleType
END

-- spGetVehicleTypes