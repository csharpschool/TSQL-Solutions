CREATE PROCEDURE spGetBookingById
	@BookingID int
AS
BEGIN
	SELECT	BookingID,
			VehicleID,
			CustomerID,
			Cost,
			Rented,
			Returned
  FROM vwBookings
  WHERE Cost IS NULL AND Returned IS NULL AND BookingID = @BookingID
END

-- spGetBookingById '7CAFEF13-5C49-475D-BEB5-280F7B0DEEA1'