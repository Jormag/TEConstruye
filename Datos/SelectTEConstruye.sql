-- Select para Cliente
Select * From Cliente

-- Select para Empleado
Select * From Empleado

-- Select para EmpleadoObra
Select  Empleado.Nombre as Empleado, Obra.Nombre as Obra, EmpleadoObra.Horas,
EmpleadoObra.Fecha, EmpleadoObra.PagoTrabajador
From EmpleadoObra
Inner Join Empleado On Empleado.Cedula = EmpleadoObra.IDEmpleado
Inner Join Obra On Obra.IDObra = EmpleadoObra.IDObra

-- Select para Especialidad
Select * From Especialidad

--  Select para Etapa
Select * From Etapa

-- Select para EtapaMateriales
Select  Obra.Nombre as Obra, Etapa.Nombre as Etapa,  Material.Nombre as Material,
EtapaMateriales.PrecioTotal, EtapaMateriales.Cantidad
From EtapaMateriales
Inner Join Obra On Obra.IDObra = EtapaMateriales.IDObra
Inner Join Etapa On Etapa.IDEtapa = EtapaMateriales.IDEtapa
Inner Join Material On Material.Codigo =  EtapaMateriales.IDMaterial

--Select para EtapaObra
Select Obra.Nombre as Obra, Etapa.Nombre as Etapa, EtapaObra.FechaInicio,
EtapaObra.Presupuesto, EtapaObra.GastoEtapa, EtapaObra.Descripcion
From EtapaObra
Inner Join Obra On Obra.IDObra = EtapaObra.IDObra
Inner Join Etapa On Etapa.IDEtapa = EtapaObra.IDEtapa

-- Select para Factura
Select Factura.IDFactura, Obra.Nombre as Obra, Etapa.Nombre as Etapa, Factura.Fecha
From Factura
Inner Join Obra On Obra.IDObra = Factura.IDObra
Inner Join Etapa On Etapa.IDEtapa = Factura.IDEtapa

-- Select para FacturaMateriales
Select  Factura.IDFactura , Material.Nombre as Material, Neto
From FacturaMateriales
Inner Join Factura On Factura.IDFactura = FacturaMateriales.IDFactura
Inner Join Material On Material.Codigo = FacturaMateriales.IDMaterial

-- Select para Gasto
Select Gasto.IDGasto, Obra.Nombre as Obra, Proveedor.Nombre as Proveedor,
Gasto.IDFactura, Gasto.Foto
From Gasto
Inner Join Proveedor On Proveedor.IDProveedor = Gasto.Proveedor
Inner Join Obra On Obra.IDObra = Gasto.IDObra

-- Select para Ingeniero
Select Nombre, Telefono, Codigo, TipoEspecialidad
From Ingeniero
 Inner Join  Especialidad 
On  Ingeniero.Especialidad = Especialidad.IDEspecialidad;


-- Select para Material
Select * From Material

-- Select para Obra CORREGIR
Select Obra.Nombre, Ubicacion.Distrito, Ubicacion.Canton, Ubicacion.Provincia , Obra.Habitaciones, Obra.Banos, Obra.Pisos,
Obra.AreaConstruccion, Obra.AreaLote, Ingeniero.Nombre AS Ingeniero1
from Obra
Inner Join Ubicacion On Obra.Ubicacion = Ubicacion.IDUbicacion 
Inner Join Ingeniero ON Obra.IDIngeniero1 = Ingeniero.Codigo --and  Ingeniero.Codigo = Obra.IDIngeniero2  and   Ingeniero.Codigo = Obra.IDIngeniero3)

-- Select para Proveedor
Select * From Proveedor

-- Select para Ubicación
Select * From Ubicacion
