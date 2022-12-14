USE [Car Rental];

-- Verification query --
SELECT *
FROM VehicleType


-- UPDATE ALL Query --
UPDATE VehicleType
	SET BasePricePerDay *= 1.5

SELECT *
FROM VehicleType

-- UPDATE Specific vehicle type Query --
UPDATE VehicleType
	SET BasePricePerKm += 1.5,
		DayTariff -= 0.5,
		KmTariff *= 2
WHERE VehicleTypeID = 1
--WHERE Name = 'Sedan'


-- Verification query --
SELECT *
FROM VehicleType