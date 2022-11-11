CREATE PROCEDURE spGetAllVehicles
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
END

