USE [Car Rental];

-- Check for existing vehicle types --
SELECT *
FROM VehicleType


-- INSERT the vehicle types --
INSERT INTO VehicleType
(
	Name,
	BasePricePerKm,
	BasePricePerDay,
	DayTariff,
	KmTariff
)
VALUES
('Sedan', 0, 100, 1, 1),
('Combi', 0.5, 200, 1.3, 1),
('Van', 0.5, 300, 1.5, 1.5)


-- Verify the insert --
SELECT *
FROM VehicleType
