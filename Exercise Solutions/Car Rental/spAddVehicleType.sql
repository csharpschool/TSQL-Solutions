USE [Car Rental]
GO
/****** Object:  StoredProcedure [dbo].[spAddVehicle]    Script Date: 2015-09-01 08:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAddVehicleType]
           @Name nvarchar(50),
           @BasePricePerDay decimal(18,2),
           @BasePricePerKm decimal(18,2),
           @DayTariff decimal(18,2),
           @KmTariff decimal(18,2)
AS
BEGIN
INSERT INTO VehicleType
    (
		Name,
		BasePricePerKm,
		BasePricePerDay,
		DayTariff,
		KmTariff
	)
	OUTPUT INSERTED.VehicleTypeID
	VALUES
    (
		@Name,
		@BasePricePerKm,
		@BasePricePerDay,
		@DayTariff,
		@KmTariff
	)
END

-- exec spAddVehicleType 'asdfgh', 1, 2, 3, 4, 5, 1
