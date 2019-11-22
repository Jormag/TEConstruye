--Create Database TEConstruye
--Go 


--CREACIÓN DE TABLAS
-- Creación de la tabla Especialidad
Create Table Especialidad(
IDEspecialidad Serial Primary Key Not Null,
TipoEspecialidad Varchar(30) Not Null
)

-- Creación de la tabla Proveedor
Create Table Proveedor (
IDProveedor Serial Primary Key Not Null,
Nombre Varchar(40) not Null
) 
-- Creación de la tabla Ingeniero
Create Table Ingeniero (
Cedula int Not Null,
Nombre Varchar(100) Not Null,
Especialidad int Not Null,
Telefono int Not Null,
Codigo int Primary Key Not Null
)

-- Creación de la tabla Cliente
Create Table Cliente (
Cedula varchar(30) Primary Key Not Null,
Nombre Varchar(100) Not Null,
Telefono int
)

-- Creación de la tabla Empleado
Create Table Empleado (
Cedula int  Primary Key Not Null,
Nombre Varchar(100) Not Null,
Telefono int Not Null,
PagoHora money Not Null
)

-- Creación de la tabla Etapa
Create Table Etapa (
IDEtapa serial Primary Key Not Null,
Nombre Varchar(50) Not Null
)

-- Creación de la tabla Ubicación
Create Table Ubicacion(
IDUbicacion serial Primary Key Not Null,
Provincia Varchar(20) Not Null,
Canton Varchar(20) Not Null,
Distrito Varchar(50) Not Null
)


-- Creación de la tabla Obra
Create Table Obra (
IDObra serial Primary Key Not Null,
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
IDCliente varchar(30) Not Null
)

-- Creación de la tabla EtapaMateriales
Create Table EtapaMateriales (
IDObra int Not Null,
IDEtapa int Not Null,
IDMaterial int Not Null, 
PrecioTotal money not null, 
Cantidad int Not Null,
Primary Key(IDObra,IDEtapa,IDMaterial)
)

-- Creación de la tabla EtapaObra
Create Table EtapaObra (
IDObra int Not Null,
IDEtapa int Not Null,
FechaInicio date Not Null,
FechaFin date,
Presupuesto money Not Null,
GastoEtapa money Not Null,
Descripcion Varchar(200),
Primary Key (IDObra,IDEtapa)
)


-- Creación de la tabla EmpleadoObra
Create Table EmpleadoObra (
IDEmpleado int Not Null,
IDObra int Not Null,
Horas int Not Null,
Fecha date Not Null,
PagoTrabajador money not null,
Primary Key (IDEmpleado, IDObra, Fecha)
)

-- Creación de la tabla Gasto
Create Table Gasto (
IDGasto Serial Primary Key Not Null,
IDObra int Not Null,
Proveedor int Not Null,
IDFactura int Not Null,
Foto varchar(500)
)

-- Creación de la tabla Proveedor
Create Table Proveedor (
IDProveedor serial Primary Key Not Null,
Nombre Varchar(40) not Null
)

-- Creación de la tabla Factura
Create Table Factura (
IDFactura serial Primary Key Not Null,
IDObra int Not Null,
IDEtapa int Not Null,
Fecha date Not Null
)

-- Creación de la tabla Material
Create Table Material (
Codigo serial Primary Key Not Null,
Nombre Varchar(50) Not Null,
PrecioUnitario money Not Null
)

-- Creación de la tabla FacturaMateriales
Create Table FacturaMateriales (
IDFactura int Not Null,
IDMaterial int Not Null,
Neto money Not Null,
Primary Key (IDFactura, IDMaterial)
)



-- CREACIÓN DE LLAVES FORÁNEAS

-- Creacion de las FK de la tabla Ingeniero
ALTER TABLE  Ingeniero
Add Constraint FK_Ingeniero_Especialidad Foreign Key (Especialidad) References Especialidad(IDEspecialidad);

-- Creacion de las FK de la tabla Obra
ALTER TABLE  Obra
Add Constraint FK_Obra_Ubicacion Foreign Key (Ubicacion) References Ubicacion(IDUbicacion);
ALTER TABLE  Obra
Add	Constraint  FK_Obra_Cliente Foreign Key (IDCliente) References Cliente(Cedula);
ALTER TABLE  Obra
add	Constraint  FK_Obra_Ingeniero1 Foreign Key (IDIngeniero1) References Ingeniero(Codigo);
ALTER TABLE  Obra
add	Constraint  FK_Obra_Ingeniero2 Foreign Key (IDIngeniero2) References Ingeniero(Codigo);
ALTER TABLE  Obra
add	Constraint  FK_Obra_Ingeniero3 Foreign Key (IDIngeniero3) References Ingeniero(Codigo);

-- Creacion de las FK de la tabla EtapaObra
ALTER TABLE  EtapaObra
Add Constraint FK_EtapaObra_Obra Foreign Key (IDObra) References Obra(IDObra);
ALTER TABLE  EtapaObra
add	Constraint  FK_EtapaObra_Etapa Foreign Key (IDEtapa) References Etapa(IDEtapa);

-- Creacion de las FK de la tabla EtapaMateriales
ALTER TABLE  EtapaMateriales
Add Constraint FK_EtapaMateriales_Obra Foreign Key (IDObra) References Obra(IDObra);
ALTER TABLE  EtapaMateriales
Add	Constraint  FK_EtapaMateriales_Etapa Foreign Key (IDEtapa) References Etapa(IDEtapa);
ALTER TABLE  EtapaMateriales
Add	Constraint  FK_EtapaMateriales_Material Foreign Key (IDMaterial) References Material(Codigo);

-- Creacion de las FK de la tabla EmpleadoObra
ALTER TABLE  EmpleadoObra
Add Constraint FK_EmpleadoObra_Empleado Foreign Key (IDEmpleado) References Empleado(Cedula);
ALTER TABLE  EmpleadoObra
Add	Constraint  FK_EmpleadoObra_Obra Foreign Key (IDObra) References Obra(IDObra);


-- Creacion de las FK de la tabla Gasto
ALTER TABLE  Gasto 
Add Constraint FK_Gasto_Obra Foreign Key (IDObra) References Obra(IDObra);
ALTER TABLE  Gasto 
Add	Constraint  FK_Gasto_Factura Foreign Key (IDFactura) References Factura(IDFactura);
ALTER TABLE  Gasto 
Add Constraint FK_Gasto_Proveedor Foreign Key (Proveedor) References Proveedor (IDProveedor);


-- Creacion de las FK de la tabla Factura
ALTER TABLE  Factura 
Add Constraint FK_Factura_Obra Foreign Key (IDObra) References Obra(IDObra);
ALTER TABLE  Factura 
Add	Constraint  FK_Factura_Etapa Foreign Key (IDEtapa) References Etapa(IDEtapa);

	-- Creacion de las FK de la tabla FacturaMateriales
ALTER TABLE FacturaMateriales
Add Constraint FK_FacturaMateriales_Factura Foreign Key (IDFactura) References Factura(IDFactura);
ALTER TABLE FacturaMateriales
Add  Constraint FK_FacturaMateriales_Material Foreign Key (IDMaterial) References Material(Codigo) ;
  
  
  
  

