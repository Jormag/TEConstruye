import { Component, OnInit, Input } from '@angular/core';
import { Material } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';

@Component({
  selector: 'app-agregar-materiales',
  templateUrl: './agregar-materiales.component.html',
  styleUrls: ['./agregar-materiales.component.css']
})
export class AgregarMaterialesComponent implements OnInit {
  objmatmat: Material; 
  @Input() objmat:  Material = new Material();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { 
   
  }

  ngOnInit() {
  }

  Register(regForm:NgForm){
    this.objmatmat=new Material();
    this.objmatmat.Codigo=regForm.value.Codigo;
    this.objmatmat.Nombre=regForm.value.NombreMaterial;
    this.objmatmat.PrecioUnitario=regForm.value.PUnitario;
    
    const Objt = JSON.stringify(this.objmatmat);
    console.log(Objt);
    return this.dataServices.postMaterial(this.objmatmat);
   
}

}
