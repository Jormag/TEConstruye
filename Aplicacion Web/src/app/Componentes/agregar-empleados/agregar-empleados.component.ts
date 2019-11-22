import { Component, OnInit, Input } from '@angular/core';
import { Empleado } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';
@Component({
  selector: 'app-agregar-empleados',
  templateUrl: './agregar-empleados.component.html',
  styleUrls: ['./agregar-empleados.component.css']
})
export class AgregarEmpleadosComponent implements OnInit {
  objempemp: Empleado; 
  @Input() objemp:  Empleado = new Empleado();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { }

  ngOnInit() {
  }


  AgregarEmpleado(regForm:NgForm){
    this.objempemp=new Empleado();
    this.objempemp.Cedula=regForm.value.Cedula;
    this.objempemp.Nombre=regForm.value.Nombre;
    this.objempemp.Telefono=regForm.value.Telefono;
    this.objempemp.PagoHora=regForm.value.PagoHora;
    
    const Objt = JSON.stringify(this.objempemp);
    console.log(Objt);
    return this.dataServices.postEmpleado(this.objempemp);
   
}

}
