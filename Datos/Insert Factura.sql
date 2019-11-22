USE [TEConstruye]
GO

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (1,1 ,'2019-08-11',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (1,2 ,'2019-09-11',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (1,4 ,'2019-11-11',0)

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (2,1 ,'2019-04-11',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (2,3 ,'2019-06-18',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (2,4 ,'2019-11-20',0)

INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (3,2 ,'2019-06-17',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (3,4 ,'2019-09-16',0)
INSERT INTO [dbo].[Factura] ([IDObra] ,[IDEtapa] ,[fecha] ,[Estado]) VALUES (3,8 ,'2019-11-11',0)
GO


Select * from Factura

