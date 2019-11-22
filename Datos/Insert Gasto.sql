USE [TEConstruye]
GO

INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (1  ,1 ,1 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (1  ,2 ,2 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (1  ,3 ,3 ,Null)

INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (2  ,4 ,4 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (2  ,5 ,5 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (2  ,1 ,6 ,Null)

INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (3  ,2 ,7 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (3  ,3 ,8 ,Null)
INSERT INTO [dbo].[Gasto] ([IDObra]  ,[Proveedor]  ,[IDFactura]  ,[Foto]) VALUES  (3  ,4 ,9 ,Null)
GO


 Select * from Gasto
