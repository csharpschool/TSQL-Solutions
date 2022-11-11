CREATE PROCEDURE spGetBookings
AS
BEGIN
	SELECT	BookingID,
			VehicleID,
			CustomerID,
			Cost,
			Rented,
			Returned
  FROM [Car Rental].[dbo].[vwBookings]
END

-- spGetBookings