USE [Car Rental];

-- Verification query --
SELECT *
FROM Customer


-- UPDATE ALL Query --
UPDATE Customer
	SET LastName = 'Smith'
WHERE LastName = 'Montgomery'


-- Verification query --
SELECT *
FROM Customer