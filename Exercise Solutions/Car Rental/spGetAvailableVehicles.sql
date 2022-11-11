CREATE PROCEDURE spGetAvailableVehicles
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
	  FROM vwAvailableVehicles
END

