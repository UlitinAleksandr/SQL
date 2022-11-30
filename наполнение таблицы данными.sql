INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES      (30, N'Крапива О.Е.', 12, 9876534687),
			(31, N'Зависть З.В.', 14, 8674323456)

INSERT INTO RouteTicket
			([IdRoute], [IdTicket])
VALUES      (20, 30),
			(21, 31)

INSERT INTO Route_
			([IdRoute], [StartRoute], [FinishRoute], [TotalRoute], [TravelTime], [DateDeparture])
VALUES      (20, N'Москва', N'Анкара', 2322, 56, 20220222),
			(21, N'Запойное', N'Пышма', 323, 6, 20220221)

INSERT INTO Schedule
			([FlightNumber],[SerialNumber], [TravelItinenary], [DateTimeDeparture], [TicketSold], [IdRoute])
VALUES      (10,1, N'Москва-Анкара', 2022-02-22, 25, 20),
			(11, 2, N'Запойное-Пышма', 2022-03-22, 44, 21)

INSERT INTO Vehicle
			([SerialNumber],[Model], [RegistrationNumber], [Life_Time], [YearsOfIssue], [MaxMilleAgeBefore], [SeatList])
VALUES      (1, N'Volvo', 11, 10, 2010, 12000, N'пятьдесят мест'),
			(2, N'Mersedes', 12, 5, 2015, 32000, N'восемьдесят мест')
		

INSERT INTO Driver
			([IdDriver],[FullName],[SerialNumber], [SerNumPassportDriver])
VALUES      (1, N'Иванов О.Е.',1,  5414798657),
			(2, N'Конь И.Ф.', 2, 5115797857)

UPDATE Driver
SET FullName = N'Лопата И.В.'
WHERE IdDriver = 1

INSERT INTO Ticket
			([IdTicket], [FullNamePassenger], [PlacePassenger], [SerNumPassportPass_ger])
VALUES       (45, N'Оболонь И.Г.', 99, 9765489543)

