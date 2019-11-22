USE [TEConstruye]
GO

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ) VALUES (1,1 ,'2019-08-11')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ) VALUES (1,2 ,'2019-09-11')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ) VALUES (1,4 ,'2019-11-11')

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (2,1 ,'2019-04-11')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (2,3 ,'2019-06-18')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (2,4 ,'2019-11-20')

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (3,2 ,'2019-06-17')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (3,4 ,'2019-09-16')
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha]) VALUES (3,8 ,'2019-11-11')
GO


Select * from Factura

