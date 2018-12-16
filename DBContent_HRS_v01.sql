
USE master
GO
USE HRS
GO

INSERT INTO [dbo].[Guest]
           ([Guest_ID]
           ,[Name]
           ,[FirstName]
           ,[DateofBirth]
           ,[Phone]
           ,[Street]
           ,[Zip]
           ,[City]
           ,[State]
           ,[Country]
           ,[User]
           ,[Timestamp])
     VALUES
           (1000
           ,'Arnold'
           ,'Tim'
           ,'1992-05-14'
           ,'0041792836592'
           ,'Eschenring 7'
           ,'6300'
           ,'Zug'
           ,'Zug'
           ,'Switzerland'
           ,'TARNOLD'
           ,CURRENT_TIMESTAMP)
GO

INSERT INTO [dbo].[Guest]
           ([Guest_ID]
           ,[Name]
           ,[FirstName]
           ,[DateofBirth]
           ,[Phone]
           ,[Street]
           ,[Zip]
           ,[City]
           ,[State]
           ,[Country]
           ,[User]
           ,[Timestamp])
     VALUES
           (1001
           ,'Arnold'
           ,'Paul'
           ,'1960-02-14'
           ,'0041792836592'
           ,'Eschenring 7'
           ,'6300'
           ,'Zug'
           ,'Zug'
           ,'Switzerland'
           ,'PARNOLD'
           ,CURRENT_TIMESTAMP)
GO

USE [HRS]
GO

INSERT INTO [dbo].[Hotel]
           ([Hotel_ID]
           ,[Name]
           ,[Phone]
           ,[Street]
           ,[Zip]
           ,[City]
           ,[State]
           ,[Country]
           ,[Stars])
     VALUES
           (1000
           ,'Mövenpick Hotel'
           ,'00 41 79 283 65 92'
           ,'Flugenhafenstrasse 4'
           ,'8009'
           ,'Regensdorf'
           ,'Zürich'
           ,'Switzerland'
           ,5)
GO

use HRS
go
INSERT INTO [dbo].[Hotel]
           ([Hotel_ID]
           ,[Name]
           ,[Phone]
           ,[Street]
           ,[Zip]
           ,[City]
           ,[State]
           ,[Country]
           ,[Stars])
     VALUES
           (1001
           ,'Swissotel Hotel'
           ,'00 41 79 555 65 92'
           ,'Am Reichenflügel 4'
           ,'8009'
           ,'Seeküste'
           ,'Zürich'
           ,'Switzerland'
           ,5)
GO

INSERT INTO [dbo].[Hotel]
           ([Hotel_ID]
           ,[Name]
           ,[Phone]
           ,[Street]
           ,[Zip]
           ,[City]
           ,[State]
           ,[Country]
           ,[Stars])
     VALUES
           (1002
           ,'Intercontinental Hotel'
           ,'00 41 79 333 65 92'
           ,'Flühlenstrasse 4'
           ,'5443'
           ,'Davos'
           ,'Graubünden'
           ,'Switzerland'
           ,5)
GO

INSERT INTO [dbo].[Room]
           ([Room_ID]
           ,[ID_Hotel]
           ,[RoomNr]
           ,[Floor]
           ,[Phone])
     VALUES
           (1000
           ,1000
           ,100
           ,1
           ,'041 769 51 00')
GO

INSERT INTO [dbo].[Room]
           ([Room_ID]
           ,[ID_Hotel]
           ,[RoomNr]
           ,[Floor]
           ,[Phone])
     VALUES
           (1001
           ,1000
           ,101
           ,1
           ,'041 769 51 01')
GO

INSERT INTO [dbo].[Room]
           ([Room_ID]
           ,[ID_Hotel]
           ,[RoomNr]
           ,[Floor]
           ,[Phone])
     VALUES
           (1002
           ,1000
           ,200
           ,2
           ,'041 769 52 00')
GO

INSERT INTO [dbo].[Room]
           ([Room_ID]
           ,[ID_Hotel]
           ,[RoomNr]
           ,[Floor]
           ,[Phone])
     VALUES
           (1003
           ,1000
           ,201
           ,2
           ,'041 769 52 01')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (1
           ,'Classic Room'
           ,'Our Classic Rooms offer one or two separate queen beds and standard facilities such as minibar, pay-TV, telephone and safe.')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (2
           ,'Superior Room'
           ,'Our Superior Rooms are located in a quiet location and offer you a choice between a king-size bed or two separate queen beds upon availability.')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (3
           ,'Executive Room'
           ,'Our modern Executive Rooms are located on our highest floors and offer one king-size bed as well as free high-speed internet access.')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (4
           ,'Executive Suite'
           ,'Our Suites offer a separate living room, two bathrooms, sleeping room with a king-size bed, Nespresso® coffee machine and a BOSE® sound system.')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (11
           ,'Free Internet'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (12
           ,'30 sqm'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (13
           ,'Pay-TV'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (14
           ,'Minibar'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (15
           ,'Safe'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (16
           ,'Breakfest buffet included'
           ,'')
GO

INSERT INTO [dbo].[RoomFeature]
           ([RoomFeature_ID]
           ,[Name]
           ,[Description])
     VALUES
           (17
           ,'1 kingsize bed'
           ,'')
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1000
           ,1)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1001
           ,2)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1002
           ,3)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1003
           ,4)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1000
           ,11)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1000
           ,12)
GO

INSERT INTO [dbo].[RoomFeatureMapping]
           ([ID_Room]
           ,[ID_RoomFeature])
     VALUES
           (1000
           ,13)
GO


select * from Room 
left join RoomFeatureMapping on
Room_ID = ID_Room 
left join RoomFeature on
ID_RoomFeature = RoomFeature_ID
left join Hotel on
ID_Hotel = Hotel_ID