Create Database TEConstruye
Go 

-- Creación de la tabla Especialidad
Create Table Especialidad(
IDEspecialidad int Identity Primary Key Not Null,
TipoEspecialidad Varchar(20)
)
Go

-- Creación de la tabla Ingeniero
Create Table Ingeniero (
Cedula int Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
IDEspecialidad int Not Null,
Telefono int Not Null,
Codigo Primary Key int Not Null
)
Go

-- Creación de la tabla Cliente
Create Table Cliente (
Cedula int Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null
)
Go

-- Creación de la tabla Empleado
Create Table Empleado (
Cedula int Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null,
PagoHora int Not Null
--HorasLaboradas int Not Null
)
Go

-- Creación de la tabla Material
Create Table Material (
Codigo int Primary Key Not Null,
Nombre Varchar(30) Not Null,
PrecioUnitario int Not Null
)
Go

-- Creación de la tabla Etapa
Create Table Etapa (
IDEtapa int Identity Primary Key Not Null,
IDObra int not null,
Descripcion Varchar(200) Not Null,
TrabajoPreliminar int,
Cimiento int,
Paredes int,
ConcretoReforzado int,
Techos int,
Cielos int,
Repello int,
Entrepisos int,
Pisos int,
Enchapes int,
InstalacionPluvial int,
InstalacionSanitaria int,
InstalacionElectrica int,
Puertas int,
Cerrajeria int,
Ventanas int,
Closets int,
MuebleCocina int,
Pintura int,
Escaleras int
)
Go

-- Creación de la tabla Ubicacion
Create Table Ubicacion(
IDUbicacion int Identity Primary Key Not Null,
Provincia Varchar(20) Not Null,
Canton Varchar(20) Not Null,
Distrito Varchar(50) Not Null
)
Go

-- Creación de la tabla Obra
Create Table Obra (
IDObra int Identity Primary Key Not Null,
Nombre Varchar(30) Not Null,
IDUbicacion int Not Null,
Habitaciones int Not Null,
Baños int Not Null,
Pisos int Not Null,
MetrosCuadradosConstruccion int Not Null,
MetrosCuadradosLote int Not Null,
IDIngeniero1 int Not Null,
IDIngeniero2 int,
IDIngeniero3 int,
IDCliente int Not Null
)
Go

-- Creación de la tabla  ObraMateriales
Create Table ObraMateriales (
IDObraMateriales int Identity Primary Key Not Null,
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
Cantidad int
)
Go

-- Creación de la tabla EtapaProyecto
Create Table EtapaProyecto (
IDEtapaProyecto int Identity Primary Key Not Null,
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto int
)
Go

-- Creación de la tabla EmpleadoProyecto
Create Table EmpleadoProyecto (
IDEmpleadoProyecto int Identity Primary Key Not Null,
IDEmpleado int Not Null,
IDObra int Not Null,
Horas int Not Null
)
Go

-- Creación de la tabla Gasto
Create Table Gasto (
IDGasto int Identity Primary Key Not Null,
IDObra int Not Null,
IDProveedor int,
IDFactura int,
Foto varchar(100)
)
Go

-- Creación de la tabla CompraMateriales
Create Table CompraMateriales (
IDCompraMateriales int Identity Primary Key Not Null,
Factura int,
IDMaterial int Not Null, 
Cantidad int,
TotalPrecioMaterial int
)
Go

ALTER TABLE  Ingeniero
ADD CONSTRAINT FK_Ingeniero_Especialidad FOREIGN KEY (IDEspecialidad) REFERENCES Especialidad(IDEspecialidad)

ALTER TABLE  Obra
ADD CONSTRAINT FK_Obra_Ubicacion FOREIGN KEY (IDUbicacion) REFERENCES Ubicacion(IDUbicacion),
	CONSTRAINT FK_Obra_Cliente FOREIGN KEY (IDCliente) REFERENCES Cliente(Cedula),
	CONSTRAINT FK_Obra_Ingeniero FOREIGN KEY (IDIngeniero1) REFERENCES Ingeniero(Codigo)

ALTER TABLE  Etapa
ADD CONSTRAINT FK_Etapa_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra)


ALTER TABLE  CompraMateriales
ADD CONSTRAINT FK_CompraMateriales_Material FOREIGN KEY (IDMaterial) REFERENCES Material(Codigo)

ALTER TABLE  ObraMateriales
ADD CONSTRAINT FK_ObraMateriales_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra),
	CONSTRAINT FK_ObraMateriales_Etapa FOREIGN KEY (IDEtapa) REFERENCES Etapa(IDEtapa),
	CONSTRAINT FK_ObraMateriales_Material FOREIGN KEY (IDMaterial) REFERENCES Material(Codigo)

ALTER TABLE  EmpleadoProyecto
ADD CONSTRAINT FK_EmpleadoProyecto_Empleado FOREIGN KEY (IDEmpleado) REFERENCES Empleado(Cedula),
	CONSTRAINT FK_EmpleadoProyecto_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra)

ALTER TABLE  EtapaProyecto
ADD CONSTRAINT FK_EtapaProyecto_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra),
	CONSTRAINT FK_EtapaProyecto_Etapa FOREIGN KEY (IDEtapa) REFERENCES Etapa(IDEtapa)

ALTER TABLE  Gasto
ADD CONSTRAINT FK_Gasto_Obra FOREIGN KEY (IDObra) REFERENCES Obra(IDObra)
