USE [TEConstruye]
GO

INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (1 ,1 ,3,8)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (1 ,2 ,10,10)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (1 ,3 ,50,50)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (1 ,4 ,100,20)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (1 ,1 ,111,25)

INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (2 ,1 ,300,10)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (2 ,3 ,345,20)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (2 ,5 ,45,15)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (2 ,5 ,11,9)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (2 ,7 ,333,19)

INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,2 ,75,5)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,2 ,35,30)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,4 ,34,60)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,4 ,39,4)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,8 ,78,19)
INSERT INTO [dbo].[ObraMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad])  VALUES (3 ,8 ,96,9)
GO


Select * From ObraMateriales
