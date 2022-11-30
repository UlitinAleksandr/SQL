Drop Table IF exists dbo.Driver
Drop Table IF exists dbo.Vehicle
Drop Table IF exists dbo.Schedule
Drop Table IF exists dbo.Route_
Drop Table IF exists dbo.Ticket
Drop Table IF exists dbo.RouteTicket

CREATE TABLE dbo.Driver
			(IdDriver INT NOT NULL,
			FullName NVARCHAR(30) NULL,
			SerialNumber INT NOT NULL,
			SerNumPassportDriver BIGINT NOT NULL,
			CONSTRAINT Driver_primary_key PRIMARY KEY(IdDriver ASC))

CREATE TABLE dbo.Vehicle
			(SerialNumber INT NOT NULL,
			Model NVARCHAR(15) NOT NULL,
			RegistrationNumber INT NOT NULL,
			Life_Time INT NOT NULL,
			YearsOfIssue INT NOT NULL,
			MaxMilleAgeBefore INT NOT NULL,
			SeatList NVARCHAR(255) NOT NULL,
			CONSTRAINT Vehicle_primary_key PRIMARY KEY(SerialNumber ASC))

CREATE TABLE dbo.Schedule
			(FlightNumber INT NOT NULL ,
			SerialNumber INT NOT NULL,
			TravelItinenary NVARCHAR(30) NOT NULL,
			DateTimeDeparture DATETIME NOT NULL,
			TicketSold INT NULL,
			IdRoute INT NULL,
			CONSTRAINT Schedule_primary_key PRIMARY KEY(FlightNumber ASC))

CREATE TABLE dbo.Route_
			(IdRoute INT NOT NULL,
			StartRoute NVARCHAR(10) NOT NULL,
			FinishRoute NVARCHAR(10) NOT NULL,
			TotalRoute INT NOT NULL,
			TravelTime INT NOT NULL,
			DateDeparture INT NOT NULL,
			CONSTRAINT Route_primary_key PRIMARY KEY(IdRoute ASC))

CREATE TABLE dbo.RouteTicket
			(IdRoute INT UNIQUE NOT NULL,
			IdTicket INT UNIQUE NOT NULL)

CREATE TABLE dbo.Ticket
			(IdTicket INT NOT NULL,
			FullNamePassenger NVARCHAR(30) NOT NULL,
			PlacePassenger INT NOT NULL,
			SerNumPassportPass_ger BIGINT NOT NULL,
			CONSTRAINT Ticket_primary_key PRIMARY KEY(IdTicket ASC))

ALTER TABLE dbo.Driver ADD CONSTRAINT AK_Driver UNIQUE (SerNumPassportDriver)
ALTER TABLE dbo.Route_ ADD CONSTRAINT AK_Route_ UNIQUE (StartRoute, FinishRoute, DateDeparture)
ALTER TABLE dbo.Ticket ADD CONSTRAINT AK_Ticket UNIQUE (SerNumPassportPass_ger)
ALTER TABLE dbo.Driver ADD CONSTRAINT AK_Driver_1 UNIQUE (SerialNumber)
ALTER TABLE dbo.Schedule ADD CONSTRAINT AK_Schedule_1 UNIQUE (SerialNumber)

ALTER TABLE dbo.Driver ADD CONSTRAINT FK_Venicle_228 FOREIGN KEY (SerialNumber) REFERENCES dbo.Vehicle (SerialNumber)
ALTER TABLE dbo.Schedule ADD CONSTRAINT FK_Schedule FOREIGN KEY (SerialNumber) REFERENCES dbo.Vehicle (SerialNumber)
ALTER TABLE dbo.Schedule ADD CONSTRAINT FK_Route FOREIGN KEY (IdRoute) REFERENCES dbo.Route_ (IdRoute)
ALTER TABLE dbo.RouteTicket ADD CONSTRAINT FK_RouteTicket_Route FOREIGN KEY (IdRoute) REFERENCES dbo.Route_ (IdRoute)
ALTER TABLE dbo.RouteTicket ADD CONSTRAINT FK_RouteTicket_Ticket FOREIGN KEY (IdTicket) REFERENCES dbo.Ticket (IdTicket)

ALTER TABLE dbo.Driver ADD CONSTRAINT SerNumPassDriver_check CHECK (SerNumPassportDriver LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
ALTER TABLE dbo.Vehicle ADD CONSTRAINT SerialNumberTS CHECK (Model IN (N'Mersedes', N'Volvo', N'Man'))
ALTER TABLE dbo.Ticket ADD CONSTRAINT SerNumPassPassenger_check CHECK (SerNumPassportPass_ger LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
ALTER TABLE dbo.Vehicle ADD CONSTRAINT Years_2000 CHECK (YearsOfIssue >= 2000)

ALTER TABLE dbo.Driver ADD CONSTRAINT Full_driver_def DEFAULT (N'Петрушка А.А.') for FullName
ALTER TABLE dbo.Schedule ADD CONSTRAINT TicketSold_all DEFAULT (30) for TicketSold
