USE [Car Rental];

-- Check for existing vehicle types --
SELECT *
FROM Customer


-- INSERT the vehicle types --
INSERT INTO Customer
(
	SocialSecurityNumber,
	FirstName,
	LastName
)
VALUES
('12324545', 'Carl', 'Raintree'),
('95654123', 'Lisa', 'Montgomery'),
('98765432', 'Mark', 'Montgomery'),
('87654321', 'Jenny', 'Montgomery')




-- Verify the insert --
SELECT *
FROM Customer
