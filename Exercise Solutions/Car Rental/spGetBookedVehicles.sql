CREATE PROCEDURE spGetBookedVehicles
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
	  FROM vwIsRentedOut
END

