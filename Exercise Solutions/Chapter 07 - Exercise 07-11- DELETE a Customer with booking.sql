USE [Car Rental];

-- Verification query --
SELECT *
FROM Customer

-- PART 1 - GENERATES ERROR --
-- Comment Out After Executing --
DELETE Customer
WHERE CustomerID = 1

-- PART 2 - REMOVES BOOKINGS & CUSTOMER --
-- DELETE queries --
DELETE Booking
WHERE CustomerID = 1

DELETE Customer
WHERE CustomerID = 1

-- Verification query --
SELECT *
FROM Customer