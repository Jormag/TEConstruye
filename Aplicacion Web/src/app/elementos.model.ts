export class ClienteTECRes{
    Cedula: string;
    Nombre: string;
    Telefono: number;
    FechaNacimiento: string;
    Nacionalidad: string;
    Ubicacion: number;
    Ingresos: number;
    Ocupacion: number;
    Correo: string;
    Perfil: number;
    Usuario: string;
    Contraseña: string;
}

export class FacturaMateriales{
    IDFactura: number;
    IDMaterial: number;
    Neto: number;

}

export class EtapaObra{
    IDObra: number;
    IDEtapa: number;
    FechaInicio: string;
    FechaFin: string;
    Presupuesto: number;
    GastoEtapa: number;
    Descripcion: string;
}

export class EtapaMateriales{
    IDObra: number;
    IDEtapa: number;
    IDMaterial: number;
    Cantidad: number;
    PrecioTotal: number;
}

export class EmpleadoObra{
    IDEmpleado: number;
    IDObra: number;
    Horas: number;
    Fecha: string;
    PagoTrabajador: number;
}

export class Cliente{
    Cedula: string;
    Nombre: string;
    Telefono: number;
}

export class Ingeniero{
    Cedula: number;
    Nombre: string;
    Especialidad: number;
    Telefono: number;
    Codigo: number;
}

export class Gasto{
    //IDGasto: number;
    IDObra: number;
    Proveedor: number;
    IDFactura: number;
    Foto: string;
}

export class Especialidad{
    IDEspecialidad: number;
    TipoEspecialidad: string;
}

export class Proveedor{
    IDProveedor: number;
    Nombre: string;
}

export class Ubicacion{
    IDUbicacion: number;
    Provincia: string;
    Canton: string;
    Distrito: string;
}

export class Etapa{
    IDEtapa: number;
    Nombre: string;
}

export class Material{
    Codigo: number;
    Nombre: string;
    PrecioUnitario: number;  
}

export class Empleado{
    Cedula: number;
    Nombre: string;
    Telefono: number;
    PagoHora: number;
}

export class Factura{
    IDFactura: number;
    IDObra: number;
    IDETapa: number;
    Fecha: string;
}

export class Obra{
    IDObra: number;
    Nombre: string;
    Ubicacion: number; 
    Habitaciones: number;
    Banos: number;
    Pisos: number; 
    AreaConstruccion: number;
    AreaLote: number;
    IDIngeniero1: number;
    IDIngeniero2: number; 
    IDIngeniero3: number;
    IDCliente: number;
}



