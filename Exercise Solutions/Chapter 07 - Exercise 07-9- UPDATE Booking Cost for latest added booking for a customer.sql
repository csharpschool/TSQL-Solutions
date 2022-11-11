USE [Car Rental];

-- INSERT new bookings --
INSERT INTO Booking
(
	VehicleID,
	CustomerID,
	Rented,
	Returned,
	Cost
)
VALUES
(2, 2, GETDATE() - 3, GETDATE() - 2, 150),
(2, 2, GETDATE() - 4, NULL, NULL)
GO

-- Verification query --
SELECT	c.FirstName,
		c.LastName,
		b.Returned,
		b.Cost
FROM Booking b
INNER JOIN Customer c ON b.CustomerID = c.CustomerID
WHERE c.CustomerID = 2
ORDER BY Returned DESC


-- UPDATE query --
UPDATE Booking
	SET Cost = 1450
FROM Booking b
WHERE BookingID in (SELECT TOP (1) BookingID FROM Booking WHERE Cost IS NOT NULL AND CustomerID = 2 ORDER BY Returned DESC)
GO


-- Verification query --
SELECT	c.FirstName,
		c.LastName,
		b.Returned,
		b.Cost
FROM Booking b
INNER JOIN Customer c ON b.CustomerID = c.CustomerID
WHERE c.CustomerID = 2
ORDER BY Returned DESC