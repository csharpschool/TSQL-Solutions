CREATE PROCEDURE spAddVehicle
           @RegistrationNumber nvarchar(10),
           @BasePricePerKm decimal(18,2),
           @BasePricePerDay decimal(18,2),
           @DayTariff decimal(18,2),
           @KmTariff decimal(18,2),
           @Meter decimal(18,2),
           @VehicleTypeID int
AS
BEGIN
INSERT INTO Vehicle
    (
		RegistrationNumber,
		BasePricePerKm,
		BasePricePerDay,
		DayTariff,
		KmTariff,
		Meter,
		VehicleTypeID
	)
	OUTPUT INSERTED.VehicleID
	VALUES
    (
		@RegistrationNumber,
		@BasePricePerKm,
		@BasePricePerDay,
		@DayTariff,
		@KmTariff,
		@Meter,
		@VehicleTypeID
	)
END

-- exec spAddVehicle 'asdfgh', 1, 2, 3, 4, 5, 1
