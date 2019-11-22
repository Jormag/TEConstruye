USE [TEConstruye]
GO

INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,1,'2019-08-11' ,'2019-09-10' ,500000,480000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,2,'2019-09-11' ,'2019-11-10' ,600000,610000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,4,'2019-11-11' ,'2019-12-11' ,700000,710000 ,NULL)

	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,1,'2019-04-11' ,'2019-06-17' ,550000,500000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,3,'2019-06-18' ,'2019-11-19' ,670000,700000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,5,'2019-11-20' ,'2020-01-20' ,820000,800000 ,NULL)

	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,2,'2019-06-17' ,'2019-09-15' ,700000,710000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,4,'2019-09-16' ,'2019-11-10' ,800000,750000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,8,'2019-11-11' ,'2019-11-21' ,1300000,1200000 ,NULL)
GO


Select * From EtapaObra
