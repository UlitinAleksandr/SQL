INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES      (30, N'������� �.�.', 12, 9876534687),
			(31, N'������� �.�.', 14, 8674323456)

INSERT INTO RouteTicket
			([IdRoute], [IdTicket])
VALUES      (20, 30),
			(21, 31)

INSERT INTO Route_
			([IdRoute], [StartRoute], [FinishRoute], [TotalRoute], [TravelTime], [DateDeparture])
VALUES      (20, N'������', N'������', 2322, 56, 20220222),
			(21, N'��������', N'�����', 323, 6, 20220221)

INSERT INTO Schedule
			([FlightNumber],[SerialNumber], [TravelItinenary], [DateTimeDeparture], [TicketSold], [IdRoute])
VALUES      (10,1, N'������-������', 2022-02-22, 25, 20),
			(11, 2, N'��������-�����', 2022-03-22, 44, 21)

INSERT INTO Vehicle
			([SerialNumber],[Model], [RegistrationNumber], [Life_Time], [YearsOfIssue], [MaxMilleAgeBefore], [SeatList])
VALUES      (1, N'Volvo', 11, 10, 2010, 12000, N'��������� ����'),
			(2, N'Mersedes', 12, 5, 2015, 32000, N'����������� ����')
		

INSERT INTO Driver
			([IdDriver],[FullName],[SerialNumber], [SerNumPassportDriver])
VALUES      (1, N'������ �.�.',1,  5414798657),
			(2, N'���� �.�.', 2, 5115797857)

UPDATE Driver
SET FullName = N'������ �.�.'
WHERE IdDriver = 1

INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES       (45, N'������� �.�.', 99, 9765489543)

