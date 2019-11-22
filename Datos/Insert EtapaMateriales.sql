USE [TEConstruye]
GO

INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (1 ,1 ,3,8,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (1 ,2 ,10,10,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (1 ,3 ,50,50,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (1 ,4 ,100,20,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (1 ,1 ,111,25,0)

INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (2 ,1 ,300,10,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (2 ,3 ,345,20,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (2 ,5 ,45,15,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (2 ,5 ,11,9,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (2 ,7 ,333,19,0)

INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (3 ,2 ,75,5,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (3 ,2 ,35,30,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )  VALUES (3 ,4 ,34,60,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (3 ,4 ,39,4,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )   VALUES (3 ,8 ,78,19,0)
INSERT INTO [dbo].[EtapaMateriales]([IDObra],[IDEtapa] ,[IDMaterial],[Cantidad],[PrecioTotal] )    VALUES (3 ,8 ,96,9,0)
GO


Select * From EtapaMateriales
