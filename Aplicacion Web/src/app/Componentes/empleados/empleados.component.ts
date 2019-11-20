import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import { Empleado } from 'src/app/elementos.model'

@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css']
})
export class EmpleadosComponent implements OnInit {
  form: FormGroup;
  users: Empleado[];// = [{Cedula: 309830234, Nombre:'Juan', Apellido1: 'Rojas', Apellido2: 'Brenes', Telefono: 98763245, PagoHora: 1200, HorasLaboradas: 32}];
  constructor() { }

  ngOnInit() {
  }

  /*submitForm() {
    var formData: any = new FormData();
    formData.append("NombreMaterial", this.form.get('NombreMaterial').value);
    formData.append("Codigo", this.form.get('Codigo').value);
    formData.append("PrecioUnitario", this.form.get('PrecioUnitario').value);
    formData.append("Cantidad", this.form.get('Cantidad').value);
    
    const Objt =  JSON.stringify(formData);

    return console.log(Objt); 
  }*/

}
