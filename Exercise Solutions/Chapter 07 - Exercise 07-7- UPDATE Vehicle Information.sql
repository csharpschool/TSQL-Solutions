USE [Car Rental];

-- Verification query --
SELECT	RegistrationNumber,
		Meter
FROM Vehicle


-- UPDATE query
UPDATE Vehicle
	SET RegistrationNumber = 'XYZ987',
		Meter = 0
WHERE RegistrationNumber = 'GHI123'


-- Verification query --
SELECT	RegistrationNumber,
		Meter
FROM Vehicle