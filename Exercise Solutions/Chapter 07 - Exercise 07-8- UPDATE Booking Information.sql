USE [Car Rental];

-- Verification query --
SELECT	BookingID,
		Rented,
		Returned,
		Cost
FROM Booking


-- UPDATE query --
UPDATE Booking
	SET Returned = GETDATE(),
		Cost = 450
WHERE BookingID = 2


-- Verification query --
SELECT	BookingID,
		Rented,
		Returned,
		Cost
FROM Booking