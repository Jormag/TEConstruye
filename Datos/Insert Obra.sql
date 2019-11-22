USE [TEConstruye]
GO

INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Apartamento Monge Montoya',15,3 ,2 ,1,100 ,120 ,1071987 ,NULL ,NULL ,100533662)
INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Casa Abarca Flores',35 ,5 ,3 ,2,300 ,500 ,10041975 ,11091995,NULL ,125630657)
INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Apartamento Fuentes Gamboa',68,2 ,1 ,1,90 ,120 ,13061955 ,13081968 ,17111985 ,235697232)
INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Casa Fernandez Abarca ',180,6 ,3 ,3,300 ,400 ,22021997 ,NULL ,NULL ,302582435)
INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Apartamento Cerdas Céspedes',58,3 ,1 ,1,120 ,120 ,28091995 ,1071987 ,13061955 ,720563561)
INSERT INTO [dbo].[Obra] ([Nombre]  ,[Ubicacion] ,[Habitaciones] ,[Baños] ,[Pisos] ,[MetrosCuadradosConstruccion],[MetrosCuadradosLote] ,[IDIngeniero1]
           ,[IDIngeniero2],[IDIngeniero3] ,[IDCliente])
     VALUES ('Casa Abarca Abarca',77,5 ,3 ,2,450 ,500 ,22021997 ,11091995 ,22021997 ,100533662)

GO


Select * From Obra