import { Component, OnInit, Input } from '@angular/core';
import { Ingeniero } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';

@Component({
  selector: 'app-agregar-ingenieros',
  templateUrl: './agregar-ingenieros.component.html',
  styleUrls: ['./agregar-ingenieros.component.css']
})
export class AgregarIngenierosComponent implements OnInit {
  objinging: Ingeniero; 
  @Input() objing:  Ingeniero = new Ingeniero();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { }

  ngOnInit() {
  }

  AgregarIngeniero(regForm:NgForm){
    this.objinging=new Ingeniero();
    this.objinging.Cedula=regForm.value.Cedula;
    this.objinging.Nombre=regForm.value.Nombre;
    this.objinging.Especialidad=regForm.value.Especialidad;
    this.objinging.Telefono=regForm.value.Telefono;
    this.objinging.Codigo=regForm.value.Codigo;
    
    const Objt = JSON.stringify(this.objinging);
    console.log(Objt);
    return this.dataServices.postIngeniero(this.objinging);
    
}

}
