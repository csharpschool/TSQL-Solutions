USE [Car Rental];

-- Check for existing vehicle types --
SELECT *
FROM Booking


-- INSERT the bookings --
INSERT INTO Booking
(
	VehicleID,
	CustomerID,
	Rented,
	Returned,
	Cost
)
VALUES
(1, 2, GETDATE() - 3, GETDATE() - 1, 500),
(2, 2, GETDATE(), NULL, NULL)


-- Verify the insert --
SELECT *
FROM Booking
