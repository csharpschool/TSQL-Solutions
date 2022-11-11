USE[Car Rental]
--exec spAddVehicleType 'Sedan', 100, 0, 1, 1
--exec spAddVehicleType 'Combi', 200, 0.5, 1.3, 1
--exec spAddVehicleType 'Van', 300, 0.5, 1.5, 1.5

--exec spAddVehicle 'GHI123', 0, 100, 1, 1, 10000, 1
--exec spAddVehicle 'ABC123', 0.5, 200, 1.3, 1, 20000, 2
--exec spAddVehicle 'DEF123', 0.5, 300, 1.5, 1.5, 30000, 3

--exec spAddCustomer '12324545', 'Carl', 'Raintree'
--exec spAddCustomer '95654123', 'Lisa', 'Montgomery'
--exec spAddCustomer '98765432', 'Mark', 'Montgomery'
--exec spAddCustomer '87654321', 'Jenny', 'Montgomery'

--DECLARE @Date datetime
--SELECT @Date = GETDATE()
--exec spAddBooking 1, 2, @Date
--exec spAddBooking 2, 2, @Date

/* 
Vehicle Types
Name = "Sedan", BasePricePerDay = 100, BasePricePerKm = 0, DayTariff = 1, KmTariff = 1
Name = "Combi", BasePricePerDay = 200, BasePricePerKm = 0.5, DayTariff = 1.3, KmTariff = 1
Name = "Van", BasePricePerDay = 300, BasePricePerKm = 0.5, DayTariff = 1.5, KmTariff = 1.5

Vehicles
'GHI123', 1, 0, 100, 1, 1, 10000
'ABC123', 2, 0.5, 200, 1.3, 1, 20000
'DEF123', 3, 0.5, 300, 1.5, 1.5, 30000

Customers
'12324545', 'Carl', 'Raintree'
'95654123', 'Lisa', 'Montgomery'
'98765432', 'Mark', 'Montgomery'
'87654321', 'Jenny', 'Montgomery'

Bookings
1, 2, GETDATE(), GETDATE() + 1, 500
2, 2, GETDATE(), NULL, NULL

*/