USE [Car Rental];

-- Check for existing vehicle types --
SELECT *
FROM Vehicle


-- INSERT the vehicle types --
INSERT INTO Vehicle
(
	RegistrationNumber,
	VehicleTypeID,
	BasePricePerKm,
	BasePricePerDay,
	DayTariff,
	KmTariff,
	Meter
)
VALUES
('GHI123', 1, 0, 100, 1, 1, 10000),
('ABC123', 2, 0.5, 200, 1.3, 1, 20000),
('DEF123', 3, 0.5, 300, 1.5, 1.5, 30000)


-- Verify the insert --
SELECT *
FROM Vehicle
