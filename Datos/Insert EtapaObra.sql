USE [TEConstruye]
GO

INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,1,'11/08/2019' ,'10/09/2019' ,500000,480000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,2,'11/09/2019' ,'10/11/2019' ,600000,610000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (1,4,'11/11/2019' ,'11/12/2019' ,700000,NULL ,NULL)

	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,1,'11/04/2019' ,'17/06/2019' ,550000,500000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,3,'18/06/2019' ,'19/11/2019' ,670000,700000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (2,5,'20/11/2019' ,'20/01/2020' ,820000,NULL ,NULL)

	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,2,'17/06/2019' ,'15/09/2019' ,700000,710000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,4,'16/09/2019' ,'10/11/2019' ,800000,750000 ,NULL)
	 INSERT INTO [dbo].[EtapaObra] ([IDObra],[IDEtapa] ,[FechaInicio],[FechaFin],[Presupuesto] ,[GastoEtapa],[Descripcion])
     VALUES (3,8,'11/11/2019' ,'21/11/2019' ,1300000,1200000 ,NULL)
GO


Select * From EtapaObra