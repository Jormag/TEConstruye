Go 
-- Creacion de tablas
-- Creación de la tabla Especialidad
Create Table Especialidad(
IDEspecialidad int Identity Primary Key Not Null,
TipoEspecialidad Varchar(20) NOT NULL
);
Go

-- Creación de la tabla Ingeniero
Create Table Ingeniero (
Cedula int Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Especialidad int Not Null,
Telefono int Not Null,
Codigo int Primary Key Not Null
);
Go

-- Creación de la tabla 
Create Table Cliente (
Cedula int Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null
);
Go

-- Creación de la tabla Empleado
Create Table Empleado (
Cedula int Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null,
PagoHora int Not Null
);
Go

-- Creación de la tabla Material
Create Table Material (
Codigo int Primary Key Not Null,
Nombre Varchar(30) Not Null,
PrecioUnitario int Not Null
);
Go

-- Creación de la tabla Etapa
Create Table Etapa (
IDEtapa int Identity Primary Key Not Null,
Nombre Varchar(30) Not Null
);
Go

-- Creación de la tabla Ubicacion
Create Table Ubicacion(
IDUbicacion int Identity Primary Key Not Null,
Provincia Varchar(20) Not Null,
Canton Varchar(20) Not Null,
Distrito Varchar(50) Not Null
);
Go

-- Creación de la tabla Obra
Create Table Obra (
IDObra int Identity Primary Key Not Null,
Nombre Varchar(30) Not Null,
Ubicacion int Not Null,
Habitaciones int Not Null,
Banos int Not Null,
Pisos int Not Null,
AreaConstruccion int Not Null,
AreaLote int Not Null,
IDIngeniero1 int Not Null,
IDIngeniero2 int,
IDIngeniero3 int,
IDCliente int Not Null
);
Go

-- Creación de la tabla EtapaObra
Create Table EtapaObra (
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto int NOT NULL,
Primary Key (IDObra,IDEtapa)
);
Go

-- Creación de la tabla  ObraMateriales
Create Table EtapaMateriales (
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
Cantidad int NOT NULL,
Primary Key(IDObra,IDEtapa,IDMaterial)
);
Go



-- Creación de la tabla EmpleadoObra
Create Table EmpleadoObra (
IDEmpleado int NOT NULL,
IDObra int NOT NULL,
Fecha date NOT NULL,
Horas int NOT NULL,
Primary Key (IDEmpleado, IDObra)
);
Go

-- Creacion de llaves foraneas
-- Creacion de las FK de la tabla Ingeniero
ALTER TABLE  Ingeniero
ADD CONSTRAINT FK_Ingeniero_Especialidad FOREIGN KEY (Especialidad) REFERENCES Especialidad(IDEspecialidad);

-- Creacion de las FK de la tabla Obra
ALTER TABLE  Obra
ADD CONSTRAINT FK_Obra_Ubicacion FOREIGN KEY (Ubicacion) REFERENCES Ubicacion(IDUbicacion),
	CONSTRAINT FK_Obra_Cliente FOREIGN KEY (IDCliente) REFERENCES Cliente(Cedula),
	CONSTRAINT FK_Obra_Ingeniero1 FOREIGN KEY (IDIngeniero1) REFERENCES Ingeniero(Codigo),
	CONSTRAINT FK_Obra_Ingeniero2 FOREIGN KEY (IDIngeniero2) REFERENCES Ingeniero(Codigo),
	CONSTRAINT FK_Obra_Ingeniero3 FOREIGN KEY (IDIngeniero3) REFERENCES Ingeniero(Codigo);

-- Creacion de las FK de la tabla EtapaObra
ALTER TABLE  EtapaObra
ADD CONSTRAINT FK_EtapaObra_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra),
	CONSTRAINT FK_EtapaObra_Etapa FOREIGN KEY (IDEtapa) REFERENCES Etapa(IDEtapa);

-- Creacion de las FK de la tabla EtapaMateriales
ALTER TABLE  EtapaMateriales
ADD CONSTRAINT FK_EtapaMateriales_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra),
	CONSTRAINT FK_EtapaMateriales_Etapa FOREIGN KEY (IDEtapa) REFERENCES Etapa(IDEtapa),
	CONSTRAINT FK_EtapaMateriales_Material FOREIGN KEY (IDMaterial) REFERENCES Material(Codigo);

-- Creacion de las FK de la tabla EmpleadoObra
ALTER TABLE  EmpleadoObra
ADD CONSTRAINT FK_EmpleadoObra_Empleado FOREIGN KEY (IDEmpleado) REFERENCES Empleado(Cedula),
	CONSTRAINT FK_EmpleadoObra_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra);



