
--Store Procedure Insert Ubicación
CREATE PROCEDURE SP_Insert_Ubicacion
( @Provincia VARCHAR (20), @Canton VARCHAR (20), @Distrito VARCHAR (50))
as
begin INSERT INTO Ubicacion(Provincia, Canton, Distrito) values (@Provincia, @Canton, @Distrito)
end


--Store Procedure Insert Cliente
CREATE PROCEDURE SP_Insert_Cliente
(
@Cedula VARCHAR (30),
@Nombre VARCHAR (30),
@Telefono Int
)
as
begin
INSERT INTO Cliente(Cedula, Nombre, Telefono)
values (@Cedula, @Nombre, @Telefono)
end



--Store Procedure Select Cliente
CREATE PROCEDURE getCliente
as Select * From Cliente 



--Store Procedure get EmpleadoObra
CREATE PROCEDURE getEmpleadoObra
as Select  Empleado.Nombre as Empleado, Obra.Nombre as Obra, EmpleadoObra.Horas,
EmpleadoObra.Fecha, EmpleadoObra.PagoTrabajador From EmpleadoObra
Inner Join Empleado On Empleado.Cedula = EmpleadoObra.IDEmpleado
Inner Join Obra On Obra.IDObra = EmpleadoObra.IDObra




--Store Procedure get Especialidad
Create Procedure getEspecialidad
as Select * From Especialidad



--Store Procedure get Etapa
Create Procedure getEtapa
as Select * From Etapa



--Store Procedure get EtapaMateriales
Create Procedure getEtapaMateriales
as Select  Obra.Nombre as Obra, Etapa.Nombre as Etapa,  Material.Nombre as Material,
EtapaMateriales.PrecioTotal, EtapaMateriales.Cantidad
From EtapaMateriales
Inner Join Obra On Obra.IDObra = EtapaMateriales.IDObra
Inner Join Etapa On Etapa.IDEtapa = EtapaMateriales.IDEtapa
Inner Join Material On Material.Codigo =  EtapaMateriales.IDMaterial
 


--Store Procedure get EtapaObra
Create Procedure getEtapaObra
as Select Obra.Nombre as Obra, Etapa.Nombre as Etapa, EtapaObra.FechaInicio,
EtapaObra.Presupuesto, EtapaObra.GastoEtapa, EtapaObra.Descripcion
From EtapaObra
Inner Join Obra On Obra.IDObra = EtapaObra.IDObra
Inner Join Etapa On Etapa.IDEtapa = EtapaObra.IDEtapa
 


--Store Procedure get Factura
Create Procedure getFactura
as Select Factura.IDFactura, Obra.Nombre as Obra, Etapa.Nombre as Etapa, Factura.Fecha
From Factura
Inner Join Obra On Obra.IDObra = Factura.IDObra
Inner Join Etapa On Etapa.IDEtapa = Factura.IDEtapa



--Store Procedure get  FacturaMateriales
Create Procedure getFacturaMateriales
as Select  Factura.IDFactura , Material.Nombre as Material, Neto
From FacturaMateriales
Inner Join Factura On Factura.IDFactura = FacturaMateriales.IDFactura
Inner Join Material On Material.Codigo = FacturaMateriales.IDMaterial
 


--Store Procedure get Gasto
Create Procedure getGasto
as Select Gasto.IDGasto, Obra.Nombre as Obra, Proveedor.Nombre as Proveedor,
Gasto.IDFactura, Gasto.Foto
From Gasto
Inner Join Proveedor On Proveedor.IDProveedor = Gasto.Proveedor
Inner Join Obra On Obra.IDObra = Gasto.IDObra
 


--Store Procedure get Ingeniero
Create Procedure getIngeniero
as Select Nombre, Telefono, Codigo, TipoEspecialidad
From Ingeniero
 Inner Join  Especialidad  On  Ingeniero.Especialidad = Especialidad.IDEspecialidad
  



--Store Procedure get Material
Create Procedure getMaterial
as Select * From Material



--Store Procedure get Obra
Create Procedure getObra
as Select Obra.Nombre, Ubicacion.Distrito, Ubicacion.Canton, Ubicacion.Provincia , Obra.Habitaciones, Obra.Banos, Obra.Pisos,
Obra.AreaConstruccion, Obra.AreaLote, Ingeniero.Nombre AS Ingeniero1
from Obra
Inner Join Ubicacion On Obra.Ubicacion = Ubicacion.IDUbicacion 
Inner Join Ingeniero ON Obra.IDIngeniero1 = Ingeniero.Codigo --and  Ingeniero.Codigo = Obra.IDIngeniero2  and   Ingeniero.Codigo = Obra.IDIngeniero3)



--Store Procedure get Proveedor
Create Procedure getProveedor
as Select * From Proveedor



--Store Procedure get Ubicacion
Create Procedure getUbicacion
as Select * From Ubicacion

--Store Procedure update Empleado Obra
Create Procedure updateEmpleadoObra
as
begin
Update EmpleadoObra
Set PagoTrabajador = Horas * PagoHora
From
EmpleadoObra Inner Join Empleado On Empleado.Cedula = EmpleadoObra.IDEmpleado
end 

--Store Procedure update EtapaMateriales
Create Procedure updateEtapaMateriales
as
begin
Update EtapaMateriales
Set PrecioTotal = Cantidad * PrecioUnitario
From
EtapaMateriales Inner Join Material On Material.Codigo = EtapaMateriales.IDMaterial
end