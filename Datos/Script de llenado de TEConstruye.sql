Insert into Cliente(Cedula, Nombre, Apellido1, Apellido2, Telefono)
Values(202530348,'Jorge','Marin','Aguilar',87516123),
      (202530348,'Jorge','Marin','Aguilar',87516123);

Insert into Especialidad(TipoEspecialidad)
Values('Civil'),('Electronico'),('Construccion'),('Arquitecto');

Insert into Empleado(Cedula, Nombre, Apellido1, Apellido2, Telefono, PagoHora)
Values(207711123, 'Javier', 'Mendez', 'Salvatierra', 88556633, 4500),
      (208880222, 'Jorge', 'Calvo', 'Mora', 87872233, 3000);

Insert into Etapa(Nombre)
Values ('Trabajo Preliminar'),('Cimientos'),('Paredes'),('Concreto Reforzado'),('Techos'),('Cielos'),('Repello'),('Entrepisos'),('Pisos'),('Enchapes'),
       ('Instalación Pluvial'),('Instalación Sanitaria'),('Instalación Eléctrica'),('Puertas'),('Cerrajería'),('Ventanas'),('Closets'),('Mueble de Cocina'),('Pintura'),('Escaleras');

Insert into Ingeniero(Cedula, Nombre, Apellido1, Apellido2, Especialidad, Telefono, Codigo)
Values(201120352, 'Andres', 'Estrada', 'Calvo', 1, 75231523, 5520),
      (201123458, 'Kenny', 'Solis', 'Vargas', 3, 87878484, 1236),
      (207700771, 'Kristopher', 'Castro', 'Roman', 2, 88556633, 4352);

Insert into Material(Codigo, Nombre, PrecioUnitario)
Values (5, 'Tape', 2700), (40, 'Soldadura', 4900), (74, 'Cemento', 6000);

