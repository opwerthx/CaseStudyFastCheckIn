Use master
go
DROP DATABASE HRS
GO
CREATE DATABASE HRS
GO
USE HRS
GO

CREATE TABLE [dbo].[CreditCard](
	[ID_Guest] [int] NOT NULL,
	[CardNr] [bigint] unique NOT NULL,
	[CardHolder] [varchar](50) NOT NULL,
	[CardType] [varchar](50) NOT NULL,
	[CVCCode] [smallint] NOT NULL,
	[ExpirationDate] [date] NULL,
	[User] [varchar](10) NULL,
	[Timestamp] [datetime] NULL
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[ID_Guest] ASC,
	[CardNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Guest](
	[Guest_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[DateofBirth] [date] NULL,
	[Phone] [varchar](20) NULL,
	[Street] [varchar](100) NULL,
	[Zip] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[User] [varchar](10) NULL,
	[Timestamp] [datetime] NULL
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[Guest_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Reservation](
	[Reservation_ID] [int] NOT NULL,
	[ID_Room] [int] NULL,
	[ID_Guest] [int] NULL,
	[ID_TravelOffice] [int] NULL,
	[ID_Hotel] [int] NULL,
	[DateCheckIn] [datetime] NULL,
	[DataCheckOut] [datetime] NULL,
	[Canceled] [bit] NULL,
	[CheckedOut] [bit] NULL,
	[Price] [decimal](7, 2) NULL,
	[User] [varchar](10) NULL,
	[Timestamp] [datetime] NULL
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[Reservation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TravelOffice](
	[TravelOffice_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Street] [varchar](100) NULL,
	[Zip] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL
CONSTRAINT [PK_TravelOffice] PRIMARY KEY CLUSTERED 
(
	[TravelOffice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Room](
	[Room_ID] [int] unique NOT NULL,
	[ID_Hotel] [int] NULL,
	[RoomNr] [varchar](100) NULL,
	[Floor] [varchar](100) NULL,
	[Phone] [varchar](20) NULL
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RoomFeature](
	[RoomFeature_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_RoomFeature] PRIMARY KEY CLUSTERED 
(
	[RoomFeature_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[RoomFeatureMapping](
	[ID_Room] [int] NOT NULL,
	[ID_RoomFeature] [int] NOT NULL
 CONSTRAINT [PK_RoomFeatureMapping] PRIMARY KEY CLUSTERED 
(
	[ID_Room] ASC,
	[ID_RoomFeature] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[Rating](
	[ID_Reservation] [int] not NULL,
	[ID_Guest] [int] not NULL,
	[ID_Room] [int] not NULL,
	[Date] [datetime] not NULL,
	[Location] [tinyint] NULL,
	[Service] [tinyint] NULL,
	[Rating] [varchar](500) NULL,
	[User] [varchar](10) NULL,
	[Timestamp] [datetime] NULL
	CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[ID_Reservation] ASC,
	[ID_Guest] ASC,
	[ID_Room] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[Hotel](
	[Hotel_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Street] [varchar](100) NULL,
	[Zip] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[Stars] [tinyint] NULL
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[Hotel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[HotelFeature](
	[HotelFeature_ID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_HotelFeature] PRIMARY KEY CLUSTERED 
(
	[HotelFeature_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[HotelFeatureMapping](
	[ID_Hotel] [int] NOT NULL,
	[ID_HotelFeature] [int] NOT NULL
 CONSTRAINT [PK_HotelFeatureMapping] PRIMARY KEY CLUSTERED 
(
	[ID_Hotel] ASC,
	[ID_HotelFeature] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[ApplUsers](
	[User_ID] [int] NOT NULL,
	[User] [varchar](10) NULL,
	[FirstName] [varchar](100) NULL,
	[Name] [varchar](100) NULL,
	[DateofBirth] [date] NULL,
	[Phone] [varchar](20) NULL,
	[Street] [varchar](100) NULL,
	[Zip] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[ApplRights](
	[Right_ID] [int] NOT NULL,
	[ID_User] [int] NOT NULL,
	[Description] [varchar](500) NULL
 CONSTRAINT [PK_rights] PRIMARY KEY CLUSTERED 
 (
	[ID_User] ASC,
	[Right_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[ApplSettings](
	[Settings_ID] [int] NOT NULL,
	[ID_User] [int] NOT NULL,
	[Status] [bit] NULL,
	[Description] [varchar](500) NULL
 CONSTRAINT [PK_settings] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC,
	[Settings_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

ALTER TABLE [dbo].[HotelFeatureMapping]  WITH CHECK ADD  CONSTRAINT [FK_HotelFeatureMapping_Hotel] FOREIGN KEY([ID_Hotel])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[HotelFeatureMapping] CHECK CONSTRAINT [FK_HotelFeatureMapping_Hotel]
GO

ALTER TABLE [dbo].[HotelFeatureMapping]  WITH CHECK ADD  CONSTRAINT [FK_HotelFeatureMapping_HotelFeature] FOREIGN KEY([ID_HotelFeature])
REFERENCES [dbo].[HotelFeature] ([HotelFeature_ID])
GO
ALTER TABLE [dbo].[HotelFeatureMapping] CHECK CONSTRAINT [FK_HotelFeatureMapping_HotelFeature]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_TravelOffice] FOREIGN KEY([ID_TravelOffice])
REFERENCES [dbo].[TravelOffice] ([TravelOffice_ID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_TravelOffice]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Guest] FOREIGN KEY([ID_Guest])
REFERENCES [dbo].[Guest] ([Guest_ID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Guest]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Hotel] FOREIGN KEY([ID_Hotel])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Hotel]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Room] FOREIGN KEY([ID_Room])
REFERENCES [dbo].[Room] ([Room_ID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Room]
GO

ALTER TABLE [dbo].[RoomFeatureMapping]  WITH CHECK ADD  CONSTRAINT [FK_RoomFeatureMapping_RoomFeature] FOREIGN KEY([ID_RoomFeature])
REFERENCES [dbo].[RoomFeature] ([RoomFeature_ID])
GO
ALTER TABLE [dbo].[RoomFeatureMapping] CHECK CONSTRAINT [FK_RoomFeatureMapping_RoomFeature]
GO

ALTER TABLE [dbo].[RoomFeatureMapping]  WITH CHECK ADD  CONSTRAINT [FK_RoomFeatureMapping_Room] FOREIGN KEY([ID_Room])
REFERENCES [dbo].[Room] ([Room_ID])
GO
ALTER TABLE [dbo].[RoomFeatureMapping] CHECK CONSTRAINT [FK_RoomFeatureMapping_Room]
GO

ALTER TABLE [dbo].[CreditCard] WITH CHECK ADD CONSTRAINT [FK_CreditCard_Guest] FOREIGN KEY([ID_Guest])
REFERENCES [dbo].[Guest] ([Guest_ID])
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_Guest]
GO

ALTER TABLE [dbo].[Rating] WITH CHECK ADD CONSTRAINT [FK_Rating_Reservation] FOREIGN KEY([ID_Reservation])
REFERENCES [dbo].[Reservation] ([Reservation_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Reservation]
GO

ALTER TABLE [dbo].[Rating] WITH CHECK ADD CONSTRAINT [FK_Rating_Guest] FOREIGN KEY([ID_Guest])
REFERENCES [dbo].[Guest] ([Guest_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Guest]
GO

ALTER TABLE [dbo].[ApplSettings] WITH CHECK ADD CONSTRAINT [FK_ApplSettings_ApplUsers] FOREIGN KEY([ID_User])
REFERENCES [dbo].[ApplUsers] ([User_ID])
GO
ALTER TABLE [dbo].[ApplSettings] CHECK CONSTRAINT [FK_ApplSettings_ApplUsers]
GO

ALTER TABLE [dbo].[ApplRights] WITH CHECK ADD CONSTRAINT [FK_ApplRights_ApplUsers] FOREIGN KEY([ID_User])
REFERENCES [dbo].[ApplUsers] ([User_ID])
GO
ALTER TABLE [dbo].[ApplRights] CHECK CONSTRAINT [FK_ApplRights_ApplUsers]
GO




