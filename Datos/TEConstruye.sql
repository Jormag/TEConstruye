Create Database TEConstruye
Go 

-- Creación de la tabla Especialidad
Create Table Especialidad(
IDEspecialidad int Identity Primary Key Not Null,
TipoEspecialidad Varchar(20)
)
Go

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

Create Table Cliente (
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Cedula int Identity Primary Key Not Null,
Telefono int Not Null
)
Go

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

Create Table Material (
Nombre Varchar(30) Not Null,
Codigo int Identity Primary Key Not Null,
PrecioUnitario int Not Null
)
Go

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
Create Table ObraMateriales (
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
Cantidad int
)
Go

Create Table EtapaProyecto (
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto int
)
Go

Create Table EmpleadoProyecto (
IDEmpleado int,
IDObra int,
Horas int,
)
Go

Create Table Gasto (
IDObra int Not Null,
IDProveedor int,
IDFactura int,
Foto image,


)
Go


Create Table CompraMateriales (
Factura int,
IDMaterial int Not Null, 
Cantidad int,
TotalPrecioMaterial int
)
Go



