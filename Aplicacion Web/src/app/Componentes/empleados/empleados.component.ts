import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import { Empleado } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css']
})
export class EmpleadosComponent implements OnInit {
  
  users: Empleado[];// = [{Cedula: 309830234, Nombre:'Juan', Apellido1: 'Rojas', Apellido2: 'Brenes', Telefono: 98763245, PagoHora: 1200, HorasLaboradas: 32}];
  
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getEmpleado().subscribe(data => this.users = data);
    //this.dataService.getEmpleadoID(702350983).subscribe(data => this.users = [data])
  }

}
