--Create Database TEConstruye
--Go 

-- Creación de la tabla Especialidad
Create Table Especialidad(
IDEspecialidad int Identity Primary Key Not Null,
TipoEspecialidad Varchar(30) Not Null
)
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
Cedula int  Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null,
PagoHora money Not Null
)
Go

-- Creación de la tabla Etapa
Create Table Etapa (
IDEtapa int Identity Primary Key Not Null,
Etapa Varchar(50) Not Null
)
Go

-- Creación de la tabla Ubicación
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

-- Creación de la tabla ObraMateriales
Create Table ObraMateriales (
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
Cantidad int Not Null,
Primary Key(IDObra,IDEtapa,IDMaterial)
)
Go

-- Creación de la tabla EtapaObra
Create Table EtapaObra (
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto money Not Null,
GastoEtapa money ,
Descripcion Varchar(200),
Primary Key (IDObra,IDEtapa)
)
Go


-- Creación de la tabla EmpleadoObra
Create Table EmpleadoObra (
IDEmpleado int Not Null,
IDObra int Not Null,
Horas int Not Null,
Fecha date Not Null,
PagoTrabajador money,
)
Go

-- Creación de la tabla Gasto
Create Table Gasto (
IDObra int Not Null,
Proveedor varchar(30) Not Null,
IDFactura int Not Null,
Foto image, 
)
Go

-- Creación de la tabla Factura
Create Table Factura (
IDFactura int Primary Key Not Null,
IDObra int Not Null,
IDEtapa int Not Null,
fecha datetime Not Null,
Estado bit Default 0
)
Go

-- Creación de la tabla DetalleFactura
Create Table DetalleFactura (
IDDetalleFactura int Not Null Primary Key,
IDFactura int Not Null,
IDProducto int Not Null,
Cantidad varchar(50) Not Null,
Neto money Not Null,
Estado bit Default 0
)
Go

-- Creación de la tabla Material
Create Table Material (
Codigo int Identity Primary Key Not Null,
Nombre Varchar(50) Not Null,
Unidad Varchar(20) Not Null,
PrecioUnitario money Not Null,
Estado bit Default 0
)
Go





