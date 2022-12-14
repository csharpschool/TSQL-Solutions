CREATE PROCEDURE spReturnVehicle
	@BookingID int,
    @VehicleID int,
    @Returned datetime,
	@Cost decimal(18, 2),
	@Meter decimal(18, 2)
AS
BEGIN
	SET XACT_ABORT ON;	-- Makes the causes the transaction to be in an uncommittable state when an error occurs
	BEGIN TRY
		BEGIN TRANSACTION

			UPDATE Booking
			SET 
				Returned = @Returned,
				Cost = @Cost
			WHERE BookingID = @BookingID

			UPDATE Vehicle
			SET 
				Meter = @Meter
			WHERE VehicleID = @VehicleID

			COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF(XACT_STATE() = -1) ROLLBACK TRANSACTION;
		THROW;
	END CATCH; 
END

-- spReturnVehicle 1, 2, '2014-12-30 00:00:00.000', 1000, 500