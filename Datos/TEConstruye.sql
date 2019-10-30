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
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Especialidad int Not Null,
Cedula int Identity Primary Key Not Null,
Telefono int Not Null,
Codigo int Not Null
)
Go

-- Creación de la tabla Cliente
Create Table Cliente (
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Cedula int Identity Primary Key Not Null,
Telefono int Not Null
)
Go

-- Creación de la tabla Empleado
Create Table Empleado (
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Cedula int Identity Primary Key Not Null,
Telefono int Not Null,
PagoHora int Not Null
--HorasLaboradas int Not Null
)
Go

-- Creación de la tabla Material
Create Table Material (
Nombre Varchar(30) Not Null,
Codigo int Identity Primary Key Not Null,
PrecioUnitario int Not Null
)
Go

-- Creación de la tabla Etapa
Create Table Etapa (
IDObra int not null,
IDEtapa int Identity Primary Key Not Null,
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

-- Creación de la tabla Obra
Create Table Obra (
IDObra int Identity Primary Key Not Null,
Nombre Varchar(30) Not Null,
Ubicacion int Not Null,
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
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
Cantidad int
)
Go

-- Creación de la tabla EtapaProyecto
Create Table EtapaProyecto (
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto int
)
Go

-- Creación de la tabla EmpleadoProyecto
Create Table EmpleadoProyecto (
IDEmpleado int,
IDObra int,
Horas int,
)
Go

-- Creación de la tabla Gasto
Create Table Gasto (
IDObra int Not Null,
IDProveedor int,
IDFactura int,
Foto image,


)
Go

-- Creación de la tabla CompraMateriales
Create Table CompraMateriales (
Factura int,
IDMaterial int Not Null, 
Cantidad int,
TotalPrecioMaterial int
)
Go



