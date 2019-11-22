import { Component, OnInit, Input } from '@angular/core';
import { Obra} from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';
@Component({
  selector: 'app-agregar-proyectos',
  templateUrl: './agregar-proyectos.component.html',
  styleUrls: ['./agregar-proyectos.component.css']
})
export class AgregarProyectosComponent implements OnInit {
  objobraobra: Obra; 
  @Input() objobra:  Obra = new Obra();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { }

  ngOnInit() {
  }

  AgregarObra(regForm:NgForm){
    this.objobraobra=new Obra();
    this.objobraobra.IDObra=regForm.value.IDObra;
    this.objobraobra.Nombre=regForm.value.Nombre;
    this.objobraobra.Ubicacion=regForm.value.Ubicacion;
    this.objobraobra.Habitaciones=regForm.value.Habitaciones;
    this.objobraobra.Banos=regForm.value.Banos;
    this.objobraobra.Pisos=regForm.value.Pisos;
    this.objobraobra.AreaConstruccion=regForm.value.AConstruccion;
    this.objobraobra.AreaLote=regForm.value.ALote;
    this.objobraobra.IDIngeniero1=regForm.value.Ing1;
    this.objobraobra.IDIngeniero2=regForm.value.Ing2;
    this.objobraobra.IDIngeniero3=regForm.value.Ing3;
    this.objobraobra.IDCliente=regForm.value.IDCliente;
    
    const Objt = JSON.stringify(this.objobraobra);
    console.log(Objt);
    return this.dataServices.postObra(this.objobraobra);
   
}

}
