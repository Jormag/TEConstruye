export class EmpleadoProyecto{
    IDEmpleadoProyecto: number;
    IDEmpleado: number;
    IDObra: number;
    Horas: number;
}

export class Clientes{
    Cedula: number;
    Nombre: string;
    Apellido1: string;
    Apellido2: string;
    Telefono: number;
}

export class Ingenieros{
    Cedula: number;
    Nombre: string;
    Apellido1: string;
    Apellido2: string;
    Especialidad: number;
    Telefono: number;
    Codigo: number;
}
export class Gasto{
    IDGasto: number;
    IDObra: number;
    IDProveedor: number;
    IDFactura: number;
    Foto: string;
}
/*export class Gastos{
    Proveedor: string;
    Foto: string;
    NumeroFactura: number;
    /*Materiales: string;
    Proyecto: string/number;
}*/

export class Especialidad{
    IDEspecialidad: number;
    TipoEspecialidad: string;
}

export class ObraMateriales{
    IDObraMateriales: number;
    IDObra: number;
    IDEtapa: number;
    IDMaterial: number;
    Cantidad: number;
}

export class Etapa{
    IDEtapa: number;
    IDObra: number;
    Descripcion: string;
    TrabajoPreliminar: number;
    Cimiento: number;
    Paredes: number;
    ConcretoReforzado: number;
    Techos: number;
    Cielos: number;
    Repello: number;
    Entrepisos: number;
    Pisos: number;
    Enchapes: number;
    InstalacionPluvial: number;
    InstalacionSanitaria: number;
    InstalacionElectrica: number;
    Puertas: number;
    Cerrajeria: number;
    Ventanas: number;
    Closets: number;
    MuebleCocina: number;
    Pintura: number;
    Escaleras: number;
}

export class EtapaProyecto{
    IDEtapaProyecto: number; 
    IDObra: number;
    IDEtapa: number;
    FechaInicio: string; 
    FechaFin: string;
    Presupuesto: number;
}

export class Materiales{
    Codigo: number;
    Nombre: string;
    PrecioUnitario: number;
    //Cantidad: number;
}

export class CompraMateriales{
    IDCompraMateriales: number;
    Factura: number; 
    IDMaterial: number;
    Cantidad: number;
    TotalPrecioMaterial: number;
}

export class Empleado{
    Cedula: number;
    Nombre: string;
    Apellido1: string;
    Apellido2: string;
    Telefono: number;
    PagoHora: number;
    //HorasLaboradas: number;
}
export class Obra{
    IDObra: number;
    Nombre: string;
    IDUbicacion: number; 
    Habitaciones: number;
    Baños: number;
    Pisos: number; 
    MetrosCuadradosConstruccion: number;
    MetrosCuadradosLote: number;
    IDIngeniero1: number;
    IDIngeniero2: number; 
    //IDIngeniero3": 1,
    IDCliente: number;
}
/*export class Proyecto{
    Nombre: string;
    Ubicacion: string;
    Banos: number;
    TipoPiso: String;
    MetrosConstruccion: number;
    MetrosArea: number;
    Habitaciones: number;
    /*Ingeniero: string/number;
    Cliente: string/number;
    Empleado: string/number;
    Etapas: string/number;
    Gastos: string/number;
}*/
export class ClientesTecRes{
    Cedula: number;
    Nombre: string;
    Apellido1: string;
    Apellido2: string;
    Telefono: number;
    FechaNacimeinto: string;
    Nacionalidad: string;
    UbicacionUsuario: number;
    Ingresos: number;
    Ocupacion: number;
    Correo: string;
    Perfil: number;
    Usuario: string;
    Contraseña: string;
}


export class Etapas{
    Descripcion: string;
    FechaInicio: Date;
    FechaFinal: Date;
    /*TipoEtapa: string/number;
    Materiales: string/number;*/
}

export class TipoEtapa{
    Tipo: string;
}

