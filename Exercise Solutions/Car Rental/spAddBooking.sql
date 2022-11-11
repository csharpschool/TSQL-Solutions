CREATE PROCEDURE spAddBooking
	@VehicleID int,
    @CustomerID int,
    @Rented datetime
AS
BEGIN
INSERT INTO Booking
    (
		VehicleID,
		CustomerID,
		Rented,
		Returned,
		Cost
	)
	OUTPUT INSERTED.BookingID
    VALUES
    (
		@VehicleID,
		@CustomerID,
		@Rented,
		Default,
		Default
	)
END

-- spAddBooking '03BDCAFA-106A-4217-8372-064935EAD114', '1A239B27-CA88-4EBC-9881-84081D67205A', '2014-10-08 00:00:00.000'