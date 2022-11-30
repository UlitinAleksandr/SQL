INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES      (30, N'Ivanova I.G.', 12, 9876534687),
			(31, N'Sovest U.A.', 14, 8674323456)

INSERT INTO RouteTicket
			([IdRoute], [IdTicket])
VALUES      (20, 30),
			(21, 31)

INSERT INTO Route_
			([IdRoute], [StartRoute], [FinishRoute], [TotalRoute], [TravelTime], [DateDeparture])
VALUES      (20, N'Moscow', N'Ankara', 2322, 56, 20220222),
			(21, N'Amsterdam', N'Berlin', 323, 6, 20220221)

INSERT INTO Schedule
			([FlightNumber],[SerialNumber], [TravelItinenary], [DateTimeDeparture], [TicketSold], [IdRoute])
VALUES      (10,1, N'Moscow-Ankara', 2022-02-22, 25, 20),
			(11, 2, N'Amsterdam-Berlin', 2022-03-22, 44, 21)

INSERT INTO Vehicle
			([SerialNumber],[Model], [RegistrationNumber], [Life_Time], [YearsOfIssue], [MaxMilleAgeBefore], [SeatList])
VALUES      (1, N'Volvo', 11, 10, 2010, 12000, N'fifty places'),
			(2, N'Mersedes', 12, 5, 2015, 32000, N'eighty places')
		

INSERT INTO Driver
			([IdDriver],[FullName],[SerialNumber], [SerNumPassportDriver])
VALUES      (1, N'Korchma O.G.',1,  5414798657),
			(2, N'Petrov P.P.', 2, 5115797857)

UPDATE Driver
SET FullName = N'Boy U.D.'
WHERE IdDriver = 1

INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES       (45, N'Listok I.L.', 99, 9765489543)

